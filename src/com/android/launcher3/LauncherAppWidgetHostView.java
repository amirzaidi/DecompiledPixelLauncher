// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.widget.RemoteViews;
import java.util.ArrayList;
import com.android.launcher3.dragndrop.DragLayer;
import android.view.MotionEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.graphics.Rect;
import android.view.ViewConfiguration;
import android.view.KeyEvent;
import android.os.SystemClock;
import android.os.Handler;
import android.appwidget.AppWidgetProviderInfo;
import android.widget.AdapterView;
import android.view.ViewGroup;
import android.widget.Advanceable;
import java.lang.reflect.Method;
import android.util.Log;
import java.util.concurrent.Executor;
import android.view.View$AccessibilityDelegate;
import android.view.View;
import android.graphics.PointF;
import android.view.LayoutInflater;
import android.content.Context;
import android.util.SparseBooleanArray;
import android.view.View$OnLongClickListener;
import com.android.launcher3.dragndrop.DragLayer$TouchCompleteListener;
import android.appwidget.AppWidgetHostView;

public class LauncherAppWidgetHostView extends AppWidgetHostView implements DragLayer$TouchCompleteListener, View$OnLongClickListener
{
    private static final SparseBooleanArray sAutoAdvanceWidgetIds;
    private Runnable mAutoAdvanceRunnable;
    private boolean mChildrenFocused;
    private final Context mContext;
    protected final LayoutInflater mInflater;
    private boolean mIsAttachedToWindow;
    private boolean mIsAutoAdvanceRegistered;
    private boolean mIsScrollable;
    private final CheckLongPressHelper mLongPressHelper;
    private int mPreviousOrientation;
    private float mScaleToFit;
    private float mSlop;
    private final StylusEventHelper mStylusEventHelper;
    private final PointF mTranslationForCentering;
    
    static {
        sAutoAdvanceWidgetIds = new SparseBooleanArray();
    }
    
    public LauncherAppWidgetHostView(final Context mContext) {
        super(mContext);
        this.mScaleToFit = 1.0f;
        this.mTranslationForCentering = new PointF(0.0f, 0.0f);
        this.mContext = mContext;
        this.mLongPressHelper = new CheckLongPressHelper((View)this, (View$OnLongClickListener)this);
        this.mStylusEventHelper = new StylusEventHelper(new SimpleOnStylusPressListener((View)this), (View)this);
        this.mInflater = LayoutInflater.from(mContext);
        this.setAccessibilityDelegate((View$AccessibilityDelegate)Launcher.getLauncher(mContext).getAccessibilityDelegate());
        this.setBackgroundResource(2130837584);
        if (!Utilities.isAtLeastO()) {
            return;
        }
        final Class<AppWidgetHostView> clazz = AppWidgetHostView.class;
        final String s = "setExecutor";
        final int n = 1;
        try {
            final Class[] array = new Class[n];
            array[0] = Executor.class;
            final Method method = clazz.getMethod(s, (Class[])array);
            final Object[] array2 = { null };
            try {
                array2[0] = Utilities.THREAD_POOL_EXECUTOR;
                method.invoke(this, array2);
            }
            catch (Exception ex) {
                Log.e("LauncherWidgetHostView", "Unable to set async executor", (Throwable)ex);
            }
        }
        catch (Exception ex2) {}
    }
    
    private void checkIfAutoAdvance() {
        final boolean b = true;
        boolean b2 = false;
        final Advanceable advanceable = this.getAdvanceable();
        boolean b3;
        if (advanceable != null) {
            advanceable.fyiWillBeAdvancedByHostKThx();
            b3 = b;
        }
        else {
            b3 = false;
        }
        if (LauncherAppWidgetHostView.sAutoAdvanceWidgetIds.indexOfKey(this.getAppWidgetId()) >= 0) {
            b2 = b;
        }
        if (b3 != b2) {
            if (b3) {
                LauncherAppWidgetHostView.sAutoAdvanceWidgetIds.put(this.getAppWidgetId(), b);
            }
            else {
                LauncherAppWidgetHostView.sAutoAdvanceWidgetIds.delete(this.getAppWidgetId());
            }
            this.maybeRegisterAutoAdvance();
        }
    }
    
    private boolean checkScrollableRecursively(final ViewGroup viewGroup) {
        final boolean b = true;
        if (viewGroup instanceof AdapterView) {
            return b;
        }
        for (int i = 0; i < viewGroup.getChildCount(); ++i) {
            final View child = viewGroup.getChildAt(i);
            if (child instanceof ViewGroup && this.checkScrollableRecursively((ViewGroup)child)) {
                return b;
            }
        }
        return false;
    }
    
    private void dispatchChildFocus(final boolean selected) {
        this.setSelected(selected);
    }
    
    private Advanceable getAdvanceable() {
        final AppWidgetProviderInfo appWidgetInfo = this.getAppWidgetInfo();
        if (appWidgetInfo != null && appWidgetInfo.autoAdvanceViewId != -1 && !(this.mIsAttachedToWindow ^ true)) {
            final View viewById = this.findViewById(appWidgetInfo.autoAdvanceViewId);
            Advanceable advanceable;
            if (viewById instanceof Advanceable) {
                advanceable = (Advanceable)viewById;
            }
            else {
                advanceable = null;
            }
            return advanceable;
        }
        return null;
    }
    
    private void maybeRegisterAutoAdvance() {
        boolean mIsAutoAdvanceRegistered = false;
        final Handler handler = this.getHandler();
        if (this.getWindowVisibility() == 0 && handler != null && LauncherAppWidgetHostView.sAutoAdvanceWidgetIds.indexOfKey(this.getAppWidgetId()) >= 0) {
            mIsAutoAdvanceRegistered = true;
        }
        if (mIsAutoAdvanceRegistered != this.mIsAutoAdvanceRegistered) {
            this.mIsAutoAdvanceRegistered = mIsAutoAdvanceRegistered;
            if (this.mAutoAdvanceRunnable == null) {
                this.mAutoAdvanceRunnable = new LauncherAppWidgetHostView$2(this);
            }
            handler.removeCallbacks(this.mAutoAdvanceRunnable);
            this.scheduleNextAdvance();
        }
    }
    
    private void runAutoAdvance() {
        final Advanceable advanceable = this.getAdvanceable();
        if (advanceable != null) {
            advanceable.advance();
        }
        this.scheduleNextAdvance();
    }
    
    private void scheduleNextAdvance() {
        final long n = 20000L;
        if (!this.mIsAutoAdvanceRegistered) {
            return;
        }
        final long uptimeMillis = SystemClock.uptimeMillis();
        final long n2 = uptimeMillis + (n - uptimeMillis % n) + LauncherAppWidgetHostView.sAutoAdvanceWidgetIds.indexOfKey(this.getAppWidgetId()) * 250L;
        final Handler handler = this.getHandler();
        if (handler != null) {
            handler.postAtTime(this.mAutoAdvanceRunnable, n2);
        }
    }
    
    public void cancelLongPress() {
        super.cancelLongPress();
        this.mLongPressHelper.cancelLongPress();
    }
    
    public void clearChildFocus(final View view) {
        super.clearChildFocus(view);
        this.dispatchChildFocus(false);
    }
    
    public boolean dispatchKeyEvent(final KeyEvent keyEvent) {
        final boolean b = true;
        if (this.mChildrenFocused && keyEvent.getKeyCode() == 111 && keyEvent.getAction() == (b ? 1 : 0)) {
            this.mChildrenFocused = false;
            this.requestFocus();
            return b;
        }
        return super.dispatchKeyEvent(keyEvent);
    }
    
    public boolean dispatchUnhandledMove(final View view, final int n) {
        return this.mChildrenFocused;
    }
    
    public AppWidgetProviderInfo getAppWidgetInfo() {
        final AppWidgetProviderInfo appWidgetInfo = super.getAppWidgetInfo();
        if (appWidgetInfo != null && (appWidgetInfo instanceof LauncherAppWidgetProviderInfo ^ true)) {
            throw new IllegalStateException("Launcher widget must have LauncherAppWidgetProviderInfo");
        }
        return appWidgetInfo;
    }
    
    public int getDescendantFocusability() {
        int n;
        if (this.mChildrenFocused) {
            n = 131072;
        }
        else {
            n = 393216;
        }
        return n;
    }
    
    protected View getErrorView() {
        return this.mInflater.inflate(2130968588, (ViewGroup)this, false);
    }
    
    public float getScaleToFit() {
        return this.mScaleToFit;
    }
    
    public PointF getTranslationForCentering() {
        return this.mTranslationForCentering;
    }
    
    public boolean isReinflateRequired() {
        return this.mPreviousOrientation != this.mContext.getResources().getConfiguration().orientation;
    }
    
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mSlop = ViewConfiguration.get(this.getContext()).getScaledTouchSlop();
        this.mIsAttachedToWindow = true;
        this.checkIfAutoAdvance();
    }
    
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mIsAttachedToWindow = false;
        this.checkIfAutoAdvance();
    }
    
    protected void onFocusChanged(final boolean b, final int n, final Rect rect) {
        if (b) {
            this.dispatchChildFocus(this.mChildrenFocused = false);
        }
        super.onFocusChanged(b, n, rect);
    }
    
    public void onInitializeAccessibilityNodeInfo(final AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName((CharSequence)this.getClass().getName());
    }
    
    public boolean onInterceptTouchEvent(final MotionEvent motionEvent) {
        final boolean b = true;
        if (motionEvent.getAction() == 0) {
            this.mLongPressHelper.cancelLongPress();
        }
        if (this.mLongPressHelper.hasPerformedLongPress()) {
            this.mLongPressHelper.cancelLongPress();
            return b;
        }
        if (this.mStylusEventHelper.onMotionEvent(motionEvent)) {
            this.mLongPressHelper.cancelLongPress();
            return b;
        }
        switch (motionEvent.getAction()) {
            case 0: {
                final DragLayer dragLayer = Launcher.getLauncher(this.getContext()).getDragLayer();
                if (this.mIsScrollable) {
                    dragLayer.requestDisallowInterceptTouchEvent(b);
                }
                if (!this.mStylusEventHelper.inStylusButtonPressed()) {
                    this.mLongPressHelper.postCheckForLongPress();
                }
                dragLayer.setTouchCompleteListener(this);
                break;
            }
            case 1:
            case 3: {
                this.mLongPressHelper.cancelLongPress();
                break;
            }
            case 2: {
                if (!Utilities.pointInView((View)this, motionEvent.getX(), motionEvent.getY(), this.mSlop)) {
                    this.mLongPressHelper.cancelLongPress();
                    break;
                }
                break;
            }
        }
        return false;
    }
    
    public boolean onKeyDown(final int n, final KeyEvent keyEvent) {
        if (!this.mChildrenFocused && n == 66) {
            keyEvent.startTracking();
            return true;
        }
        return super.onKeyDown(n, keyEvent);
    }
    
    public boolean onKeyUp(final int n, final KeyEvent keyEvent) {
        final boolean mChildrenFocused = true;
        if (keyEvent.isTracking() && !this.mChildrenFocused && n == 66) {
            this.mChildrenFocused = mChildrenFocused;
            final ArrayList focusables = this.getFocusables(2);
            focusables.remove(this);
            switch (focusables.size()) {
                case 0: {
                    this.mChildrenFocused = false;
                    return super.onKeyUp(n, keyEvent);
                }
                case 1: {
                    if (!(this.getTag() instanceof ItemInfo)) {
                        break;
                    }
                    final ItemInfo itemInfo = (ItemInfo)this.getTag();
                    if (itemInfo.spanX == (mChildrenFocused ? 1 : 0) && itemInfo.spanY == (mChildrenFocused ? 1 : 0)) {
                        focusables.get(0).performClick();
                        this.mChildrenFocused = false;
                        return mChildrenFocused;
                    }
                    break;
                }
            }
            focusables.get(0).requestFocus();
            return mChildrenFocused;
        }
        return super.onKeyUp(n, keyEvent);
    }
    
    protected void onLayout(final boolean b, final int n, final int n2, final int n3, final int n4) {
        while (true) {
            try {
                super.onLayout(b, n, n2, n3, n4);
                this.mIsScrollable = this.checkScrollableRecursively((ViewGroup)this);
            }
            catch (RuntimeException ex) {
                this.post((Runnable)new LauncherAppWidgetHostView$1(this));
                continue;
            }
            break;
        }
    }
    
    public boolean onLongClick(final View view) {
        if (this.mIsScrollable) {
            Launcher.getLauncher(this.getContext()).getDragLayer().requestDisallowInterceptTouchEvent(false);
        }
        view.performLongClick();
        return true;
    }
    
    public void onTouchComplete() {
        if (!this.mLongPressHelper.hasPerformedLongPress()) {
            this.mLongPressHelper.cancelLongPress();
        }
    }
    
    public boolean onTouchEvent(final MotionEvent motionEvent) {
        switch (motionEvent.getAction()) {
            case 1:
            case 3: {
                this.mLongPressHelper.cancelLongPress();
                break;
            }
            case 2: {
                if (!Utilities.pointInView((View)this, motionEvent.getX(), motionEvent.getY(), this.mSlop)) {
                    this.mLongPressHelper.cancelLongPress();
                    break;
                }
                break;
            }
        }
        return false;
    }
    
    protected void onWindowVisibilityChanged(final int n) {
        super.onWindowVisibilityChanged(n);
        this.maybeRegisterAutoAdvance();
    }
    
    public void requestChildFocus(final View view, final View view2) {
        super.requestChildFocus(view, view2);
        this.dispatchChildFocus(this.mChildrenFocused && view2 != null);
        if (view2 != null) {
            view2.setFocusableInTouchMode(false);
        }
    }
    
    public void setScaleToFit(final float n) {
        this.setScaleX(this.mScaleToFit = n);
        this.setScaleY(n);
    }
    
    public void setTranslationForCentering(final float translationX, final float translationY) {
        this.mTranslationForCentering.set(translationX, translationY);
        this.setTranslationX(translationX);
        this.setTranslationY(translationY);
    }
    
    public void switchToErrorView() {
        this.updateAppWidget(new RemoteViews(this.getAppWidgetInfo().provider.getPackageName(), 0));
    }
    
    public void updateAppWidget(final RemoteViews remoteViews) {
        this.updateLastInflationOrientation();
        super.updateAppWidget(remoteViews);
        this.checkIfAutoAdvance();
    }
    
    public void updateLastInflationOrientation() {
        this.mPreviousOrientation = this.mContext.getResources().getConfiguration().orientation;
    }
}
