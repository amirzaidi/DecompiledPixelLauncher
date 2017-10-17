// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v7.widget;

import android.view.ViewGroup$LayoutParams;
import android.util.AttributeSet;
import android.content.Context;
import android.graphics.Rect;
import android.view.ViewGroup$MarginLayoutParams;

public class i extends ViewGroup$MarginLayoutParams
{
    j QH;
    boolean QI;
    boolean QJ;
    final Rect mDecorInsets;
    
    public i(final int n, final int n2) {
        super(n, n2);
        this.mDecorInsets = new Rect();
        this.QI = true;
        this.QJ = false;
    }
    
    public i(final Context context, final AttributeSet set) {
        super(context, set);
        this.mDecorInsets = new Rect();
        this.QI = true;
        this.QJ = false;
    }
    
    public i(final i i) {
        super((ViewGroup$LayoutParams)i);
        this.mDecorInsets = new Rect();
        this.QI = true;
        this.QJ = false;
    }
    
    public i(final ViewGroup$LayoutParams viewGroup$LayoutParams) {
        super(viewGroup$LayoutParams);
        this.mDecorInsets = new Rect();
        this.QI = true;
        this.QJ = false;
    }
    
    public i(final ViewGroup$MarginLayoutParams viewGroup$MarginLayoutParams) {
        super(viewGroup$MarginLayoutParams);
        this.mDecorInsets = new Rect();
        this.QI = true;
        this.QJ = false;
    }
    
    public int Yb() {
        return this.QH.getAdapterPosition();
    }
    
    public boolean Yc() {
        return this.QH.isInvalid();
    }
    
    public int Yd() {
        return this.QH.getLayoutPosition();
    }
    
    public boolean Ye() {
        return this.QH.isUpdated();
    }
    
    public boolean Yf() {
        return this.QH.isRemoved();
    }
}
