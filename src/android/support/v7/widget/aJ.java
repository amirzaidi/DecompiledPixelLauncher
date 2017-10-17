// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v7.widget;

import android.view.View;

class aj extends U
{
    aj(final p p) {
        super(p, null);
    }
    
    public int aac(final View view) {
        this.mLayoutManager.getTransformedBoundingBox(view, true, this.mTmpRect);
        return this.mTmpRect.top;
    }
    
    public int aad() {
        return this.mLayoutManager.getHeightMode();
    }
    
    public int aaf(final View view) {
        final i i = (i)view.getLayoutParams();
        return i.rightMargin + (this.mLayoutManager.getDecoratedMeasuredWidth(view) + i.leftMargin);
    }
    
    public int aag(final View view) {
        final i i = (i)view.getLayoutParams();
        return i.bottomMargin + (this.mLayoutManager.getDecoratedMeasuredHeight(view) + i.topMargin);
    }
    
    public int aah() {
        return this.mLayoutManager.getHeight() - this.mLayoutManager.getPaddingTop() - this.mLayoutManager.getPaddingBottom();
    }
    
    public int aai(final View view) {
        return this.mLayoutManager.getDecoratedTop(view) - ((i)view.getLayoutParams()).topMargin;
    }
    
    public int aaj(final View view) {
        return ((i)view.getLayoutParams()).bottomMargin + this.mLayoutManager.getDecoratedBottom(view);
    }
    
    public int aak() {
        return this.mLayoutManager.getPaddingTop();
    }
    
    public int aal() {
        return this.mLayoutManager.getHeight();
    }
    
    public int aam() {
        return this.mLayoutManager.getWidthMode();
    }
    
    public int aan() {
        return this.mLayoutManager.getPaddingBottom();
    }
    
    public int aar(final View view) {
        this.mLayoutManager.getTransformedBoundingBox(view, true, this.mTmpRect);
        return this.mTmpRect.bottom;
    }
    
    public int aas() {
        return this.mLayoutManager.getHeight() - this.mLayoutManager.getPaddingBottom();
    }
    
    public void aat(final int n) {
        this.mLayoutManager.offsetChildrenVertical(n);
    }
}
