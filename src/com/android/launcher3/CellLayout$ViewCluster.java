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
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.animation.Animator$AnimatorListener;
import android.animation.ValueAnimator$AnimatorUpdateListener;
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
import android.animation.TimeInterpolator;
import android.graphics.drawable.Drawable;
import android.graphics.Paint;
import android.view.ViewGroup;
import java.util.Comparator;
import java.util.List;
import java.util.Collections;
import java.util.Iterator;
import com.android.launcher3.util.CellAndSpan;
import android.view.View;
import java.util.ArrayList;
import android.graphics.Rect;

class CellLayout$ViewCluster
{
    final int[] bottomEdge;
    final Rect boundingRect;
    boolean boundingRectDirty;
    final CellLayout$ViewCluster$PositionComparator comparator;
    final CellLayout$ItemConfiguration config;
    int dirtyEdges;
    final int[] leftEdge;
    final int[] rightEdge;
    final /* synthetic */ CellLayout this$0;
    final int[] topEdge;
    final ArrayList views;
    
    public CellLayout$ViewCluster(final CellLayout this$0, final ArrayList list, final CellLayout$ItemConfiguration config) {
        this.this$0 = this$0;
        this.boundingRect = new Rect();
        this.leftEdge = new int[this.this$0.mCountY];
        this.rightEdge = new int[this.this$0.mCountY];
        this.topEdge = new int[this.this$0.mCountX];
        this.bottomEdge = new int[this.this$0.mCountX];
        this.comparator = new CellLayout$ViewCluster$PositionComparator(this);
        this.views = (ArrayList)list.clone();
        this.config = config;
        this.resetEdges();
    }
    
    public void addView(final View view) {
        this.views.add(view);
        this.resetEdges();
    }
    
    void computeEdge(final int n) {
        for (int size = this.views.size(), i = 0; i < size; ++i) {
            final CellAndSpan cellAndSpan = (CellAndSpan)this.config.map.get(this.views.get(i));
            switch (n) {
                case 1: {
                    final int cellX = cellAndSpan.cellX;
                    for (int j = cellAndSpan.cellY; j < cellAndSpan.cellY + cellAndSpan.spanY; ++j) {
                        if (cellX < this.leftEdge[j] || this.leftEdge[j] < 0) {
                            this.leftEdge[j] = cellX;
                        }
                    }
                    break;
                }
                case 4: {
                    final int n2 = cellAndSpan.spanX + cellAndSpan.cellX;
                    for (int k = cellAndSpan.cellY; k < cellAndSpan.cellY + cellAndSpan.spanY; ++k) {
                        if (n2 > this.rightEdge[k]) {
                            this.rightEdge[k] = n2;
                        }
                    }
                    break;
                }
                case 2: {
                    final int cellY = cellAndSpan.cellY;
                    for (int l = cellAndSpan.cellX; l < cellAndSpan.cellX + cellAndSpan.spanX; ++l) {
                        if (cellY < this.topEdge[l] || this.topEdge[l] < 0) {
                            this.topEdge[l] = cellY;
                        }
                    }
                    break;
                }
                case 8: {
                    final int n3 = cellAndSpan.spanY + cellAndSpan.cellY;
                    for (int cellX2 = cellAndSpan.cellX; cellX2 < cellAndSpan.cellX + cellAndSpan.spanX; ++cellX2) {
                        if (n3 > this.bottomEdge[cellX2]) {
                            this.bottomEdge[cellX2] = n3;
                        }
                    }
                    break;
                }
            }
        }
    }
    
    public Rect getBoundingRect() {
        if (this.boundingRectDirty) {
            this.config.getBoundingRectForViews(this.views, this.boundingRect);
        }
        return this.boundingRect;
    }
    
    boolean isViewTouchingEdge(final View view, final int n) {
        final boolean b = true;
        final CellAndSpan cellAndSpan = (CellAndSpan)this.config.map.get((Object)view);
        if ((this.dirtyEdges & n) == n) {
            this.computeEdge(n);
            this.dirtyEdges &= ~n;
        }
        switch (n) {
            case 1: {
                for (int i = cellAndSpan.cellY; i < cellAndSpan.cellY + cellAndSpan.spanY; ++i) {
                    if (this.leftEdge[i] == cellAndSpan.cellX + cellAndSpan.spanX) {
                        return b;
                    }
                }
                break;
            }
            case 4: {
                for (int j = cellAndSpan.cellY; j < cellAndSpan.cellY + cellAndSpan.spanY; ++j) {
                    if (this.rightEdge[j] == cellAndSpan.cellX) {
                        return b;
                    }
                }
                break;
            }
            case 2: {
                for (int k = cellAndSpan.cellX; k < cellAndSpan.cellX + cellAndSpan.spanX; ++k) {
                    if (this.topEdge[k] == cellAndSpan.cellY + cellAndSpan.spanY) {
                        return b;
                    }
                }
                break;
            }
            case 8: {
                for (int l = cellAndSpan.cellX; l < cellAndSpan.cellX + cellAndSpan.spanX; ++l) {
                    if (this.bottomEdge[l] == cellAndSpan.cellY) {
                        return b;
                    }
                }
                break;
            }
        }
        return false;
    }
    
    void resetEdges() {
        int i = 0;
        final int n = -1;
        for (int j = 0; j < this.this$0.mCountX; ++j) {
            this.topEdge[j] = n;
            this.bottomEdge[j] = n;
        }
        while (i < this.this$0.mCountY) {
            this.leftEdge[i] = n;
            this.rightEdge[i] = n;
            ++i;
        }
        this.dirtyEdges = 15;
        this.boundingRectDirty = true;
    }
    
    void shift(final int n, final int n2) {
        final Iterator iterator = this.views.iterator();
        while (iterator.hasNext()) {
            final CellAndSpan cellAndSpan = (CellAndSpan)this.config.map.get((Object)iterator.next());
            switch (n) {
                default: {
                    cellAndSpan.cellY += n2;
                    continue;
                }
                case 1: {
                    cellAndSpan.cellX -= n2;
                    continue;
                }
                case 4: {
                    cellAndSpan.cellX += n2;
                    continue;
                }
                case 2: {
                    cellAndSpan.cellY -= n2;
                    continue;
                }
            }
        }
        this.resetEdges();
    }
    
    public void sortConfigurationForEdgePush(final int whichEdge) {
        this.comparator.whichEdge = whichEdge;
        Collections.sort((List<Object>)this.config.sortedViews, this.comparator);
    }
}
