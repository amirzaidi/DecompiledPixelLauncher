// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.widget;

import android.widget.TextView;
import java.util.List;
import android.widget.LinearLayout$LayoutParams;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.model.WidgetItem;
import com.android.launcher3.util.PackageUserKey;
import com.android.launcher3.dragndrop.DragOptions;
import com.android.launcher3.DropTarget$DragObject;
import com.android.launcher3.Utilities;
import android.view.MotionEvent;
import com.android.launcher3.util.SystemUiController;
import android.animation.TimeInterpolator;
import android.animation.Animator$AnimatorListener;
import com.android.launcher3.anim.PropertyListBuilder;
import com.android.launcher3.util.Themes;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.view.View;
import com.android.launcher3.LauncherAnimUtils;
import android.animation.PropertyValuesHolder;
import android.util.AttributeSet;
import android.content.Context;
import com.android.launcher3.allapps.VerticalPullDetector;
import com.android.launcher3.allapps.VerticalPullDetector$ScrollInterpolator;
import com.android.launcher3.ItemInfo;
import android.animation.ObjectAnimator;
import com.android.launcher3.Launcher;
import android.graphics.Rect;
import com.android.launcher3.graphics.GradientView;
import android.view.animation.Interpolator;
import com.android.launcher3.dragndrop.DragController$DragListener;
import android.view.View$OnLongClickListener;
import android.view.View$OnClickListener;
import com.android.launcher3.allapps.VerticalPullDetector$Listener;
import com.android.launcher3.util.TouchController;
import com.android.launcher3.Insettable;
import com.android.launcher3.AbstractFloatingView;

public class WidgetsBottomSheet extends AbstractFloatingView implements Insettable, TouchController, VerticalPullDetector$Listener, View$OnClickListener, View$OnLongClickListener, DragController$DragListener
{
    private Interpolator mFastOutSlowInInterpolator;
    private GradientView mGradientBackground;
    private Rect mInsets;
    private Launcher mLauncher;
    private ObjectAnimator mOpenCloseAnimator;
    private ItemInfo mOriginalItemInfo;
    private VerticalPullDetector$ScrollInterpolator mScrollInterpolator;
    private int mTranslationYClosed;
    private int mTranslationYOpen;
    private float mTranslationYRange;
    private VerticalPullDetector mVerticalPullDetector;
    
    public WidgetsBottomSheet(final Context context, final AttributeSet set) {
        this(context, set, 0);
    }
    
    public WidgetsBottomSheet(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
        this.setWillNotDraw(false);
        this.mLauncher = Launcher.getLauncher(context);
        this.mOpenCloseAnimator = LauncherAnimUtils.ofPropertyValuesHolder((View)this, new PropertyValuesHolder[0]);
        this.mFastOutSlowInInterpolator = AnimationUtils.loadInterpolator(context, 17563661);
        this.mScrollInterpolator = new VerticalPullDetector$ScrollInterpolator();
        this.mInsets = new Rect();
        (this.mVerticalPullDetector = new VerticalPullDetector(context)).setListener(this);
        this.mGradientBackground = (GradientView)this.mLauncher.getLayoutInflater().inflate(2130968599, (ViewGroup)this.mLauncher.getDragLayer(), false);
    }
    
    private void addDivider(final ViewGroup viewGroup) {
        LayoutInflater.from(this.getContext()).inflate(2130968629, viewGroup, true);
    }
    
    private WidgetCell addItemCell(final ViewGroup viewGroup) {
        final WidgetCell widgetCell = (WidgetCell)LayoutInflater.from(this.getContext()).inflate(2130968627, viewGroup, false);
        widgetCell.setOnClickListener((View$OnClickListener)this);
        widgetCell.setOnLongClickListener((View$OnLongClickListener)this);
        widgetCell.setAnimatePreview(false);
        viewGroup.addView((View)widgetCell);
        return widgetCell;
    }
    
    public static WidgetsBottomSheet getOpen(final Launcher launcher) {
        return (WidgetsBottomSheet)AbstractFloatingView.getOpenView(launcher, 4);
    }
    
    private void onCloseComplete() {
        this.mIsOpen = false;
        this.mLauncher.getDragLayer().removeView((View)this.mGradientBackground);
        this.mLauncher.getDragLayer().removeView((View)this);
        this.mLauncher.getSystemUiController().updateUiState(2, 0);
    }
    
    private void open(final boolean b) {
        final int n = 2;
        int mIsOpen = 1;
        if (this.mIsOpen || this.mOpenCloseAnimator.isRunning()) {
            return;
        }
        this.mIsOpen = (mIsOpen != 0);
        final boolean attrBoolean = Themes.getAttrBoolean((Context)this.mLauncher, 2130772010);
        final SystemUiController systemUiController = this.mLauncher.getSystemUiController();
        if (attrBoolean) {
            mIsOpen = n;
        }
        systemUiController.updateUiState(n, mIsOpen);
        if (b) {
            this.mOpenCloseAnimator.setValues(new PropertyListBuilder().translationY(this.mTranslationYOpen).build());
            this.mOpenCloseAnimator.addListener((Animator$AnimatorListener)new WidgetsBottomSheet$1(this));
            this.mOpenCloseAnimator.setInterpolator((TimeInterpolator)this.mFastOutSlowInInterpolator);
            this.mOpenCloseAnimator.start();
        }
        else {
            this.setTranslationY(this.mTranslationYOpen);
        }
    }
    
    public int getLogContainerType() {
        return 5;
    }
    
    protected void handleClose(final boolean b) {
        if (!this.mIsOpen || this.mOpenCloseAnimator.isRunning()) {
            return;
        }
        if (b) {
            this.mOpenCloseAnimator.setValues(new PropertyListBuilder().translationY(this.mTranslationYClosed).build());
            this.mOpenCloseAnimator.addListener((Animator$AnimatorListener)new WidgetsBottomSheet$2(this));
            final ObjectAnimator mOpenCloseAnimator = this.mOpenCloseAnimator;
            Object interpolator;
            if (this.mVerticalPullDetector.isIdleState()) {
                interpolator = this.mFastOutSlowInInterpolator;
            }
            else {
                interpolator = this.mScrollInterpolator;
            }
            mOpenCloseAnimator.setInterpolator((TimeInterpolator)interpolator);
            this.mOpenCloseAnimator.start();
        }
        else {
            this.setTranslationY(this.mTranslationYClosed);
            this.onCloseComplete();
        }
    }
    
    protected boolean isOfType(final int n) {
        boolean b = false;
        if ((n & 0x4) != 0x0) {
            b = true;
        }
        return b;
    }
    
    public void onClick(final View view) {
        this.mLauncher.getWidgetsView().handleClick();
    }
    
    public boolean onControllerInterceptTouchEvent(final MotionEvent motionEvent) {
        int n;
        if (this.mVerticalPullDetector.isIdleState()) {
            n = 2;
        }
        else {
            n = 0;
        }
        this.mVerticalPullDetector.setDetectableScrollConditions(n, false);
        this.mVerticalPullDetector.onTouchEvent(motionEvent);
        return this.mVerticalPullDetector.isDraggingOrSettling();
    }
    
    public boolean onControllerTouchEvent(final MotionEvent motionEvent) {
        return this.mVerticalPullDetector.onTouchEvent(motionEvent);
    }
    
    public boolean onDrag(final float n, final float n2) {
        this.setTranslationY(Utilities.boundToRange(n, this.mTranslationYOpen, this.mTranslationYClosed));
        return true;
    }
    
    public void onDragEnd() {
    }
    
    public void onDragEnd(final float velocityAtZero, final boolean b) {
        final boolean b2 = true;
        if ((!b || velocityAtZero <= 0.0f) && this.getTranslationY() <= this.mTranslationYRange / 2.0f) {
            this.mIsOpen = false;
            this.mOpenCloseAnimator.setDuration(this.mVerticalPullDetector.calculateDuration(velocityAtZero, (this.getTranslationY() - this.mTranslationYOpen) / this.mTranslationYRange));
            this.open(b2);
        }
        else {
            this.mScrollInterpolator.setVelocityAtZero(velocityAtZero);
            this.mOpenCloseAnimator.setDuration(this.mVerticalPullDetector.calculateDuration(velocityAtZero, (this.mTranslationYClosed - this.getTranslationY()) / this.mTranslationYRange));
            this.close(b2);
        }
    }
    
    public void onDragStart(final DropTarget$DragObject dropTarget$DragObject, final DragOptions dragOptions) {
        this.close(true);
    }
    
    public void onDragStart(final boolean b) {
    }
    
    public boolean onLongClick(final View view) {
        this.mLauncher.getDragController().addDragListener(this);
        return this.mLauncher.getWidgetsView().handleLongClick(view);
    }
    
    protected void onMeasure(final int n, final int n2) {
        super.onMeasure(n, n2);
        this.mTranslationYOpen = 0;
        this.mTranslationYClosed = this.getMeasuredHeight();
        this.mTranslationYRange = this.mTranslationYClosed - this.mTranslationYOpen;
    }
    
    protected void onWidgetsBound() {
        final boolean gravity = true;
        final List widgetsForPackageUser = this.mLauncher.getWidgetsForPackageUser(new PackageUserKey(this.mOriginalItemInfo.getTargetComponent().getPackageName(), this.mOriginalItemInfo.user));
        final ViewGroup viewGroup = (ViewGroup)this.findViewById(2131624072);
        final ViewGroup viewGroup2 = (ViewGroup)viewGroup.findViewById(2131624076);
        viewGroup2.removeAllViews();
        for (int i = 0; i < widgetsForPackageUser.size(); ++i) {
            final WidgetCell addItemCell = this.addItemCell(viewGroup2);
            addItemCell.applyFromCellItem(widgetsForPackageUser.get(i), LauncherAppState.getInstance((Context)this.mLauncher).getWidgetCache());
            addItemCell.ensurePreview();
            addItemCell.setVisibility(0);
            if (i < widgetsForPackageUser.size() - 1) {
                this.addDivider(viewGroup2);
            }
        }
        if (widgetsForPackageUser.size() == (gravity ? 1 : 0)) {
            ((LinearLayout$LayoutParams)viewGroup.getLayoutParams()).gravity = (gravity ? 1 : 0);
        }
        else {
            final View inflate = LayoutInflater.from(this.getContext()).inflate(2130968629, viewGroup, false);
            inflate.getLayoutParams().width = Utilities.pxFromDp(16.0f, this.getResources().getDisplayMetrics());
            viewGroup2.addView(inflate, 0);
        }
    }
    
    public void populateAndShow(final ItemInfo mOriginalItemInfo) {
        final int n = 1;
        this.mOriginalItemInfo = mOriginalItemInfo;
        final TextView textView = (TextView)this.findViewById(2131623982);
        final Context context = this.getContext();
        final Object[] array = new Object[n];
        array[0] = this.mOriginalItemInfo.title;
        textView.setText((CharSequence)context.getString(2131492973, array));
        this.onWidgetsBound();
        this.mLauncher.getDragLayer().addView((View)this.mGradientBackground);
        this.mGradientBackground.setVisibility(0);
        this.mLauncher.getDragLayer().addView((View)this);
        this.measure(0, 0);
        this.setTranslationY(this.mTranslationYClosed);
        this.mIsOpen = false;
        this.open(n != 0);
    }
    
    public void setInsets(final Rect rect) {
        final int n = rect.left - this.mInsets.left;
        final int n2 = rect.right - this.mInsets.right;
        final int n3 = rect.bottom - this.mInsets.bottom;
        this.mInsets.set(rect);
        this.setPadding(n + this.getPaddingLeft(), this.getPaddingTop(), n2 + this.getPaddingRight(), n3 + this.getPaddingBottom());
    }
    
    public void setTranslationY(final float translationY) {
        super.setTranslationY(translationY);
        if (this.mGradientBackground == null) {
            return;
        }
        final float n = (this.mTranslationYClosed - translationY) / this.mTranslationYRange;
        this.mGradientBackground.setProgress(n, n <= 0.0f);
    }
}
