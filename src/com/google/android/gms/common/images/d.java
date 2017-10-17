// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.images;

import android.graphics.Bitmap;
import android.support.v4.a.h;

final class d extends h
{
    protected int mA(final f f, final Bitmap bitmap) {
        return bitmap.getHeight() * bitmap.getRowBytes();
    }
    
    protected void mB(final boolean b, final f f, final Bitmap bitmap, final Bitmap bitmap2) {
        super.mC(b, f, bitmap, bitmap2);
    }
}
