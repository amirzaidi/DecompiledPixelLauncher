// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v7.widget;

import android.view.View;

class ap implements J
{
    final /* synthetic */ p Si;
    
    ap(final p si) {
        this.Si = si;
    }
    
    public int ZI() {
        return this.Si.getHeight() - this.Si.getPaddingBottom();
    }
    
    public int ZJ() {
        return this.Si.getPaddingTop();
    }
    
    public int ZK(final View view) {
        return this.Si.getDecoratedTop(view) - ((i)view.getLayoutParams()).topMargin;
    }
    
    public int ZL(final View view) {
        return ((i)view.getLayoutParams()).bottomMargin + this.Si.getDecoratedBottom(view);
    }
    
    public View getChildAt(final int n) {
        return this.Si.getChildAt(n);
    }
}
