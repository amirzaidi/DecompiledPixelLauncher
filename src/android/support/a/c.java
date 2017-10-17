// 
// Decompiled by Procyon v0.5.30
// 

package android.support.a;

public final class c
{
    private final e ahc;
    private double ahd;
    double ahe;
    private double ahf;
    private double ahg;
    private boolean ahh;
    double ahi;
    private double ahj;
    private double ahk;
    private double ahl;
    
    public c() {
        this.ahi = Math.sqrt(1500.0);
        this.ahe = 0.5;
        this.ahh = false;
        this.ahd = Double.MAX_VALUE;
        this.ahc = new e();
    }
    
    public c(final float n) {
        this.ahi = Math.sqrt(1500.0);
        this.ahe = 0.5;
        this.ahh = false;
        this.ahd = Double.MAX_VALUE;
        this.ahc = new e();
        this.ahd = n;
    }
    
    private void init() {
        final double n = 1.0;
        if (this.ahh) {
            return;
        }
        if (this.ahd == Double.MAX_VALUE) {
            throw new IllegalStateException("Error: Final position of the spring must be set before the animation starts");
        }
        if (this.ahe > n) {
            this.ahk = -this.ahe * this.ahi + this.ahi * Math.sqrt(this.ahe * this.ahe - n);
            this.ahf = -this.ahe * this.ahi - this.ahi * Math.sqrt(this.ahe * this.ahe - n);
        }
        else if (this.ahe >= 0.0 && this.ahe < n) {
            this.ahl = this.ahi * Math.sqrt(n - this.ahe * this.ahe);
        }
        this.ahh = true;
    }
    
    public boolean aun(final float n, final float n2) {
        return Math.abs(n2) < this.ahg && Math.abs(n - this.aur()) < this.ahj;
    }
    
    public c auo(final float n) {
        if (n < 0.0f) {
            throw new IllegalArgumentException("Damping ratio must be non-negative");
        }
        this.ahe = n;
        this.ahh = false;
        return this;
    }
    
    public c aup(final float n) {
        this.ahd = n;
        return this;
    }
    
    e auq(final double n, final double n2, final long n3) {
        this.init();
        final double n4 = n3 / 1000.0;
        final double n5 = n - this.ahd;
        double n8;
        double n9;
        if (this.ahe > 1.0) {
            final double n6 = n5 - (this.ahf * n5 - n2) / (this.ahf - this.ahk);
            final double n7 = (this.ahf * n5 - n2) / (this.ahf - this.ahk);
            n8 = Math.pow(2.718281828459045, this.ahf * n4) * n6 + Math.pow(2.718281828459045, this.ahk * n4) * n7;
            n9 = Math.pow(2.718281828459045, n4 * this.ahk) * (n7 * this.ahk) + n6 * this.ahf * Math.pow(2.718281828459045, this.ahf * n4);
        }
        else if (this.ahe == 1.0) {
            final double n10 = n2 + this.ahi * n5;
            n8 = (n10 * n4 + n5) * Math.pow(2.718281828459045, -this.ahi * n4);
            n9 = Math.pow(2.718281828459045, n4 * -this.ahi) * n10 + (n5 + n10 * n4) * Math.pow(2.718281828459045, -this.ahi * n4) * -this.ahi;
        }
        else {
            final double n11 = (this.ahe * this.ahi * n5 + n2) * (1.0 / this.ahl);
            n8 = Math.pow(2.718281828459045, -this.ahe * this.ahi * n4) * (Math.cos(this.ahl * n4) * n5 + Math.sin(this.ahl * n4) * n11);
            n9 = (Math.cos(n4 * this.ahl) * (n11 * this.ahl) + n5 * -this.ahl * Math.sin(this.ahl * n4)) * Math.pow(2.718281828459045, -this.ahe * this.ahi * n4) + -this.ahi * n8 * this.ahe;
        }
        this.ahc.ahn = (float)(n8 + this.ahd);
        this.ahc.mVelocity = (float)n9;
        return this.ahc;
    }
    
    public float aur() {
        return (float)this.ahd;
    }
    
    public c aus(final float n) {
        if (n <= 0.0f) {
            throw new IllegalArgumentException("Spring stiffness constant must be positive.");
        }
        this.ahi = Math.sqrt(n);
        this.ahh = false;
        return this;
    }
    
    void aut(final double n) {
        this.ahj = Math.abs(n);
        this.ahg = this.ahj * 62.5;
    }
}
