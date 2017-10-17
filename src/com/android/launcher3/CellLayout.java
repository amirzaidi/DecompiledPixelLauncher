// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.graphics.Point;
import android.view.ViewGroup$MarginLayoutParams;
import com.android.launcher3.graphics.DragPreviewProvider;
import android.util.Log;
import android.view.View$MeasureSpec;
import android.graphics.Bitmap;
import com.android.launcher3.accessibility.FolderAccessibilityHelper;
import com.android.launcher3.accessibility.WorkspaceAccessibilityHelper;
import android.view.View$OnClickListener;
import android.support.v4.view.c;
import android.support.v4.view.f;
import android.view.MotionEvent;
import android.graphics.Canvas;
import android.animation.ValueAnimator;
import android.animation.Animator;
import android.view.ViewGroup$LayoutParams;
import java.util.Collection;
import android.os.Parcelable;
import com.android.launcher3.util.ParcelableSparseArray;
import android.util.SparseArray;
import java.util.Iterator;
import com.android.launcher3.util.CellAndSpan;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.animation.Animator$AnimatorListener;
import android.animation.ValueAnimator$AnimatorUpdateListener;
import android.view.View;
import java.util.Arrays;
import com.android.launcher3.util.Themes;
import android.view.animation.DecelerateInterpolator;
import android.graphics.drawable.Drawable$Callback;
import android.util.AttributeSet;
import android.content.Context;
import com.android.launcher3.accessibility.DragAndDropAccessibilityDelegate;
import java.util.Stack;
import android.util.ArrayMap;
import com.android.launcher3.util.GridOccupancy;
import android.view.View$OnTouchListener;
import com.android.launcher3.folder.PreviewBackground;
import java.util.ArrayList;
import android.animation.TimeInterpolator;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.Paint;
import android.view.ViewGroup;

public class CellLayout extends ViewGroup implements BubbleTextView$BubbleTextShadowHandler
{
    private static final int[] BACKGROUND_STATE_ACTIVE;
    private static final int[] BACKGROUND_STATE_DEFAULT;
    private static final Paint sPaint;
    private final Drawable mBackground;
    private float mBackgroundAlpha;
    int mCellHeight;
    int mCellWidth;
    private final float mChildScale;
    private final int mContainerType;
    private int mCountX;
    private int mCountY;
    private final int[] mDirectionVector;
    private final int[] mDragCell;
    final float[] mDragOutlineAlphas;
    private final InterruptibleInOutAnimator[] mDragOutlineAnims;
    private int mDragOutlineCurrent;
    private final Paint mDragOutlinePaint;
    final Rect[] mDragOutlines;
    private boolean mDragging;
    private boolean mDropPending;
    private final TimeInterpolator mEaseOutInterpolator;
    private int mFixedCellHeight;
    private int mFixedCellWidth;
    private int mFixedHeight;
    private int mFixedWidth;
    private final ArrayList mFolderBackgrounds;
    final PreviewBackground mFolderLeaveBehind;
    private View$OnTouchListener mInterceptTouchListener;
    private final ArrayList mIntersectingViews;
    private boolean mIsDragOverlapping;
    private boolean mIsDragTarget;
    private boolean mItemPlacementDirty;
    private boolean mJailContent;
    private final Launcher mLauncher;
    private GridOccupancy mOccupied;
    private final Rect mOccupiedRect;
    final int[] mPreviousReorderDirection;
    final ArrayMap mReorderAnimators;
    final float mReorderPreviewAnimationMagnitude;
    final ArrayMap mShakeAnimators;
    private final ShortcutAndWidgetContainer mShortcutsAndWidgets;
    private final StylusEventHelper mStylusEventHelper;
    final int[] mTempLocation;
    private final Rect mTempRect;
    private final Stack mTempRectStack;
    private GridOccupancy mTmpOccupied;
    final int[] mTmpPoint;
    private final ClickShadowView mTouchFeedbackView;
    private DragAndDropAccessibilityDelegate mTouchHelper;
    private boolean mUseTouchHelper;
    
    static {
        BACKGROUND_STATE_ACTIVE = new int[] { 16842914 };
        BACKGROUND_STATE_DEFAULT = new int[0];
        sPaint = new Paint();
    }
    
    public CellLayout(final Context context) {
        this(context, null);
    }
    
    public CellLayout(final Context context, final AttributeSet set) {
        this(context, set, 0);
    }
    
    public CellLayout(final Context context, final AttributeSet set, final int n) {
        final int n2 = 1;
        final int n3 = 2;
        final int n4 = -1;
        super(context, set, n);
        this.mDropPending = false;
        this.mIsDragTarget = (n2 != 0);
        this.mJailContent = (n2 != 0);
        this.mTmpPoint = new int[n3];
        this.mTempLocation = new int[n3];
        this.mFolderBackgrounds = new ArrayList();
        this.mFolderLeaveBehind = new PreviewBackground();
        this.mFixedWidth = n4;
        this.mFixedHeight = n4;
        this.mIsDragOverlapping = false;
        this.mDragOutlines = new Rect[4];
        this.mDragOutlineAlphas = new float[this.mDragOutlines.length];
        this.mDragOutlineAnims = new InterruptibleInOutAnimator[this.mDragOutlines.length];
        this.mDragOutlineCurrent = 0;
        this.mDragOutlinePaint = new Paint();
        this.mReorderAnimators = new ArrayMap();
        this.mShakeAnimators = new ArrayMap();
        this.mItemPlacementDirty = false;
        this.mDragCell = new int[n3];
        this.mDragging = false;
        this.mChildScale = 1.0f;
        this.mIntersectingViews = new ArrayList();
        this.mOccupiedRect = new Rect();
        this.mDirectionVector = new int[n3];
        this.mPreviousReorderDirection = new int[n3];
        this.mTempRect = new Rect();
        this.mUseTouchHelper = false;
        this.mTempRectStack = new Stack();
        final TypedArray obtainStyledAttributes = context.obtainStyledAttributes(set, R$styleable.CellLayout, n, 0);
        this.mContainerType = obtainStyledAttributes.getInteger(0, 0);
        obtainStyledAttributes.recycle();
        this.setWillNotDraw(false);
        this.setClipToPadding(false);
        this.mLauncher = Launcher.getLauncher(context);
        final DeviceProfile deviceProfile = this.mLauncher.getDeviceProfile();
        this.mCellHeight = n4;
        this.mCellWidth = n4;
        this.mFixedCellHeight = n4;
        this.mFixedCellWidth = n4;
        this.mCountX = deviceProfile.inv.numColumns;
        this.mCountY = deviceProfile.inv.numRows;
        this.mOccupied = new GridOccupancy(this.mCountX, this.mCountY);
        this.mTmpOccupied = new GridOccupancy(this.mCountX, this.mCountY);
        this.mPreviousReorderDirection[0] = -100;
        this.mPreviousReorderDirection[n2] = -100;
        this.mFolderLeaveBehind.delegateCellX = n4;
        this.mFolderLeaveBehind.delegateCellY = n4;
        this.setAlwaysDrawnWithCacheEnabled(false);
        final Resources resources = this.getResources();
        (this.mBackground = resources.getDrawable(2130837509)).setCallback((Drawable$Callback)this);
        this.mBackground.setAlpha((int)(this.mBackgroundAlpha * 255.0f));
        this.mReorderPreviewAnimationMagnitude = deviceProfile.iconSizePx * 0.12f;
        this.mEaseOutInterpolator = (TimeInterpolator)new DecelerateInterpolator(2.5f);
        this.mDragCell[0] = (this.mDragCell[n2] = n4);
        for (int i = 0; i < this.mDragOutlines.length; ++i) {
            this.mDragOutlines[i] = new Rect(n4, n4, n4, n4);
        }
        this.mDragOutlinePaint.setColor(Themes.getAttrColor(context, 2130772012));
        final int integer = resources.getInteger(2131558413);
        final float n5 = resources.getInteger(2131558414);
        Arrays.fill(this.mDragOutlineAlphas, 0.0f);
        for (int j = 0; j < this.mDragOutlineAnims.length; ++j) {
            final InterruptibleInOutAnimator interruptibleInOutAnimator = new InterruptibleInOutAnimator((View)this, integer, 0.0f, n5);
            interruptibleInOutAnimator.getAnimator().setInterpolator(this.mEaseOutInterpolator);
            interruptibleInOutAnimator.getAnimator().addUpdateListener((ValueAnimator$AnimatorUpdateListener)new CellLayout$1(this, interruptibleInOutAnimator, j));
            interruptibleInOutAnimator.getAnimator().addListener((Animator$AnimatorListener)new CellLayout$2(this, interruptibleInOutAnimator));
            this.mDragOutlineAnims[j] = interruptibleInOutAnimator;
        }
        (this.mShortcutsAndWidgets = new ShortcutAndWidgetContainer(context, this.mContainerType)).setCellDimensions(this.mCellWidth, this.mCellHeight, this.mCountX, this.mCountY);
        this.mStylusEventHelper = new StylusEventHelper(new SimpleOnStylusPressListener((View)this), (View)this);
        this.addView((View)(this.mTouchFeedbackView = new ClickShadowView(context)));
        this.addView((View)this.mShortcutsAndWidgets);
    }
    
    private boolean addViewToTempLocation(final View view, final Rect rect, final int[] array, final CellLayout$ItemConfiguration cellLayout$ItemConfiguration) {
        final CellAndSpan cellAndSpan = (CellAndSpan)cellLayout$ItemConfiguration.map.get((Object)view);
        this.mTmpOccupied.markCells(cellAndSpan, false);
        this.mTmpOccupied.markCells(rect, true);
        this.findNearestArea(cellAndSpan.cellX, cellAndSpan.cellY, cellAndSpan.spanX, cellAndSpan.spanY, array, this.mTmpOccupied.cells, null, this.mTempLocation);
        boolean b;
        if (this.mTempLocation[0] >= 0 && this.mTempLocation[1] >= 0) {
            cellAndSpan.cellX = this.mTempLocation[0];
            cellAndSpan.cellY = this.mTempLocation[1];
            b = true;
        }
        else {
            b = false;
        }
        this.mTmpOccupied.markCells(cellAndSpan, true);
        return b;
    }
    
    private boolean addViewsToTempLocation(final ArrayList list, final Rect rect, final int[] array, final View view, final CellLayout$ItemConfiguration cellLayout$ItemConfiguration) {
        if (list.size() == 0) {
            return true;
        }
        final Rect rect2 = new Rect();
        cellLayout$ItemConfiguration.getBoundingRectForViews(list, rect2);
        final Iterator<View> iterator = (Iterator<View>)list.iterator();
        while (iterator.hasNext()) {
            this.mTmpOccupied.markCells((CellAndSpan)cellLayout$ItemConfiguration.map.get((Object)iterator.next()), false);
        }
        final GridOccupancy gridOccupancy = new GridOccupancy(rect2.width(), rect2.height());
        final int top = rect2.top;
        final int left = rect2.left;
        final Iterator<View> iterator2 = (Iterator<View>)list.iterator();
        while (iterator2.hasNext()) {
            final CellAndSpan cellAndSpan = (CellAndSpan)cellLayout$ItemConfiguration.map.get((Object)iterator2.next());
            gridOccupancy.markCells(cellAndSpan.cellX - left, cellAndSpan.cellY - top, cellAndSpan.spanX, cellAndSpan.spanY, true);
        }
        this.mTmpOccupied.markCells(rect, true);
        this.findNearestArea(rect2.left, rect2.top, rect2.width(), rect2.height(), array, this.mTmpOccupied.cells, gridOccupancy.cells, this.mTempLocation);
        boolean b;
        if (this.mTempLocation[0] >= 0 && this.mTempLocation[1] >= 0) {
            final int n = this.mTempLocation[0] - rect2.left;
            final int n2 = this.mTempLocation[1] - rect2.top;
            final Iterator<View> iterator3 = (Iterator<View>)list.iterator();
            while (iterator3.hasNext()) {
                final CellAndSpan cellAndSpan2 = (CellAndSpan)cellLayout$ItemConfiguration.map.get((Object)iterator3.next());
                cellAndSpan2.cellX += n;
                cellAndSpan2.cellY += n2;
            }
            b = true;
        }
        else {
            b = false;
        }
        final Iterator<View> iterator4 = (Iterator<View>)list.iterator();
        while (iterator4.hasNext()) {
            this.mTmpOccupied.markCells((CellAndSpan)cellLayout$ItemConfiguration.map.get((Object)iterator4.next()), true);
        }
        return b;
    }
    
    private void animateItemsToSolution(final CellLayout$ItemConfiguration cellLayout$ItemConfiguration, final View view, final boolean b) {
        final GridOccupancy mTmpOccupied = this.mTmpOccupied;
        mTmpOccupied.clear();
        for (int childCount = this.mShortcutsAndWidgets.getChildCount(), i = 0; i < childCount; ++i) {
            final View child = this.mShortcutsAndWidgets.getChildAt(i);
            if (child != view) {
                final CellAndSpan cellAndSpan = (CellAndSpan)cellLayout$ItemConfiguration.map.get((Object)child);
                if (cellAndSpan != null) {
                    this.animateChildToPosition(child, cellAndSpan.cellX, cellAndSpan.cellY, 150, 0, false, false);
                    mTmpOccupied.markCells(cellAndSpan, true);
                }
            }
        }
        if (b) {
            mTmpOccupied.markCells(cellLayout$ItemConfiguration, true);
        }
    }
    
    private boolean attemptPushInDirection(final ArrayList list, final Rect rect, final int[] array, final View view, final CellLayout$ItemConfiguration cellLayout$ItemConfiguration) {
        final int n = 1;
        if (Math.abs(array[0]) + Math.abs(array[n]) > n) {
            final int n2 = array[n];
            array[n] = 0;
            if (this.pushViewsToTempLocation(list, rect, array, view, cellLayout$ItemConfiguration)) {
                return n != 0;
            }
            array[n] = n2;
            final int n3 = array[0];
            array[0] = 0;
            if (this.pushViewsToTempLocation(list, rect, array, view, cellLayout$ItemConfiguration)) {
                return n != 0;
            }
            array[0] = n3;
            array[0] *= -1;
            array[n] *= -1;
            final int n4 = array[n];
            array[n] = 0;
            if (this.pushViewsToTempLocation(list, rect, array, view, cellLayout$ItemConfiguration)) {
                return n != 0;
            }
            array[n] = n4;
            final int n5 = array[0];
            array[0] = 0;
            if (this.pushViewsToTempLocation(list, rect, array, view, cellLayout$ItemConfiguration)) {
                return n != 0;
            }
            array[0] = n5;
            array[0] *= -1;
            array[n] *= -1;
        }
        else {
            if (this.pushViewsToTempLocation(list, rect, array, view, cellLayout$ItemConfiguration)) {
                return n != 0;
            }
            array[0] *= -1;
            array[n] *= -1;
            if (this.pushViewsToTempLocation(list, rect, array, view, cellLayout$ItemConfiguration)) {
                return n != 0;
            }
            array[0] *= -1;
            array[n] *= -1;
            final int n6 = array[n];
            array[n] = array[0];
            array[0] = n6;
            if (this.pushViewsToTempLocation(list, rect, array, view, cellLayout$ItemConfiguration)) {
                return n != 0;
            }
            array[0] *= -1;
            array[n] *= -1;
            if (this.pushViewsToTempLocation(list, rect, array, view, cellLayout$ItemConfiguration)) {
                return n != 0;
            }
            array[0] *= -1;
            array[n] *= -1;
            final int n7 = array[n];
            array[n] = array[0];
            array[0] = n7;
        }
        return false;
    }
    
    private void beginOrAdjustReorderPreviewAnimations(final CellLayout$ItemConfiguration cellLayout$ItemConfiguration, final View view, final int n, final int n2) {
        for (int childCount = this.mShortcutsAndWidgets.getChildCount(), i = 0; i < childCount; ++i) {
            final View child = this.mShortcutsAndWidgets.getChildAt(i);
            if (child != view) {
                final CellAndSpan cellAndSpan = (CellAndSpan)cellLayout$ItemConfiguration.map.get((Object)child);
                final boolean b = n2 == 0 && cellLayout$ItemConfiguration.intersectingViews != null && (cellLayout$ItemConfiguration.intersectingViews.contains(child) ^ true);
                final CellLayout$LayoutParams cellLayout$LayoutParams = (CellLayout$LayoutParams)child.getLayoutParams();
                if (cellAndSpan != null && (b ^ true)) {
                    new CellLayout$ReorderPreviewAnimation(this, child, n2, cellLayout$LayoutParams.cellX, cellLayout$LayoutParams.cellY, cellAndSpan.cellX, cellAndSpan.cellY, cellAndSpan.spanX, cellAndSpan.spanY).animate();
                }
            }
        }
    }
    
    private void commitTempPlacement() {
        final boolean b = true;
        this.mTmpOccupied.copyTo(this.mOccupied);
        long idForScreen = this.mLauncher.getWorkspace().getIdForScreen(this);
        final int n = -100;
        int n2;
        if (this.mContainerType == (b ? 1 : 0)) {
            idForScreen = -1;
            n2 = -101;
        }
        else {
            n2 = n;
        }
        for (int childCount = this.mShortcutsAndWidgets.getChildCount(), i = 0; i < childCount; ++i) {
            final View child = this.mShortcutsAndWidgets.getChildAt(i);
            final CellLayout$LayoutParams cellLayout$LayoutParams = (CellLayout$LayoutParams)child.getLayoutParams();
            final ItemInfo itemInfo = (ItemInfo)child.getTag();
            if (itemInfo != null) {
                boolean b2;
                if (itemInfo.cellX == cellLayout$LayoutParams.tmpCellX && itemInfo.cellY == cellLayout$LayoutParams.tmpCellY && itemInfo.spanX == cellLayout$LayoutParams.cellHSpan) {
                    b2 = (itemInfo.spanY != cellLayout$LayoutParams.cellVSpan && b);
                }
                else {
                    b2 = b;
                }
                final int tmpCellX = cellLayout$LayoutParams.tmpCellX;
                cellLayout$LayoutParams.cellX = tmpCellX;
                itemInfo.cellX = tmpCellX;
                final int tmpCellY = cellLayout$LayoutParams.tmpCellY;
                cellLayout$LayoutParams.cellY = tmpCellY;
                itemInfo.cellY = tmpCellY;
                itemInfo.spanX = cellLayout$LayoutParams.cellHSpan;
                itemInfo.spanY = cellLayout$LayoutParams.cellVSpan;
                if (b2) {
                    this.mLauncher.getModelWriter().modifyItemInDatabase(itemInfo, n2, idForScreen, itemInfo.cellX, itemInfo.cellY, itemInfo.spanX, itemInfo.spanY);
                }
            }
        }
    }
    
    private void completeAndClearReorderPreviewAnimations() {
        final Iterator iterator = this.mShakeAnimators.values().iterator();
        while (iterator.hasNext()) {
            iterator.next().completeAnimationImmediately();
        }
        this.mShakeAnimators.clear();
    }
    
    private void computeDirectionVector(final float n, final float n2, final int[] array) {
        final int n3 = 1;
        final double n4 = 0.5;
        final double atan = Math.atan(n2 / n);
        array[n3] = (array[0] = 0);
        if (Math.abs(Math.cos(atan)) > n4) {
            array[0] = (int)Math.signum(n);
        }
        if (Math.abs(Math.sin(atan)) > n4) {
            array[n3] = (int)Math.signum(n2);
        }
    }
    
    private void copyCurrentStateToSolution(final CellLayout$ItemConfiguration cellLayout$ItemConfiguration, final boolean b) {
        for (int childCount = this.mShortcutsAndWidgets.getChildCount(), i = 0; i < childCount; ++i) {
            final View child = this.mShortcutsAndWidgets.getChildAt(i);
            final CellLayout$LayoutParams cellLayout$LayoutParams = (CellLayout$LayoutParams)child.getLayoutParams();
            CellAndSpan cellAndSpan;
            if (b) {
                cellAndSpan = new CellAndSpan(cellLayout$LayoutParams.tmpCellX, cellLayout$LayoutParams.tmpCellY, cellLayout$LayoutParams.cellHSpan, cellLayout$LayoutParams.cellVSpan);
            }
            else {
                cellAndSpan = new CellAndSpan(cellLayout$LayoutParams.cellX, cellLayout$LayoutParams.cellY, cellLayout$LayoutParams.cellHSpan, cellLayout$LayoutParams.cellVSpan);
            }
            cellLayout$ItemConfiguration.add(child, cellAndSpan);
        }
    }
    
    private void copySolutionToTempState(final CellLayout$ItemConfiguration cellLayout$ItemConfiguration, final View view) {
        final boolean b = true;
        this.mTmpOccupied.clear();
        for (int childCount = this.mShortcutsAndWidgets.getChildCount(), i = 0; i < childCount; ++i) {
            final View child = this.mShortcutsAndWidgets.getChildAt(i);
            if (child != view) {
                final CellLayout$LayoutParams cellLayout$LayoutParams = (CellLayout$LayoutParams)child.getLayoutParams();
                final CellAndSpan cellAndSpan = (CellAndSpan)cellLayout$ItemConfiguration.map.get((Object)child);
                if (cellAndSpan != null) {
                    cellLayout$LayoutParams.tmpCellX = cellAndSpan.cellX;
                    cellLayout$LayoutParams.tmpCellY = cellAndSpan.cellY;
                    cellLayout$LayoutParams.cellHSpan = cellAndSpan.spanX;
                    cellLayout$LayoutParams.cellVSpan = cellAndSpan.spanY;
                    this.mTmpOccupied.markCells(cellAndSpan, b);
                }
            }
        }
        this.mTmpOccupied.markCells(cellLayout$ItemConfiguration, b);
    }
    
    private CellLayout$ItemConfiguration findConfigurationNoShuffle(final int n, final int n2, final int n3, final int n4, final int n5, final int n6, final View view, final CellLayout$ItemConfiguration cellLayout$ItemConfiguration) {
        final int[] array = new int[2];
        final int[] array2 = new int[2];
        this.findNearestVacantArea(n, n2, n3, n4, n5, n6, array, array2);
        if (array[0] >= 0 && array[1] >= 0) {
            this.copyCurrentStateToSolution(cellLayout$ItemConfiguration, false);
            cellLayout$ItemConfiguration.cellX = array[0];
            cellLayout$ItemConfiguration.cellY = array[1];
            cellLayout$ItemConfiguration.spanX = array2[0];
            cellLayout$ItemConfiguration.spanY = array2[1];
            cellLayout$ItemConfiguration.isSolution = true;
        }
        else {
            cellLayout$ItemConfiguration.isSolution = false;
        }
        return cellLayout$ItemConfiguration;
    }
    
    private int[] findNearestArea(final int n, final int n2, final int n3, final int n4, final int n5, final int n6, final boolean b, int[] array, final int[] array2) {
        this.lazyInitTempRectStack();
        final int n7 = (int)(n - this.mCellWidth * (n5 - 1) / 2.0f);
        final int n8 = (int)(n2 - this.mCellHeight * (n6 - 1) / 2.0f);
        if (array == null) {
            array = new int[2];
        }
        double n9 = Double.MAX_VALUE;
        final Rect rect = new Rect(-1, -1, -1, -1);
        final Stack<Rect> stack = new Stack<Rect>();
        final int mCountX = this.mCountX;
        final int mCountY = this.mCountY;
        if (n3 > 0 && n4 > 0 && n5 > 0 && n6 > 0 && n5 >= n3 && n6 >= n4) {
            for (int i = 0; i < mCountY - (n4 - 1); ++i) {
                int j = 0;
            Label_0433_Outer:
                while (j < mCountX - (n3 - 1)) {
                    final int n10 = -1;
                    final int n11 = -1;
                    while (true) {
                    Label_0433:
                        while (true) {
                            int n25 = 0;
                            int n26 = 0;
                            Label_1010: {
                                if (b) {
                                    for (int k = 0; k < n3; ++k) {
                                        for (int l = 0; l < n4; ++l) {
                                            if (this.mOccupied.cells[j + k][i + l]) {
                                                final double n12 = n9;
                                                break Label_0433;
                                            }
                                        }
                                    }
                                    final boolean b2 = true;
                                    boolean b3;
                                    if (n3 >= n5) {
                                        b3 = true;
                                    }
                                    else {
                                        b3 = false;
                                    }
                                    boolean b4;
                                    int n13;
                                    int n14;
                                    int n15;
                                    if (n4 >= n6) {
                                        b4 = true;
                                        n13 = (b2 ? 1 : 0);
                                        n14 = n3;
                                        n15 = n4;
                                    }
                                    else {
                                        b4 = false;
                                        n13 = (b2 ? 1 : 0);
                                        n14 = n3;
                                        n15 = n4;
                                    }
                                    while (true) {
                                        int n16;
                                        if (b3) {
                                            n16 = (b4 ? 1 : 0);
                                        }
                                        else {
                                            n16 = 0;
                                        }
                                        if (n16 != 0) {
                                            break;
                                        }
                                        int n19;
                                        boolean b6;
                                        boolean b7;
                                        int n21;
                                        if (n13 != 0 && (b3 ^ true)) {
                                            boolean b5 = b3;
                                            for (int n17 = 0; n17 < n15; ++n17) {
                                                if (j + n14 > mCountX - 1 || this.mOccupied.cells[j + n14][i + n17]) {
                                                    b5 = true;
                                                }
                                            }
                                            if (!b5) {
                                                final int n18 = n14 + 1;
                                                n19 = n15;
                                                b6 = b5;
                                                final int n20 = n18;
                                                b7 = b4;
                                                n21 = n20;
                                            }
                                            else {
                                                n19 = n15;
                                                b6 = b5;
                                                final int n22 = n14;
                                                b7 = b4;
                                                n21 = n22;
                                            }
                                        }
                                        else if (!b4) {
                                            boolean b8 = b4;
                                            for (int n23 = 0; n23 < n14; ++n23) {
                                                if (i + n15 > mCountY - 1 || this.mOccupied.cells[j + n23][i + n15]) {
                                                    b8 = true;
                                                }
                                            }
                                            if (!b8) {
                                                final int n24 = n15 + 1;
                                                n21 = n14;
                                                b7 = b8;
                                                final boolean b9 = b3;
                                                n19 = n24;
                                                b6 = b9;
                                            }
                                            else {
                                                n21 = n14;
                                                b7 = b8;
                                                final boolean b10 = b3;
                                                n19 = n15;
                                                b6 = b10;
                                            }
                                        }
                                        else {
                                            final boolean b11 = b4;
                                            n21 = n14;
                                            b7 = b11;
                                            final boolean b12 = b3;
                                            n19 = n15;
                                            b6 = b12;
                                        }
                                        boolean b13;
                                        if (n21 >= n5) {
                                            b13 = true;
                                        }
                                        else {
                                            b13 = false;
                                        }
                                        final boolean b14 = b6 | b13;
                                        boolean b15;
                                        if (n19 >= n6) {
                                            b15 = true;
                                        }
                                        else {
                                            b15 = false;
                                        }
                                        final boolean b16 = b15 | b7;
                                        n13 ^= 0x1;
                                        n14 = n21;
                                        b4 = b16;
                                        final boolean b17 = b14;
                                        n15 = n19;
                                        b3 = b17;
                                    }
                                    if (n15 >= n6) {}
                                    n25 = n15;
                                    n26 = n14;
                                    break Label_1010;
                                }
                                n26 = n11;
                                n25 = n10;
                                break Label_1010;
                                ++j;
                                double n12 = 0.0;
                                n9 = n12;
                                continue Label_0433_Outer;
                            }
                            final int[] mTmpPoint = this.mTmpPoint;
                            this.cellToCenterPoint(j, i, mTmpPoint);
                            final Rect rect2 = this.mTempRectStack.pop();
                            rect2.set(j, i, j + n26, i + n25);
                            final Iterator<Object> iterator = stack.iterator();
                            while (iterator.hasNext()) {
                                if (iterator.next().contains(rect2)) {
                                    final int n27 = 1;
                                    stack.push(rect2);
                                    final double hypot = Math.hypot(mTmpPoint[0] - n7, mTmpPoint[1] - n8);
                                    if ((hypot <= n9 && (n27 ^ 0x1) != 0x0) || rect2.contains(rect)) {
                                        array[0] = j;
                                        array[1] = i;
                                        if (array2 != null) {
                                            array2[0] = n26;
                                            array2[1] = n25;
                                        }
                                        rect.set(rect2);
                                        final double n12 = hypot;
                                        continue Label_0433;
                                    }
                                    final double n12 = n9;
                                    continue Label_0433;
                                }
                            }
                            break;
                        }
                        final int n27 = 0;
                        continue;
                    }
                }
            }
            if (n9 == Double.MAX_VALUE) {
                array[1] = (array[0] = -1);
            }
            this.recycleTempRects(stack);
            return array;
        }
        return array;
    }
    
    private int[] findNearestArea(final int n, final int n2, final int n3, final int n4, final int[] array, final boolean[][] array2, final boolean[][] array3, int[] array4) {
        if (array4 == null) {
            array4 = new int[2];
        }
        float n5 = Float.MAX_VALUE;
        int n6 = -1 << -1;
        final int mCountX = this.mCountX;
        int n7;
        for (int mCountY = this.mCountY, i = 0; i < mCountY - (n4 - 1); ++i, n6 = n7) {
            int j = 0;
            n7 = n6;
        Label_0192_Outer:
            while (j < mCountX - (n3 - 1)) {
                int k = 0;
            Label_0192:
                while (true) {
                    while (k < n3) {
                        for (int l = 0; l < n4; ++l) {
                            if (array2[j + k][i + l] && (array3 == null || array3[k][l])) {
                                final float n8 = n5;
                                break Label_0192;
                            }
                        }
                        ++k;
                        continue Label_0192_Outer;
                        ++j;
                        float n8 = 0.0f;
                        n5 = n8;
                        continue Label_0192_Outer;
                    }
                    final float n9 = (float)Math.hypot(j - n, i - n2);
                    final int[] mTmpPoint = this.mTmpPoint;
                    this.computeDirectionVector(j - n, i - n2, mTmpPoint);
                    final int n10 = mTmpPoint[1] * array[1] + array[0] * mTmpPoint[0];
                    if (Float.compare(n9, n5) < 0 || (Float.compare(n9, n5) == 0 && n10 > n7)) {
                        array4[0] = j;
                        array4[1] = i;
                        n7 = n10;
                        final float n8 = n9;
                        continue Label_0192;
                    }
                    final float n8 = n5;
                    continue Label_0192;
                }
            }
        }
        if (n5 == Float.MAX_VALUE) {
            array4[1] = (array4[0] = -1);
        }
        return array4;
    }
    
    private CellLayout$ItemConfiguration findReorderSolution(final int n, final int n2, final int n3, final int n4, final int spanX, final int spanY, final int[] array, final View view, final boolean b, final CellLayout$ItemConfiguration cellLayout$ItemConfiguration) {
        this.copyCurrentStateToSolution(cellLayout$ItemConfiguration, false);
        this.mOccupied.copyTo(this.mTmpOccupied);
        final int[] nearestArea = this.findNearestArea(n, n2, spanX, spanY, new int[2]);
        if (!this.rearrangementExists(nearestArea[0], nearestArea[1], spanX, spanY, array, view, cellLayout$ItemConfiguration)) {
            if (spanX > n3 && (n4 == spanY || b)) {
                return this.findReorderSolution(n, n2, n3, n4, spanX - 1, spanY, array, view, false, cellLayout$ItemConfiguration);
            }
            if (spanY > n4) {
                return this.findReorderSolution(n, n2, n3, n4, spanX, spanY - 1, array, view, true, cellLayout$ItemConfiguration);
            }
            cellLayout$ItemConfiguration.isSolution = false;
        }
        else {
            cellLayout$ItemConfiguration.isSolution = true;
            cellLayout$ItemConfiguration.cellX = nearestArea[0];
            cellLayout$ItemConfiguration.cellY = nearestArea[1];
            cellLayout$ItemConfiguration.spanX = spanX;
            cellLayout$ItemConfiguration.spanY = spanY;
        }
        return cellLayout$ItemConfiguration;
    }
    
    private void getDirectionVectorForDrop(final int n, final int n2, final int n3, final int n4, final View view, final int[] array) {
        final int[] array2 = new int[2];
        this.findNearestArea(n, n2, n3, n4, array2);
        final Rect rect = new Rect();
        this.regionToRect(array2[0], array2[1], n3, n4, rect);
        rect.offset(n - rect.centerX(), n2 - rect.centerY());
        final Rect rect2 = new Rect();
        this.getViewsIntersectingRegion(array2[0], array2[1], n3, n4, view, rect2, this.mIntersectingViews);
        final int width = rect2.width();
        final int height = rect2.height();
        this.regionToRect(rect2.left, rect2.top, rect2.width(), rect2.height(), rect2);
        int n5 = (rect2.centerX() - n) / n3;
        int n6 = (rect2.centerY() - n2) / n4;
        if (width == this.mCountX || n3 == this.mCountX) {
            n5 = 0;
        }
        if (height == this.mCountY || n4 == this.mCountY) {
            n6 = 0;
        }
        if (n5 == 0 && n6 == 0) {
            array[array[0] = 1] = 0;
        }
        else {
            this.computeDirectionVector(n5, n6, array);
        }
    }
    
    private ParcelableSparseArray getJailedArray(final SparseArray sparseArray) {
        final Parcelable parcelable = (Parcelable)sparseArray.get(2131623940);
        ParcelableSparseArray parcelableSparseArray;
        if (parcelable instanceof ParcelableSparseArray) {
            parcelableSparseArray = (ParcelableSparseArray)parcelable;
        }
        else {
            parcelableSparseArray = new ParcelableSparseArray();
        }
        return parcelableSparseArray;
    }
    
    private void getViewsIntersectingRegion(final int n, final int n2, final int n3, final int n4, final View view, final Rect rect, final ArrayList list) {
        if (rect != null) {
            rect.set(n, n2, n + n3, n2 + n4);
        }
        list.clear();
        final Rect rect2 = new Rect(n, n2, n + n3, n2 + n4);
        final Rect rect3 = new Rect();
        for (int childCount = this.mShortcutsAndWidgets.getChildCount(), i = 0; i < childCount; ++i) {
            final View child = this.mShortcutsAndWidgets.getChildAt(i);
            if (child != view) {
                final CellLayout$LayoutParams cellLayout$LayoutParams = (CellLayout$LayoutParams)child.getLayoutParams();
                rect3.set(cellLayout$LayoutParams.cellX, cellLayout$LayoutParams.cellY, cellLayout$LayoutParams.cellX + cellLayout$LayoutParams.cellHSpan, cellLayout$LayoutParams.cellVSpan + cellLayout$LayoutParams.cellY);
                if (Rect.intersects(rect2, rect3)) {
                    this.mIntersectingViews.add(child);
                    if (rect != null) {
                        rect.union(rect3);
                    }
                }
            }
        }
    }
    
    private void lazyInitTempRectStack() {
        if (this.mTempRectStack.isEmpty()) {
            for (int i = 0; i < this.mCountX * this.mCountY; ++i) {
                this.mTempRectStack.push(new Rect());
            }
        }
    }
    
    private boolean pushViewsToTempLocation(final ArrayList list, final Rect rect, final int[] array, final View view, final CellLayout$ItemConfiguration cellLayout$ItemConfiguration) {
        final int n = 1;
        final float n2 = Float.MIN_VALUE;
        final CellLayout$ViewCluster cellLayout$ViewCluster = new CellLayout$ViewCluster(this, list, cellLayout$ItemConfiguration);
        final Rect boundingRect = cellLayout$ViewCluster.getBoundingRect();
        int n3;
        int n4;
        if (array[0] < 0) {
            n3 = boundingRect.right - rect.left;
            n4 = n;
        }
        else if (array[0] > 0) {
            final int n5 = 4;
            n3 = rect.right - boundingRect.left;
            n4 = n5;
        }
        else if (array[n] < 0) {
            final int n6 = 2;
            n3 = boundingRect.bottom - rect.top;
            n4 = n6;
        }
        else {
            final int n7 = 8;
            n3 = rect.bottom - boundingRect.top;
            n4 = n7;
        }
        if (n3 <= 0) {
            return false;
        }
        final Iterator<View> iterator = (Iterator<View>)list.iterator();
        while (iterator.hasNext()) {
            this.mTmpOccupied.markCells((CellAndSpan)cellLayout$ItemConfiguration.map.get((Object)iterator.next()), false);
        }
        cellLayout$ItemConfiguration.save();
        cellLayout$ViewCluster.sortConfigurationForEdgePush(n4);
        int n8 = n3;
        int n9 = 0;
        float n10 = 0.0f;
    Label_0288:
        while (n8 > 0 && (n9 ^ 0x1) != 0x0) {
            while (true) {
                for (final View view2 : cellLayout$ItemConfiguration.sortedViews) {
                    if (!cellLayout$ViewCluster.views.contains(view2) && view2 != view && cellLayout$ViewCluster.isViewTouchingEdge(view2, n4)) {
                        if (!((CellLayout$LayoutParams)view2.getLayoutParams()).canReorder) {
                            final int n11 = n;
                            final float n12 = n2;
                            final int n13 = n8 - 1;
                            cellLayout$ViewCluster.shift(n4, n);
                            n8 = n13;
                            n9 = n11;
                            n10 = n12;
                            continue Label_0288;
                        }
                        cellLayout$ViewCluster.addView(view2);
                        this.mTmpOccupied.markCells((CellAndSpan)cellLayout$ItemConfiguration.map.get((Object)view2), false);
                    }
                }
                final int n11 = n9;
                final float n12 = n10;
                continue;
            }
        }
        final Rect boundingRect2 = cellLayout$ViewCluster.getBoundingRect();
        boolean b;
        if (n9 == 0 && boundingRect2.left >= 0 && boundingRect2.right <= this.mCountX && boundingRect2.top >= 0 && boundingRect2.bottom <= this.mCountY) {
            b = (n != 0);
        }
        else {
            cellLayout$ItemConfiguration.restore();
            b = false;
        }
        final Iterator iterator3 = cellLayout$ViewCluster.views.iterator();
        while (iterator3.hasNext()) {
            this.mTmpOccupied.markCells((CellAndSpan)cellLayout$ItemConfiguration.map.get((Object)iterator3.next()), n != 0);
        }
        return b;
    }
    
    private boolean rearrangementExists(final int cellX, final int cellY, final int n, final int n2, final int[] array, final View view, final CellLayout$ItemConfiguration cellLayout$ItemConfiguration) {
        if (cellX < 0 || cellY < 0) {
            return false;
        }
        this.mIntersectingViews.clear();
        this.mOccupiedRect.set(cellX, cellY, cellX + n, cellY + n2);
        if (view != null) {
            final CellAndSpan cellAndSpan = (CellAndSpan)cellLayout$ItemConfiguration.map.get((Object)view);
            if (cellAndSpan != null) {
                cellAndSpan.cellX = cellX;
                cellAndSpan.cellY = cellY;
            }
        }
        final Rect rect = new Rect(cellX, cellY, cellX + n, cellY + n2);
        final Rect rect2 = new Rect();
        for (final View view2 : cellLayout$ItemConfiguration.map.keySet()) {
            if (view2 != view) {
                final CellAndSpan cellAndSpan2 = (CellAndSpan)cellLayout$ItemConfiguration.map.get((Object)view2);
                final CellLayout$LayoutParams cellLayout$LayoutParams = (CellLayout$LayoutParams)view2.getLayoutParams();
                rect2.set(cellAndSpan2.cellX, cellAndSpan2.cellY, cellAndSpan2.cellX + cellAndSpan2.spanX, cellAndSpan2.spanY + cellAndSpan2.cellY);
                if (!Rect.intersects(rect, rect2)) {
                    continue;
                }
                if (!cellLayout$LayoutParams.canReorder) {
                    return false;
                }
                this.mIntersectingViews.add(view2);
            }
        }
        cellLayout$ItemConfiguration.intersectingViews = new ArrayList(this.mIntersectingViews);
        if (this.attemptPushInDirection(this.mIntersectingViews, this.mOccupiedRect, array, view, cellLayout$ItemConfiguration)) {
            return true;
        }
        if (this.addViewsToTempLocation(this.mIntersectingViews, this.mOccupiedRect, array, view, cellLayout$ItemConfiguration)) {
            return true;
        }
        final Iterator iterator2 = this.mIntersectingViews.iterator();
        while (iterator2.hasNext()) {
            if (!this.addViewToTempLocation(iterator2.next(), this.mOccupiedRect, array, cellLayout$ItemConfiguration)) {
                return false;
            }
        }
        return true;
    }
    
    private void recycleTempRects(final Stack stack) {
        while (!stack.isEmpty()) {
            this.mTempRectStack.push(stack.pop());
        }
    }
    
    private void setUseTempCoords(final boolean useTmpCoords) {
        for (int childCount = this.mShortcutsAndWidgets.getChildCount(), i = 0; i < childCount; ++i) {
            ((CellLayout$LayoutParams)this.mShortcutsAndWidgets.getChildAt(i).getLayoutParams()).useTmpCoords = useTmpCoords;
        }
    }
    
    public boolean acceptsWidget() {
        boolean b = false;
        if (this.mContainerType == 0) {
            b = true;
        }
        return b;
    }
    
    public void addFolderBackground(final PreviewBackground previewBackground) {
        this.mFolderBackgrounds.add(previewBackground);
    }
    
    public boolean addViewToCellLayout(final View view, final int n, final int id, final CellLayout$LayoutParams cellLayout$LayoutParams, final boolean b) {
        final float n2 = 1.0f;
        if (view instanceof BubbleTextView) {
            final BubbleTextView bubbleTextView = (BubbleTextView)view;
            bubbleTextView.setTextVisibility(bubbleTextView.shouldTextBeVisible());
        }
        view.setScaleX(n2);
        view.setScaleY(n2);
        if (cellLayout$LayoutParams.cellX >= 0 && cellLayout$LayoutParams.cellX <= this.mCountX - 1 && cellLayout$LayoutParams.cellY >= 0 && cellLayout$LayoutParams.cellY <= this.mCountY - 1) {
            if (cellLayout$LayoutParams.cellHSpan < 0) {
                cellLayout$LayoutParams.cellHSpan = this.mCountX;
            }
            if (cellLayout$LayoutParams.cellVSpan < 0) {
                cellLayout$LayoutParams.cellVSpan = this.mCountY;
            }
            view.setId(id);
            this.mShortcutsAndWidgets.addView((View)view, n, (ViewGroup$LayoutParams)cellLayout$LayoutParams);
            if (b) {
                this.markCellsAsOccupiedForView(view);
            }
            return true;
        }
        return false;
    }
    
    public boolean animateChildToPosition(final View view, final int tmpCellX, final int tmpCellY, final int n, final int n2, final boolean b, final boolean b2) {
        final ShortcutAndWidgetContainer shortcutsAndWidgets = this.getShortcutsAndWidgets();
        if (shortcutsAndWidgets.indexOfChild(view) == -1) {
            return false;
        }
        final CellLayout$LayoutParams cellLayout$LayoutParams = (CellLayout$LayoutParams)view.getLayoutParams();
        final ItemInfo itemInfo = (ItemInfo)view.getTag();
        if (this.mReorderAnimators.containsKey((Object)cellLayout$LayoutParams)) {
            ((Animator)this.mReorderAnimators.get((Object)cellLayout$LayoutParams)).cancel();
            this.mReorderAnimators.remove((Object)cellLayout$LayoutParams);
        }
        final int x = cellLayout$LayoutParams.x;
        final int y = cellLayout$LayoutParams.y;
        if (b2) {
            GridOccupancy gridOccupancy;
            if (b) {
                gridOccupancy = this.mOccupied;
            }
            else {
                gridOccupancy = this.mTmpOccupied;
            }
            gridOccupancy.markCells(cellLayout$LayoutParams.cellX, cellLayout$LayoutParams.cellY, cellLayout$LayoutParams.cellHSpan, cellLayout$LayoutParams.cellVSpan, false);
            gridOccupancy.markCells(tmpCellX, tmpCellY, cellLayout$LayoutParams.cellHSpan, cellLayout$LayoutParams.cellVSpan, true);
        }
        cellLayout$LayoutParams.isLockedToGrid = true;
        if (b) {
            itemInfo.cellX = tmpCellX;
            cellLayout$LayoutParams.cellX = tmpCellX;
            itemInfo.cellY = tmpCellY;
            cellLayout$LayoutParams.cellY = tmpCellY;
        }
        else {
            cellLayout$LayoutParams.tmpCellX = tmpCellX;
            cellLayout$LayoutParams.tmpCellY = tmpCellY;
        }
        shortcutsAndWidgets.setupLp(view);
        cellLayout$LayoutParams.isLockedToGrid = false;
        final int x2 = cellLayout$LayoutParams.x;
        final int y2 = cellLayout$LayoutParams.y;
        cellLayout$LayoutParams.x = x;
        cellLayout$LayoutParams.y = y;
        if (x == x2 && y == y2) {
            return cellLayout$LayoutParams.isLockedToGrid = true;
        }
        final float[] array2;
        final float[] array = array2 = new float[2];
        array2[0] = 0.0f;
        array2[1] = 1.0f;
        final ValueAnimator ofFloat = LauncherAnimUtils.ofFloat(array);
        ofFloat.setDuration((long)n);
        this.mReorderAnimators.put((Object)cellLayout$LayoutParams, (Object)ofFloat);
        ofFloat.addUpdateListener((ValueAnimator$AnimatorUpdateListener)new CellLayout$3(this, cellLayout$LayoutParams, x, x2, y, y2, view));
        ofFloat.addListener((Animator$AnimatorListener)new CellLayout$4(this, cellLayout$LayoutParams, view));
        ofFloat.setStartDelay((long)n2);
        ofFloat.start();
        return true;
    }
    
    public void buildHardwareLayer() {
        this.mShortcutsAndWidgets.buildLayer();
    }
    
    public void cancelLongPress() {
        super.cancelLongPress();
        for (int childCount = this.getChildCount(), i = 0; i < childCount; ++i) {
            this.getChildAt(i).cancelLongPress();
        }
    }
    
    void cellToCenterPoint(final int n, final int n2, final int[] array) {
        final int n3 = 1;
        this.regionToCenterPoint(n, n2, n3, n3, array);
    }
    
    void cellToPoint(final int n, final int n2, final int[] array) {
        final int paddingLeft = this.getPaddingLeft();
        final int paddingTop = this.getPaddingTop();
        array[0] = paddingLeft + this.mCellWidth * n;
        array[1] = this.mCellHeight * n2 + paddingTop;
    }
    
    public void cellToRect(final int n, final int n2, final int n3, final int n4, final Rect rect) {
        final int mCellWidth = this.mCellWidth;
        final int mCellHeight = this.mCellHeight;
        final int paddingLeft = this.getPaddingLeft();
        final int paddingTop = this.getPaddingTop();
        final int n5 = n3 * mCellWidth;
        final int n6 = n4 * mCellHeight;
        final int n7 = mCellWidth * n + paddingLeft;
        final int n8 = mCellHeight * n2 + paddingTop;
        rect.set(n7, n8, n7 + n5, n8 + n6);
    }
    
    protected boolean checkLayoutParams(final ViewGroup$LayoutParams viewGroup$LayoutParams) {
        return viewGroup$LayoutParams instanceof CellLayout$LayoutParams;
    }
    
    public void clearDragOutlines() {
        final int n = -1;
        this.mDragOutlineAnims[this.mDragOutlineCurrent].animateOut();
        this.mDragCell[0] = (this.mDragCell[1] = n);
    }
    
    public void clearFolderLeaveBehind() {
        final int n = -1;
        this.mFolderLeaveBehind.delegateCellX = n;
        this.mFolderLeaveBehind.delegateCellY = n;
        this.invalidate();
    }
    
    boolean createAreaForResize(final int n, final int n2, final int n3, final int n4, final View view, final int[] array, final boolean b) {
        final int[] array2 = new int[2];
        this.regionToCenterPoint(n, n2, n3, n4, array2);
        final CellLayout$ItemConfiguration reorderSolution = this.findReorderSolution(array2[0], array2[1], n3, n4, n3, n4, array, view, true, new CellLayout$ItemConfiguration(null));
        this.setUseTempCoords(true);
        if (reorderSolution != null && reorderSolution.isSolution) {
            this.copySolutionToTempState(reorderSolution, view);
            this.setItemPlacementDirty(true);
            this.animateItemsToSolution(reorderSolution, view, b);
            if (b) {
                this.commitTempPlacement();
                this.completeAndClearReorderPreviewAnimations();
                this.setItemPlacementDirty(false);
            }
            else {
                this.beginOrAdjustReorderPreviewAnimations(reorderSolution, view, 150, 1);
            }
            this.mShortcutsAndWidgets.requestLayout();
        }
        return reorderSolution.isSolution;
    }
    
    void disableDragTarget() {
        this.mIsDragTarget = false;
    }
    
    public void disableJailContent() {
        this.mJailContent = false;
    }
    
    protected void dispatchDraw(final Canvas canvas) {
        super.dispatchDraw(canvas);
        for (int i = 0; i < this.mFolderBackgrounds.size(); ++i) {
            final PreviewBackground previewBackground = this.mFolderBackgrounds.get(i);
            if (previewBackground.isClipping) {
                this.cellToPoint(previewBackground.delegateCellX, previewBackground.delegateCellY, this.mTempLocation);
                canvas.save();
                canvas.translate((float)this.mTempLocation[0], (float)this.mTempLocation[1]);
                previewBackground.drawBackgroundStroke(canvas);
                canvas.restore();
            }
        }
    }
    
    public boolean dispatchHoverEvent(final MotionEvent motionEvent) {
        return (this.mUseTouchHelper && this.mTouchHelper.dispatchHoverEvent(motionEvent)) || super.dispatchHoverEvent(motionEvent);
    }
    
    protected void dispatchRestoreInstanceState(SparseArray jailedArray) {
        if (this.mJailContent) {
            jailedArray = this.getJailedArray(jailedArray);
        }
        super.dispatchRestoreInstanceState(jailedArray);
    }
    
    protected void dispatchSaveInstanceState(final SparseArray sparseArray) {
        if (this.mJailContent) {
            final ParcelableSparseArray jailedArray = this.getJailedArray(sparseArray);
            super.dispatchSaveInstanceState((SparseArray)jailedArray);
            sparseArray.put(2131623940, (Object)jailedArray);
        }
        else {
            super.dispatchSaveInstanceState(sparseArray);
        }
    }
    
    public void enableAccessibleDrag(final boolean mUseTouchHelper, final int n) {
        final int n2 = 2;
        final int n3 = 1;
        if (!(this.mUseTouchHelper = mUseTouchHelper)) {
            f.agu((View)this, null);
            this.setImportantForAccessibility(n2);
            this.getShortcutsAndWidgets().setImportantForAccessibility(n2);
            this.setOnClickListener((View$OnClickListener)this.mLauncher);
        }
        else {
            if (n == n2 && (this.mTouchHelper instanceof WorkspaceAccessibilityHelper ^ true)) {
                this.mTouchHelper = new WorkspaceAccessibilityHelper(this);
            }
            else if (n == n3 && (this.mTouchHelper instanceof FolderAccessibilityHelper ^ true)) {
                this.mTouchHelper = new FolderAccessibilityHelper(this);
            }
            f.agu((View)this, this.mTouchHelper);
            this.setImportantForAccessibility(n3);
            this.getShortcutsAndWidgets().setImportantForAccessibility(n3);
            this.setOnClickListener((View$OnClickListener)this.mTouchHelper);
        }
        if (this.getParent() != null) {
            this.getParent().notifySubtreeAccessibilityStateChanged((View)this, (View)this, n3);
        }
    }
    
    public void enableHardwareLayer(final boolean b) {
        final ShortcutAndWidgetContainer mShortcutsAndWidgets = this.mShortcutsAndWidgets;
        int n;
        if (b) {
            n = 2;
        }
        else {
            n = 0;
        }
        mShortcutsAndWidgets.setLayerType(n, CellLayout.sPaint);
    }
    
    public boolean findCellForSpan(int[] array, final int n, final int n2) {
        if (array == null) {
            array = new int[2];
        }
        return this.mOccupied.findVacantCell(array, n, n2);
    }
    
    public int[] findNearestArea(final int n, final int n2, final int n3, final int n4, final int[] array) {
        return this.findNearestArea(n, n2, n3, n4, n3, n4, false, array, null);
    }
    
    int[] findNearestVacantArea(final int n, final int n2, final int n3, final int n4, final int n5, final int n6, final int[] array, final int[] array2) {
        return this.findNearestArea(n, n2, n3, n4, n5, n6, true, array, array2);
    }
    
    public ViewGroup$LayoutParams generateLayoutParams(final AttributeSet set) {
        return (ViewGroup$LayoutParams)new CellLayout$LayoutParams(this.getContext(), set);
    }
    
    protected ViewGroup$LayoutParams generateLayoutParams(final ViewGroup$LayoutParams viewGroup$LayoutParams) {
        return (ViewGroup$LayoutParams)new CellLayout$LayoutParams(viewGroup$LayoutParams);
    }
    
    public float getBackgroundAlpha() {
        return this.mBackgroundAlpha;
    }
    
    int getCellHeight() {
        return this.mCellHeight;
    }
    
    public int getCellWidth() {
        return this.mCellWidth;
    }
    
    public View getChildAt(final int n, final int n2) {
        return this.mShortcutsAndWidgets.getChildAt(n, n2);
    }
    
    public int getCountX() {
        return this.mCountX;
    }
    
    public int getCountY() {
        return this.mCountY;
    }
    
    public int getDesiredHeight() {
        return this.getPaddingTop() + this.getPaddingBottom() + this.mCountY * this.mCellHeight;
    }
    
    public int getDesiredWidth() {
        return this.getPaddingLeft() + this.getPaddingRight() + this.mCountX * this.mCellWidth;
    }
    
    public float getDistanceFromCell(final float n, final float n2, final int[] array) {
        final int n3 = 1;
        this.cellToCenterPoint(array[0], array[n3], this.mTmpPoint);
        return (float)Math.hypot(n - this.mTmpPoint[0], n2 - this.mTmpPoint[n3]);
    }
    
    public String getItemMoveDescription(final int n, final int n2) {
        final int n3 = 1;
        if (this.mContainerType == n3) {
            final Context context = this.getContext();
            final Object[] array = new Object[n3];
            array[0] = Math.max(n, n2) + 1;
            return context.getString(2131492981, array);
        }
        final Context context2 = this.getContext();
        final Object[] array2 = { n2 + 1, null };
        array2[n3] = n + 1;
        return context2.getString(2131492979, array2);
    }
    
    public ShortcutAndWidgetContainer getShortcutsAndWidgets() {
        return this.mShortcutsAndWidgets;
    }
    
    public int getUnusedHorizontalSpace() {
        return this.getMeasuredWidth() - this.getPaddingLeft() - this.getPaddingRight() - this.mCountX * this.mCellWidth;
    }
    
    public boolean hasReorderSolution(final ItemInfo itemInfo) {
        final int[] array = new int[2];
        for (int i = 0; i < this.getCountX(); ++i) {
            for (int j = 0; j < this.getCountY(); ++j) {
                this.cellToPoint(i, j, array);
                if (this.findReorderSolution(array[0], array[1], itemInfo.minSpanX, itemInfo.minSpanY, itemInfo.spanX, itemInfo.spanY, this.mDirectionVector, null, true, new CellLayout$ItemConfiguration(null)).isSolution) {
                    return true;
                }
            }
        }
        return false;
    }
    
    public boolean isDropPending() {
        return this.mDropPending;
    }
    
    boolean isItemPlacementDirty() {
        return this.mItemPlacementDirty;
    }
    
    boolean isNearestDropLocationOccupied(final int n, final int n2, final int n3, final int n4, final View view, final int[] array) {
        final int[] nearestArea = this.findNearestArea(n, n2, n3, n4, array);
        this.getViewsIntersectingRegion(nearestArea[0], nearestArea[1], n3, n4, view, null, this.mIntersectingViews);
        return this.mIntersectingViews.isEmpty() ^ true;
    }
    
    public boolean isOccupied(final int n, final int n2) {
        if (n < this.mCountX && n2 < this.mCountY) {
            return this.mOccupied.cells[n][n2];
        }
        throw new RuntimeException("Position exceeds the bound of this CellLayout");
    }
    
    public boolean isRegionVacant(final int n, final int n2, final int n3, final int n4) {
        return this.mOccupied.isRegionVacant(n, n2, n3, n4);
    }
    
    public void markCellsAsOccupiedForView(final View view) {
        if (view == null || view.getParent() != this.mShortcutsAndWidgets) {
            return;
        }
        final CellLayout$LayoutParams cellLayout$LayoutParams = (CellLayout$LayoutParams)view.getLayoutParams();
        this.mOccupied.markCells(cellLayout$LayoutParams.cellX, cellLayout$LayoutParams.cellY, cellLayout$LayoutParams.cellHSpan, cellLayout$LayoutParams.cellVSpan, true);
    }
    
    public void markCellsAsUnoccupiedForView(final View view) {
        if (view == null || view.getParent() != this.mShortcutsAndWidgets) {
            return;
        }
        final CellLayout$LayoutParams cellLayout$LayoutParams = (CellLayout$LayoutParams)view.getLayoutParams();
        this.mOccupied.markCells(cellLayout$LayoutParams.cellX, cellLayout$LayoutParams.cellY, cellLayout$LayoutParams.cellHSpan, cellLayout$LayoutParams.cellVSpan, false);
    }
    
    void onDragEnter() {
        this.mDragging = true;
    }
    
    void onDragExit() {
        final int n = -1;
        if (this.mDragging) {
            this.mDragging = false;
        }
        this.mDragCell[0] = (this.mDragCell[1] = n);
        this.mDragOutlineAnims[this.mDragOutlineCurrent].animateOut();
        this.mDragOutlineCurrent = (this.mDragOutlineCurrent + 1) % this.mDragOutlineAnims.length;
        this.revertTempState();
        this.setIsDragOverlapping(false);
    }
    
    protected void onDraw(final Canvas canvas) {
        final int n = 1;
        if (!this.mIsDragTarget) {
            return;
        }
        if (this.mBackgroundAlpha > 0.0f) {
            this.mBackground.draw(canvas);
        }
        final Paint mDragOutlinePaint = this.mDragOutlinePaint;
        for (int i = 0; i < this.mDragOutlines.length; ++i) {
            final float n2 = this.mDragOutlineAlphas[i];
            if (n2 > 0.0f) {
                final Bitmap bitmap = (Bitmap)this.mDragOutlineAnims[i].getTag();
                mDragOutlinePaint.setAlpha((int)(n2 + 0.5f));
                canvas.drawBitmap(bitmap, (Rect)null, this.mDragOutlines[i], mDragOutlinePaint);
            }
        }
        for (int j = 0; j < this.mFolderBackgrounds.size(); ++j) {
            final PreviewBackground previewBackground = this.mFolderBackgrounds.get(j);
            this.cellToPoint(previewBackground.delegateCellX, previewBackground.delegateCellY, this.mTempLocation);
            canvas.save();
            canvas.translate((float)this.mTempLocation[0], (float)this.mTempLocation[n]);
            previewBackground.drawBackground(canvas);
            if (!previewBackground.isClipping) {
                previewBackground.drawBackgroundStroke(canvas);
            }
            canvas.restore();
        }
        if (this.mFolderLeaveBehind.delegateCellX >= 0 && this.mFolderLeaveBehind.delegateCellY >= 0) {
            this.cellToPoint(this.mFolderLeaveBehind.delegateCellX, this.mFolderLeaveBehind.delegateCellY, this.mTempLocation);
            canvas.save();
            canvas.translate((float)this.mTempLocation[0], (float)this.mTempLocation[n]);
            this.mFolderLeaveBehind.drawLeaveBehind(canvas);
            canvas.restore();
        }
    }
    
    void onDropChild(final View view) {
        if (view != null) {
            ((CellLayout$LayoutParams)view.getLayoutParams()).dropped = true;
            view.requestLayout();
            this.markCellsAsOccupiedForView(view);
        }
    }
    
    public boolean onInterceptTouchEvent(final MotionEvent motionEvent) {
        return this.mUseTouchHelper || (this.mInterceptTouchListener != null && this.mInterceptTouchListener.onTouch((View)this, motionEvent));
    }
    
    protected void onLayout(final boolean b, final int n, final int n2, final int n3, final int n4) {
        final float n5 = 2.0f;
        boolean isFullscreen = false;
        if (this.mShortcutsAndWidgets.getChildCount() > 0) {
            isFullscreen = ((CellLayout$LayoutParams)this.mShortcutsAndWidgets.getChildAt(0).getLayoutParams()).isFullscreen;
        }
        int paddingLeft = this.getPaddingLeft();
        if (!isFullscreen) {
            paddingLeft += (int)Math.ceil(this.getUnusedHorizontalSpace() / n5);
        }
        final int n6 = n3 - n - this.getPaddingRight();
        int n7;
        if (!isFullscreen) {
            n7 = n6 - (int)Math.ceil(this.getUnusedHorizontalSpace() / n5);
        }
        else {
            n7 = n6;
        }
        final int paddingTop = this.getPaddingTop();
        final int n8 = n4 - n2 - this.getPaddingBottom();
        this.mTouchFeedbackView.layout(paddingLeft, paddingTop, this.mTouchFeedbackView.getMeasuredWidth() + paddingLeft, this.mTouchFeedbackView.getMeasuredHeight() + paddingTop);
        this.mShortcutsAndWidgets.layout(paddingLeft, paddingTop, n7, n8);
        this.mBackground.getPadding(this.mTempRect);
        this.mBackground.setBounds(paddingLeft - this.mTempRect.left - this.getPaddingLeft(), paddingTop - this.mTempRect.top - this.getPaddingTop(), n7 + this.mTempRect.right + this.getPaddingRight(), n8 + this.mTempRect.bottom + this.getPaddingBottom());
    }
    
    protected void onMeasure(final int n, final int n2) {
        final int n3 = 1073741824;
        final int mode = View$MeasureSpec.getMode(n);
        final int mode2 = View$MeasureSpec.getMode(n2);
        final int size = View$MeasureSpec.getSize(n);
        final int size2 = View$MeasureSpec.getSize(n2);
        int mFixedWidth = size - (this.getPaddingLeft() + this.getPaddingRight());
        int mFixedHeight = size2 - (this.getPaddingTop() + this.getPaddingBottom());
        if (this.mFixedCellWidth < 0 || this.mFixedCellHeight < 0) {
            final int calculateCellWidth = DeviceProfile.calculateCellWidth(mFixedWidth, this.mCountX);
            final int calculateCellHeight = DeviceProfile.calculateCellHeight(mFixedHeight, this.mCountY);
            if (calculateCellWidth != this.mCellWidth || calculateCellHeight != this.mCellHeight) {
                this.mCellWidth = calculateCellWidth;
                this.mCellHeight = calculateCellHeight;
                this.mShortcutsAndWidgets.setCellDimensions(this.mCellWidth, this.mCellHeight, this.mCountX, this.mCountY);
            }
        }
        if (this.mFixedWidth > 0 && this.mFixedHeight > 0) {
            mFixedWidth = this.mFixedWidth;
            mFixedHeight = this.mFixedHeight;
        }
        else if (mode == 0 || mode2 == 0) {
            throw new RuntimeException("CellLayout cannot have UNSPECIFIED dimensions");
        }
        this.mTouchFeedbackView.measure(View$MeasureSpec.makeMeasureSpec(this.mCellWidth + this.mTouchFeedbackView.getExtraSize(), n3), View$MeasureSpec.makeMeasureSpec(this.mCellHeight + this.mTouchFeedbackView.getExtraSize(), n3));
        this.mShortcutsAndWidgets.measure(View$MeasureSpec.makeMeasureSpec(mFixedWidth, n3), View$MeasureSpec.makeMeasureSpec(mFixedHeight, n3));
        final int measuredWidth = this.mShortcutsAndWidgets.getMeasuredWidth();
        final int measuredHeight = this.mShortcutsAndWidgets.getMeasuredHeight();
        if (this.mFixedWidth > 0 && this.mFixedHeight > 0) {
            this.setMeasuredDimension(measuredWidth, measuredHeight);
        }
        else {
            this.setMeasuredDimension(size, size2);
        }
    }
    
    public boolean onTouchEvent(final MotionEvent motionEvent) {
        final boolean onTouchEvent = super.onTouchEvent(motionEvent);
        return (this.mLauncher.mWorkspace.isInOverviewMode() && this.mStylusEventHelper.onMotionEvent(motionEvent)) || onTouchEvent;
    }
    
    int[] performReorder(final int n, final int n2, final int n3, final int n4, final int n5, final int n6, final View view, final int[] array, int[] array2, final int n7) {
        final int[] nearestArea = this.findNearestArea(n, n2, n5, n6, array);
        if (array2 == null) {
            array2 = new int[2];
        }
        if ((n7 == 2 || n7 == 3 || n7 == 4) && this.mPreviousReorderDirection[0] != -100) {
            this.mDirectionVector[0] = this.mPreviousReorderDirection[0];
            this.mDirectionVector[1] = this.mPreviousReorderDirection[1];
            if (n7 == 2 || n7 == 3) {
                this.mPreviousReorderDirection[0] = -100;
                this.mPreviousReorderDirection[1] = -100;
            }
        }
        else {
            this.getDirectionVectorForDrop(n, n2, n5, n6, view, this.mDirectionVector);
            this.mPreviousReorderDirection[0] = this.mDirectionVector[0];
            this.mPreviousReorderDirection[1] = this.mDirectionVector[1];
        }
        final CellLayout$ItemConfiguration reorderSolution = this.findReorderSolution(n, n2, n3, n4, n5, n6, this.mDirectionVector, view, true, new CellLayout$ItemConfiguration(null));
        final CellLayout$ItemConfiguration configurationNoShuffle = this.findConfigurationNoShuffle(n, n2, n3, n4, n5, n6, view, new CellLayout$ItemConfiguration(null));
        CellLayout$ItemConfiguration cellLayout$ItemConfiguration;
        if (reorderSolution.isSolution && reorderSolution.area() >= configurationNoShuffle.area()) {
            cellLayout$ItemConfiguration = reorderSolution;
        }
        else if (configurationNoShuffle.isSolution) {
            cellLayout$ItemConfiguration = configurationNoShuffle;
        }
        else {
            cellLayout$ItemConfiguration = null;
        }
        if (n7 == 0) {
            if (cellLayout$ItemConfiguration != null) {
                this.beginOrAdjustReorderPreviewAnimations(cellLayout$ItemConfiguration, view, 0, 0);
                nearestArea[0] = cellLayout$ItemConfiguration.cellX;
                nearestArea[1] = cellLayout$ItemConfiguration.cellY;
                array2[0] = cellLayout$ItemConfiguration.spanX;
                array2[1] = cellLayout$ItemConfiguration.spanY;
            }
            else {
                array2[0] = (array2[1] = -1);
                nearestArea[0] = (nearestArea[1] = -1);
            }
            return nearestArea;
        }
        final boolean b = true;
        this.setUseTempCoords(true);
        boolean b2;
        if (cellLayout$ItemConfiguration != null) {
            nearestArea[0] = cellLayout$ItemConfiguration.cellX;
            nearestArea[1] = cellLayout$ItemConfiguration.cellY;
            array2[0] = cellLayout$ItemConfiguration.spanX;
            array2[1] = cellLayout$ItemConfiguration.spanY;
            if (n7 != 1 && n7 != 2 && n7 != 3) {
                b2 = b;
            }
            else {
                this.copySolutionToTempState(cellLayout$ItemConfiguration, view);
                this.setItemPlacementDirty(true);
                this.animateItemsToSolution(cellLayout$ItemConfiguration, view, n7 == 2);
                if (n7 == 2 || n7 == 3) {
                    this.commitTempPlacement();
                    this.completeAndClearReorderPreviewAnimations();
                    this.setItemPlacementDirty(false);
                    b2 = b;
                }
                else {
                    this.beginOrAdjustReorderPreviewAnimations(cellLayout$ItemConfiguration, view, 150, 1);
                    b2 = b;
                }
            }
        }
        else {
            b2 = false;
            array2[0] = (array2[1] = -1);
            nearestArea[0] = (nearestArea[1] = -1);
        }
        if (n7 == 2 || (b2 ^ true)) {
            this.setUseTempCoords(false);
        }
        this.mShortcutsAndWidgets.requestLayout();
        return nearestArea;
    }
    
    public void pointToCellExact(final int n, final int n2, final int[] array) {
        final int n3 = 1;
        final int paddingLeft = this.getPaddingLeft();
        final int paddingTop = this.getPaddingTop();
        array[0] = (n - paddingLeft) / this.mCellWidth;
        array[n3] = (n2 - paddingTop) / this.mCellHeight;
        final int mCountX = this.mCountX;
        final int mCountY = this.mCountY;
        if (array[0] < 0) {
            array[0] = 0;
        }
        if (array[0] >= mCountX) {
            array[0] = mCountX - 1;
        }
        if (array[n3] < 0) {
            array[n3] = 0;
        }
        if (array[n3] >= mCountY) {
            array[n3] = mCountY - 1;
        }
    }
    
    void regionToCenterPoint(final int n, final int n2, final int n3, final int n4, final int[] array) {
        final int paddingLeft = this.getPaddingLeft();
        final int paddingTop = this.getPaddingTop();
        array[0] = paddingLeft + this.mCellWidth * n + this.mCellWidth * n3 / 2;
        array[1] = this.mCellHeight * n2 + paddingTop + this.mCellHeight * n4 / 2;
    }
    
    void regionToRect(final int n, final int n2, final int n3, final int n4, final Rect rect) {
        final int paddingLeft = this.getPaddingLeft();
        final int paddingTop = this.getPaddingTop();
        final int n5 = paddingLeft + this.mCellWidth * n;
        final int n6 = paddingTop + this.mCellHeight * n2;
        rect.set(n5, n6, this.mCellWidth * n3 + n5, this.mCellHeight * n4 + n6);
    }
    
    public void removeAllViews() {
        this.mOccupied.clear();
        this.mShortcutsAndWidgets.removeAllViews();
    }
    
    public void removeAllViewsInLayout() {
        if (this.mShortcutsAndWidgets.getChildCount() > 0) {
            this.mOccupied.clear();
            this.mShortcutsAndWidgets.removeAllViewsInLayout();
        }
    }
    
    public void removeFolderBackground(final PreviewBackground previewBackground) {
        this.mFolderBackgrounds.remove(previewBackground);
    }
    
    public void removeView(final View view) {
        this.markCellsAsUnoccupiedForView(view);
        this.mShortcutsAndWidgets.removeView(view);
    }
    
    public void removeViewAt(final int n) {
        this.markCellsAsUnoccupiedForView(this.mShortcutsAndWidgets.getChildAt(n));
        this.mShortcutsAndWidgets.removeViewAt(n);
    }
    
    public void removeViewInLayout(final View view) {
        this.markCellsAsUnoccupiedForView(view);
        this.mShortcutsAndWidgets.removeViewInLayout(view);
    }
    
    public void removeViews(final int n, final int n2) {
        for (int i = n; i < n + n2; ++i) {
            this.markCellsAsUnoccupiedForView(this.mShortcutsAndWidgets.getChildAt(i));
        }
        this.mShortcutsAndWidgets.removeViews(n, n2);
    }
    
    public void removeViewsInLayout(final int n, final int n2) {
        for (int i = n; i < n + n2; ++i) {
            this.markCellsAsUnoccupiedForView(this.mShortcutsAndWidgets.getChildAt(i));
        }
        this.mShortcutsAndWidgets.removeViewsInLayout(n, n2);
    }
    
    public void restoreInstanceState(final SparseArray sparseArray) {
        try {
            this.dispatchRestoreInstanceState(sparseArray);
        }
        catch (IllegalArgumentException ex) {
            Log.e("CellLayout", "Ignoring an error while restoring a view instance state", (Throwable)ex);
        }
    }
    
    void revertTempState() {
        this.completeAndClearReorderPreviewAnimations();
        if (this.isItemPlacementDirty()) {
            for (int childCount = this.mShortcutsAndWidgets.getChildCount(), i = 0; i < childCount; ++i) {
                final View child = this.mShortcutsAndWidgets.getChildAt(i);
                final CellLayout$LayoutParams cellLayout$LayoutParams = (CellLayout$LayoutParams)child.getLayoutParams();
                if (cellLayout$LayoutParams.tmpCellX != cellLayout$LayoutParams.cellX || cellLayout$LayoutParams.tmpCellY != cellLayout$LayoutParams.cellY) {
                    cellLayout$LayoutParams.tmpCellX = cellLayout$LayoutParams.cellX;
                    cellLayout$LayoutParams.tmpCellY = cellLayout$LayoutParams.cellY;
                    this.animateChildToPosition(child, cellLayout$LayoutParams.cellX, cellLayout$LayoutParams.cellY, 150, 0, false, false);
                }
            }
            this.setItemPlacementDirty(false);
        }
    }
    
    public void setBackgroundAlpha(final float mBackgroundAlpha) {
        if (this.mBackgroundAlpha != mBackgroundAlpha) {
            this.mBackgroundAlpha = mBackgroundAlpha;
            this.mBackground.setAlpha((int)(this.mBackgroundAlpha * 255.0f));
        }
    }
    
    public void setCellDimensions(final int n, final int n2) {
        this.mCellWidth = n;
        this.mFixedCellWidth = n;
        this.mCellHeight = n2;
        this.mFixedCellHeight = n2;
        this.mShortcutsAndWidgets.setCellDimensions(this.mCellWidth, this.mCellHeight, this.mCountX, this.mCountY);
    }
    
    public void setDropPending(final boolean mDropPending) {
        this.mDropPending = mDropPending;
    }
    
    public void setFixedSize(final int mFixedWidth, final int mFixedHeight) {
        this.mFixedWidth = mFixedWidth;
        this.mFixedHeight = mFixedHeight;
    }
    
    public void setFolderLeaveBehindCell(final int delegateCellX, final int delegateCellY) {
        final View child = this.getChildAt(delegateCellX, delegateCellY);
        this.mFolderLeaveBehind.setup(this.mLauncher, null, child.getMeasuredWidth(), child.getPaddingTop());
        this.mFolderLeaveBehind.delegateCellX = delegateCellX;
        this.mFolderLeaveBehind.delegateCellY = delegateCellY;
        this.invalidate();
    }
    
    public void setGridSize(final int mCountX, final int mCountY) {
        this.mCountX = mCountX;
        this.mCountY = mCountY;
        this.mOccupied = new GridOccupancy(this.mCountX, this.mCountY);
        this.mTmpOccupied = new GridOccupancy(this.mCountX, this.mCountY);
        this.mTempRectStack.clear();
        this.mShortcutsAndWidgets.setCellDimensions(this.mCellWidth, this.mCellHeight, this.mCountX, this.mCountY);
        this.requestLayout();
    }
    
    public void setInvertIfRtl(final boolean invertIfRtl) {
        this.mShortcutsAndWidgets.setInvertIfRtl(invertIfRtl);
    }
    
    void setIsDragOverlapping(final boolean mIsDragOverlapping) {
        if (this.mIsDragOverlapping != mIsDragOverlapping) {
            this.mIsDragOverlapping = mIsDragOverlapping;
            final Drawable mBackground = this.mBackground;
            int[] state;
            if (this.mIsDragOverlapping) {
                state = CellLayout.BACKGROUND_STATE_ACTIVE;
            }
            else {
                state = CellLayout.BACKGROUND_STATE_DEFAULT;
            }
            mBackground.setState(state);
            this.invalidate();
        }
    }
    
    void setItemPlacementDirty(final boolean mItemPlacementDirty) {
        this.mItemPlacementDirty = mItemPlacementDirty;
    }
    
    public void setOnInterceptTouchListener(final View$OnTouchListener mInterceptTouchListener) {
        this.mInterceptTouchListener = mInterceptTouchListener;
    }
    
    public void setPressedIcon(final BubbleTextView bubbleTextView, final Bitmap bitmap) {
        if (bubbleTextView == null || bitmap == null) {
            this.mTouchFeedbackView.setBitmap(null);
            this.mTouchFeedbackView.animate().cancel();
        }
        else if (this.mTouchFeedbackView.setBitmap(bitmap)) {
            this.mTouchFeedbackView.alignWithIconView(bubbleTextView, this.mShortcutsAndWidgets, null);
            this.mTouchFeedbackView.animateShadow();
        }
    }
    
    public void setShortcutAndWidgetAlpha(final float alpha) {
        this.mShortcutsAndWidgets.setAlpha(alpha);
    }
    
    public boolean shouldDelayChildPressedState() {
        return false;
    }
    
    protected boolean verifyDrawable(final Drawable drawable) {
        boolean b = true;
        if (super.verifyDrawable(drawable) && (!this.mIsDragTarget || drawable != this.mBackground)) {
            b = false;
        }
        return b;
    }
    
    void visualizeDropLocation(final View view, final DragPreviewProvider dragPreviewProvider, final int n, final int n2, final int n3, final int n4, final boolean b, final DropTarget$DragObject dropTarget$DragObject) {
        final int n5 = this.mDragCell[0];
        final int n6 = this.mDragCell[1];
        if (dragPreviewProvider == null || dragPreviewProvider.generatedDragOutline == null) {
            return;
        }
        final Bitmap generatedDragOutline = dragPreviewProvider.generatedDragOutline;
        if (n != n5 || n2 != n6) {
            final Point dragVisualizeOffset = dropTarget$DragObject.dragView.getDragVisualizeOffset();
            final Rect dragRegion = dropTarget$DragObject.dragView.getDragRegion();
            this.mDragCell[0] = n;
            this.mDragCell[1] = n2;
            final int mDragOutlineCurrent = this.mDragOutlineCurrent;
            this.mDragOutlineAnims[mDragOutlineCurrent].animateOut();
            this.mDragOutlineCurrent = (mDragOutlineCurrent + 1) % this.mDragOutlines.length;
            final Rect rect = this.mDragOutlines[this.mDragOutlineCurrent];
            if (b) {
                this.cellToRect(n, n2, n3, n4, rect);
                if (view instanceof LauncherAppWidgetHostView) {
                    final DeviceProfile deviceProfile = this.mLauncher.getDeviceProfile();
                    Utilities.shrinkRect(rect, deviceProfile.appWidgetScale.x, deviceProfile.appWidgetScale.y);
                }
            }
            else {
                final int[] mTmpPoint = this.mTmpPoint;
                this.cellToPoint(n, n2, mTmpPoint);
                final int n7 = mTmpPoint[0];
                final int n8 = mTmpPoint[1];
                int n10;
                int n11;
                if (view != null && dragVisualizeOffset == null) {
                    final ViewGroup$MarginLayoutParams viewGroup$MarginLayoutParams = (ViewGroup$MarginLayoutParams)view.getLayoutParams();
                    final int n9 = viewGroup$MarginLayoutParams.leftMargin + n7;
                    n10 = viewGroup$MarginLayoutParams.topMargin + n8 + (this.mCellHeight * n4 - generatedDragOutline.getHeight()) / 2;
                    n11 = n9 + (this.mCellWidth * n3 - generatedDragOutline.getWidth()) / 2;
                }
                else if (dragVisualizeOffset != null && dragRegion != null) {
                    n11 = (this.mCellWidth * n3 - dragRegion.width()) / 2 + dragVisualizeOffset.x + n7;
                    n10 = dragVisualizeOffset.y + (int)Math.max(0.0f, (this.mCellHeight - this.getShortcutsAndWidgets().getCellContentHeight()) / 2.0f) + n8;
                }
                else {
                    n11 = n7 + (this.mCellWidth * n3 - generatedDragOutline.getWidth()) / 2;
                    n10 = (this.mCellHeight * n4 - generatedDragOutline.getHeight()) / 2 + n8;
                }
                rect.set(n11, n10, generatedDragOutline.getWidth() + n11, generatedDragOutline.getHeight() + n10);
            }
            Utilities.scaleRectAboutCenter(rect, 1.0f);
            this.mDragOutlineAnims[this.mDragOutlineCurrent].setTag(generatedDragOutline);
            this.mDragOutlineAnims[this.mDragOutlineCurrent].animateIn();
            if (dropTarget$DragObject.stateAnnouncer != null) {
                dropTarget$DragObject.stateAnnouncer.announce(this.getItemMoveDescription(n, n2));
            }
        }
    }
}
