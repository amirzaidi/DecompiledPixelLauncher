// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.a;

public class i
{
    public final Object Xk;
    public final Object Xl;
    
    private static boolean aiw(final Object o, final Object o2) {
        boolean b = false;
        if (o != o2) {
            if (o == null) {
                return b;
            }
            if (!o.equals(o2)) {
                return b;
            }
        }
        b = true;
        return b;
    }
    
    public boolean equals(final Object o) {
        boolean b = false;
        if (o instanceof i) {
            final i i = (i)o;
            if (aiw(i.Xk, this.Xk) && aiw(i.Xl, this.Xl)) {
                b = true;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        int hashCode = 0;
        int hashCode2;
        if (this.Xk != null) {
            hashCode2 = this.Xk.hashCode();
        }
        else {
            hashCode2 = 0;
        }
        if (this.Xl != null) {
            hashCode = this.Xl.hashCode();
        }
        return hashCode2 ^ hashCode;
    }
    
    public String toString() {
        return "Pair{" + String.valueOf(this.Xk) + " " + String.valueOf(this.Xl) + "}";
    }
}
