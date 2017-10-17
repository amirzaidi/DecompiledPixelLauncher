// 
// Decompiled by Procyon v0.5.30
// 

package android.support.a;

import android.util.AndroidRuntimeException;
import android.os.Looper;

public final class a extends b
{
    private c agA;
    private boolean agB;
    private float agC;
    
    public a(final Object o, final d d, final float n) {
        super(o, d);
        this.agA = null;
        this.agC = Float.MAX_VALUE;
        this.agB = false;
        this.agA = new c(n);
    }
    
    private void atW() {
        if (this.agA == null) {
            throw new UnsupportedOperationException("Incomplete SpringAnimation: Either final position or a spring force needs to be set.");
        }
        final double n = this.agA.aur();
        if (n > this.agG) {
            throw new UnsupportedOperationException("Final position of the spring cannot be greater than the max value.");
        }
        if (n < this.agI) {
            throw new UnsupportedOperationException("Final position of the spring cannot be less than the min value.");
        }
    }
    
    boolean atU(final float n, final float n2) {
        return this.agA.aun(n, n2);
    }
    
    public c atV() {
        return this.agA;
    }
    
    public void atX(final float agC) {
        if (!this.auk()) {
            if (this.agA == null) {
                this.agA = new c(agC);
            }
            this.agA.aup(agC);
            this.start();
        }
        else {
            this.agC = agC;
        }
    }
    
    public boolean atY() {
        return this.agA.ahe > 0.0;
    }
    
    boolean atZ(final long n) {
        if (this.agB) {
            if (this.agC != Float.MAX_VALUE) {
                this.agA.aup(this.agC);
                this.agC = Float.MAX_VALUE;
            }
            this.agL = this.agA.aur();
            this.mVelocity = 0.0f;
            this.agB = false;
            return true;
        }
        if (this.agC != Float.MAX_VALUE) {
            this.agA.aur();
            final e auq = this.agA.auq(this.agL, this.mVelocity, n / 2);
            this.agA.aup(this.agC);
            this.agC = Float.MAX_VALUE;
            final e auq2 = this.agA.auq(auq.ahn, auq.mVelocity, n / 2);
            this.agL = auq2.ahn;
            this.mVelocity = auq2.mVelocity;
        }
        else {
            final e auq3 = this.agA.auq(this.agL, this.mVelocity, n);
            this.agL = auq3.ahn;
            this.mVelocity = auq3.mVelocity;
        }
        this.agL = Math.max(this.agL, this.agI);
        this.agL = Math.min(this.agL, this.agG);
        if (!this.atU(this.agL, this.mVelocity)) {
            return false;
        }
        this.agL = this.agA.aur();
        this.mVelocity = 0.0f;
        return true;
    }
    
    public a aua(final c agA) {
        this.agA = agA;
        return this;
    }
    
    public void skipToEnd() {
        if (!this.atY()) {
            throw new UnsupportedOperationException("Spring animations can only come to an end when there is damping");
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            if (this.agT) {
                this.agB = true;
            }
            return;
        }
        throw new AndroidRuntimeException("Animations may only be started on the main thread");
    }
    
    public void start() {
        this.atW();
        this.agA.aut(this.auj());
        super.start();
    }
}
