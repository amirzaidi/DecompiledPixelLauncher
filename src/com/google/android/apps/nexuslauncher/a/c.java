// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.a;

import android.graphics.PorterDuff$Mode;
import android.graphics.Bitmap$Config;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Canvas;
import android.graphics.Bitmap;

public class c
{
    private int[] eV;
    private Bitmap eW;
    private Canvas eX;
    private Paint eY;
    private final Matrix eZ;
    
    public c() {
        this.eZ = new Matrix();
    }
    
    private void dA(final int n) {
        if (this.eV == null || this.eV.length < n) {
            this.eV = new int[n];
        }
    }
    
    public static boolean dC(final int n) {
        boolean b = true;
        final int n2 = 20;
        if ((n >> 24 & 0xFF) < 50) {
            return b;
        }
        final int n3 = n >> 16 & 0xFF;
        final int n4 = n >> 8 & 0xFF;
        final int n5 = n & 0xFF;
        if (Math.abs(n3 - n4) < n2 && Math.abs(n3 - n5) < n2) {
            if (Math.abs(n4 - n5) >= n2) {
                b = false;
            }
        }
        else {
            b = false;
        }
        return b;
    }
    
    public boolean dB(Bitmap ew) {
        final float n = 64.0f;
        final boolean filterBitmap = true;
        final int n2 = 64;
        int height = ew.getHeight();
        int width = ew.getWidth();
        Bitmap bitmap;
        if (height > n2 || width > n2) {
            if (this.eW == null) {
                this.eW = Bitmap.createBitmap(n2, n2, Bitmap$Config.ARGB_8888);
                this.eX = new Canvas(this.eW);
                (this.eY = new Paint((int)(filterBitmap ? 1 : 0))).setFilterBitmap(filterBitmap);
            }
            this.eZ.reset();
            this.eZ.setScale(n / width, n / height, 0.0f, 0.0f);
            this.eX.drawColor(0, PorterDuff$Mode.SRC);
            this.eX.drawBitmap(ew, this.eZ, this.eY);
            ew = this.eW;
            width = n2;
            height = n2;
            bitmap = ew;
        }
        else {
            bitmap = ew;
        }
        final int n3 = height * width;
        this.dA(n3);
        bitmap.getPixels(this.eV, 0, width, 0, 0, width, height);
        for (int i = 0; i < n3; ++i) {
            if (!dC(this.eV[i])) {
                return false;
            }
        }
        return filterBitmap;
    }
}
