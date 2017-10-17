// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v7.widget;

import android.view.View;

class ar extends U
{
    ar(final p p) {
        super(p, null);
    }
    
    public int aac(final View view) {
        this.mLayoutManager.getTransformedBoundingBox(view, true, this.mTmpRect);
        return this.mTmpRect.left;
    }
    
    public int aad() {
        return this.mLayoutManager.getWidthMode();
    }
    
    public int aaf(final View view) {
        final i i = (i)view.getLayoutParams();
        return i.bottomMargin + (this.mLayoutManager.getDecoratedMeasuredHeight(view) + i.topMargin);
    }
    
    public int aag(final View view) {
        final i i = (i)view.getLayoutParams();
        return i.rightMargin + (this.mLayoutManager.getDecoratedMeasuredWidth(view) + i.leftMargin);
    }
    
    public int aah() {
        return this.mLayoutManager.getWidth() - this.mLayoutManager.getPaddingLeft() - this.mLayoutManager.getPaddingRight();
    }
    
    public int aai(final View view) {
        return this.mLayoutManager.getDecoratedLeft(view) - ((i)view.getLayoutParams()).leftMargin;
    }
    
    public int aaj(final View view) {
        return ((i)view.getLayoutParams()).rightMargin + this.mLayoutManager.getDecoratedRight(view);
    }
    
    public int aak() {
        return this.mLayoutManager.getPaddingLeft();
    }
    
    public int aal() {
        return this.mLayoutManager.getWidth();
    }
    
    public int aam() {
        return this.mLayoutManager.getHeightMode();
    }
    
    public int aan() {
        return this.mLayoutManager.getPaddingRight();
    }
    
    public int aar(final View view) {
        this.mLayoutManager.getTransformedBoundingBox(view, true, this.mTmpRect);
        return this.mTmpRect.right;
    }
    
    public int aas() {
        return this.mLayoutManager.getWidth() - this.mLayoutManager.getPaddingRight();
    }
    
    public void aat(final int n) {
        this.mLayoutManager.offsetChildrenHorizontal(n);
    }
}
