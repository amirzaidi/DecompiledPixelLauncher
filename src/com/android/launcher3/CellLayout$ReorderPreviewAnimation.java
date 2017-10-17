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
import android.support.v4.view.a;
import android.support.v4.view.f;
import android.view.MotionEvent;
import android.graphics.Canvas;
import android.view.ViewGroup$LayoutParams;
import java.util.Collection;
import android.os.Parcelable;
import com.android.launcher3.util.ParcelableSparseArray;
import android.util.SparseArray;
import java.util.Iterator;
import com.android.launcher3.util.CellAndSpan;
import android.content.res.Resources;
import android.content.res.TypedArray;
import java.util.Arrays;
import android.graphics.drawable.Drawable$Callback;
import android.util.AttributeSet;
import android.content.Context;
import com.android.launcher3.accessibility.DragAndDropAccessibilityDelegate;
import java.util.Stack;
import java.util.HashMap;
import com.android.launcher3.util.GridOccupancy;
import android.view.View$OnTouchListener;
import com.android.launcher3.folder.FolderIcon$PreviewBackground;
import java.util.ArrayList;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.Paint;
import android.view.ViewGroup;
import android.animation.TimeInterpolator;
import android.view.animation.DecelerateInterpolator;
import com.android.launcher3.anim.PropertyListBuilder;
import android.animation.ValueAnimator;
import android.animation.Animator$AnimatorListener;
import android.animation.ValueAnimator$AnimatorUpdateListener;
import android.view.View;
import android.animation.Animator;

class CellLayout$ReorderPreviewAnimation
{
    Animator a;
    View child;
    float finalDeltaX;
    float finalDeltaY;
    float finalScale;
    float initDeltaX;
    float initDeltaY;
    float initScale;
    int mode;
    boolean repeating;
    final /* synthetic */ CellLayout this$0;
    
    public CellLayout$ReorderPreviewAnimation(final CellLayout this$0, final View child, final int mode, final int n, final int n2, final int n3, final int n4, final int n5, final int n6) {
        this.this$0 = this$0;
        this.repeating = false;
        this$0.regionToCenterPoint(n, n2, n5, n6, this$0.mTmpPoint);
        final int n7 = this$0.mTmpPoint[0];
        final int n8 = this$0.mTmpPoint[1];
        this$0.regionToCenterPoint(n3, n4, n5, n6, this$0.mTmpPoint);
        final int n9 = this$0.mTmpPoint[0];
        final int n10 = this$0.mTmpPoint[1];
        final int n11 = n9 - n7;
        final int n12 = n10 - n8;
        this.child = child;
        this.mode = mode;
        this.setInitialAnimationValues(false);
        this.finalScale = (this$0.mChildScale - 4.0f / child.getWidth()) * this.initScale;
        this.finalDeltaX = this.initDeltaX;
        this.finalDeltaY = this.initDeltaY;
        int n13;
        if (mode == 0) {
            n13 = -1;
        }
        else {
            n13 = 1;
        }
        if (n11 != n12 || n11 != 0) {
            if (n12 == 0) {
                this.finalDeltaX += -n13 * Math.signum(n11) * this$0.mReorderPreviewAnimationMagnitude;
            }
            else if (n11 == 0) {
                this.finalDeltaY += -n13 * Math.signum(n12) * this$0.mReorderPreviewAnimationMagnitude;
            }
            else {
                final double atan = Math.atan(n12 / n11);
                this.finalDeltaX += (int)(Math.signum(n11) * -n13 * Math.abs(Math.cos(atan) * this$0.mReorderPreviewAnimationMagnitude));
                this.finalDeltaY += (int)(-n13 * Math.signum(n12) * Math.abs(Math.sin(atan) * this$0.mReorderPreviewAnimationMagnitude));
            }
        }
    }
    
    private void cancel() {
        if (this.a != null) {
            this.a.cancel();
        }
    }
    
    void animate() {
        final int repeatMode = 2;
        final boolean b = this.finalDeltaX == this.initDeltaX && this.finalDeltaY == this.initDeltaY && true;
        if (this.this$0.mShakeAnimators.containsKey(this.child)) {
            this.this$0.mShakeAnimators.get(this.child).cancel();
            this.this$0.mShakeAnimators.remove(this.child);
            if (b) {
                this.completeAnimationImmediately();
                return;
            }
        }
        if (b) {
            return;
        }
        final float[] array2;
        final float[] array = array2 = new float[repeatMode];
        array2[0] = 0.0f;
        array2[1] = 1.0f;
        final ValueAnimator ofFloat = LauncherAnimUtils.ofFloat(array);
        this.a = (Animator)ofFloat;
        if (!Utilities.isPowerSaverOn(this.this$0.getContext())) {
            ofFloat.setRepeatMode(repeatMode);
            ofFloat.setRepeatCount(-1);
        }
        int n;
        if (this.mode == 0) {
            n = 350;
        }
        else {
            n = 300;
        }
        ofFloat.setDuration((long)n);
        ofFloat.setStartDelay((long)(int)(Math.random() * 60.0));
        ofFloat.addUpdateListener((ValueAnimator$AnimatorUpdateListener)new CellLayout$ReorderPreviewAnimation$1(this));
        ofFloat.addListener((Animator$AnimatorListener)new CellLayout$ReorderPreviewAnimation$2(this));
        this.this$0.mShakeAnimators.put(this.child, this);
        ofFloat.start();
    }
    
    void completeAnimationImmediately() {
        if (this.a != null) {
            this.a.cancel();
        }
        this.setInitialAnimationValues(true);
        (this.a = (Animator)LauncherAnimUtils.ofPropertyValuesHolder(this.child, new PropertyListBuilder().scale(this.initScale).translationX(this.initDeltaX).translationY(this.initDeltaY).build()).setDuration(150L)).setInterpolator((TimeInterpolator)new DecelerateInterpolator(1.5f));
        this.a.start();
    }
    
    void setInitialAnimationValues(final boolean b) {
        if (b) {
            if (this.child instanceof LauncherAppWidgetHostView) {
                final LauncherAppWidgetHostView launcherAppWidgetHostView = (LauncherAppWidgetHostView)this.child;
                this.initScale = launcherAppWidgetHostView.getScaleToFit();
                this.initDeltaX = launcherAppWidgetHostView.getTranslationForCentering().x;
                this.initDeltaY = launcherAppWidgetHostView.getTranslationForCentering().y;
            }
            else {
                this.initScale = this.this$0.mChildScale;
                this.initDeltaX = 0.0f;
                this.initDeltaY = 0.0f;
            }
        }
        else {
            this.initScale = this.child.getScaleX();
            this.initDeltaX = this.child.getTranslationX();
            this.initDeltaY = this.child.getTranslationY();
        }
    }
}
