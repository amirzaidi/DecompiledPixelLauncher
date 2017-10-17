// 
// Decompiled by Procyon v0.5.30
// 

package android.support.a;

import android.util.AndroidRuntimeException;
import android.os.Looper;
import java.util.ArrayList;

public abstract class b implements f
{
    public static final i agD;
    public static final i agE;
    public static final i agF;
    public static final i agH;
    public static final i agJ;
    public static final i agK;
    public static final i agN;
    public static final i agO;
    public static final i agP;
    public static final i agR;
    public static final i agV;
    public static final i agW;
    public static final i agX;
    public static final i ahb;
    float agG;
    float agI;
    float agL;
    final Object agM;
    private long agQ;
    private final ArrayList agS;
    boolean agT;
    boolean agU;
    private final ArrayList agY;
    final d agZ;
    private float aha;
    float mVelocity;
    
    static {
        agN = new j("translationX");
        agJ = new p("translationY");
        agV = new y("translationZ");
        agP = new v("scaleX");
        agK = new t("scaleY");
        ahb = new w("rotation");
        agH = new o("rotationX");
        agD = new A("rotationY");
        agR = new r("x");
        agO = new s("y");
        agE = new u("z");
        agW = new z("alpha");
        agX = new q("scrollX");
        agF = new x("scrollY");
    }
    
    b(final Object agM, final d agZ) {
        final float n = Float.MAX_VALUE;
        final float n2 = 0.00390625f;
        this.mVelocity = 0.0f;
        this.agL = n;
        this.agU = false;
        this.agT = false;
        this.agG = n;
        this.agI = -this.agG;
        this.agQ = 0L;
        this.agY = new ArrayList();
        this.agS = new ArrayList();
        this.agM = agM;
        this.agZ = agZ;
        if (this.agZ != b.ahb && this.agZ != b.agH && this.agZ != b.agD) {
            if (this.agZ != b.agW) {
                if (this.agZ != b.agP && this.agZ != b.agK) {
                    this.aha = 1.0f;
                }
                else {
                    this.aha = n2;
                }
            }
            else {
                this.aha = n2;
            }
        }
        else {
            this.aha = 0.1f;
        }
    }
    
    private void auc() {
        boolean agT = true;
        if (!this.agT) {
            this.agT = agT;
            if (!this.agU) {
                this.agL = this.aud();
            }
            if (this.agL <= this.agG) {
                agT = false;
            }
            if (agT || this.agL < this.agI) {
                throw new IllegalArgumentException("Starting value need to be in between min value and max value");
            }
            k.getInstance().auE(this, 0L);
        }
    }
    
    private float aud() {
        return this.agZ.auv(this.agM);
    }
    
    private void auf(final boolean b) {
        this.agT = false;
        k.getInstance().auD(this);
        this.agQ = 0L;
        this.agU = false;
        for (int i = 0; i < this.agY.size(); ++i) {
            if (this.agY.get(i) != null) {
                ((h)this.agY.get(i)).aux(this, b, this.agL, this.mVelocity);
            }
        }
        aui(this.agY);
    }
    
    private static void aui(final ArrayList list) {
        int size = list.size();
        while (true) {
            --size;
            if (size < 0) {
                break;
            }
            if (list.get(size) != null) {
                continue;
            }
            list.remove(size);
        }
    }
    
    abstract boolean atZ(final long p0);
    
    public b aub(final float agI) {
        this.agI = agI;
        return this;
    }
    
    public b aue(final float agG) {
        this.agG = agG;
        return this;
    }
    
    public b aug(final float mVelocity) {
        this.mVelocity = mVelocity;
        return this;
    }
    
    public b auh(final float agL) {
        this.agL = agL;
        this.agU = true;
        return this;
    }
    
    float auj() {
        return this.aha * 0.75f;
    }
    
    public boolean auk() {
        return this.agT;
    }
    
    public boolean aul(final long n) {
        if (this.agQ == 0L) {
            this.agQ = n;
            this.aum(this.agL);
            return false;
        }
        final long n2 = n - this.agQ;
        this.agQ = n;
        final boolean atZ = this.atZ(n2);
        this.agL = Math.min(this.agL, this.agG);
        this.aum(this.agL = Math.max(this.agL, this.agI));
        if (atZ) {
            this.auf(false);
        }
        return atZ;
    }
    
    void aum(final float n) {
        this.agZ.auu(this.agM, n);
        for (int i = 0; i < this.agS.size(); ++i) {
            if (this.agS.get(i) != null) {
                ((g)this.agS.get(i)).auw(this, this.agL, this.mVelocity);
            }
        }
        aui(this.agS);
    }
    
    public void start() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            if (!this.agT) {
                this.auc();
            }
            return;
        }
        throw new AndroidRuntimeException("Animations may only be started on the main thread");
    }
}
