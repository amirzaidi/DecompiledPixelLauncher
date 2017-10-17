// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.view.ViewGroup$LayoutParams;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.content.Context;
import android.widget.FrameLayout$LayoutParams;

public class InsettableFrameLayout$LayoutParams extends FrameLayout$LayoutParams
{
    boolean ignoreInsets;
    
    public InsettableFrameLayout$LayoutParams(final int n, final int n2) {
        super(n, n2);
        this.ignoreInsets = false;
    }
    
    public InsettableFrameLayout$LayoutParams(final Context context, final AttributeSet set) {
        super(context, set);
        this.ignoreInsets = false;
        final TypedArray obtainStyledAttributes = context.obtainStyledAttributes(set, R$styleable.InsettableFrameLayout_Layout);
        this.ignoreInsets = obtainStyledAttributes.getBoolean(0, false);
        obtainStyledAttributes.recycle();
    }
    
    public InsettableFrameLayout$LayoutParams(final ViewGroup$LayoutParams viewGroup$LayoutParams) {
        super(viewGroup$LayoutParams);
        this.ignoreInsets = false;
    }
}
