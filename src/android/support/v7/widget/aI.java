// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v7.widget;

class ai
{
    public int RT;
    public int RU;
    public j RV;
    public j RW;
    public int RX;
    public int RY;
    
    private ai(final j rw, final j rv) {
        this.RW = rw;
        this.RV = rv;
    }
    
    ai(final j j, final j i, final int ru, final int rt, final int ry, final int rx) {
        this(j, i);
        this.RU = ru;
        this.RT = rt;
        this.RY = ry;
        this.RX = rx;
    }
    
    public String toString() {
        return "ChangeInfo{oldHolder=" + this.RW + ", newHolder=" + this.RV + ", fromX=" + this.RU + ", fromY=" + this.RT + ", toX=" + this.RY + ", toY=" + this.RX + '}';
    }
}
