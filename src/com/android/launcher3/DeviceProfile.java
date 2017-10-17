// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.view.View;
import android.view.ViewGroup$LayoutParams;
import android.widget.FrameLayout$LayoutParams;
import android.view.ViewGroup;
import android.content.res.Configuration;
import android.util.DisplayMetrics;
import android.content.res.Resources;
import android.appwidget.AppWidgetHostView;
import android.content.ComponentName;
import android.graphics.Point;
import android.content.Context;
import java.util.ArrayList;
import com.android.launcher3.badge.BadgeRenderer;
import android.graphics.Rect;
import android.graphics.PointF;

public class DeviceProfile
{
    public int allAppsButtonVisualSize;
    public int allAppsCellHeightPx;
    public int allAppsIconDrawablePaddingPx;
    public int allAppsIconSizePx;
    public float allAppsIconTextSizePx;
    public int allAppsNumCols;
    public int allAppsNumPredictiveCols;
    public final PointF appWidgetScale;
    public final int availableHeightPx;
    public final int availableWidthPx;
    public int cellHeightPx;
    public final int cellLayoutBottomPaddingPx;
    public final int cellLayoutPaddingLeftRightPx;
    public int cellWidthPx;
    private final int defaultPageSpacingPx;
    public final Rect defaultWidgetPadding;
    private final int desiredWorkspaceLeftRightMarginPx;
    public int dropTargetBarSizePx;
    public final int edgeMarginPx;
    public int folderBackgroundOffset;
    public int folderCellHeightPx;
    public int folderCellWidthPx;
    public int folderChildDrawablePaddingPx;
    public int folderChildIconSizePx;
    public int folderChildTextSizePx;
    public int folderIconPreviewPadding;
    public int folderIconSizePx;
    public final int heightPx;
    public int hotseatBarBottomPaddingPx;
    public int hotseatBarLeftNavBarLeftPaddingPx;
    public int hotseatBarLeftNavBarRightPaddingPx;
    public int hotseatBarRightNavBarLeftPaddingPx;
    public int hotseatBarRightNavBarRightPaddingPx;
    public int hotseatBarSizePx;
    public int hotseatBarTopPaddingPx;
    public int hotseatCellHeightPx;
    public int iconDrawablePaddingOriginalPx;
    public int iconDrawablePaddingPx;
    public int iconSizePx;
    public int iconTextSizePx;
    public final InvariantDeviceProfile inv;
    public final boolean isLandscape;
    public final boolean isLargeTablet;
    public final boolean isPhone;
    public final boolean isTablet;
    public BadgeRenderer mBadgeRenderer;
    private Rect mInsets;
    private ArrayList mListeners;
    private final int overviewModeBarItemWidthPx;
    private final int overviewModeBarSpacerWidthPx;
    private final float overviewModeIconZoneRatio;
    private final int overviewModeMaxIconZoneHeightPx;
    private final int overviewModeMinIconZoneHeightPx;
    private final int pageIndicatorLandLeftNavBarGutterPx;
    private final int pageIndicatorLandRightNavBarGutterPx;
    private final int pageIndicatorLandWorkspaceOffsetPx;
    private int pageIndicatorSizePx;
    private final int topWorkspacePadding;
    public final boolean transposeLayoutWithOrientation;
    public final int widthPx;
    public int workspaceCellPaddingXPx;
    public float workspaceSpringLoadShrinkFactor;
    public final int workspaceSpringLoadedBottomSpace;
    
    public DeviceProfile(final Context context, final InvariantDeviceProfile inv, final Point point, final Point point2, final int widthPx, final int heightPx, final boolean isLandscape) {
        int n = 1;
        final float n2 = 1.0f;
        this.appWidgetScale = new PointF(n2, n2);
        this.mInsets = new Rect();
        this.mListeners = new ArrayList();
        this.inv = inv;
        this.isLandscape = isLandscape;
        final Resources resources = context.getResources();
        final DisplayMetrics displayMetrics = resources.getDisplayMetrics();
        this.isTablet = resources.getBoolean(2131689475);
        this.isLargeTablet = resources.getBoolean(2131689476);
        this.isPhone = (!this.isTablet && (this.isLargeTablet ^ true));
        this.transposeLayoutWithOrientation = resources.getBoolean(2131689478);
        int n3;
        if (this.isVerticalBarLayout()) {
            n3 = 2;
        }
        else {
            n3 = n;
        }
        final Context context2 = getContext(context, n3);
        final Resources resources2 = context2.getResources();
        this.defaultWidgetPadding = AppWidgetHostView.getDefaultPaddingForWidget(context2, new ComponentName(context2.getPackageName(), this.getClass().getName()), (Rect)null);
        this.edgeMarginPx = resources2.getDimensionPixelSize(2131427344);
        int edgeMarginPx;
        if (this.isVerticalBarLayout()) {
            edgeMarginPx = 0;
        }
        else {
            edgeMarginPx = this.edgeMarginPx;
        }
        this.desiredWorkspaceLeftRightMarginPx = edgeMarginPx;
        this.cellLayoutPaddingLeftRightPx = resources2.getDimensionPixelSize(2131427357);
        this.cellLayoutBottomPaddingPx = resources2.getDimensionPixelSize(2131427358);
        this.pageIndicatorSizePx = resources2.getDimensionPixelSize(2131427345);
        this.pageIndicatorLandLeftNavBarGutterPx = resources2.getDimensionPixelSize(2131427347);
        this.pageIndicatorLandRightNavBarGutterPx = resources2.getDimensionPixelSize(2131427348);
        this.pageIndicatorLandWorkspaceOffsetPx = resources2.getDimensionPixelSize(2131427397);
        this.defaultPageSpacingPx = resources2.getDimensionPixelSize(2131427355);
        this.topWorkspacePadding = resources2.getDimensionPixelSize(2131427354);
        this.overviewModeMinIconZoneHeightPx = resources2.getDimensionPixelSize(2131427350);
        this.overviewModeMaxIconZoneHeightPx = resources2.getDimensionPixelSize(2131427351);
        this.overviewModeBarItemWidthPx = resources2.getDimensionPixelSize(2131427352);
        this.overviewModeBarSpacerWidthPx = resources2.getDimensionPixelSize(2131427353);
        this.overviewModeIconZoneRatio = resources2.getInteger(2131558401) / 100.0f;
        this.iconDrawablePaddingOriginalPx = resources2.getDimensionPixelSize(2131427349);
        this.dropTargetBarSizePx = resources2.getDimensionPixelSize(2131427369);
        this.workspaceSpringLoadedBottomSpace = resources2.getDimensionPixelSize(2131427356);
        this.workspaceCellPaddingXPx = resources2.getDimensionPixelSize(2131427359);
        this.hotseatBarTopPaddingPx = resources2.getDimensionPixelSize(2131427360);
        this.hotseatBarBottomPaddingPx = resources2.getDimensionPixelSize(2131427361);
        this.hotseatBarLeftNavBarRightPaddingPx = resources2.getDimensionPixelSize(2131427363);
        this.hotseatBarRightNavBarRightPaddingPx = resources2.getDimensionPixelSize(2131427364);
        this.hotseatBarLeftNavBarLeftPaddingPx = resources2.getDimensionPixelSize(2131427367);
        this.hotseatBarRightNavBarLeftPaddingPx = resources2.getDimensionPixelSize(2131427368);
        int pxFromDp;
        if (this.isVerticalBarLayout()) {
            pxFromDp = Utilities.pxFromDp(inv.iconSize, displayMetrics);
        }
        else {
            pxFromDp = resources2.getDimensionPixelSize(2131427362) + this.hotseatBarTopPaddingPx + this.hotseatBarBottomPaddingPx;
        }
        this.hotseatBarSizePx = pxFromDp;
        this.widthPx = widthPx;
        this.heightPx = heightPx;
        if (isLandscape) {
            this.availableWidthPx = point2.x;
            this.availableHeightPx = point.y;
        }
        else {
            this.availableWidthPx = point.x;
            this.availableHeightPx = point2.y;
        }
        this.updateAvailableDimensions(displayMetrics, resources2);
        if (Float.compare(Math.max(this.widthPx, this.heightPx) / Math.min(this.widthPx, this.heightPx), 2.0f) < 0) {
            n = 0;
        }
        if (!this.isVerticalBarLayout() && this.isPhone && n != 0) {
            this.hotseatBarSizePx += this.getCellSize().y - this.iconSizePx - this.iconDrawablePaddingPx - this.pageIndicatorSizePx;
            this.updateAvailableDimensions(displayMetrics, resources2);
        }
        this.computeAllAppsButtonSize(context2);
        this.mBadgeRenderer = new BadgeRenderer(context2, this.iconSizePx);
    }
    
    private void adjustToHideWorkspaceLabels() {
        this.iconTextSizePx = 0;
        this.iconDrawablePaddingPx = 0;
        this.cellHeightPx = this.iconSizePx;
        final int allAppsIconDrawablePaddingPx = this.allAppsIconDrawablePaddingPx;
        int n;
        if (this.isVerticalBarLayout()) {
            n = 2;
        }
        else {
            n = 1;
        }
        this.allAppsCellHeightPx = n * allAppsIconDrawablePaddingPx * 2 + (this.allAppsIconSizePx + this.allAppsIconDrawablePaddingPx + Utilities.calculateTextHeight(this.allAppsIconTextSizePx));
    }
    
    public static int calculateCellHeight(final int n, final int n2) {
        return n / n2;
    }
    
    public static int calculateCellWidth(final int n, final int n2) {
        return n / n2;
    }
    
    private void computeAllAppsButtonSize(final Context context) {
        this.allAppsButtonVisualSize = (int)((1.0f - context.getResources().getInteger(2131558411) / 100.0f) * this.iconSizePx) - context.getResources().getDimensionPixelSize(2131427387);
    }
    
    private static Context getContext(final Context context, final int orientation) {
        final Configuration configuration = new Configuration(context.getResources().getConfiguration());
        configuration.orientation = orientation;
        return context.createConfigurationContext(configuration);
    }
    
    private int getCurrentHeight() {
        int n;
        if (this.isLandscape) {
            n = Math.min(this.widthPx, this.heightPx);
        }
        else {
            n = Math.max(this.widthPx, this.heightPx);
        }
        return n;
    }
    
    private int getCurrentWidth() {
        int n;
        if (this.isLandscape) {
            n = Math.max(this.widthPx, this.heightPx);
        }
        else {
            n = Math.min(this.widthPx, this.heightPx);
        }
        return n;
    }
    
    private int getVisibleChildCount(final ViewGroup viewGroup) {
        int i = 0;
        int n = 0;
        while (i < viewGroup.getChildCount()) {
            if (viewGroup.getChildAt(i).getVisibility() != 8) {
                ++n;
            }
            ++i;
        }
        return n;
    }
    
    private int getWorkspacePageSpacing() {
        if (this.isVerticalBarLayout() || this.isLargeTablet) {
            return this.defaultPageSpacingPx;
        }
        return Math.max(this.defaultPageSpacingPx, this.getWorkspacePadding(null).left + 1);
    }
    
    private void updateAvailableDimensions(final DisplayMetrics displayMetrics, final Resources resources) {
        this.updateIconSize(1.0f, resources, displayMetrics);
        final float n = this.cellHeightPx * this.inv.numRows;
        final int n2 = this.availableHeightPx - this.getTotalWorkspacePadding().y;
        if (n > n2) {
            this.updateIconSize(n2 / n, resources, displayMetrics);
        }
        this.updateAvailableFolderCellDimensions(displayMetrics, resources);
    }
    
    private void updateAvailableFolderCellDimensions(final DisplayMetrics displayMetrics, final Resources resources) {
        final float n = 1.0f;
        final int n2 = resources.getDimensionPixelSize(2131427431) + resources.getDimensionPixelSize(2131427432) + Utilities.calculateTextHeight(resources.getDimension(2131427433));
        this.updateFolderCellSize(n, displayMetrics, resources);
        final int edgeMarginPx = this.edgeMarginPx;
        final float min = Math.min((this.availableWidthPx - this.getTotalWorkspacePadding().x - edgeMarginPx) / (this.folderCellWidthPx * this.inv.numFolderColumns), (this.availableHeightPx - this.getTotalWorkspacePadding().y - edgeMarginPx) / (n2 + this.folderCellHeightPx * this.inv.numFolderRows));
        if (min < n) {
            this.updateFolderCellSize(min, displayMetrics, resources);
        }
    }
    
    private void updateFolderCellSize(final float n, final DisplayMetrics displayMetrics, final Resources resources) {
        this.folderChildIconSizePx = (int)(Utilities.pxFromDp(this.inv.iconSize, displayMetrics) * n);
        this.folderChildTextSizePx = (int)(resources.getDimensionPixelSize(2131427430) * n);
        final int calculateTextHeight = Utilities.calculateTextHeight(this.folderChildTextSizePx);
        final int n2 = (int)(resources.getDimensionPixelSize(2131427428) * n);
        final int n3 = (int)(resources.getDimensionPixelSize(2131427429) * n);
        this.folderCellWidthPx = n2 * 2 + this.folderChildIconSizePx;
        this.folderCellHeightPx = this.folderChildIconSizePx + n3 * 2 + calculateTextHeight;
        this.folderChildDrawablePaddingPx = Math.max(0, (this.folderCellHeightPx - this.folderChildIconSizePx - calculateTextHeight) / 3);
    }
    
    private void updateIconSize(final float n, final Resources resources, final DisplayMetrics displayMetrics) {
        final int n2 = 2131558405;
        final float n3 = 100.0f;
        float n4;
        if (this.isVerticalBarLayout()) {
            n4 = this.inv.landscapeIconSize;
        }
        else {
            n4 = this.inv.iconSize;
        }
        this.iconSizePx = (int)(Utilities.pxFromDp(n4, displayMetrics) * n);
        this.iconTextSizePx = (int)(Utilities.pxFromSp(this.inv.iconTextSize, displayMetrics) * n);
        this.iconDrawablePaddingPx = (int)(this.iconDrawablePaddingOriginalPx * n);
        this.cellWidthPx = this.iconSizePx + this.iconDrawablePaddingPx;
        this.cellHeightPx = this.iconSizePx + this.iconDrawablePaddingPx + Utilities.calculateTextHeight(this.iconTextSizePx);
        this.allAppsIconTextSizePx = this.iconTextSizePx;
        this.allAppsIconSizePx = this.iconSizePx;
        this.allAppsIconDrawablePaddingPx = this.iconDrawablePaddingPx;
        this.allAppsCellHeightPx = this.getCellSize().y;
        if (this.isVerticalBarLayout()) {
            this.adjustToHideWorkspaceLabels();
        }
        if (this.isVerticalBarLayout()) {
            this.hotseatBarSizePx = this.iconSizePx;
        }
        this.hotseatCellHeightPx = this.iconSizePx + this.iconDrawablePaddingPx;
        if (!this.isVerticalBarLayout()) {
            this.workspaceSpringLoadShrinkFactor = Math.min(resources.getInteger(n2) / n3, 1.0f - (this.dropTargetBarSizePx + this.workspaceSpringLoadedBottomSpace) / (this.availableHeightPx - this.hotseatBarSizePx - this.pageIndicatorSizePx - this.topWorkspacePadding));
        }
        else {
            this.workspaceSpringLoadShrinkFactor = resources.getInteger(n2) / n3;
        }
        this.folderBackgroundOffset = -this.iconDrawablePaddingPx;
        this.folderIconSizePx = this.iconSizePx + -this.folderBackgroundOffset * 2;
        this.folderIconPreviewPadding = resources.getDimensionPixelSize(2131427426);
    }
    
    public void addLauncherLayoutChangedListener(final DeviceProfile$LauncherLayoutChangeListener deviceProfile$LauncherLayoutChangeListener) {
        if (!this.mListeners.contains(deviceProfile$LauncherLayoutChangeListener)) {
            this.mListeners.add(deviceProfile$LauncherLayoutChangeListener);
        }
    }
    
    public Rect getAbsoluteOpenFolderBounds() {
        if (this.isVerticalBarLayout()) {
            return new Rect(this.mInsets.left + this.dropTargetBarSizePx + this.edgeMarginPx, this.mInsets.top, this.mInsets.left + this.availableWidthPx - this.hotseatBarSizePx - this.edgeMarginPx, this.mInsets.top + this.availableHeightPx);
        }
        return new Rect(this.mInsets.left, this.mInsets.top + this.dropTargetBarSizePx + this.edgeMarginPx, this.mInsets.left + this.availableWidthPx, this.mInsets.top + this.availableHeightPx - this.hotseatBarSizePx - this.pageIndicatorSizePx - this.edgeMarginPx);
    }
    
    public int getCellHeight(final int n) {
        switch (n) {
            default: {
                return 0;
            }
            case 0: {
                return this.cellHeightPx;
            }
            case 2: {
                return this.folderCellHeightPx;
            }
            case 1: {
                return this.hotseatCellHeightPx;
            }
        }
    }
    
    public Point getCellSize() {
        final Point point = new Point();
        final Point totalWorkspacePadding = this.getTotalWorkspacePadding();
        point.x = calculateCellWidth(this.availableWidthPx - totalWorkspacePadding.x - this.cellLayoutPaddingLeftRightPx * 2, this.inv.numColumns);
        point.y = calculateCellHeight(this.availableHeightPx - totalWorkspacePadding.y - this.cellLayoutBottomPaddingPx, this.inv.numRows);
        return point;
    }
    
    public final int[] getContainerPadding() {
        if (this.isPhone && (this.isVerticalBarLayout() ^ true)) {
            return new int[] { 0, 0 };
        }
        final Rect workspacePadding = this.getWorkspacePadding(null);
        return new int[] { workspacePadding.left - this.mInsets.left, workspacePadding.right + this.mInsets.left };
    }
    
    DeviceProfile getMultiWindowProfile(final Context context, final Point point) {
        final DeviceProfile deviceProfile = new DeviceProfile(context, this.inv, point, point, point.x, point.y, this.isLandscape);
        deviceProfile.adjustToHideWorkspaceLabels();
        deviceProfile.appWidgetScale.set(deviceProfile.getCellSize().x / this.getCellSize().x, deviceProfile.getCellSize().y / this.getCellSize().y);
        return deviceProfile;
    }
    
    int getOverviewModeButtonBarHeight() {
        return Math.min(this.overviewModeMaxIconZoneHeightPx, Math.max(this.overviewModeMinIconZoneHeightPx, (int)(this.overviewModeIconZoneRatio * this.availableHeightPx)));
    }
    
    public Point getSearchBarDimensForWidgetOpts() {
        if (this.isVerticalBarLayout()) {
            return new Point(this.dropTargetBarSizePx, this.availableHeightPx - this.edgeMarginPx * 2);
        }
        int n;
        if (this.isTablet) {
            n = (this.getCurrentWidth() - this.edgeMarginPx * 2 - this.inv.numColumns * this.cellWidthPx) / ((this.inv.numColumns + 1) * 2) + this.edgeMarginPx;
        }
        else {
            n = this.desiredWorkspaceLeftRightMarginPx - this.defaultWidgetPadding.right;
        }
        return new Point(this.availableWidthPx - n * 2, this.dropTargetBarSizePx);
    }
    
    public Point getTotalWorkspacePadding() {
        final Rect workspacePadding = this.getWorkspacePadding(null);
        return new Point(workspacePadding.left + workspacePadding.right, workspacePadding.bottom + workspacePadding.top);
    }
    
    public Rect getWorkspacePadding(Rect rect) {
        if (rect == null) {
            rect = new Rect();
        }
        if (this.isVerticalBarLayout()) {
            if (this.mInsets.left > 0) {
                rect.set(this.mInsets.left + this.pageIndicatorLandLeftNavBarGutterPx, 0, this.hotseatBarSizePx + this.hotseatBarLeftNavBarRightPaddingPx + this.hotseatBarLeftNavBarLeftPaddingPx - this.mInsets.left, this.edgeMarginPx);
            }
            else {
                rect.set(this.pageIndicatorLandRightNavBarGutterPx, 0, this.hotseatBarSizePx + this.hotseatBarRightNavBarRightPaddingPx + this.hotseatBarRightNavBarLeftPaddingPx, this.edgeMarginPx);
            }
        }
        else {
            final int n = this.hotseatBarSizePx + this.pageIndicatorSizePx;
            if (this.isTablet) {
                final int currentWidth = this.getCurrentWidth();
                final int currentHeight = this.getCurrentHeight();
                final int n2 = (int)Math.min(Math.max(0, currentWidth - (this.inv.numColumns * this.cellWidthPx + (this.inv.numColumns - 1) * this.cellWidthPx)), currentWidth * 0.14f);
                final int max = Math.max(0, currentHeight - this.topWorkspacePadding - n - this.inv.numRows * 2 * this.cellHeightPx - this.hotseatBarTopPaddingPx - this.hotseatBarBottomPaddingPx);
                rect.set(n2 / 2, this.topWorkspacePadding + max / 2, n2 / 2, n + max / 2);
            }
            else {
                rect.set(this.desiredWorkspaceLeftRightMarginPx, this.topWorkspacePadding, this.desiredWorkspaceLeftRightMarginPx, n);
            }
        }
        return rect;
    }
    
    public boolean isVerticalBarLayout() {
        return this.isLandscape && this.transposeLayoutWithOrientation;
    }
    
    public void layout(final Launcher launcher, final boolean b) {
        final int n = 80;
        final int width = -1;
        final boolean verticalBarLayout = this.isVerticalBarLayout();
        final Point searchBarDimensForWidgetOpts = this.getSearchBarDimensForWidgetOpts();
        final DropTargetBar dropTargetBar = launcher.getDropTargetBar();
        final FrameLayout$LayoutParams layoutParams = (FrameLayout$LayoutParams)((View)dropTargetBar).getLayoutParams();
        layoutParams.width = searchBarDimensForWidgetOpts.x;
        layoutParams.height = searchBarDimensForWidgetOpts.y;
        layoutParams.topMargin = this.mInsets.top + this.edgeMarginPx;
        ((View)dropTargetBar).setLayoutParams((ViewGroup$LayoutParams)layoutParams);
        final PagedView pagedView = (PagedView)launcher.findViewById(2131623973);
        final Rect workspacePadding = this.getWorkspacePadding(null);
        pagedView.setPadding(workspacePadding.left, workspacePadding.top, workspacePadding.right, workspacePadding.bottom);
        pagedView.setPageSpacing(this.getWorkspacePageSpacing());
        final Hotseat hotseat = (Hotseat)launcher.findViewById(2131623974);
        final FrameLayout$LayoutParams layoutParams2 = (FrameLayout$LayoutParams)hotseat.getLayoutParams();
        final int round = Math.round((this.getCurrentWidth() / this.inv.numColumns - this.getCurrentWidth() / this.inv.numHotseatIcons) / 2.0f);
        if (verticalBarLayout) {
            int n2;
            if (this.mInsets.left > 0) {
                n2 = this.hotseatBarLeftNavBarRightPaddingPx;
            }
            else {
                n2 = this.hotseatBarRightNavBarRightPaddingPx;
            }
            int n3;
            if (this.mInsets.left > 0) {
                n3 = this.hotseatBarLeftNavBarLeftPaddingPx;
            }
            else {
                n3 = this.hotseatBarRightNavBarLeftPaddingPx;
            }
            layoutParams2.gravity = 5;
            layoutParams2.width = this.hotseatBarSizePx + this.mInsets.left + this.mInsets.right + n3 + n2;
            layoutParams2.height = width;
            hotseat.getLayout().setPadding(n3 + (this.mInsets.left + this.cellLayoutPaddingLeftRightPx), this.mInsets.top, n2 + (this.mInsets.right + this.cellLayoutPaddingLeftRightPx), workspacePadding.bottom + this.cellLayoutBottomPaddingPx);
        }
        else if (this.isTablet) {
            layoutParams2.gravity = n;
            layoutParams2.width = width;
            layoutParams2.height = this.hotseatBarSizePx + this.mInsets.bottom;
            hotseat.getLayout().setPadding(workspacePadding.left + round + this.cellLayoutPaddingLeftRightPx, this.hotseatBarTopPaddingPx, round + workspacePadding.right + this.cellLayoutPaddingLeftRightPx, this.hotseatBarBottomPaddingPx + this.mInsets.bottom + this.cellLayoutBottomPaddingPx);
        }
        else {
            layoutParams2.gravity = n;
            layoutParams2.width = width;
            layoutParams2.height = this.hotseatBarSizePx + this.mInsets.bottom;
            hotseat.getLayout().setPadding(workspacePadding.left + round + this.cellLayoutPaddingLeftRightPx, this.hotseatBarTopPaddingPx, round + workspacePadding.right + this.cellLayoutPaddingLeftRightPx, this.hotseatBarBottomPaddingPx + this.mInsets.bottom + this.cellLayoutBottomPaddingPx);
        }
        hotseat.setLayoutParams((ViewGroup$LayoutParams)layoutParams2);
        final View viewById = launcher.findViewById(2131624012);
        if (viewById != null) {
            final FrameLayout$LayoutParams layoutParams3 = (FrameLayout$LayoutParams)viewById.getLayoutParams();
            if (this.isVerticalBarLayout()) {
                if (this.mInsets.left > 0) {
                    layoutParams3.leftMargin = this.mInsets.left;
                }
                else {
                    layoutParams3.leftMargin = this.pageIndicatorLandWorkspaceOffsetPx;
                }
                layoutParams3.bottomMargin = workspacePadding.bottom;
            }
            else {
                layoutParams3.gravity = 81;
                layoutParams3.height = this.pageIndicatorSizePx;
                layoutParams3.bottomMargin = this.hotseatBarSizePx + this.mInsets.bottom;
            }
            viewById.setLayoutParams((ViewGroup$LayoutParams)layoutParams3);
        }
        final ViewGroup overviewPanel = launcher.getOverviewPanel();
        if (overviewPanel != null) {
            final int visibleChildCount = this.getVisibleChildCount(overviewPanel);
            final int n4 = this.overviewModeBarItemWidthPx * visibleChildCount + (visibleChildCount - 1) * this.overviewModeBarSpacerWidthPx;
            final FrameLayout$LayoutParams layoutParams4 = (FrameLayout$LayoutParams)overviewPanel.getLayoutParams();
            layoutParams4.width = Math.min(this.availableWidthPx, n4);
            layoutParams4.height = this.getOverviewModeButtonBarHeight() + this.mInsets.bottom;
            overviewPanel.setLayoutParams((ViewGroup$LayoutParams)layoutParams4);
        }
        final View viewById2 = launcher.findViewById(2131623979);
        final int n5 = this.desiredWorkspaceLeftRightMarginPx + this.cellLayoutPaddingLeftRightPx;
        viewById2.setPadding(n5, viewById2.getPaddingTop(), n5, viewById2.getPaddingBottom());
        if (b) {
            for (int i = this.mListeners.size() - 1; i >= 0; --i) {
                ((DeviceProfile$LauncherLayoutChangeListener)this.mListeners.get(i)).onLauncherLayoutChanged();
            }
        }
    }
    
    public void removeLauncherLayoutChangedListener(final DeviceProfile$LauncherLayoutChangeListener deviceProfile$LauncherLayoutChangeListener) {
        if (this.mListeners.contains(deviceProfile$LauncherLayoutChangeListener)) {
            this.mListeners.remove(deviceProfile$LauncherLayoutChangeListener);
        }
    }
    
    boolean shouldFadeAdjacentWorkspaceScreens() {
        return this.isVerticalBarLayout() || this.isLargeTablet;
    }
    
    public boolean shouldIgnoreLongPressToOverview(final float n) {
        boolean b = true;
        final boolean b2 = this != this.inv.landscapeProfile && this != this.inv.portraitProfile && b;
        final boolean b3 = this.mInsets.left == 0 && n < this.edgeMarginPx && b;
        final boolean b4 = this.mInsets.right == 0 && n > this.widthPx - this.edgeMarginPx && b;
        if (!b2) {
            if (!b3) {
                b = b4;
            }
        }
        else {
            b = false;
        }
        return b;
    }
    
    public void updateAppsViewNumCols() {
        final int numColumns = this.inv.numColumns;
        this.allAppsNumPredictiveCols = numColumns;
        this.allAppsNumCols = numColumns;
    }
    
    public void updateInsets(final Rect rect) {
        this.mInsets.set(rect);
    }
}
