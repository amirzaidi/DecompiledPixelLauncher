// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v7.widget;

import android.util.Log;
import android.util.DisplayMetrics;
import android.view.animation.Interpolator;
import android.view.View;
import android.content.Context;
import android.view.animation.LinearInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.graphics.PointF;

public class av extends g
{
    private final float TY;
    protected PointF TZ;
    protected final DecelerateInterpolator Ua;
    protected final LinearInterpolator Ub;
    protected int Uc;
    protected int Ud;
    
    public av(final Context context) {
        this.Ub = new LinearInterpolator();
        this.Ua = new DecelerateInterpolator();
        this.Ud = 0;
        this.Uc = 0;
        this.TY = this.acJ(context.getResources().getDisplayMetrics());
    }
    
    private int acG(final int n, final int n2) {
        final int n3 = n - n2;
        if (n * n3 > 0) {
            return n3;
        }
        return 0;
    }
    
    protected void XT(final View view, final e e, final H h) {
        final int acE = this.acE(view, this.acM());
        final int acK = this.acK(view, this.acL());
        final int acF = this.acF((int)Math.sqrt(acE * acE + acK * acK));
        if (acF > 0) {
            h.aaG(-acE, -acK, acF, (Interpolator)this.Ua);
        }
    }
    
    protected void XU(final int n, final int n2, final e e, final H h) {
        if (this.getChildCount() != 0) {
            this.Ud = this.acG(this.Ud, n);
            this.Uc = this.acG(this.Uc, n2);
            if (this.Ud == 0 && this.Uc == 0) {
                this.acH(h);
            }
            return;
        }
        this.stop();
    }
    
    public int acD(final int n, final int n2, final int n3, final int n4, final int n5) {
        switch (n5) {
            default: {
                throw new IllegalArgumentException("snap preference should be one of the constants defined in SmoothScroller, starting with SNAP_");
            }
            case -1: {
                return n3 - n;
            }
            case 1: {
                return n4 - n2;
            }
            case 0: {
                final int n6 = n3 - n;
                if (n6 > 0) {
                    return n6;
                }
                final int n7 = n4 - n2;
                if (n7 >= 0) {
                    return 0;
                }
                return n7;
            }
        }
    }
    
    public int acE(final View view, final int n) {
        final p layoutManager = this.getLayoutManager();
        if (layoutManager != null && layoutManager.canScrollHorizontally()) {
            final i i = (i)view.getLayoutParams();
            return this.acD(layoutManager.getDecoratedLeft(view) - i.leftMargin, layoutManager.getDecoratedRight(view) + i.rightMargin, layoutManager.getPaddingLeft(), layoutManager.getWidth() - layoutManager.getPaddingRight(), n);
        }
        return 0;
    }
    
    protected int acF(final int n) {
        return (int)Math.ceil(this.acI(n) / 0.3356);
    }
    
    protected void acH(final H h) {
        final float n = 10000.0f;
        final float n2 = 1.2f;
        final PointF computeScrollVectorForPosition = this.computeScrollVectorForPosition(this.XW());
        if (computeScrollVectorForPosition != null && (computeScrollVectorForPosition.x != 0.0f || computeScrollVectorForPosition.y != 0.0f)) {
            this.XS(computeScrollVectorForPosition);
            this.TZ = computeScrollVectorForPosition;
            this.Ud = (int)(computeScrollVectorForPosition.x * n);
            this.Uc = (int)(computeScrollVectorForPosition.y * n);
            h.aaG((int)(this.Ud * n2), (int)(this.Uc * n2), (int)(this.acI(10000) * n2), (Interpolator)this.Ub);
            return;
        }
        h.aaI(this.XW());
        this.stop();
    }
    
    protected int acI(final int n) {
        return (int)Math.ceil(Math.abs(n) * this.TY);
    }
    
    protected float acJ(final DisplayMetrics displayMetrics) {
        return 25.0f / displayMetrics.densityDpi;
    }
    
    public int acK(final View view, final int n) {
        final p layoutManager = this.getLayoutManager();
        if (layoutManager != null && layoutManager.canScrollVertically()) {
            final i i = (i)view.getLayoutParams();
            return this.acD(layoutManager.getDecoratedTop(view) - i.topMargin, layoutManager.getDecoratedBottom(view) + i.bottomMargin, layoutManager.getPaddingTop(), layoutManager.getHeight() - layoutManager.getPaddingBottom(), n);
        }
        return 0;
    }
    
    protected int acL() {
        int n;
        if (this.TZ != null && this.TZ.y != 0.0f) {
            if (this.TZ.y > 0.0f) {
                n = 1;
            }
            else {
                n = -1;
            }
        }
        else {
            n = 0;
        }
        return n;
    }
    
    protected int acM() {
        int n;
        if (this.TZ != null && this.TZ.x != 0.0f) {
            if (this.TZ.x > 0.0f) {
                n = 1;
            }
            else {
                n = -1;
            }
        }
        else {
            n = 0;
        }
        return n;
    }
    
    public PointF computeScrollVectorForPosition(final int n) {
        final p layoutManager = this.getLayoutManager();
        if (!(layoutManager instanceof G)) {
            Log.w("LinearSmoothScroller", "You should override computeScrollVectorForPosition when the LayoutManager does not implement " + G.class.getCanonicalName());
            return null;
        }
        return ((G)layoutManager).computeScrollVectorForPosition(n);
    }
    
    protected void onStart() {
    }
    
    protected void onStop() {
        this.Uc = 0;
        this.Ud = 0;
        this.TZ = null;
    }
}
