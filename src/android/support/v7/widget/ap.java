// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v7.widget;

import android.view.View;

class ap implements J
{
    final /* synthetic */ p TR;
    
    ap(final p tr) {
        this.TR = tr;
    }
    
    public int aaK() {
        return this.TR.getHeight() - this.TR.getPaddingBottom();
    }
    
    public int aaL() {
        return this.TR.getPaddingTop();
    }
    
    public int aaM(final View view) {
        return this.TR.getDecoratedTop(view) - ((i)view.getLayoutParams()).topMargin;
    }
    
    public int aaN(final View view) {
        return ((i)view.getLayoutParams()).bottomMargin + this.TR.getDecoratedBottom(view);
    }
    
    public View getChildAt(final int n) {
        return this.TR.getChildAt(n);
    }
}
