// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v7.widget;

import android.view.View;

class at implements J
{
    final /* synthetic */ p TX;
    
    at(final p tx) {
        this.TX = tx;
    }
    
    public int aaK() {
        return this.TX.getWidth() - this.TX.getPaddingRight();
    }
    
    public int aaL() {
        return this.TX.getPaddingLeft();
    }
    
    public int aaM(final View view) {
        return this.TX.getDecoratedLeft(view) - ((i)view.getLayoutParams()).leftMargin;
    }
    
    public int aaN(final View view) {
        return ((i)view.getLayoutParams()).rightMargin + this.TX.getDecoratedRight(view);
    }
    
    public View getChildAt(final int n) {
        return this.TX.getChildAt(n);
    }
}
