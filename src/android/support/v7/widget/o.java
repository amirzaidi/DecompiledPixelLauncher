// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v7.widget;

import android.view.ViewGroup$MarginLayoutParams;
import android.view.ViewGroup$LayoutParams;
import android.util.AttributeSet;
import android.content.Context;

public class O extends i
{
    int RK;
    int RL;
    
    public O(final int n, final int n2) {
        super(n, n2);
        this.RK = -1;
        this.RL = 0;
    }
    
    public O(final Context context, final AttributeSet set) {
        super(context, set);
        this.RK = -1;
        this.RL = 0;
    }
    
    public O(final ViewGroup$LayoutParams viewGroup$LayoutParams) {
        super(viewGroup$LayoutParams);
        this.RK = -1;
        this.RL = 0;
    }
    
    public O(final ViewGroup$MarginLayoutParams viewGroup$MarginLayoutParams) {
        super(viewGroup$MarginLayoutParams);
        this.RK = -1;
        this.RL = 0;
    }
    
    public int aaQ() {
        return this.RK;
    }
    
    public int aaR() {
        return this.RL;
    }
}
