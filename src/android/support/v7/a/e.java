// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v7.a;

public final class e
{
    public static final e UX;
    public static final e UY;
    public static final e UZ;
    public static final e Vb;
    public static final e Ve;
    public static final e Vg;
    boolean Va;
    final float[] Vc;
    final float[] Vd;
    final float[] Vf;
    
    static {
        adW(UX = new e());
        aea(e.UX);
        adO(Vg = new e());
        aea(e.Vg);
        aef(Vb = new e());
        aea(e.Vb);
        adW(UY = new e());
        adY(e.UY);
        adO(Ve = new e());
        adY(e.Ve);
        aef(UZ = new e());
        adY(e.UZ);
    }
    
    e() {
        final int n = 3;
        this.Vd = new float[n];
        this.Vf = new float[n];
        this.Vc = new float[n];
        this.Va = true;
        aed(this.Vd);
        aed(this.Vf);
        this.adS();
    }
    
    private static void adO(final e e) {
        e.Vf[0] = 0.3f;
        e.Vf[1] = 0.5f;
        e.Vf[2] = 0.7f;
    }
    
    private void adS() {
        final float n = 0.24f;
        this.Vc[0] = n;
        this.Vc[1] = 0.52f;
        this.Vc[2] = n;
    }
    
    private static void adW(final e e) {
        e.Vf[0] = 0.55f;
        e.Vf[1] = 0.74f;
    }
    
    private static void adY(final e e) {
        e.Vd[1] = 0.3f;
        e.Vd[2] = 0.4f;
    }
    
    private static void aea(final e e) {
        e.Vd[0] = 0.35f;
        e.Vd[1] = 1.0f;
    }
    
    private static void aed(final float[] array) {
        array[0] = 0.0f;
        array[1] = 0.5f;
        array[2] = 1.0f;
    }
    
    private static void aef(final e e) {
        e.Vf[1] = 0.26f;
        e.Vf[2] = 0.45f;
    }
    
    public float adP() {
        return this.Vd[0];
    }
    
    public float adQ() {
        return this.Vf[0];
    }
    
    public float adR() {
        return this.Vf[2];
    }
    
    void adT() {
        int i = 0;
        final int length = this.Vc.length;
        int j = 0;
        float n = 0.0f;
        while (j < length) {
            final float n2 = this.Vc[j];
            if (n2 > 0.0f) {
                n += n2;
            }
            ++j;
        }
        if (n != 0.0f) {
            while (i < this.Vc.length) {
                if (this.Vc[i] > 0.0f) {
                    final float[] vc = this.Vc;
                    vc[i] /= n;
                }
                ++i;
            }
        }
    }
    
    public float adU() {
        return this.Vd[1];
    }
    
    public float adV() {
        return this.Vc[1];
    }
    
    public float adX() {
        return this.Vc[0];
    }
    
    public float adZ() {
        return this.Vd[2];
    }
    
    public float aeb() {
        return this.Vf[1];
    }
    
    public float aec() {
        return this.Vc[2];
    }
    
    public boolean aee() {
        return this.Va;
    }
}
