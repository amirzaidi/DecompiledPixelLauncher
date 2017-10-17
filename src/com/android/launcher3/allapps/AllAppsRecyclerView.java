// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.allapps;

import android.graphics.drawable.Drawable;
import android.support.v7.widget.m;
import android.support.v7.widget.t;
import com.android.launcher3.DeviceProfile;
import android.support.v7.widget.h;
import android.support.v7.widget.q;
import android.view.View$MeasureSpec;
import com.android.launcher3.config.FeatureFlags;
import android.graphics.drawable.Drawable$Callback;
import com.android.launcher3.graphics.DrawableFactory;
import android.view.MotionEvent;
import android.graphics.Canvas;
import java.util.List;
import com.android.launcher3.BubbleTextView;
import com.android.launcher3.userevent.nano.LauncherLogProto$Target;
import com.android.launcher3.ItemInfo;
import android.view.View;
import android.view.ViewGroup;
import android.content.res.Resources;
import android.support.v7.widget.n;
import android.util.AttributeSet;
import android.content.Context;
import com.android.launcher3.views.RecyclerViewFastScroller;
import com.android.launcher3.anim.SpringAnimationHandler;
import android.util.SparseIntArray;
import android.util.Property;
import com.android.launcher3.logging.UserEventDispatcher$LogContainerProvider;
import com.android.launcher3.BaseRecyclerView;

public class AllAppsRecyclerView extends BaseRecyclerView implements UserEventDispatcher$LogContainerProvider
{
    public static final Property CONTENT_TRANS_Y;
    private AlphabeticalAppsList mApps;
    private SparseIntArray mCachedScrollPositions;
    private float mContentTranslationY;
    private AllAppsBackgroundDrawable mEmptySearchBackground;
    private int mEmptySearchBackgroundTopOffset;
    private AllAppsFastScrollHelper mFastScrollHelper;
    private int mNumAppsPerRow;
    private AllAppsRecyclerView$OverScrollHelper mOverScrollHelper;
    private VerticalPullDetector mPullDetector;
    private SpringAnimationHandler mSpringAnimationHandler;
    private SparseIntArray mViewHeights;
    
    static {
        CONTENT_TRANS_Y = new AllAppsRecyclerView$1(Float.class, "appsRecyclerViewContentTransY");
    }
    
    public AllAppsRecyclerView(final Context context) {
        this(context, null);
    }
    
    public AllAppsRecyclerView(final Context context, final AttributeSet set) {
        this(context, set, 0);
    }
    
    public AllAppsRecyclerView(final Context context, final AttributeSet set, final int n) {
        this(context, set, n, 0);
    }
    
    public AllAppsRecyclerView(final Context context, final AttributeSet set, final int n, final int n2) {
        super(context, set, n);
        this.mViewHeights = new SparseIntArray();
        this.mCachedScrollPositions = new SparseIntArray();
        this.mContentTranslationY = 0.0f;
        final Resources resources = this.getResources();
        this.addOnItemTouchListener(this);
        this.mEmptySearchBackgroundTopOffset = resources.getDimensionPixelSize(2131427391);
        this.mOverScrollHelper = new AllAppsRecyclerView$OverScrollHelper(this, null);
        (this.mPullDetector = new VerticalPullDetector(this.getContext())).setListener(this.mOverScrollHelper);
        this.mPullDetector.setDetectableScrollConditions(3, true);
    }
    
    private void putSameHeightFor(final AllAppsGridAdapter allAppsGridAdapter, final int n, final int n2, final int... array) {
        int i = 0;
        final View itemView = allAppsGridAdapter.onCreateViewHolder(this, array[0]).itemView;
        itemView.measure(n, n2);
        while (i < array.length) {
            this.mViewHeights.put(array[i], itemView.getMeasuredHeight());
            ++i;
        }
    }
    
    private void updateEmptySearchBackgroundBounds() {
        if (this.mEmptySearchBackground == null) {
            return;
        }
        final int n = (this.getMeasuredWidth() - this.mEmptySearchBackground.getIntrinsicWidth()) / 2;
        final int mEmptySearchBackgroundTopOffset = this.mEmptySearchBackgroundTopOffset;
        this.mEmptySearchBackground.setBounds(n, mEmptySearchBackgroundTopOffset, this.mEmptySearchBackground.getIntrinsicWidth() + n, this.mEmptySearchBackground.getIntrinsicHeight() + mEmptySearchBackgroundTopOffset);
    }
    
    public void fillInLogContainerData(final View view, final ItemInfo itemInfo, final LauncherLogProto$Target launcherLogProto$Target, final LauncherLogProto$Target launcherLogProto$Target2) {
        final int containerType = 4;
        if (this.mApps.hasFilter()) {
            launcherLogProto$Target2.containerType = 8;
        }
        else {
            if (view instanceof BubbleTextView) {
                final int childPosition = this.getChildPosition(view);
                if (childPosition != -1) {
                    final AlphabeticalAppsList$AdapterItem alphabeticalAppsList$AdapterItem = this.mApps.getAdapterItems().get(childPosition);
                    if (alphabeticalAppsList$AdapterItem.viewType == containerType) {
                        launcherLogProto$Target2.containerType = 7;
                        launcherLogProto$Target.predictedRank = alphabeticalAppsList$AdapterItem.rowAppIndex;
                        return;
                    }
                }
            }
            launcherLogProto$Target2.containerType = containerType;
        }
    }
    
    public AlphabeticalAppsList getApps() {
        return this.mApps;
    }
    
    protected int getAvailableScrollHeight() {
        return this.getPaddingTop() + this.getCurrentScrollY(this.mApps.getAdapterItems().size(), 0) - this.getHeight() + this.getPaddingBottom();
    }
    
    public float getContentTranslationY() {
        return this.mContentTranslationY;
    }
    
    public int getCurrentScrollY() {
        final int n = -1;
        if (this.mApps.getAdapterItems().isEmpty() || this.mNumAppsPerRow == 0 || this.getChildCount() == 0) {
            return n;
        }
        final View child = this.getChildAt(0);
        final int childPosition = this.getChildPosition(child);
        if (childPosition == n) {
            return n;
        }
        return this.getCurrentScrollY(childPosition, this.getLayoutManager().getDecoratedTop(child)) + this.getPaddingTop();
    }
    
    public int getCurrentScrollY(final int n, final int n2) {
        final List adapterItems = this.mApps.getAdapterItems();
        AlphabeticalAppsList$AdapterItem alphabeticalAppsList$AdapterItem;
        if (n < adapterItems.size()) {
            alphabeticalAppsList$AdapterItem = adapterItems.get(n);
        }
        else {
            alphabeticalAppsList$AdapterItem = null;
        }
        int value = this.mCachedScrollPositions.get(n, -1);
        if (value < 0) {
            int i = 0;
            value = 0;
            while (i < n) {
                final AlphabeticalAppsList$AdapterItem alphabeticalAppsList$AdapterItem2 = adapterItems.get(i);
                int n3;
                if (AllAppsGridAdapter.isIconViewType(alphabeticalAppsList$AdapterItem2.viewType)) {
                    if (alphabeticalAppsList$AdapterItem != null && alphabeticalAppsList$AdapterItem.viewType == alphabeticalAppsList$AdapterItem2.viewType && alphabeticalAppsList$AdapterItem.rowIndex == alphabeticalAppsList$AdapterItem2.rowIndex) {
                        break;
                    }
                    if (alphabeticalAppsList$AdapterItem2.rowAppIndex == 0) {
                        n3 = this.mViewHeights.get(alphabeticalAppsList$AdapterItem2.viewType, 0) + value;
                    }
                    else {
                        n3 = value;
                    }
                }
                else {
                    n3 = this.mViewHeights.get(alphabeticalAppsList$AdapterItem2.viewType, 0) + value;
                }
                ++i;
                value = n3;
            }
            this.mCachedScrollPositions.put(n, value);
        }
        return value - n2;
    }
    
    public void onDraw(final Canvas canvas) {
        canvas.translate(0.0f, this.mContentTranslationY);
        if (this.mEmptySearchBackground != null && this.mEmptySearchBackground.getAlpha() > 0) {
            this.mEmptySearchBackground.draw(canvas);
        }
        super.onDraw(canvas);
    }
    
    public void onFastScrollCompleted() {
        super.onFastScrollCompleted();
        this.mFastScrollHelper.onFastScrollCompleted();
    }
    
    public boolean onInterceptTouchEvent(final MotionEvent motionEvent) {
        this.mPullDetector.onTouchEvent(motionEvent);
        final boolean b = super.onInterceptTouchEvent(motionEvent) || this.mOverScrollHelper.isInOverScroll();
        if (!b && motionEvent.getAction() == 0 && this.mEmptySearchBackground != null && this.mEmptySearchBackground.getAlpha() > 0) {
            this.mEmptySearchBackground.setHotspot(motionEvent.getX(), motionEvent.getY());
        }
        return b;
    }
    
    public void onSearchResultsChanged() {
        this.scrollToTop();
        if (this.mApps.shouldShowEmptySearch()) {
            if (this.mEmptySearchBackground == null) {
                (this.mEmptySearchBackground = DrawableFactory.get(this.getContext()).getAllAppsBackground(this.getContext())).setAlpha(0);
                this.mEmptySearchBackground.setCallback((Drawable$Callback)this);
                this.updateEmptySearchBackgroundBounds();
            }
            this.mEmptySearchBackground.animateBgAlpha(1.0f, 150);
        }
        else if (this.mEmptySearchBackground != null) {
            this.mEmptySearchBackground.setBgAlpha(0.0f);
        }
    }
    
    protected void onSizeChanged(final int n, final int n2, final int n3, final int n4) {
        this.updateEmptySearchBackgroundBounds();
    }
    
    public boolean onTouchEvent(final MotionEvent motionEvent) {
        this.mPullDetector.onTouchEvent(motionEvent);
        if (FeatureFlags.LAUNCHER3_PHYSICS && this.mSpringAnimationHandler != null) {
            this.mSpringAnimationHandler.addMovement(motionEvent);
        }
        return super.onTouchEvent(motionEvent);
    }
    
    public void onUpdateScrollbar(final int n) {
        final int thumbOffsetY = -1;
        if (this.mApps.getAdapterItems().isEmpty() || this.mNumAppsPerRow == 0) {
            this.mScrollbar.setThumbOffsetY(thumbOffsetY);
            return;
        }
        final int currentScrollY = this.getCurrentScrollY();
        if (currentScrollY < 0) {
            this.mScrollbar.setThumbOffsetY(thumbOffsetY);
            return;
        }
        final int availableScrollBarHeight = this.getAvailableScrollBarHeight();
        final int availableScrollHeight = this.getAvailableScrollHeight();
        if (availableScrollHeight <= 0) {
            this.mScrollbar.setThumbOffsetY(thumbOffsetY);
            return;
        }
        if (this.mScrollbar.isThumbDetached()) {
            if (!this.mScrollbar.isDraggingThumb()) {
                final int n2 = currentScrollY / availableScrollHeight * availableScrollBarHeight;
                final int thumbOffsetY2 = this.mScrollbar.getThumbOffsetY();
                final int n3 = n2 - thumbOffsetY2;
                if (n3 * n > 0.0f) {
                    int n4;
                    if (n < 0) {
                        n4 = thumbOffsetY2 + Math.max(n * thumbOffsetY2 / n2, n3);
                    }
                    else {
                        n4 = thumbOffsetY2 + Math.min((availableScrollBarHeight - thumbOffsetY2) * n / (availableScrollBarHeight - n2), n3);
                    }
                    final int max = Math.max(0, Math.min(availableScrollBarHeight, n4));
                    this.mScrollbar.setThumbOffsetY(max);
                    if (n2 == max) {
                        this.mScrollbar.reattachThumbToScroll();
                    }
                }
                else {
                    this.mScrollbar.setThumbOffsetY(thumbOffsetY2);
                }
            }
        }
        else {
            this.synchronizeScrollBarThumbOffsetToViewScroll(currentScrollY, availableScrollHeight);
        }
    }
    
    public void preMeasureViews(final AllAppsGridAdapter allAppsGridAdapter) {
        final int n = 2;
        final int n2 = 1;
        final int n3 = -1 << -1;
        final int height = allAppsGridAdapter.onCreateViewHolder(this, n).itemView.getLayoutParams().height;
        this.mViewHeights.put(n, height);
        this.mViewHeights.put(4, height);
        final int measureSpec = View$MeasureSpec.makeMeasureSpec(this.getResources().getDisplayMetrics().widthPixels, n3);
        final int measureSpec2 = View$MeasureSpec.makeMeasureSpec(this.getResources().getDisplayMetrics().heightPixels, n3);
        this.putSameHeightFor(allAppsGridAdapter, measureSpec, measureSpec2, 64, 32);
        final int[] array = new int[n2];
        array[0] = 16;
        this.putSameHeightFor(allAppsGridAdapter, measureSpec, measureSpec2, array);
        final int[] array2 = new int[n2];
        array2[0] = 8;
        this.putSameHeightFor(allAppsGridAdapter, measureSpec, measureSpec2, array2);
    }
    
    public String scrollToPositionAtProgress(final float n) {
        if (this.mApps.getNumAppRows() == 0) {
            return "";
        }
        this.stopScroll();
        final List fastScrollerSections = this.mApps.getFastScrollerSections();
        final AlphabeticalAppsList$FastScrollSectionInfo alphabeticalAppsList$FastScrollSectionInfo = fastScrollerSections.get(0);
        int i = 1;
        AlphabeticalAppsList$FastScrollSectionInfo alphabeticalAppsList$FastScrollSectionInfo2 = alphabeticalAppsList$FastScrollSectionInfo;
        while (i < fastScrollerSections.size()) {
            final AlphabeticalAppsList$FastScrollSectionInfo alphabeticalAppsList$FastScrollSectionInfo3 = fastScrollerSections.get(i);
            if (alphabeticalAppsList$FastScrollSectionInfo3.touchFraction > n) {
                break;
            }
            ++i;
            alphabeticalAppsList$FastScrollSectionInfo2 = alphabeticalAppsList$FastScrollSectionInfo3;
        }
        this.mFastScrollHelper.smoothScrollToSection(this.getCurrentScrollY(), this.getAvailableScrollHeight(), alphabeticalAppsList$FastScrollSectionInfo2);
        return alphabeticalAppsList$FastScrollSectionInfo2.sectionName;
    }
    
    public void scrollToTop() {
        if (this.mScrollbar != null) {
            this.mScrollbar.reattachThumbToScroll();
        }
        this.scrollToPosition(0);
    }
    
    public void setAdapter(final q adapter) {
        super.setAdapter(adapter);
        adapter.registerAdapterDataObserver(new AllAppsRecyclerView$2(this));
        this.mFastScrollHelper.onSetAdapter((AllAppsGridAdapter)adapter);
    }
    
    public void setApps(final AlphabeticalAppsList mApps) {
        this.mApps = mApps;
        this.mFastScrollHelper = new AllAppsFastScrollHelper(this, mApps);
    }
    
    public void setContentTranslationY(final float mContentTranslationY) {
        this.mContentTranslationY = mContentTranslationY;
        this.invalidate();
    }
    
    public void setNumAppsPerRow(final DeviceProfile deviceProfile, final int mNumAppsPerRow) {
        final int n = 1;
        this.mNumAppsPerRow = mNumAppsPerRow;
        final t recycledViewPool = this.getRecycledViewPool();
        final int n2 = (int)Math.ceil(deviceProfile.availableHeightPx / deviceProfile.allAppsIconSizePx);
        recycledViewPool.YO(8, n);
        recycledViewPool.YO(32, n);
        recycledViewPool.YO(16, n);
        recycledViewPool.YO(2, n2 * this.mNumAppsPerRow);
        recycledViewPool.YO(4, this.mNumAppsPerRow);
        recycledViewPool.YO(64, n);
    }
    
    public void setSpringAnimationHandler(final SpringAnimationHandler mSpringAnimationHandler) {
        if (FeatureFlags.LAUNCHER3_PHYSICS) {
            this.mSpringAnimationHandler = mSpringAnimationHandler;
            this.addOnScrollListener(new AllAppsRecyclerView$SpringMotionOnScrollListener(this, null));
        }
    }
    
    public boolean supportsFastScrolling() {
        return this.mApps.hasFilter() ^ true;
    }
    
    protected boolean verifyDrawable(final Drawable drawable) {
        return drawable == this.mEmptySearchBackground || super.verifyDrawable(drawable);
    }
}
