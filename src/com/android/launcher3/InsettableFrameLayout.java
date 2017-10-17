// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.view.View;
import android.widget.FrameLayout$LayoutParams;
import android.view.ViewGroup$LayoutParams;
import android.util.AttributeSet;
import android.content.Context;
import android.graphics.Rect;
import android.view.ViewGroup$OnHierarchyChangeListener;
import android.widget.FrameLayout;

public class InsettableFrameLayout extends FrameLayout implements ViewGroup$OnHierarchyChangeListener, Insettable
{
    protected Rect mInsets;
    
    public InsettableFrameLayout(final Context context, final AttributeSet set) {
        super(context, set);
        this.mInsets = new Rect();
        this.setOnHierarchyChangeListener((ViewGroup$OnHierarchyChangeListener)this);
    }
    
    protected boolean checkLayoutParams(final ViewGroup$LayoutParams viewGroup$LayoutParams) {
        return viewGroup$LayoutParams instanceof InsettableFrameLayout$LayoutParams;
    }
    
    protected InsettableFrameLayout$LayoutParams generateDefaultLayoutParams() {
        final int n = -2;
        return new InsettableFrameLayout$LayoutParams(n, n);
    }
    
    public InsettableFrameLayout$LayoutParams generateLayoutParams(final AttributeSet set) {
        return new InsettableFrameLayout$LayoutParams(this.getContext(), set);
    }
    
    protected InsettableFrameLayout$LayoutParams generateLayoutParams(final ViewGroup$LayoutParams viewGroup$LayoutParams) {
        return new InsettableFrameLayout$LayoutParams(viewGroup$LayoutParams);
    }
    
    public Rect getInsets() {
        return this.mInsets;
    }
    
    public void onChildViewAdded(final View view, final View view2) {
        this.setFrameLayoutChildInsets(view2, this.mInsets, new Rect());
    }
    
    public void onChildViewRemoved(final View view, final View view2) {
    }
    
    public void setFrameLayoutChildInsets(final View view, final Rect insets, final Rect rect) {
        final InsettableFrameLayout$LayoutParams layoutParams = (InsettableFrameLayout$LayoutParams)view.getLayoutParams();
        if (view instanceof Insettable) {
            ((Insettable)view).setInsets(insets);
        }
        else if (!layoutParams.ignoreInsets) {
            layoutParams.topMargin += insets.top - rect.top;
            layoutParams.leftMargin += insets.left - rect.left;
            layoutParams.rightMargin += insets.right - rect.right;
            layoutParams.bottomMargin += insets.bottom - rect.bottom;
        }
        view.setLayoutParams((ViewGroup$LayoutParams)layoutParams);
    }
    
    public void setInsets(final Rect rect) {
        if (rect.equals((Object)this.mInsets)) {
            return;
        }
        for (int childCount = this.getChildCount(), i = 0; i < childCount; ++i) {
            this.setFrameLayoutChildInsets(this.getChildAt(i), rect, this.mInsets);
        }
        this.mInsets.set(rect);
    }
}
