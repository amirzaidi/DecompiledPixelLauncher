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
    
    public int abe(final View view) {
        this.Sh.getTransformedBoundingBox(view, true, this.Si);
        return this.Si.left;
    }
    
    public int abf() {
        return this.Sh.getWidthMode();
    }
    
    public int abh(final View view) {
        final i i = (i)view.getLayoutParams();
        return i.bottomMargin + (this.Sh.getDecoratedMeasuredHeight(view) + i.topMargin);
    }
    
    public int abi(final View view) {
        final i i = (i)view.getLayoutParams();
        return i.rightMargin + (this.Sh.getDecoratedMeasuredWidth(view) + i.leftMargin);
    }
    
    public int abj() {
        return this.Sh.getWidth() - this.Sh.getPaddingLeft() - this.Sh.getPaddingRight();
    }
    
    public int abk(final View view) {
        return this.Sh.getDecoratedLeft(view) - ((i)view.getLayoutParams()).leftMargin;
    }
    
    public int abl(final View view) {
        return ((i)view.getLayoutParams()).rightMargin + this.Sh.getDecoratedRight(view);
    }
    
    public int abm() {
        return this.Sh.getPaddingLeft();
    }
    
    public int abn() {
        return this.Sh.getWidth();
    }
    
    public int abo() {
        return this.Sh.getHeightMode();
    }
    
    public int abp() {
        return this.Sh.getPaddingRight();
    }
    
    public int abt(final View view) {
        this.Sh.getTransformedBoundingBox(view, true, this.Si);
        return this.Si.right;
    }
    
    public int abu() {
        return this.Sh.getWidth() - this.Sh.getPaddingRight();
    }
    
    public void abv(final int n) {
        this.Sh.offsetChildrenHorizontal(n);
    }
}
