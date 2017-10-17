// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v7.widget;

import android.view.View;

class at implements J
{
    final /* synthetic */ p So;
    
    at(final p so) {
        this.So = so;
    }
    
    public int ZI() {
        return this.So.getWidth() - this.So.getPaddingRight();
    }
    
    public int ZJ() {
        return this.So.getPaddingLeft();
    }
    
    public int ZK(final View view) {
        return this.So.getDecoratedLeft(view) - ((i)view.getLayoutParams()).leftMargin;
    }
    
    public int ZL(final View view) {
        return ((i)view.getLayoutParams()).rightMargin + this.So.getDecoratedRight(view);
    }
    
    public View getChildAt(final int n) {
        return this.So.getChildAt(n);
    }
}
