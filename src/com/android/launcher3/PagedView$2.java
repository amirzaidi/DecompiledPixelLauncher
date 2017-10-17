// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.util.Property;
import android.view.View;
import android.animation.ObjectAnimator;

final class PagedView$2 implements Runnable
{
    final /* synthetic */ PagedView this$0;
    final /* synthetic */ int val$dragViewIndex;
    final /* synthetic */ int val$pageUnderPointIndex;
    
    PagedView$2(final PagedView this$0, final int val$pageUnderPointIndex, final int val$dragViewIndex) {
        this.this$0 = this$0;
        this.val$pageUnderPointIndex = val$pageUnderPointIndex;
        this.val$dragViewIndex = val$dragViewIndex;
    }
    
    public void run() {
        final int n = 1;
        final int mSidePageHoverIndex = -1;
        this.this$0.snapToPage(this.val$pageUnderPointIndex);
        int n2;
        if (this.val$dragViewIndex < this.val$pageUnderPointIndex) {
            n2 = mSidePageHoverIndex;
        }
        else {
            n2 = n;
        }
        int val$pageUnderPointIndex;
        if (this.val$dragViewIndex < this.val$pageUnderPointIndex) {
            val$pageUnderPointIndex = this.val$dragViewIndex + 1;
        }
        else {
            val$pageUnderPointIndex = this.val$pageUnderPointIndex;
        }
        int val$pageUnderPointIndex2;
        if (this.val$dragViewIndex > this.val$pageUnderPointIndex) {
            val$pageUnderPointIndex2 = this.val$dragViewIndex - 1;
        }
        else {
            val$pageUnderPointIndex2 = this.val$pageUnderPointIndex;
        }
        for (int i = val$pageUnderPointIndex; i <= val$pageUnderPointIndex2; ++i) {
            final View child = this.this$0.getChildAt(i);
            final int n3 = this.this$0.getChildOffset(i) + this.this$0.getViewportOffsetX();
            final int n4 = this.this$0.getChildOffset(i + n2) + this.this$0.getViewportOffsetX();
            final ObjectAnimator objectAnimator = (ObjectAnimator)child.getTag();
            if (objectAnimator != null) {
                objectAnimator.cancel();
            }
            child.setTranslationX((float)(n3 - n4));
            final Property translation_X = View.TRANSLATION_X;
            final float[] array = new float[n];
            array[0] = 0.0f;
            final ObjectAnimator ofFloat = LauncherAnimUtils.ofFloat(child, translation_X, array);
            ofFloat.setDuration((long)PagedView.REORDERING_REORDER_REPOSITION_DURATION);
            ofFloat.start();
            child.setTag((Object)ofFloat);
        }
        this.this$0.removeView(this.this$0.mDragView);
        this.this$0.addView(this.this$0.mDragView, this.val$pageUnderPointIndex);
        this.this$0.mSidePageHoverIndex = mSidePageHoverIndex;
        if (this.this$0.mPageIndicator != null) {
            this.this$0.mPageIndicator.setActiveMarker(this.this$0.getNextPage());
        }
    }
}
