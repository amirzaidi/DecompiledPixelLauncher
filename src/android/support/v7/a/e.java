// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v7.a;

public final class e
{
    public static final e To;
    public static final e Tp;
    public static final e Tq;
    public static final e Ts;
    public static final e Tv;
    public static final e Tx;
    boolean Tr;
    final float[] Tt;
    final float[] Tu;
    final float[] Tw;
    
    static {
        acS(To = new e());
        acW(e.To);
        acK(Tx = new e());
        acW(e.Tx);
        adb(Ts = new e());
        acW(e.Ts);
        acS(Tp = new e());
        acU(e.Tp);
        acK(Tv = new e());
        acU(e.Tv);
        adb(Tq = new e());
        acU(e.Tq);
    }
    
    e() {
        final int n = 3;
        this.Tu = new float[n];
        this.Tw = new float[n];
        this.Tt = new float[n];
        this.Tr = true;
        acZ(this.Tu);
        acZ(this.Tw);
        this.acO();
    }
    
    private static void acK(final e e) {
        e.Tw[0] = 0.3f;
        e.Tw[1] = 0.5f;
        e.Tw[2] = 0.7f;
    }
    
    private void acO() {
        final float n = 0.24f;
        this.Tt[0] = n;
        this.Tt[1] = 0.52f;
        this.Tt[2] = n;
    }
    
    private static void acS(final e e) {
        e.Tw[0] = 0.55f;
        e.Tw[1] = 0.74f;
    }
    
    private static void acU(final e e) {
        e.Tu[1] = 0.3f;
        e.Tu[2] = 0.4f;
    }
    
    private static void acW(final e e) {
        e.Tu[0] = 0.35f;
        e.Tu[1] = 1.0f;
    }
    
    private static void acZ(final float[] array) {
        array[0] = 0.0f;
        array[1] = 0.5f;
        array[2] = 1.0f;
    }
    
    private static void adb(final e e) {
        e.Tw[1] = 0.26f;
        e.Tw[2] = 0.45f;
    }
    
    public float acL() {
        return this.Tu[0];
    }
    
    public float acM() {
        return this.Tw[0];
    }
    
    public float acN() {
        return this.Tw[2];
    }
    
    void acP() {
        int i = 0;
        final int length = this.Tt.length;
        int j = 0;
        float n = 0.0f;
        while (j < length) {
            final float n2 = this.Tt[j];
            if (n2 > 0.0f) {
                n += n2;
            }
            ++j;
        }
        if (n != 0.0f) {
            while (i < this.Tt.length) {
                if (this.Tt[i] > 0.0f) {
                    final float[] tt = this.Tt;
                    tt[i] /= n;
                }
                ++i;
            }
        }
    }
    
    public float acQ() {
        return this.Tu[1];
    }
    
    public float acR() {
        return this.Tt[1];
    }
    
    public float acT() {
        return this.Tt[0];
    }
    
    public float acV() {
        return this.Tu[2];
    }
    
    public float acX() {
        return this.Tw[1];
    }
    
    public float acY() {
        return this.Tt[2];
    }
    
    public boolean ada() {
        return this.Tr;
    }
}
