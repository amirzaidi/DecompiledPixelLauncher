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
    int Qd;
    int Qe;
    
    public O(final int n, final int n2) {
        super(n, n2);
        this.Qd = -1;
        this.Qe = 0;
    }
    
    public O(final Context context, final AttributeSet set) {
        super(context, set);
        this.Qd = -1;
        this.Qe = 0;
    }
    
    public O(final ViewGroup$LayoutParams viewGroup$LayoutParams) {
        super(viewGroup$LayoutParams);
        this.Qd = -1;
        this.Qe = 0;
    }
    
    public O(final ViewGroup$MarginLayoutParams viewGroup$MarginLayoutParams) {
        super(viewGroup$MarginLayoutParams);
        this.Qd = -1;
        this.Qe = 0;
    }
    
    public int ZO() {
        return this.Qd;
    }
    
    public int ZP() {
        return this.Qe;
    }
}
