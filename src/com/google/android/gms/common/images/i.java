// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.images;

import android.graphics.drawable.BitmapDrawable;
import com.google.android.gms.common.internal.m;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import com.google.android.gms.internal.cE;
import android.content.Context;

public abstract class i
{
    protected int jN;
    final f jO;
    
    private Drawable mU(final Context context, final cE ce, final int n) {
        return context.getResources().getDrawable(n);
    }
    
    protected abstract void mI(final Drawable p0, final boolean p1, final boolean p2, final boolean p3);
    
    void mT(final Context context, final cE ce, final boolean b) {
        Drawable mu = null;
        if (this.jN != 0) {
            mu = this.mU(context, ce, this.jN);
        }
        this.mI(mu, b, false, false);
    }
    
    void mV(final Context context, final Bitmap bitmap, final boolean b) {
        m.hA(bitmap);
        this.mI((Drawable)new BitmapDrawable(context.getResources(), bitmap), b, false, true);
    }
}
