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
    private final List UH;
    private final List UI;
    private final List UJ;
    private int UK;
    private Rect UL;
    private int UM;
    private int UN;
    private final Bitmap mBitmap;
    
    public c(final Bitmap mBitmap) {
        this.UJ = new ArrayList();
        this.UM = 16;
        this.UN = 12544;
        this.UK = -1;
        this.UI = new ArrayList();
        if (mBitmap != null && !mBitmap.isRecycled()) {
            this.UI.add(a.UD);
            this.mBitmap = mBitmap;
            this.UH = null;
            this.UJ.add(e.UX);
            this.UJ.add(e.Vg);
            this.UJ.add(e.Vb);
            this.UJ.add(e.UY);
            this.UJ.add(e.Ve);
            this.UJ.add(e.UZ);
            return;
        }
        throw new IllegalArgumentException("Bitmap is not valid");
    }
    
    private Bitmap adD(final Bitmap bitmap) {
        double sqrt = -1.0;
        if (this.UN <= 0) {
            if (this.UK > 0) {
                final int max = Math.max(bitmap.getWidth(), bitmap.getHeight());
                if (max > this.UK) {
                    sqrt = this.UK / max;
                }
            }
        }
        else {
            final int n = bitmap.getWidth() * bitmap.getHeight();
            if (n > this.UN) {
                sqrt = Math.sqrt(this.UN / n);
            }
        }
        if (sqrt <= 0.0) {
            return bitmap;
        }
        return Bitmap.createScaledBitmap(bitmap, (int)Math.ceil(bitmap.getWidth() * sqrt), (int)Math.ceil(sqrt * bitmap.getHeight()), false);
    }
    
    private int[] adF(final Bitmap bitmap) {
        int i = 0;
        final int width = bitmap.getWidth();
        final int height = bitmap.getHeight();
        final int[] array = new int[width * height];
        bitmap.getPixels(array, 0, width, 0, 0, width, height);
        if (this.UL != null) {
            final int width2 = this.UL.width();
            final int height2 = this.UL.height();
            final int[] array2 = new int[width2 * height2];
            while (i < height2) {
                System.arraycopy(array, (this.UL.top + i) * width + this.UL.left, array2, i * width2, width2);
                ++i;
            }
            return array2;
        }
        return array;
    }
    
    public c adE(final int n, final int n2, final int n3, final int n4) {
        if (this.mBitmap != null) {
            if (this.UL == null) {
                this.UL = new Rect();
            }
            this.UL.set(0, 0, this.mBitmap.getWidth(), this.mBitmap.getHeight());
            if (!this.UL.intersect(n, n2, n3, n4)) {
                throw new IllegalArgumentException("The given region must intersect with the Bitmap's dimensions.");
            }
        }
        return this;
    }
    
    public c adG() {
        this.UI.clear();
        return this;
    }
    
    public a adH() {
        List list;
        if (this.mBitmap == null) {
            list = this.UH;
        }
        else {
            final Bitmap adD = this.adD(this.mBitmap);
            if (false) {
                null.addSplit("Processed Bitmap");
            }
            final Rect ul = this.UL;
            if (adD != this.mBitmap && ul != null) {
                final double n = adD.getWidth() / this.mBitmap.getWidth();
                ul.left = (int)Math.floor(ul.left * n);
                ul.top = (int)Math.floor(ul.top * n);
                ul.right = Math.min((int)Math.ceil(ul.right * n), adD.getWidth());
                ul.bottom = Math.min((int)Math.ceil(n * ul.bottom), adD.getHeight());
            }
            final int[] adF = this.adF(adD);
            final int um = this.UM;
            b[] array;
            if (!this.UI.isEmpty()) {
                array = this.UI.toArray(new b[this.UI.size()]);
            }
            else {
                array = null;
            }
            final i i = new i(adF, um, array);
            if (adD != this.mBitmap) {
                adD.recycle();
            }
            list = i.aeG();
            if (false) {
                null.addSplit("Color quantization completed");
            }
        }
        final a a = new a(list, this.UJ);
        a.adz();
        if (false) {
            null.addSplit("Created Palette");
            null.dumpToLog();
        }
        return a;
    }
}
