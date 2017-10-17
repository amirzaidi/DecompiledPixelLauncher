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
    
    public int abe(final View view) {
        this.Sh.getTransformedBoundingBox(view, true, this.Si);
        return this.Si.top;
    }
    
    public int abf() {
        return this.Sh.getHeightMode();
    }
    
    public int abh(final View view) {
        final i i = (i)view.getLayoutParams();
        return i.rightMargin + (this.Sh.getDecoratedMeasuredWidth(view) + i.leftMargin);
    }
    
    public int abi(final View view) {
        final i i = (i)view.getLayoutParams();
        return i.bottomMargin + (this.Sh.getDecoratedMeasuredHeight(view) + i.topMargin);
    }
    
    public int abj() {
        return this.Sh.getHeight() - this.Sh.getPaddingTop() - this.Sh.getPaddingBottom();
    }
    
    public int abk(final View view) {
        return this.Sh.getDecoratedTop(view) - ((i)view.getLayoutParams()).topMargin;
    }
    
    public int abl(final View view) {
        return ((i)view.getLayoutParams()).bottomMargin + this.Sh.getDecoratedBottom(view);
    }
    
    public int abm() {
        return this.Sh.getPaddingTop();
    }
    
    public int abn() {
        return this.Sh.getHeight();
    }
    
    public int abo() {
        return this.Sh.getWidthMode();
    }
    
    public int abp() {
        return this.Sh.getPaddingBottom();
    }
    
    public int abt(final View view) {
        this.Sh.getTransformedBoundingBox(view, true, this.Si);
        return this.Si.bottom;
    }
    
    public int abu() {
        return this.Sh.getHeight() - this.Sh.getPaddingBottom();
    }
    
    public void abv(final int n) {
        this.Sh.offsetChildrenVertical(n);
    }
}
