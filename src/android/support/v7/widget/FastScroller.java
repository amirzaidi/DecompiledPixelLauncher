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
    private static final int[] Ta;
    private static final int[] Tk;
    private final StateListDrawable SQ;
    private final Runnable SR;
    private final int SS;
    private boolean ST;
    private final int SU;
    private final ValueAnimator SV;
    private final int SW;
    private final int SX;
    private final Drawable SY;
    private int SZ;
    private final m Tb;
    private final int Tc;
    private final int Td;
    private int Te;
    private final StateListDrawable Tf;
    private boolean Tg;
    private final Drawable Th;
    private final int[] Ti;
    private int Tj;
    private final int[] Tl;
    private int Tm;
    float mHorizontalDragX;
    int mHorizontalThumbCenterX;
    int mHorizontalThumbWidth;
    private RecyclerView mRecyclerView;
    private int mState;
    float mVerticalDragY;
    int mVerticalThumbCenterY;
    int mVerticalThumbHeight;
    
    static {
        Ta = new int[] { 16842919 };
        Tk = new int[0];
    }
    
    FastScroller(final RecyclerView recyclerView, final StateListDrawable tf, final Drawable th, final StateListDrawable sq, final Drawable sy, final int n, final int tc, final int su) {
        final int n2 = 255;
        final int n3 = 2;
        this.Te = 0;
        this.Tm = 0;
        this.Tg = false;
        this.ST = false;
        this.mState = 0;
        this.SZ = 0;
        this.Tl = new int[n3];
        this.Ti = new int[n3];
        final float[] array = new float[n3];
        array[0] = 0.0f;
        array[1] = 1.0f;
        this.SV = ValueAnimator.ofFloat(array);
        this.Tj = 0;
        this.SR = new ab(this);
        this.Tb = new ao(this);
        this.Tf = tf;
        this.Th = th;
        this.SQ = sq;
        this.SY = sy;
        this.SX = Math.max(n, tf.getIntrinsicWidth());
        this.SW = Math.max(n, th.getIntrinsicWidth());
        this.SS = Math.max(n, sq.getIntrinsicWidth());
        this.Td = Math.max(n, sy.getIntrinsicWidth());
        this.Tc = tc;
        this.SU = su;
        this.Tf.setAlpha(n2);
        this.Th.setAlpha(n2);
        this.SV.addListener((Animator$AnimatorListener)new as(this, null));
        this.SV.addUpdateListener((ValueAnimator$AnimatorUpdateListener)new aG(this, null));
        this.abL(recyclerView);
    }
    
    private int[] abN() {
        this.Ti[0] = this.SU;
        this.Ti[1] = this.Te - this.SU;
        return this.Ti;
    }
    
    private void abO() {
        this.mRecyclerView.removeItemDecoration(this);
        this.mRecyclerView.removeOnItemTouchListener(this);
        this.mRecyclerView.removeOnScrollListener(this.Tb);
        this.abT();
    }
    
    private void abQ(final Canvas canvas) {
        final float n = 1.0f;
        final int n2 = this.Te - this.SX;
        final int n3 = this.mVerticalThumbCenterY - this.mVerticalThumbHeight / 2;
        this.Tf.setBounds(0, 0, this.SX, this.mVerticalThumbHeight);
        this.Th.setBounds(0, 0, this.SW, this.Tm);
        if (!this.isLayoutRTL()) {
            canvas.translate((float)n2, 0.0f);
            this.Th.draw(canvas);
            canvas.translate(0.0f, (float)n3);
            this.Tf.draw(canvas);
            canvas.translate((float)(-n2), (float)(-n3));
        }
        else {
            this.Th.draw(canvas);
            canvas.translate((float)this.SX, (float)n3);
            canvas.scale(-1.0f, n);
            this.Tf.draw(canvas);
            canvas.scale(n, n);
            canvas.translate((float)(-this.SX), (float)(-n3));
        }
    }
    
    private void abR(final float n) {
        final int[] abN = this.abN();
        final float max = Math.max(abN[0], Math.min(abN[1], n));
        if (Math.abs(this.mHorizontalThumbCenterX - max) < 2.0f) {
            return;
        }
        final int acc = this.acc(this.mHorizontalDragX, max, abN, this.mRecyclerView.computeHorizontalScrollRange(), this.mRecyclerView.computeHorizontalScrollOffset(), this.Te);
        if (acc != 0) {
            this.mRecyclerView.scrollBy(acc, 0);
        }
        this.mHorizontalDragX = max;
    }
    
    private void abT() {
        this.mRecyclerView.removeCallbacks(this.SR);
    }
    
    private void abW() {
        this.mRecyclerView.invalidate();
    }
    
    private void abX(final int mState) {
        final int n = 2;
        if (mState == n && this.mState != n) {
            this.Tf.setState(FastScroller.Ta);
            this.abT();
        }
        if (mState != 0) {
            this.show();
        }
        else {
            this.abW();
        }
        if (this.mState == n && mState != n) {
            this.Tf.setState(FastScroller.Tk);
            this.acf(1200);
        }
        else if (mState == 1) {
            this.acf(1500);
        }
        this.mState = mState;
    }
    
    private void abY(final float n) {
        final int[] abZ = this.abZ();
        final float max = Math.max(abZ[0], Math.min(abZ[1], n));
        if (Math.abs(this.mVerticalThumbCenterY - max) < 2.0f) {
            return;
        }
        final int acc = this.acc(this.mVerticalDragY, max, abZ, this.mRecyclerView.computeVerticalScrollRange(), this.mRecyclerView.computeVerticalScrollOffset(), this.Tm);
        if (acc != 0) {
            this.mRecyclerView.scrollBy(0, acc);
        }
        this.mVerticalDragY = max;
    }
    
    private int[] abZ() {
        this.Tl[0] = this.SU;
        this.Tl[1] = this.Tm - this.SU;
        return this.Tl;
    }
    
    private void aca() {
        this.mRecyclerView.addItemDecoration(this);
        this.mRecyclerView.addOnItemTouchListener(this);
        this.mRecyclerView.addOnScrollListener(this.Tb);
    }
    
    private int acc(final float n, final float n2, final int[] array, final int n3, final int n4, final int n5) {
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
    
    private void ace(final Canvas canvas) {
        final int n = this.Tm - this.SS;
        final int n2 = this.mHorizontalThumbCenterX - this.mHorizontalThumbWidth / 2;
        this.SQ.setBounds(0, 0, this.mHorizontalThumbWidth, this.SS);
        this.SY.setBounds(0, 0, this.Te, this.Td);
        canvas.translate(0.0f, (float)n);
        this.SY.draw(canvas);
        canvas.translate((float)n2, 0.0f);
        this.SQ.draw(canvas);
        canvas.translate((float)(-n2), (float)(-n));
    }
    
    private void acf(final int n) {
        this.abT();
        this.mRecyclerView.postDelayed(this.SR, (long)n);
    }
    
    private boolean isLayoutRTL() {
        boolean b = true;
        if (f.ags((View)this.mRecyclerView) != (b ? 1 : 0)) {
            b = false;
        }
        return b;
    }
    
    public void abL(final RecyclerView mRecyclerView) {
        if (this.mRecyclerView != mRecyclerView) {
            if (this.mRecyclerView != null) {
                this.abO();
            }
            this.mRecyclerView = mRecyclerView;
            if (this.mRecyclerView != null) {
                this.aca();
            }
        }
    }
    
    void abM(final int n, final int n2) {
        final float n3 = 2.0f;
        final int n4 = 1;
        final int computeVerticalScrollRange = this.mRecyclerView.computeVerticalScrollRange();
        final int tm = this.Tm;
        this.Tg = (computeVerticalScrollRange - tm > 0 && this.Tm >= this.Tc && n4);
        final int computeHorizontalScrollRange = this.mRecyclerView.computeHorizontalScrollRange();
        final int te = this.Te;
        this.ST = (computeHorizontalScrollRange - te > 0 && this.Te >= this.Tc && n4);
        if (!this.Tg && !this.ST) {
            if (this.mState != 0) {
                this.abX(0);
            }
            return;
        }
        if (this.Tg) {
            this.mVerticalThumbCenterY = (int)((n2 + tm / n3) * tm / computeVerticalScrollRange);
            this.mVerticalThumbHeight = Math.min(tm, tm * tm / computeVerticalScrollRange);
        }
        if (this.ST) {
            this.mHorizontalThumbCenterX = (int)((n + te / n3) * te / computeHorizontalScrollRange);
            this.mHorizontalThumbWidth = Math.min(te, te * te / computeHorizontalScrollRange);
        }
        if (this.mState == 0 || this.mState == n4) {
            this.abX(n4);
        }
    }
    
    Drawable getHorizontalThumbDrawable() {
        return (Drawable)this.SQ;
    }
    
    Drawable getHorizontalTrackDrawable() {
        return this.SY;
    }
    
    Drawable getVerticalThumbDrawable() {
        return (Drawable)this.Tf;
    }
    
    Drawable getVerticalTrackDrawable() {
        return this.Th;
    }
    
    void hide(final int n) {
        switch (this.Tj) {
            case 1: {
                this.SV.cancel();
            }
            case 2: {
                this.Tj = 3;
                this.SV.setFloatValues(new float[] { (float)this.SV.getAnimatedValue(), 0.0f });
                this.SV.setDuration((long)n);
                this.SV.start();
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
        return n2 >= this.Tm - this.SS && n >= this.mHorizontalThumbCenterX - this.mHorizontalThumbWidth / 2 && n <= this.mHorizontalThumbCenterX + this.mHorizontalThumbWidth / 2;
    }
    
    boolean isPointInsideVerticalThumb(final float n, final float n2) {
        boolean b = false;
        if (!this.isLayoutRTL()) {
            if (n < this.Te - this.SX) {
                return b;
            }
        }
        else if (n > this.SX / 2) {
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
        if (this.Te == this.mRecyclerView.getWidth() && this.Tm == this.mRecyclerView.getHeight()) {
            if (this.Tj != 0) {
                if (this.Tg) {
                    this.abQ(canvas);
                }
                if (this.ST) {
                    this.ace(canvas);
                }
            }
            return;
        }
        this.Te = this.mRecyclerView.getWidth();
        this.Tm = this.mRecyclerView.getHeight();
        this.abX(0);
    }
    
    public boolean onInterceptTouchEvent(final RecyclerView recyclerView, final MotionEvent motionEvent) {
        final int sz = 2;
        boolean sz2 = true;
        if (this.mState != (sz2 ? 1 : 0)) {
            if (this.mState != sz) {
                sz2 = false;
            }
        }
        else {
            final boolean pointInsideVerticalThumb = this.isPointInsideVerticalThumb(motionEvent.getX(), motionEvent.getY());
            final boolean pointInsideHorizontalThumb = this.isPointInsideHorizontalThumb(motionEvent.getX(), motionEvent.getY());
            if (motionEvent.getAction() == 0 && (pointInsideVerticalThumb || pointInsideHorizontalThumb)) {
                if (!pointInsideHorizontalThumb) {
                    if (pointInsideVerticalThumb) {
                        this.SZ = sz;
                        this.mVerticalDragY = (int)motionEvent.getY();
                    }
                }
                else {
                    this.SZ = (sz2 ? 1 : 0);
                    this.mHorizontalDragX = (int)motionEvent.getX();
                }
                this.abX(sz);
            }
            else {
                sz2 = false;
            }
        }
        return sz2;
    }
    
    public void onRequestDisallowInterceptTouchEvent(final boolean b) {
    }
    
    public void onTouchEvent(final RecyclerView recyclerView, final MotionEvent motionEvent) {
        final int sz = 1;
        final int sz2 = 2;
        if (this.mState != 0) {
            if (motionEvent.getAction() != 0) {
                if (motionEvent.getAction() == sz && this.mState == sz2) {
                    this.mVerticalDragY = 0.0f;
                    this.mHorizontalDragX = 0.0f;
                    this.abX(sz);
                    this.SZ = 0;
                }
                else if (motionEvent.getAction() == sz2 && this.mState == sz2) {
                    this.show();
                    if (this.SZ == sz) {
                        this.abR(motionEvent.getX());
                    }
                    if (this.SZ == sz2) {
                        this.abY(motionEvent.getY());
                    }
                }
            }
            else {
                final boolean pointInsideVerticalThumb = this.isPointInsideVerticalThumb(motionEvent.getX(), motionEvent.getY());
                final boolean pointInsideHorizontalThumb = this.isPointInsideHorizontalThumb(motionEvent.getX(), motionEvent.getY());
                if (pointInsideVerticalThumb || pointInsideHorizontalThumb) {
                    if (!pointInsideHorizontalThumb) {
                        if (pointInsideVerticalThumb) {
                            this.SZ = sz2;
                            this.mVerticalDragY = (int)motionEvent.getY();
                        }
                    }
                    else {
                        this.SZ = sz;
                        this.mHorizontalDragX = (int)motionEvent.getX();
                    }
                    this.abX(sz2);
                }
            }
        }
    }
    
    public void show() {
        final int tj = 1;
        switch (this.Tj) {
            case 3: {
                this.SV.cancel();
            }
            case 0: {
                this.Tj = tj;
                final ValueAnimator sv = this.SV;
                final float[] floatValues = { (float)this.SV.getAnimatedValue(), 0.0f };
                floatValues[tj] = 1.0f;
                sv.setFloatValues(floatValues);
                this.SV.setDuration(500L);
                this.SV.setStartDelay(0L);
                this.SV.start();
                break;
            }
        }
    }
}
