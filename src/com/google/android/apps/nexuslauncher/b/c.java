// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.b;

import android.graphics.PorterDuff$Mode;
import android.graphics.Bitmap$Config;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Canvas;
import android.graphics.Bitmap;

public class c
{
    private int[] gg;
    private Bitmap gh;
    private Canvas gi;
    private Paint gj;
    private final Matrix gk;
    
    public c() {
        this.gk = new Matrix();
    }
    
    private void eR(final int n) {
        if (this.gg == null || this.gg.length < n) {
            this.gg = new int[n];
        }
    }
    
    public static boolean eS(final int n) {
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
    
    public boolean eQ(Bitmap gh) {
        final float n = 64.0f;
        final boolean filterBitmap = true;
        final int n2 = 64;
        int height = gh.getHeight();
        int width = gh.getWidth();
        Bitmap bitmap;
        if (height > n2 || width > n2) {
            if (this.gh == null) {
                this.gh = Bitmap.createBitmap(n2, n2, Bitmap$Config.ARGB_8888);
                this.gi = new Canvas(this.gh);
                (this.gj = new Paint((int)(filterBitmap ? 1 : 0))).setFilterBitmap(filterBitmap);
            }
            this.gk.reset();
            this.gk.setScale(n / width, n / height, 0.0f, 0.0f);
            this.gi.drawColor(0, PorterDuff$Mode.SRC);
            this.gi.drawBitmap(gh, this.gk, this.gj);
            gh = this.gh;
            width = n2;
            height = n2;
            bitmap = gh;
        }
        else {
            bitmap = gh;
        }
        final int n3 = height * width;
        this.eR(n3);
        bitmap.getPixels(this.gg, 0, width, 0, 0, width, height);
        for (int i = 0; i < n3; ++i) {
            if (!eS(this.gg[i])) {
                return false;
            }
        }
        return filterBitmap;
    }
}
