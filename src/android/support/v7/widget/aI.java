// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v7.widget;

class ai
{
    public int TC;
    public int TD;
    public j TE;
    public j TF;
    public int TG;
    public int TH;
    
    private ai(final j tf, final j te) {
        this.TF = tf;
        this.TE = te;
    }
    
    ai(final j j, final j i, final int td, final int tc, final int th, final int tg) {
        this(j, i);
        this.TD = td;
        this.TC = tc;
        this.TH = th;
        this.TG = tg;
    }
    
    public String toString() {
        return "ChangeInfo{oldHolder=" + this.TF + ", newHolder=" + this.TE + ", fromX=" + this.TD + ", fromY=" + this.TC + ", toX=" + this.TH + ", toY=" + this.TG + '}';
    }
}
