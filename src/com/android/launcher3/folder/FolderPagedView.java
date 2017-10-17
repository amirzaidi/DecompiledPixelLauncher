// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.folder;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable$Callback;
import android.animation.TimeInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.ViewPropertyAnimator;
import android.util.Log;
import com.android.launcher3.Workspace$ItemOperator;
import com.android.launcher3.ShortcutAndWidgetContainer;
import android.graphics.Canvas;
import android.view.View$OnKeyListener;
import android.view.View$OnFocusChangeListener;
import android.view.View$OnLongClickListener;
import android.view.View$OnClickListener;
import java.util.Map;
import java.util.Collection;
import com.android.launcher3.ShortcutInfo;
import com.android.launcher3.DeviceProfile;
import android.view.ViewGroup$LayoutParams;
import android.view.ViewGroup;
import com.android.launcher3.ExtendedEditText;
import java.util.Iterator;
import com.android.launcher3.BubbleTextView;
import com.android.launcher3.ItemInfo;
import com.android.launcher3.CellLayout$LayoutParams;
import com.android.launcher3.Launcher;
import com.android.launcher3.CellLayout;
import java.util.ArrayList;
import com.android.launcher3.InvariantDeviceProfile;
import android.view.View;
import com.android.launcher3.Utilities;
import com.android.launcher3.LauncherAppState;
import android.util.AttributeSet;
import android.content.Context;
import android.util.ArrayMap;
import com.android.launcher3.pageindicators.PageIndicator;
import com.android.launcher3.FocusHelper$PagedFolderKeyEventListener;
import android.view.LayoutInflater;
import com.android.launcher3.keyboard.ViewGroupFocusHelper;
import com.android.launcher3.PagedView;

public class FolderPagedView extends PagedView
{
    private static final int[] sTmpArray;
    private int mAllocatedContentSize;
    private final ViewGroupFocusHelper mFocusIndicatorHelper;
    private Folder mFolder;
    private int mGridCountX;
    private int mGridCountY;
    private final LayoutInflater mInflater;
    public final boolean mIsRtl;
    private FocusHelper$PagedFolderKeyEventListener mKeyListener;
    private final int mMaxCountX;
    private final int mMaxCountY;
    private final int mMaxItemsPerPage;
    private PageIndicator mPageIndicator;
    final ArrayMap mPendingAnimations;
    
    static {
        sTmpArray = new int[2];
    }
    
    public FolderPagedView(final Context context, final AttributeSet set) {
        super(context, set);
        this.mPendingAnimations = new ArrayMap();
        final InvariantDeviceProfile idp = LauncherAppState.getIDP(context);
        this.mMaxCountX = idp.numFolderColumns;
        this.mMaxCountY = idp.numFolderRows;
        this.mMaxItemsPerPage = this.mMaxCountX * this.mMaxCountY;
        this.mInflater = LayoutInflater.from(context);
        this.mIsRtl = Utilities.isRtl(this.getResources());
        this.setImportantForAccessibility(1);
        this.mFocusIndicatorHelper = new ViewGroupFocusHelper((View)this);
    }
    
    private void arrangeChildren(final ArrayList list, final int n, final boolean b) {
        final ArrayList<CellLayout> list2 = new ArrayList<CellLayout>();
        for (int i = 0; i < this.getChildCount(); ++i) {
            final CellLayout cellLayout = (CellLayout)this.getChildAt(i);
            cellLayout.removeAllViews();
            list2.add(cellLayout);
        }
        this.setupContentDimensions(n);
        final Iterator<CellLayout> iterator = list2.iterator();
        final FolderIconPreviewVerifier folderIconPreviewVerifier = new FolderIconPreviewVerifier(Launcher.getLauncher(this.getContext()).getDeviceProfile().inv);
        int j = 0;
        int rank = 0;
        int n2 = 0;
        CellLayout cellLayout2 = null;
        while (j < n) {
            View view;
            if (list.size() > j) {
                view = list.get(j);
            }
            else {
                view = null;
            }
            int n3;
            CellLayout cellLayout3;
            if (cellLayout2 == null || n2 >= this.mMaxItemsPerPage) {
                CellLayout andAddNewPage;
                if (iterator.hasNext()) {
                    andAddNewPage = iterator.next();
                }
                else {
                    andAddNewPage = this.createAndAddNewPage();
                }
                n3 = 0;
                cellLayout3 = andAddNewPage;
            }
            else {
                n3 = n2;
                cellLayout3 = cellLayout2;
            }
            if (view != null) {
                final CellLayout$LayoutParams cellLayout$LayoutParams = (CellLayout$LayoutParams)view.getLayoutParams();
                final int cellX = n3 % this.mGridCountX;
                final int cellY = n3 / this.mGridCountX;
                final ItemInfo itemInfo = (ItemInfo)view.getTag();
                if (itemInfo.cellX != cellX || itemInfo.cellY != cellY || itemInfo.rank != rank) {
                    itemInfo.cellX = cellX;
                    itemInfo.cellY = cellY;
                    itemInfo.rank = rank;
                    if (b) {
                        this.mFolder.mLauncher.getModelWriter().addOrMoveItemInDatabase(itemInfo, this.mFolder.mInfo.id, 0L, itemInfo.cellX, itemInfo.cellY);
                    }
                }
                cellLayout$LayoutParams.cellX = itemInfo.cellX;
                cellLayout$LayoutParams.cellY = itemInfo.cellY;
                cellLayout3.addViewToCellLayout(view, -1, this.mFolder.mLauncher.getViewIdForItem(itemInfo), cellLayout$LayoutParams, true);
                if (folderIconPreviewVerifier.isItemInPreview(rank) && view instanceof BubbleTextView) {
                    ((BubbleTextView)view).verifyHighRes();
                }
            }
            final int n4 = rank + 1;
            final int n5 = n3 + 1;
            ++j;
            rank = n4;
            n2 = n5;
            cellLayout2 = cellLayout3;
        }
        boolean b2 = false;
        while (iterator.hasNext()) {
            this.removeView((View)iterator.next());
            b2 = true;
        }
        if (b2) {
            this.setCurrentPage(0);
        }
        this.setEnableOverscroll(this.getPageCount() > 1);
        final PageIndicator mPageIndicator = this.mPageIndicator;
        int visibility;
        if (this.getPageCount() > 1) {
            visibility = 0;
        }
        else {
            visibility = 8;
        }
        mPageIndicator.setVisibility(visibility);
        final ExtendedEditText mFolderName = this.mFolder.mFolderName;
        int gravity;
        if (this.getPageCount() > 1) {
            if (this.mIsRtl) {
                gravity = 5;
            }
            else {
                gravity = 3;
            }
        }
        else {
            gravity = 1;
        }
        mFolderName.setGravity(gravity);
    }
    
    public static void calculateGridSize(final int n, final int n2, final int n3, final int n4, final int n5, final int n6, final int[] array) {
        final int n7 = 1;
        int i;
        int n8;
        int n9;
        if (n >= n6) {
            i = n7;
            n8 = n5;
            n9 = n4;
        }
        else {
            i = 0;
            n8 = n3;
            n9 = n2;
        }
        while (i == 0) {
            int n13;
            int max;
            if (n9 * n8 < n) {
                int n10;
                int n11;
                if ((n9 <= n8 || n8 == n5) && n9 < n4) {
                    n10 = n9 + 1;
                    n11 = n8;
                }
                else if (n8 < n5) {
                    n11 = n8 + 1;
                    n10 = n9;
                }
                else {
                    n11 = n8;
                    n10 = n9;
                }
                if (n11 == 0) {
                    final int n12 = n11 + 1;
                    n13 = n10;
                    max = n12;
                }
                else {
                    n13 = n10;
                    max = n11;
                }
            }
            else if ((n8 - 1) * n9 >= n && n8 >= n9) {
                max = Math.max(0, n8 - 1);
                n13 = n9;
            }
            else if ((n9 - 1) * n8 >= n) {
                final int max2 = Math.max(0, n9 - 1);
                max = n8;
                n13 = max2;
            }
            else {
                max = n8;
                n13 = n9;
            }
            if (n13 == n9 && max == n8) {
                i = n7;
            }
            else {
                i = 0;
            }
            n8 = max;
            n9 = n13;
        }
        array[0] = n9;
        array[n7] = n8;
    }
    
    private CellLayout createAndAddNewPage() {
        final DeviceProfile deviceProfile = Launcher.getLauncher(this.getContext()).getDeviceProfile();
        final CellLayout cellLayout = (CellLayout)this.mInflater.inflate(2130968598, (ViewGroup)this, false);
        cellLayout.setCellDimensions(deviceProfile.folderCellWidthPx, deviceProfile.folderCellHeightPx);
        cellLayout.getShortcutsAndWidgets().setMotionEventSplittingEnabled(false);
        cellLayout.setInvertIfRtl(true);
        cellLayout.setGridSize(this.mGridCountX, this.mGridCountY);
        this.addView((View)cellLayout, -1, (ViewGroup$LayoutParams)this.generateDefaultLayoutParams());
        return cellLayout;
    }
    
    public void addViewForRank(final View view, final ShortcutInfo shortcutInfo, final int rank) {
        final int n = rank % this.mMaxItemsPerPage;
        final int n2 = rank / this.mMaxItemsPerPage;
        shortcutInfo.rank = rank;
        shortcutInfo.cellX = n % this.mGridCountX;
        shortcutInfo.cellY = n / this.mGridCountX;
        final CellLayout$LayoutParams cellLayout$LayoutParams = (CellLayout$LayoutParams)view.getLayoutParams();
        cellLayout$LayoutParams.cellX = shortcutInfo.cellX;
        cellLayout$LayoutParams.cellY = shortcutInfo.cellY;
        this.getPageAt(n2).addViewToCellLayout(view, -1, this.mFolder.mLauncher.getViewIdForItem(shortcutInfo), cellLayout$LayoutParams, true);
    }
    
    public int allocateRankForNewItem() {
        final int itemCount = this.getItemCount();
        this.allocateSpaceForRank(itemCount);
        this.setCurrentPage(itemCount / this.mMaxItemsPerPage);
        return itemCount;
    }
    
    public void allocateSpaceForRank(final int n) {
        final ArrayList<Object> list = new ArrayList<Object>(this.mFolder.getItemsInReadingOrder());
        list.add(n, null);
        this.arrangeChildren(list, list.size(), false);
    }
    
    public void arrangeChildren(final ArrayList list, final int n) {
        this.arrangeChildren(list, n, true);
    }
    
    public ArrayList bindItems(final ArrayList list) {
        final ArrayList<View> list2 = new ArrayList<View>();
        final ArrayList list3 = new ArrayList();
        final Iterator<ShortcutInfo> iterator = (Iterator<ShortcutInfo>)list.iterator();
        while (iterator.hasNext()) {
            list2.add(this.createNewView(iterator.next()));
        }
        this.arrangeChildren(list2, list2.size(), false);
        return list3;
    }
    
    public void clearScrollHint() {
        if (this.getScrollX() != this.getScrollForPage(this.getNextPage())) {
            this.snapToPage(this.getNextPage());
        }
    }
    
    public void completePendingPageChanges() {
        if (!this.mPendingAnimations.isEmpty()) {
            for (final Map.Entry<View, V> entry : new ArrayMap(this.mPendingAnimations).entrySet()) {
                entry.getKey().animate().cancel();
                ((Runnable)entry.getValue()).run();
            }
        }
    }
    
    public View createAndAddViewForRank(final ShortcutInfo shortcutInfo, final int n) {
        final View newView = this.createNewView(shortcutInfo);
        this.allocateSpaceForRank(n);
        this.addViewForRank(newView, shortcutInfo, n);
        return newView;
    }
    
    public View createNewView(final ShortcutInfo shortcutInfo) {
        final BubbleTextView bubbleTextView = (BubbleTextView)this.mInflater.inflate(2130968596, (ViewGroup)null, false);
        bubbleTextView.applyFromShortcutInfo(shortcutInfo);
        bubbleTextView.setHapticFeedbackEnabled(false);
        bubbleTextView.setOnClickListener((View$OnClickListener)this.mFolder);
        bubbleTextView.setOnLongClickListener((View$OnLongClickListener)this.mFolder);
        bubbleTextView.setOnFocusChangeListener((View$OnFocusChangeListener)this.mFocusIndicatorHelper);
        bubbleTextView.setOnKeyListener((View$OnKeyListener)this.mKeyListener);
        bubbleTextView.setLayoutParams((ViewGroup$LayoutParams)new CellLayout$LayoutParams(shortcutInfo.cellX, shortcutInfo.cellY, shortcutInfo.spanX, shortcutInfo.spanY));
        return (View)bubbleTextView;
    }
    
    protected void dispatchDraw(final Canvas canvas) {
        this.mFocusIndicatorHelper.draw(canvas);
        super.dispatchDraw(canvas);
    }
    
    public int findNearestArea(final int n, final int n2) {
        final int n3 = 1;
        final int nextPage = this.getNextPage();
        final CellLayout page = this.getPageAt(nextPage);
        page.findNearestArea(n, n2, n3, n3, FolderPagedView.sTmpArray);
        if (this.mFolder.isLayoutRtl()) {
            FolderPagedView.sTmpArray[0] = page.getCountX() - FolderPagedView.sTmpArray[0] - 1;
        }
        return Math.min(this.mAllocatedContentSize - 1, this.mMaxItemsPerPage * nextPage + FolderPagedView.sTmpArray[n3] * this.mGridCountX + FolderPagedView.sTmpArray[0]);
    }
    
    public String getAccessibilityDescription() {
        return this.getContext().getString(2131492937, new Object[] { this.mGridCountX, this.mGridCountY });
    }
    
    public int getAllocatedContentSize() {
        return this.mAllocatedContentSize;
    }
    
    protected int getChildGap() {
        return this.getPaddingLeft() + this.getPaddingRight();
    }
    
    public CellLayout getCurrentCellLayout() {
        return this.getPageAt(this.getNextPage());
    }
    
    public int getDesiredHeight() {
        int n = 0;
        if (this.getPageCount() > 0) {
            n = this.getPageAt(0).getDesiredHeight() + this.getPaddingTop() + this.getPaddingBottom();
        }
        return n;
    }
    
    public int getDesiredWidth() {
        int n = 0;
        if (this.getPageCount() > 0) {
            n = this.getPageAt(0).getDesiredWidth() + this.getPaddingLeft() + this.getPaddingRight();
        }
        return n;
    }
    
    public View getFirstItem() {
        if (this.getChildCount() < 1) {
            return null;
        }
        final ShortcutAndWidgetContainer shortcutsAndWidgets = this.getCurrentCellLayout().getShortcutsAndWidgets();
        if (this.mGridCountX > 0) {
            return shortcutsAndWidgets.getChildAt(0, 0);
        }
        return shortcutsAndWidgets.getChildAt(0);
    }
    
    public int getItemCount() {
        final int n = this.getChildCount() - 1;
        if (n < 0) {
            return 0;
        }
        return n * this.mMaxItemsPerPage + this.getPageAt(n).getShortcutsAndWidgets().getChildCount();
    }
    
    public View getLastItem() {
        if (this.getChildCount() < 1) {
            return null;
        }
        final ShortcutAndWidgetContainer shortcutsAndWidgets = this.getCurrentCellLayout().getShortcutsAndWidgets();
        final int n = shortcutsAndWidgets.getChildCount() - 1;
        if (this.mGridCountX > 0) {
            return shortcutsAndWidgets.getChildAt(n % this.mGridCountX, n / this.mGridCountX);
        }
        return shortcutsAndWidgets.getChildAt(n);
    }
    
    public CellLayout getPageAt(final int n) {
        return (CellLayout)this.getChildAt(n);
    }
    
    public boolean isFull() {
        return false;
    }
    
    public int itemsPerPage() {
        return this.mMaxItemsPerPage;
    }
    
    public View iterateOverItems(final Workspace$ItemOperator workspace$ItemOperator) {
        for (int i = 0; i < this.getChildCount(); ++i) {
            final CellLayout page = this.getPageAt(i);
            for (int j = 0; j < page.getCountY(); ++j) {
                for (int k = 0; k < page.getCountX(); ++k) {
                    final View child = page.getChildAt(k, j);
                    if (child != null && workspace$ItemOperator.evaluate((ItemInfo)child.getTag(), child)) {
                        return child;
                    }
                }
            }
        }
        return null;
    }
    
    protected void notifyPageSwitchListener(final int n) {
        super.notifyPageSwitchListener(n);
        if (this.mFolder != null) {
            this.mFolder.updateTextViewFocus();
        }
    }
    
    protected void onPageBeginTransition() {
        super.onPageBeginTransition();
        this.verifyVisibleHighResIcons(this.getCurrentPage() - 1);
        this.verifyVisibleHighResIcons(this.getCurrentPage() + 1);
    }
    
    protected void onScrollChanged(final int n, final int n2, final int n3, final int n4) {
        super.onScrollChanged(n, n2, n3, n4);
        this.mPageIndicator.setScroll(n, this.mMaxScrollX);
    }
    
    public boolean rankOnCurrentPage(final int n) {
        return n / this.mMaxItemsPerPage == this.getNextPage();
    }
    
    public void realTimeReorder(int i, final int n) {
        this.completePendingPageChanges();
        int n2 = 0;
        float n3 = 30.0f;
        final int nextPage = this.getNextPage();
        final int n4 = n / this.mMaxItemsPerPage;
        final int n5 = n % this.mMaxItemsPerPage;
        if (n4 != nextPage) {
            Log.e("FolderPagedView", "Cannot animate when the target cell is invisible");
        }
        int n6 = i % this.mMaxItemsPerPage;
        final int n7 = i / this.mMaxItemsPerPage;
        if (n == i) {
            return;
        }
        int n10;
        int n11;
        int n12;
        int n13;
        if (n > i) {
            final int n8 = 1;
            int n9;
            if (n7 < nextPage) {
                n9 = nextPage * this.mMaxItemsPerPage;
                n6 = 0;
            }
            else {
                n9 = -1;
                i = -1;
            }
            n10 = n5;
            n11 = n8;
            n12 = n9;
            n13 = n6;
        }
        else {
            final int n14 = -1;
            int n15;
            if (n7 > nextPage) {
                n15 = (nextPage + 1) * this.mMaxItemsPerPage - 1;
                n6 = this.mMaxItemsPerPage - 1;
            }
            else {
                n15 = -1;
                i = -1;
            }
            n10 = n5;
            n11 = n14;
            n12 = n15;
            n13 = n6;
        }
        while (i != n12) {
            final int n16 = i + n11;
            final int n17 = n16 / this.mMaxItemsPerPage;
            final int n18 = n16 % this.mMaxItemsPerPage;
            final int n19 = n18 % this.mGridCountX;
            final int n20 = n18 / this.mGridCountX;
            final CellLayout page = this.getPageAt(n17);
            final View child = page.getChildAt(n19, n20);
            if (child != null) {
                if (nextPage != n17) {
                    page.removeView(child);
                    this.addViewForRank(child, (ShortcutInfo)child.getTag(), i);
                }
                else {
                    final FolderPagedView$1 folderPagedView$1 = new FolderPagedView$1(this, child, child.getTranslationX(), i);
                    final ViewPropertyAnimator animate = child.animate();
                    int width;
                    if ((n11 > 0 && true) ^ this.mIsRtl) {
                        width = -child.getWidth();
                    }
                    else {
                        width = child.getWidth();
                    }
                    animate.translationXBy((float)width).setDuration(230L).setStartDelay(0L).withEndAction((Runnable)folderPagedView$1);
                    this.mPendingAnimations.put((Object)child, (Object)folderPagedView$1);
                }
            }
            i = n16;
        }
        if ((n10 - n13) * n11 <= 0) {
            return;
        }
        final CellLayout page2 = this.getPageAt(nextPage);
        float n22;
        for (int j = n13; j != n10; j += n11, n3 = n22) {
            final int n21 = j + n11;
            final View child2 = page2.getChildAt(n21 % this.mGridCountX, n21 / this.mGridCountX);
            if (child2 != null) {
                final ItemInfo itemInfo = (ItemInfo)child2.getTag();
                itemInfo.rank -= n11;
            }
            if (page2.animateChildToPosition(child2, j % this.mGridCountX, j / this.mGridCountX, 230, n2, true, true)) {
                n2 += (int)n3;
                n22 = 0.9f * n3;
            }
            else {
                n22 = n3;
            }
        }
    }
    
    public void removeItem(final View view) {
        for (int i = this.getChildCount() - 1; i >= 0; --i) {
            this.getPageAt(i).removeView(view);
        }
    }
    
    public void setFixedSize(final int n, final int n2) {
        final int n3 = n - (this.getPaddingLeft() + this.getPaddingRight());
        final int n4 = n2 - (this.getPaddingTop() + this.getPaddingBottom());
        for (int i = this.getChildCount() - 1; i >= 0; --i) {
            ((CellLayout)this.getChildAt(i)).setFixedSize(n3, n4);
        }
    }
    
    public void setFocusOnFirstChild() {
        final View child = this.getCurrentCellLayout().getChildAt(0, 0);
        if (child != null) {
            child.requestFocus();
        }
    }
    
    public void setFolder(final Folder mFolder) {
        this.mFolder = mFolder;
        this.mKeyListener = new FocusHelper$PagedFolderKeyEventListener(mFolder);
        this.mPageIndicator = (PageIndicator)mFolder.findViewById(2131624066);
        this.initParentViews((View)mFolder);
    }
    
    public void setupContentDimensions(final int mAllocatedContentSize) {
        calculateGridSize(this.mAllocatedContentSize = mAllocatedContentSize, this.mGridCountX, this.mGridCountY, this.mMaxCountX, this.mMaxCountY, this.mMaxItemsPerPage, FolderPagedView.sTmpArray);
        this.mGridCountX = FolderPagedView.sTmpArray[0];
        this.mGridCountY = FolderPagedView.sTmpArray[1];
        for (int i = this.getPageCount() - 1; i >= 0; --i) {
            this.getPageAt(i).setGridSize(this.mGridCountX, this.mGridCountY);
        }
    }
    
    public void showScrollHint(final int n) {
        float n2;
        if ((n == 0 && true) ^ this.mIsRtl) {
            n2 = -0.07f;
        }
        else {
            n2 = 0.07f;
        }
        final int n3 = (int)(n2 * this.getWidth()) + this.getScrollForPage(this.getNextPage()) - this.getScrollX();
        if (n3 != 0) {
            this.mScroller.setInterpolator((TimeInterpolator)new DecelerateInterpolator());
            this.mScroller.startScroll(this.getScrollX(), 0, n3, 0, 500);
            this.invalidate();
        }
    }
    
    public void verifyVisibleHighResIcons(final int n) {
        final CellLayout page = this.getPageAt(n);
        if (page != null) {
            final ShortcutAndWidgetContainer shortcutsAndWidgets = page.getShortcutsAndWidgets();
            for (int i = shortcutsAndWidgets.getChildCount() - 1; i >= 0; --i) {
                final BubbleTextView callback = (BubbleTextView)shortcutsAndWidgets.getChildAt(i);
                callback.verifyHighRes();
                final Drawable drawable = callback.getCompoundDrawables()[1];
                if (drawable != null) {
                    drawable.setCallback((Drawable$Callback)callback);
                }
            }
        }
    }
}
