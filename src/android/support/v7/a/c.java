// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v7.a;

import android.util.TimingLogger;
import java.util.ArrayList;
import android.graphics.Bitmap;
import android.graphics.Rect;
import java.util.List;

public final class c
{
    private final List SY;
    private final List SZ;
    private final List Ta;
    private int Tb;
    private Rect Tc;
    private int Td;
    private int Te;
    private final Bitmap mBitmap;
    
    public c(final Bitmap mBitmap) {
        this.Ta = new ArrayList();
        this.Td = 16;
        this.Te = 12544;
        this.Tb = -1;
        this.SZ = new ArrayList();
        if (mBitmap != null && !mBitmap.isRecycled()) {
            this.SZ.add(a.SU);
            this.mBitmap = mBitmap;
            this.SY = null;
            this.Ta.add(e.To);
            this.Ta.add(e.Tx);
            this.Ta.add(e.Ts);
            this.Ta.add(e.Tp);
            this.Ta.add(e.Tv);
            this.Ta.add(e.Tq);
            return;
        }
        throw new IllegalArgumentException("Bitmap is not valid");
    }
    
    private int[] acB(final Bitmap bitmap) {
        int i = 0;
        final int width = bitmap.getWidth();
        final int height = bitmap.getHeight();
        final int[] array = new int[width * height];
        bitmap.getPixels(array, 0, width, 0, 0, width, height);
        if (this.Tc != null) {
            final int width2 = this.Tc.width();
            final int height2 = this.Tc.height();
            final int[] array2 = new int[width2 * height2];
            while (i < height2) {
                System.arraycopy(array, (this.Tc.top + i) * width + this.Tc.left, array2, i * width2, width2);
                ++i;
            }
            return array2;
        }
        return array;
    }
    
    private Bitmap acz(final Bitmap bitmap) {
        double sqrt = -1.0;
        if (this.Te <= 0) {
            if (this.Tb > 0) {
                final int max = Math.max(bitmap.getWidth(), bitmap.getHeight());
                if (max > this.Tb) {
                    sqrt = this.Tb / max;
                }
            }
        }
        else {
            final int n = bitmap.getWidth() * bitmap.getHeight();
            if (n > this.Te) {
                sqrt = Math.sqrt(this.Te / n);
            }
        }
        if (sqrt <= 0.0) {
            return bitmap;
        }
        return Bitmap.createScaledBitmap(bitmap, (int)Math.ceil(bitmap.getWidth() * sqrt), (int)Math.ceil(sqrt * bitmap.getHeight()), false);
    }
    
    public c acA(final int n, final int n2, final int n3, final int n4) {
        if (this.mBitmap != null) {
            if (this.Tc == null) {
                this.Tc = new Rect();
            }
            this.Tc.set(0, 0, this.mBitmap.getWidth(), this.mBitmap.getHeight());
            if (!this.Tc.intersect(n, n2, n3, n4)) {
                throw new IllegalArgumentException("The given region must intersect with the Bitmap's dimensions.");
            }
        }
        return this;
    }
    
    public c acC() {
        this.SZ.clear();
        return this;
    }
    
    public a acD() {
        List list;
        if (this.mBitmap == null) {
            list = this.SY;
        }
        else {
            final Bitmap acz = this.acz(this.mBitmap);
            if (false) {
                null.addSplit("Processed Bitmap");
            }
            final Rect tc = this.Tc;
            if (acz != this.mBitmap && tc != null) {
                final double n = acz.getWidth() / this.mBitmap.getWidth();
                tc.left = (int)Math.floor(tc.left * n);
                tc.top = (int)Math.floor(tc.top * n);
                tc.right = Math.min((int)Math.ceil(tc.right * n), acz.getWidth());
                tc.bottom = Math.min((int)Math.ceil(n * tc.bottom), acz.getHeight());
            }
            final int[] acB = this.acB(acz);
            final int td = this.Td;
            b[] array;
            if (!this.SZ.isEmpty()) {
                array = this.SZ.toArray(new b[this.SZ.size()]);
            }
            else {
                array = null;
            }
            final i i = new i(acB, td, array);
            if (acz != this.mBitmap) {
                acz.recycle();
            }
            list = i.adC();
            if (false) {
                null.addSplit("Color quantization completed");
            }
        }
        final a a = new a(list, this.Ta);
        a.acv();
        if (false) {
            null.addSplit("Created Palette");
            null.dumpToLog();
        }
        return a;
    }
}
