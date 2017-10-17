// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.a;

public class b
{
    public final Object UU;
    public final Object UV;
    
    public b(final Object uu, final Object uv) {
        this.UU = uu;
        this.UV = uv;
    }
    
    private static boolean agJ(final Object o, final Object o2) {
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
        if (o instanceof b) {
            final b b2 = (b)o;
            if (agJ(b2.UU, this.UU) && agJ(b2.UV, this.UV)) {
                b = true;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        int hashCode = 0;
        int hashCode2;
        if (this.UU != null) {
            hashCode2 = this.UU.hashCode();
        }
        else {
            hashCode2 = 0;
        }
        if (this.UV != null) {
            hashCode = this.UV.hashCode();
        }
        return hashCode2 ^ hashCode;
    }
    
    public String toString() {
        return "Pair{" + String.valueOf(this.UU) + " " + String.valueOf(this.UV) + "}";
    }
}
