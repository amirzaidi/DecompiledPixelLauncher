// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.qsb;

import android.graphics.MaskFilter;
import android.graphics.PorterDuff$Mode;
import android.graphics.Bitmap$Config;
import android.view.LayoutInflater;
import android.widget.TextView;
import android.widget.RemoteViews;
import android.view.ViewGroup;
import android.util.Log;
import java.util.Arrays;
import android.graphics.BlurMaskFilter$Blur;
import android.util.AttributeSet;
import android.content.Context;
import android.view.View;
import android.graphics.Paint;
import android.graphics.Canvas;
import android.graphics.BlurMaskFilter;
import android.graphics.Bitmap;
import android.widget.FrameLayout;

public class ShadowHostView extends FrameLayout
{
    private static final int e;
    private static final int f;
    private Bitmap g;
    private final BlurMaskFilter h;
    private final int i;
    private long[] j;
    private final int k;
    private final Canvas mCanvas;
    private final Paint mPaint;
    private Bitmap mShadowBitmap;
    private View mView;
    
    static {
        f = Math.round(89.25f);
        e = Math.round(38.25f);
    }
    
    public ShadowHostView(final Context context) {
        this(context, null);
    }
    
    public ShadowHostView(final Context context, final AttributeSet set) {
        this(context, set, 0);
    }
    
    public ShadowHostView(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
        this.mCanvas = new Canvas();
        this.mPaint = new Paint(3);
        this.k = this.getResources().getDimensionPixelSize(2131427485);
        this.i = this.getResources().getDimensionPixelSize(2131427486);
        this.h = new BlurMaskFilter((float)this.k, BlurMaskFilter$Blur.NORMAL);
    }
    
    private boolean c(final a a) {
        final int n = 1;
        final long[] j = { a.a, 0L, 0L };
        j[n] = a.b;
        j[2] = a.d.getLayoutId();
        if (this.mView != null) {
            if (Arrays.equals(this.j, j)) {
                try {
                    final RemoteViews d = a.d;
                    try {
                        final Context context = this.getContext();
                        try {
                            d.reapply(context, this.mView);
                            return n != 0;
                        }
                        catch (RuntimeException ex) {
                            Log.e("ShadowHostView", "View reapply failed", (Throwable)ex);
                        }
                    }
                    catch (RuntimeException ex3) {}
                }
                catch (RuntimeException ex4) {}
            }
            this.removeView(this.mView);
            this.mView = null;
        }
        try {
            final RemoteViews d2 = a.d;
            try {
                this.d(this.mView = d2.apply(this.getContext(), (ViewGroup)this));
                try {
                    this.j = j;
                    this.addView(this.mView);
                    return n != 0;
                }
                catch (RuntimeException ex2) {
                    Log.e("ShadowHostView", "View apply failed", (Throwable)ex2);
                    return false;
                }
            }
            catch (RuntimeException ex5) {}
        }
        catch (RuntimeException ex6) {}
    }
    
    private void d(final View view) {
        if (view instanceof TextView) {
            ((TextView)view).setShadowLayer(0.0f, 0.0f, 0.0f, 0);
        }
        else if (view instanceof ViewGroup) {
            final ViewGroup viewGroup = (ViewGroup)view;
            for (int i = viewGroup.getChildCount() - 1; i >= 0; --i) {
                this.d(viewGroup.getChildAt(i));
            }
        }
    }
    
    public static View e(final a a, final ViewGroup viewGroup, final View view) {
        if (a == null || a.d == null) {
            return null;
        }
        View inflate;
        if (view instanceof ShadowHostView) {
            inflate = view;
        }
        else {
            inflate = LayoutInflater.from(viewGroup.getContext()).inflate(2130968618, viewGroup, false);
        }
        ShadowHostView shadowHostView = (ShadowHostView)inflate;
        if (!shadowHostView.c(a)) {
            shadowHostView = null;
        }
        return (View)shadowHostView;
    }
    
    protected void dispatchDraw(final Canvas canvas) {
        final int n = -16777216;
        if (this.getWidth() <= 0 || this.getHeight() <= 0) {
            super.dispatchDraw(canvas);
            return;
        }
        if (this.g == null || this.g.getHeight() != this.getHeight() || this.g.getWidth() != this.getWidth()) {
            this.g = Bitmap.createBitmap(this.getWidth(), this.getHeight(), Bitmap$Config.ALPHA_8);
        }
        this.mCanvas.setBitmap(this.g);
        this.mCanvas.drawColor(n, PorterDuff$Mode.CLEAR);
        super.dispatchDraw(this.mCanvas);
        final int n2 = this.g.getWidth() + this.k + this.k;
        final int n3 = this.g.getHeight() + this.k + this.k;
        if (this.mShadowBitmap == null || this.mShadowBitmap.getWidth() != n2 || this.mShadowBitmap.getHeight() != n3) {
            this.mShadowBitmap = Bitmap.createBitmap(n2, n3, Bitmap$Config.ALPHA_8);
        }
        this.mCanvas.setBitmap(this.mShadowBitmap);
        this.mCanvas.drawColor(n, PorterDuff$Mode.CLEAR);
        this.mPaint.setMaskFilter((MaskFilter)this.h);
        this.mPaint.setAlpha(100);
        this.mCanvas.drawBitmap(this.g, (float)this.k, (float)this.k, this.mPaint);
        this.mCanvas.setBitmap((Bitmap)null);
        this.mPaint.setMaskFilter((MaskFilter)null);
        final float n4 = -this.k;
        final float n5 = -this.k;
        this.mPaint.setAlpha(ShadowHostView.e);
        canvas.drawBitmap(this.mShadowBitmap, n4, n5, this.mPaint);
        this.mPaint.setAlpha(ShadowHostView.f);
        canvas.drawBitmap(this.mShadowBitmap, n4, n5 + this.i, this.mPaint);
        super.dispatchDraw(canvas);
    }
}
