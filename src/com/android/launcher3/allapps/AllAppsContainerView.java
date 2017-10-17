// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.allapps;

import com.android.launcher3.PromiseAppInfo;
import com.android.launcher3.BubbleTextView;
import android.os.UserHandle;
import com.android.launcher3.util.PackageUserKey;
import java.util.Set;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.InsetDrawable;
import com.android.launcher3.Utilities;
import android.view.MotionEvent;
import android.view.ViewGroup$LayoutParams;
import android.view.ViewGroup$MarginLayoutParams;
import android.graphics.Rect;
import com.android.launcher3.dragndrop.DragController;
import com.android.launcher3.dragndrop.DragOptions;
import com.android.launcher3.dragndrop.DragController$DragListener;
import android.graphics.drawable.Drawable;
import android.support.v7.widget.o;
import com.android.launcher3.keyboard.FocusedItemDecorator;
import com.android.launcher3.config.FeatureFlags;
import android.support.v7.widget.b;
import android.support.v7.widget.q;
import android.support.v7.widget.p;
import android.view.View$OnFocusChangeListener;
import com.android.launcher3.folder.Folder;
import com.android.launcher3.DeleteDropTarget;
import com.android.launcher3.DropTarget$DragObject;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.userevent.nano.LauncherLogProto$Target;
import com.android.launcher3.ItemInfo;
import android.view.KeyEvent;
import java.util.List;
import android.text.Spannable;
import android.text.Selection;
import android.view.View$OnClickListener;
import android.util.AttributeSet;
import android.content.Context;
import com.android.launcher3.anim.SpringAnimationHandler;
import android.text.SpannableStringBuilder;
import android.view.View;
import android.support.v7.widget.N;
import com.android.launcher3.Launcher;
import com.android.launcher3.Insettable;
import android.view.View$OnLongClickListener;
import com.android.launcher3.DragSource;
import com.android.launcher3.BaseContainerView;

public class AllAppsContainerView extends BaseContainerView implements DragSource, View$OnLongClickListener, Insettable
{
    private final AllAppsGridAdapter mAdapter;
    private final AlphabeticalAppsList mApps;
    private AllAppsRecyclerView mAppsRecyclerView;
    private final Launcher mLauncher;
    private final N mLayoutManager;
    private int mNumAppsPerRow;
    private int mNumPredictedAppsPerRow;
    private View mSearchContainer;
    private SpannableStringBuilder mSearchQueryBuilder;
    private SearchUiManager mSearchUiManager;
    private SpringAnimationHandler mSpringAnimationHandler;
    
    public AllAppsContainerView(final Context context) {
        this(context, null);
    }
    
    public AllAppsContainerView(final Context context, final AttributeSet set) {
        this(context, set, 0);
    }
    
    public AllAppsContainerView(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
        this.mSearchQueryBuilder = null;
        this.mLauncher = Launcher.getLauncher(context);
        this.mApps = new AlphabeticalAppsList(context);
        this.mAdapter = new AllAppsGridAdapter(this.mLauncher, this.mApps, (View$OnClickListener)this.mLauncher, (View$OnLongClickListener)this);
        this.mSpringAnimationHandler = this.mAdapter.getSpringAnimationHandler();
        this.mApps.setAdapter(this.mAdapter);
        this.mLayoutManager = this.mAdapter.getLayoutManager();
        Selection.setSelection((Spannable)(this.mSearchQueryBuilder = new SpannableStringBuilder()), 0);
    }
    
    public void addApps(final List list) {
        this.mApps.addApps(list);
        this.mSearchUiManager.refreshSearchResult();
    }
    
    public boolean dispatchKeyEvent(final KeyEvent keyEvent) {
        this.mSearchUiManager.preDispatchKeyEvent(keyEvent);
        return super.dispatchKeyEvent(keyEvent);
    }
    
    public void fillInLogContainerData(final View view, final ItemInfo itemInfo, final LauncherLogProto$Target launcherLogProto$Target, final LauncherLogProto$Target launcherLogProto$Target2) {
    }
    
    public float getIntrinsicIconScaleFactor() {
        final DeviceProfile deviceProfile = this.mLauncher.getDeviceProfile();
        return deviceProfile.allAppsIconSizePx / deviceProfile.iconSizePx;
    }
    
    public SearchUiManager getSearchUiManager() {
        return this.mSearchUiManager;
    }
    
    public SpringAnimationHandler getSpringAnimationHandler() {
        return this.mSpringAnimationHandler;
    }
    
    public View getTouchDelegateTargetView() {
        return (View)this.mAppsRecyclerView;
    }
    
    public void onDropCompleted(final View view, final DropTarget$DragObject dropTarget$DragObject, final boolean b, final boolean b2) {
        if (b || (b2 ^ true) || (view != this.mLauncher.getWorkspace() && (view instanceof DeleteDropTarget ^ true) && (view instanceof Folder ^ true))) {
            this.mLauncher.exitSpringLoadedDragModeDelayed(true, 500, null);
        }
        this.mLauncher.unlockScreenOrientation(false);
        if (!b2) {
            dropTarget$DragObject.deferDragViewCleanupPostAnimation = false;
        }
    }
    
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.getContentView().setOnFocusChangeListener((View$OnFocusChangeListener)new AllAppsContainerView$1(this));
        (this.mAppsRecyclerView = (AllAppsRecyclerView)this.findViewById(2131623979)).setApps(this.mApps);
        this.mAppsRecyclerView.setLayoutManager(this.mLayoutManager);
        this.mAppsRecyclerView.setAdapter(this.mAdapter);
        this.mAppsRecyclerView.setHasFixedSize(true);
        this.mAppsRecyclerView.setItemAnimator(null);
        if (FeatureFlags.LAUNCHER3_PHYSICS) {
            this.mAppsRecyclerView.setSpringAnimationHandler(this.mSpringAnimationHandler);
        }
        this.mSearchContainer = this.findViewById(2131623955);
        (this.mSearchUiManager = (SearchUiManager)this.mSearchContainer).initialize(this.mApps, this.mAppsRecyclerView);
        final FocusedItemDecorator focusedItemDecorator = new FocusedItemDecorator((View)this.mAppsRecyclerView);
        this.mAppsRecyclerView.addItemDecoration(focusedItemDecorator);
        this.mAppsRecyclerView.preMeasureViews(this.mAdapter);
        this.mAdapter.setIconFocusListener(focusedItemDecorator.getFocusListener());
        if (FeatureFlags.LAUNCHER3_ALL_APPS_PULL_UP) {
            this.getRevealView().setVisibility(0);
            this.getContentView().setVisibility(0);
            this.getContentView().setBackground((Drawable)null);
        }
    }
    
    public boolean onLongClick(final View view) {
        if (!this.mLauncher.isAppsViewVisible() || this.mLauncher.getWorkspace().isSwitchingState()) {
            return false;
        }
        if (!this.mLauncher.isDraggingEnabled()) {
            return false;
        }
        if (this.mLauncher.getDragController().isDragging()) {
            return false;
        }
        final DragController dragController = this.mLauncher.getDragController();
        dragController.addDragListener(new AllAppsContainerView$2(this, view, dragController));
        this.mLauncher.getWorkspace().beginDragShared(view, this, new DragOptions());
        return false;
    }
    
    protected void onMeasure(final int n, final int n2) {
        final DeviceProfile deviceProfile = this.mLauncher.getDeviceProfile();
        deviceProfile.updateAppsViewNumCols();
        if (FeatureFlags.LAUNCHER3_ALL_APPS_PULL_UP) {
            if (this.mNumAppsPerRow != deviceProfile.inv.numColumns || this.mNumPredictedAppsPerRow != deviceProfile.inv.numColumns) {
                this.mNumAppsPerRow = deviceProfile.inv.numColumns;
                this.mNumPredictedAppsPerRow = deviceProfile.inv.numColumns;
                this.mAppsRecyclerView.setNumAppsPerRow(deviceProfile, this.mNumAppsPerRow);
                this.mAdapter.setNumAppsPerRow(this.mNumAppsPerRow);
                this.mApps.setNumAppsPerRow(this.mNumAppsPerRow, this.mNumPredictedAppsPerRow);
            }
            super.onMeasure(n, n2);
            return;
        }
        if (this.mNumAppsPerRow != deviceProfile.allAppsNumCols || this.mNumPredictedAppsPerRow != deviceProfile.allAppsNumPredictiveCols) {
            this.mNumAppsPerRow = deviceProfile.allAppsNumCols;
            this.mNumPredictedAppsPerRow = deviceProfile.allAppsNumPredictiveCols;
            this.mAppsRecyclerView.setNumAppsPerRow(deviceProfile, this.mNumAppsPerRow);
            this.mAdapter.setNumAppsPerRow(this.mNumAppsPerRow);
            this.mApps.setNumAppsPerRow(this.mNumAppsPerRow, this.mNumPredictedAppsPerRow);
        }
        super.onMeasure(n, n2);
    }
    
    public void removeApps(final List list) {
        this.mApps.removeApps(list);
        this.mSearchUiManager.refreshSearchResult();
    }
    
    public void reset() {
        this.mAppsRecyclerView.scrollToTop();
        this.mSearchUiManager.reset();
    }
    
    public void setApps(final List apps) {
        this.mApps.setApps(apps);
    }
    
    public void setInsets(final Rect rect) {
        final DeviceProfile deviceProfile = this.mLauncher.getDeviceProfile();
        this.mAppsRecyclerView.setPadding(this.mAppsRecyclerView.getPaddingLeft(), this.mAppsRecyclerView.getPaddingTop(), this.mAppsRecyclerView.getPaddingRight(), rect.bottom);
        if (deviceProfile.isVerticalBarLayout()) {
            final ViewGroup$MarginLayoutParams layoutParams = (ViewGroup$MarginLayoutParams)this.getLayoutParams();
            layoutParams.leftMargin = rect.left;
            layoutParams.topMargin = rect.top;
            layoutParams.rightMargin = rect.right;
            this.setLayoutParams((ViewGroup$LayoutParams)layoutParams);
        }
        else {
            final View viewById = this.findViewById(2131623980);
            final ViewGroup$LayoutParams layoutParams2 = viewById.getLayoutParams();
            layoutParams2.height = rect.bottom;
            viewById.setLayoutParams(layoutParams2);
            viewById.setVisibility(4);
        }
    }
    
    public void setPredictedApps(final List predictedApps) {
        this.mApps.setPredictedApps(predictedApps);
    }
    
    public boolean shouldContainerScroll(final MotionEvent motionEvent) {
        final int n = 1;
        if (this.mLauncher.getDragLayer().isEventOverView(this.mSearchContainer, motionEvent)) {
            return n != 0;
        }
        final int[] array = { (int)motionEvent.getX(), 0 };
        array[n] = (int)motionEvent.getY();
        Utilities.mapCoordInSelfToDescendant(this.mAppsRecyclerView.getScrollBar(), (View)this.mLauncher.getDragLayer(), array);
        return !this.mAppsRecyclerView.getScrollBar().shouldBlockIntercept(array[0], array[n]) && this.mAppsRecyclerView.getCurrentScrollY() == 0 && n;
    }
    
    public boolean supportsAppInfoDropTarget() {
        return true;
    }
    
    public boolean supportsDeleteDropTarget() {
        return false;
    }
    
    public void updateApps(final List list) {
        this.mApps.updateApps(list);
        this.mSearchUiManager.refreshSearchResult();
    }
    
    protected void updateBackground(final int n, final int n2, final int n3, final int n4) {
        if (FeatureFlags.LAUNCHER3_ALL_APPS_PULL_UP) {
            if (this.mLauncher.getDeviceProfile().isVerticalBarLayout()) {
                this.getRevealView().setBackground((Drawable)new InsetDrawable(this.mBaseDrawable, n, n2, n3, n4));
                this.getContentView().setBackground((Drawable)new InsetDrawable((Drawable)new ColorDrawable(0), n, n2, n3, n4));
            }
            else {
                this.getRevealView().setBackground(this.mBaseDrawable);
            }
        }
        else {
            super.updateBackground(n, n2, n3, n4);
        }
    }
    
    public void updateIconBadges(final Set set) {
        final PackageUserKey packageUserKey = new PackageUserKey(null, null);
        for (int childCount = this.mAppsRecyclerView.getChildCount(), i = 0; i < childCount; ++i) {
            final View child = this.mAppsRecyclerView.getChildAt(i);
            if (child instanceof BubbleTextView && !(child.getTag() instanceof ItemInfo ^ true)) {
                final ItemInfo itemInfo = (ItemInfo)child.getTag();
                if (packageUserKey.updateFromItemInfo(itemInfo) && set.contains(packageUserKey)) {
                    ((BubbleTextView)child).applyBadgeState(itemInfo, true);
                }
            }
        }
    }
    
    public void updatePromiseAppProgress(final PromiseAppInfo promiseAppInfo) {
        for (int childCount = this.mAppsRecyclerView.getChildCount(), i = 0; i < childCount; ++i) {
            final View child = this.mAppsRecyclerView.getChildAt(i);
            if (child instanceof BubbleTextView && child.getTag() == promiseAppInfo) {
                ((BubbleTextView)child).applyProgressLevel(promiseAppInfo.level);
            }
        }
    }
}
