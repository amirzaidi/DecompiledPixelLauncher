// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v7.widget;

import android.view.MotionEvent;
import android.view.View;
import android.support.v4.view.f;
import android.graphics.Canvas;
import android.animation.ValueAnimator$AnimatorUpdateListener;
import android.animation.Animator$AnimatorListener;
import android.graphics.drawable.Drawable;
import android.animation.ValueAnimator;
import android.graphics.drawable.StateListDrawable;

class FastScroller extends o implements n
{
    private static final int[] RB;
    private static final int[] Rr;
    private int RA;
    private final int[] RC;
    private int RD;
    private final StateListDrawable Rh;
    private final Runnable Ri;
    private final int Rj;
    private boolean Rk;
    private final int Rl;
    private final ValueAnimator Rm;
    private final int Rn;
    private final int Ro;
    private final Drawable Rp;
    private int Rq;
    private final m Rs;
    private final int Rt;
    private final int Ru;
    private int Rv;
    private final StateListDrawable Rw;
    private boolean Rx;
    private final Drawable Ry;
    private final int[] Rz;
    float mHorizontalDragX;
    int mHorizontalThumbCenterX;
    int mHorizontalThumbWidth;
    private RecyclerView mRecyclerView;
    private int mState;
    float mVerticalDragY;
    int mVerticalThumbCenterY;
    int mVerticalThumbHeight;
    
    static {
        Rr = new int[] { 16842919 };
        RB = new int[0];
    }
    
    FastScroller(final RecyclerView recyclerView, final StateListDrawable rw, final Drawable ry, final StateListDrawable rh, final Drawable rp, final int n, final int rt, final int rl) {
        final int n2 = 255;
        final int n3 = 2;
        this.Rv = 0;
        this.RD = 0;
        this.Rx = false;
        this.Rk = false;
        this.mState = 0;
        this.Rq = 0;
        this.RC = new int[n3];
        this.Rz = new int[n3];
        final float[] array = new float[n3];
        array[0] = 0.0f;
        array[1] = 1.0f;
        this.Rm = ValueAnimator.ofFloat(array);
        this.RA = 0;
        this.Ri = new ab(this);
        this.Rs = new ao(this);
        this.Rw = rw;
        this.Ry = ry;
        this.Rh = rh;
        this.Rp = rp;
        this.Ro = Math.max(n, rw.getIntrinsicWidth());
        this.Rn = Math.max(n, ry.getIntrinsicWidth());
        this.Rj = Math.max(n, rh.getIntrinsicWidth());
        this.Ru = Math.max(n, rp.getIntrinsicWidth());
        this.Rt = rt;
        this.Rl = rl;
        this.Rw.setAlpha(n2);
        this.Ry.setAlpha(n2);
        this.Rm.addListener((Animator$AnimatorListener)new as(this, null));
        this.Rm.addUpdateListener((ValueAnimator$AnimatorUpdateListener)new aG(this, null));
        this.aaJ(recyclerView);
    }
    
    private int[] aaL() {
        this.Rz[0] = this.Rl;
        this.Rz[1] = this.Rv - this.Rl;
        return this.Rz;
    }
    
    private void aaM() {
        this.mRecyclerView.removeItemDecoration(this);
        this.mRecyclerView.removeOnItemTouchListener(this);
        this.mRecyclerView.removeOnScrollListener(this.Rs);
        this.aaR();
    }
    
    private void aaO(final Canvas canvas) {
        final float n = 1.0f;
        final int n2 = this.Rv - this.Ro;
        final int n3 = this.mVerticalThumbCenterY - this.mVerticalThumbHeight / 2;
        this.Rw.setBounds(0, 0, this.Ro, this.mVerticalThumbHeight);
        this.Ry.setBounds(0, 0, this.Rn, this.RD);
        if (!this.isLayoutRTL()) {
            canvas.translate((float)n2, 0.0f);
            this.Ry.draw(canvas);
            canvas.translate(0.0f, (float)n3);
            this.Rw.draw(canvas);
            canvas.translate((float)(-n2), (float)(-n3));
        }
        else {
            this.Ry.draw(canvas);
            canvas.translate((float)this.Ro, (float)n3);
            canvas.scale(-1.0f, n);
            this.Rw.draw(canvas);
            canvas.scale(n, n);
            canvas.translate((float)(-this.Ro), (float)(-n3));
        }
    }
    
    private void aaP(final float n) {
        final int[] aaL = this.aaL();
        final float max = Math.max(aaL[0], Math.min(aaL[1], n));
        if (Math.abs(this.mHorizontalThumbCenterX - max) < 2.0f) {
            return;
        }
        final int aba = this.aba(this.mHorizontalDragX, max, aaL, this.mRecyclerView.computeHorizontalScrollRange(), this.mRecyclerView.computeHorizontalScrollOffset(), this.Rv);
        if (aba != 0) {
            this.mRecyclerView.scrollBy(aba, 0);
        }
        this.mHorizontalDragX = max;
    }
    
    private void aaR() {
        this.mRecyclerView.removeCallbacks(this.Ri);
    }
    
    private void aaU() {
        this.mRecyclerView.invalidate();
    }
    
    private void aaV(final int mState) {
        final int n = 2;
        if (mState == n && this.mState != n) {
            this.Rw.setState(FastScroller.Rr);
            this.aaR();
        }
        if (mState != 0) {
            this.show();
        }
        else {
            this.aaU();
        }
        if (this.mState == n && mState != n) {
            this.Rw.setState(FastScroller.RB);
            this.abd(1200);
        }
        else if (mState == 1) {
            this.abd(1500);
        }
        this.mState = mState;
    }
    
    private void aaW(final float n) {
        final int[] aaX = this.aaX();
        final float max = Math.max(aaX[0], Math.min(aaX[1], n));
        if (Math.abs(this.mVerticalThumbCenterY - max) < 2.0f) {
            return;
        }
        final int aba = this.aba(this.mVerticalDragY, max, aaX, this.mRecyclerView.computeVerticalScrollRange(), this.mRecyclerView.computeVerticalScrollOffset(), this.RD);
        if (aba != 0) {
            this.mRecyclerView.scrollBy(0, aba);
        }
        this.mVerticalDragY = max;
    }
    
    private int[] aaX() {
        this.RC[0] = this.Rl;
        this.RC[1] = this.RD - this.Rl;
        return this.RC;
    }
    
    private void aaY() {
        this.mRecyclerView.addItemDecoration(this);
        this.mRecyclerView.addOnItemTouchListener(this);
        this.mRecyclerView.addOnScrollListener(this.Rs);
    }
    
    private int aba(final float n, final float n2, final int[] array, final int n3, final int n4, final int n5) {
        final int n6 = array[1] - array[0];
        if (n6 == 0) {
            return 0;
        }
        final float n7 = (n2 - n) / n6;
        final int n8 = n3 - n5;
        final int n9 = (int)(n7 * n8);
        final int n10 = n4 + n9;
        if (n10 < n8 && n10 >= 0) {
            return n9;
        }
        return 0;
    }
    
    private void abc(final Canvas canvas) {
        final int n = this.RD - this.Rj;
        final int n2 = this.mHorizontalThumbCenterX - this.mHorizontalThumbWidth / 2;
        this.Rh.setBounds(0, 0, this.mHorizontalThumbWidth, this.Rj);
        this.Rp.setBounds(0, 0, this.Rv, this.Ru);
        canvas.translate(0.0f, (float)n);
        this.Rp.draw(canvas);
        canvas.translate((float)n2, 0.0f);
        this.Rh.draw(canvas);
        canvas.translate((float)(-n2), (float)(-n));
    }
    
    private void abd(final int n) {
        this.aaR();
        this.mRecyclerView.postDelayed(this.Ri, (long)n);
    }
    
    private boolean isLayoutRTL() {
        boolean b = true;
        if (f.afr((View)this.mRecyclerView) != (b ? 1 : 0)) {
            b = false;
        }
        return b;
    }
    
    public void aaJ(final RecyclerView mRecyclerView) {
        if (this.mRecyclerView != mRecyclerView) {
            if (this.mRecyclerView != null) {
                this.aaM();
            }
            this.mRecyclerView = mRecyclerView;
            if (this.mRecyclerView != null) {
                this.aaY();
            }
        }
    }
    
    void aaK(final int n, final int n2) {
        final float n3 = 2.0f;
        final int n4 = 1;
        final int computeVerticalScrollRange = this.mRecyclerView.computeVerticalScrollRange();
        final int rd = this.RD;
        this.Rx = (computeVerticalScrollRange - rd > 0 && this.RD >= this.Rt && n4);
        final int computeHorizontalScrollRange = this.mRecyclerView.computeHorizontalScrollRange();
        final int rv = this.Rv;
        this.Rk = (computeHorizontalScrollRange - rv > 0 && this.Rv >= this.Rt && n4);
        if (!this.Rx && !this.Rk) {
            if (this.mState != 0) {
                this.aaV(0);
            }
            return;
        }
        if (this.Rx) {
            this.mVerticalThumbCenterY = (int)((n2 + rd / n3) * rd / computeVerticalScrollRange);
            this.mVerticalThumbHeight = Math.min(rd, rd * rd / computeVerticalScrollRange);
        }
        if (this.Rk) {
            this.mHorizontalThumbCenterX = (int)((n + rv / n3) * rv / computeHorizontalScrollRange);
            this.mHorizontalThumbWidth = Math.min(rv, rv * rv / computeHorizontalScrollRange);
        }
        if (this.mState == 0 || this.mState == n4) {
            this.aaV(n4);
        }
    }
    
    Drawable getHorizontalThumbDrawable() {
        return (Drawable)this.Rh;
    }
    
    Drawable getHorizontalTrackDrawable() {
        return this.Rp;
    }
    
    Drawable getVerticalThumbDrawable() {
        return (Drawable)this.Rw;
    }
    
    Drawable getVerticalTrackDrawable() {
        return this.Ry;
    }
    
    void hide(final int n) {
        switch (this.RA) {
            case 1: {
                this.Rm.cancel();
            }
            case 2: {
                this.RA = 3;
                this.Rm.setFloatValues(new float[] { (float)this.Rm.getAnimatedValue(), 0.0f });
                this.Rm.setDuration((long)n);
                this.Rm.start();
                break;
            }
        }
    }
    
    boolean isHidden() {
        boolean b = false;
        if (this.mState == 0) {
            b = true;
        }
        return b;
    }
    
    boolean isPointInsideHorizontalThumb(final float n, final float n2) {
        return n2 >= this.RD - this.Rj && n >= this.mHorizontalThumbCenterX - this.mHorizontalThumbWidth / 2 && n <= this.mHorizontalThumbCenterX + this.mHorizontalThumbWidth / 2;
    }
    
    boolean isPointInsideVerticalThumb(final float n, final float n2) {
        boolean b = false;
        if (!this.isLayoutRTL()) {
            if (n < this.Rv - this.Ro) {
                return b;
            }
        }
        else if (n > this.Ro / 2) {
            return b;
        }
        if (n2 >= this.mVerticalThumbCenterY - this.mVerticalThumbHeight / 2 && n2 <= this.mVerticalThumbCenterY + this.mVerticalThumbHeight / 2) {
            b = true;
        }
        return b;
    }
    
    boolean isVisible() {
        boolean b = true;
        if (this.mState != (b ? 1 : 0)) {
            b = false;
        }
        return b;
    }
    
    public void onDrawOver(final Canvas canvas, final RecyclerView recyclerView, final e e) {
        if (this.Rv == this.mRecyclerView.getWidth() && this.RD == this.mRecyclerView.getHeight()) {
            if (this.RA != 0) {
                if (this.Rx) {
                    this.aaO(canvas);
                }
                if (this.Rk) {
                    this.abc(canvas);
                }
            }
            return;
        }
        this.Rv = this.mRecyclerView.getWidth();
        this.RD = this.mRecyclerView.getHeight();
        this.aaV(0);
    }
    
    public boolean onInterceptTouchEvent(final RecyclerView recyclerView, final MotionEvent motionEvent) {
        final int rq = 2;
        boolean rq2 = true;
        if (this.mState != (rq2 ? 1 : 0)) {
            if (this.mState != rq) {
                rq2 = false;
            }
        }
        else {
            final boolean pointInsideVerticalThumb = this.isPointInsideVerticalThumb(motionEvent.getX(), motionEvent.getY());
            final boolean pointInsideHorizontalThumb = this.isPointInsideHorizontalThumb(motionEvent.getX(), motionEvent.getY());
            if (motionEvent.getAction() == 0 && (pointInsideVerticalThumb || pointInsideHorizontalThumb)) {
                if (!pointInsideHorizontalThumb) {
                    if (pointInsideVerticalThumb) {
                        this.Rq = rq;
                        this.mVerticalDragY = (int)motionEvent.getY();
                    }
                }
                else {
                    this.Rq = (rq2 ? 1 : 0);
                    this.mHorizontalDragX = (int)motionEvent.getX();
                }
                this.aaV(rq);
            }
            else {
                rq2 = false;
            }
        }
        return rq2;
    }
    
    public void onRequestDisallowInterceptTouchEvent(final boolean b) {
    }
    
    public void onTouchEvent(final RecyclerView recyclerView, final MotionEvent motionEvent) {
        final int rq = 1;
        final int rq2 = 2;
        if (this.mState != 0) {
            if (motionEvent.getAction() != 0) {
                if (motionEvent.getAction() == rq && this.mState == rq2) {
                    this.mVerticalDragY = 0.0f;
                    this.mHorizontalDragX = 0.0f;
                    this.aaV(rq);
                    this.Rq = 0;
                }
                else if (motionEvent.getAction() == rq2 && this.mState == rq2) {
                    this.show();
                    if (this.Rq == rq) {
                        this.aaP(motionEvent.getX());
                    }
                    if (this.Rq == rq2) {
                        this.aaW(motionEvent.getY());
                    }
                }
            }
            else {
                final boolean pointInsideVerticalThumb = this.isPointInsideVerticalThumb(motionEvent.getX(), motionEvent.getY());
                final boolean pointInsideHorizontalThumb = this.isPointInsideHorizontalThumb(motionEvent.getX(), motionEvent.getY());
                if (pointInsideVerticalThumb || pointInsideHorizontalThumb) {
                    if (!pointInsideHorizontalThumb) {
                        if (pointInsideVerticalThumb) {
                            this.Rq = rq2;
                            this.mVerticalDragY = (int)motionEvent.getY();
                        }
                    }
                    else {
                        this.Rq = rq;
                        this.mHorizontalDragX = (int)motionEvent.getX();
                    }
                    this.aaV(rq2);
                }
            }
        }
    }
    
    public void show() {
        final int ra = 1;
        switch (this.RA) {
            case 3: {
                this.Rm.cancel();
            }
            case 0: {
                this.RA = ra;
                final ValueAnimator rm = this.Rm;
                final float[] floatValues = { (float)this.Rm.getAnimatedValue(), 0.0f };
                floatValues[ra] = 1.0f;
                rm.setFloatValues(floatValues);
                this.Rm.setDuration(500L);
                this.Rm.setStartDelay(0L);
                this.Rm.start();
                break;
            }
        }
    }
}
