// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.images;

import android.graphics.drawable.BitmapDrawable;
import com.google.android.gms.common.internal.m;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import com.google.android.gms.internal.cy;
import android.content.Context;

public abstract class i
{
    protected int mF;
    final f mG;
    
    private Drawable pI(final Context context, final cy cy, final int n) {
        return context.getResources().getDrawable(n);
    }
    
    void pH(final Context context, final cy cy, final boolean b) {
        Drawable pi = null;
        if (this.mF != 0) {
            pi = this.pI(context, cy, this.mF);
        }
        this.pw(pi, b, false, false);
    }
    
    void pJ(final Context context, final Bitmap bitmap, final boolean b) {
        m.ko(bitmap);
        this.pw((Drawable)new BitmapDrawable(context.getResources(), bitmap), b, false, true);
    }
    
    protected abstract void pw(final Drawable p0, final boolean p1, final boolean p2, final boolean p3);
}
