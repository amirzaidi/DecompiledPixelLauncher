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
    private final float Sp;
    protected PointF Sq;
    protected final DecelerateInterpolator Sr;
    protected final LinearInterpolator Ss;
    protected int St;
    protected int Su;
    
    public av(final Context context) {
        this.Ss = new LinearInterpolator();
        this.Sr = new DecelerateInterpolator();
        this.Su = 0;
        this.St = 0;
        this.Sp = this.abI(context.getResources().getDisplayMetrics());
    }
    
    private int abF(final int n, final int n2) {
        final int n3 = n - n2;
        if (n * n3 > 0) {
            return n3;
        }
        return 0;
    }
    
    protected void WT(final View view, final e e, final H h) {
        final int abD = this.abD(view, this.abL());
        final int abJ = this.abJ(view, this.abK());
        final int abE = this.abE((int)Math.sqrt(abD * abD + abJ * abJ));
        if (abE > 0) {
            h.ZE(-abD, -abJ, abE, (Interpolator)this.Sr);
        }
    }
    
    protected void WV(final int n, final int n2, final e e, final H h) {
        if (this.getChildCount() != 0) {
            this.Su = this.abF(this.Su, n);
            this.St = this.abF(this.St, n2);
            if (this.Su == 0 && this.St == 0) {
                this.abG(h);
            }
            return;
        }
        this.stop();
    }
    
    public int abC(final int n, final int n2, final int n3, final int n4, final int n5) {
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
    
    public int abD(final View view, final int n) {
        final p layoutManager = this.getLayoutManager();
        if (layoutManager != null && layoutManager.canScrollHorizontally()) {
            final i i = (i)view.getLayoutParams();
            return this.abC(layoutManager.getDecoratedLeft(view) - i.leftMargin, layoutManager.getDecoratedRight(view) + i.rightMargin, layoutManager.getPaddingLeft(), layoutManager.getWidth() - layoutManager.getPaddingRight(), n);
        }
        return 0;
    }
    
    protected int abE(final int n) {
        return (int)Math.ceil(this.abH(n) / 0.3356);
    }
    
    protected void abG(final H h) {
        final float n = 10000.0f;
        final float n2 = 1.2f;
        final PointF computeScrollVectorForPosition = this.computeScrollVectorForPosition(this.WX());
        if (computeScrollVectorForPosition != null && (computeScrollVectorForPosition.x != 0.0f || computeScrollVectorForPosition.y != 0.0f)) {
            this.WS(computeScrollVectorForPosition);
            this.Sq = computeScrollVectorForPosition;
            this.Su = (int)(computeScrollVectorForPosition.x * n);
            this.St = (int)(computeScrollVectorForPosition.y * n);
            h.ZE((int)(this.Su * n2), (int)(this.St * n2), (int)(this.abH(10000) * n2), (Interpolator)this.Ss);
            return;
        }
        h.ZG(this.WX());
        this.stop();
    }
    
    protected int abH(final int n) {
        return (int)Math.ceil(Math.abs(n) * this.Sp);
    }
    
    protected float abI(final DisplayMetrics displayMetrics) {
        return 25.0f / displayMetrics.densityDpi;
    }
    
    public int abJ(final View view, final int n) {
        final p layoutManager = this.getLayoutManager();
        if (layoutManager != null && layoutManager.canScrollVertically()) {
            final i i = (i)view.getLayoutParams();
            return this.abC(layoutManager.getDecoratedTop(view) - i.topMargin, layoutManager.getDecoratedBottom(view) + i.bottomMargin, layoutManager.getPaddingTop(), layoutManager.getHeight() - layoutManager.getPaddingBottom(), n);
        }
        return 0;
    }
    
    protected int abK() {
        int n;
        if (this.Sq != null && this.Sq.y != 0.0f) {
            if (this.Sq.y > 0.0f) {
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
    
    protected int abL() {
        int n;
        if (this.Sq != null && this.Sq.x != 0.0f) {
            if (this.Sq.x > 0.0f) {
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
        this.St = 0;
        this.Su = 0;
        this.Sq = null;
    }
}
