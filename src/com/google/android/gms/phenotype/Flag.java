// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.phenotype;

import android.os.Parcel;
import java.util.Arrays;
import com.google.android.gms.common.internal.u;
import java.nio.charset.Charset;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class Flag extends AbstractSafeParcelable implements Comparable
{
    public static final Parcelable$Creator CREATOR;
    private static final Charset yB;
    public static final h yE;
    public final String name;
    final String yA;
    final double yC;
    public final int yD;
    final byte[] yF;
    final int yG;
    public final int yH;
    final long yI;
    final boolean yJ;
    
    static {
        CREATOR = (Parcelable$Creator)new v();
        yB = Charset.forName("UTF-8");
        yE = new h();
    }
    
    Flag(final int yg, final String name, final long yi, final boolean yj, final double yc, final String ya, final byte[] yf, final int yh, final int yd) {
        this.yG = yg;
        this.name = name;
        this.yI = yi;
        this.yJ = yj;
        this.yC = yc;
        this.yA = ya;
        this.yF = yf;
        this.yH = yh;
        this.yD = yd;
    }
    
    private static int CT(final boolean b, final boolean b2) {
        int n = 0;
        if (b != b2) {
            if (!b) {
                n = -1;
            }
            else {
                n = 1;
            }
        }
        return n;
    }
    
    private static int CV(final byte b, final byte b2) {
        return b - b2;
    }
    
    private static int CZ(final long n, final long n2) {
        final boolean b = true;
        int n3 = 0;
        if (n < n2 || !b) {
            n3 = -1;
        }
        else if (n != n2) {
            n3 = (b ? 1 : 0);
        }
        return n3;
    }
    
    private static int Da(final int n, final int n2) {
        int n3;
        if (n >= n2) {
            if (n != n2) {
                n3 = 1;
            }
            else {
                n3 = 0;
            }
        }
        else {
            n3 = -1;
        }
        return n3;
    }
    
    private static int compare(final String s, final String s2) {
        if (s == s2) {
            return 0;
        }
        if (s == null) {
            return -1;
        }
        if (s2 != null) {
            return s.compareTo(s2);
        }
        return 1;
    }
    
    public long CS() {
        if (this.yH == 1) {
            return this.yI;
        }
        throw new IllegalArgumentException("Not a long type");
    }
    
    public double CU() {
        if (this.yH == 3) {
            return this.yC;
        }
        throw new IllegalArgumentException("Not a double type");
    }
    
    public boolean CW() {
        if (this.yH == 2) {
            return this.yJ;
        }
        throw new IllegalArgumentException("Not a boolean type");
    }
    
    public String CX() {
        if (this.yH == 4) {
            return this.yA;
        }
        throw new IllegalArgumentException("Not a String type");
    }
    
    public byte[] CY() {
        if (this.yH == 5) {
            return this.yF;
        }
        throw new IllegalArgumentException("Not a bytes type");
    }
    
    public int Db(final Flag flag) {
        int i = 0;
        final int compareTo = this.name.compareTo(flag.name);
        if (compareTo != 0) {
            return compareTo;
        }
        final int da = Da(this.yH, flag.yH);
        if (da != 0) {
            return da;
        }
        switch (this.yH) {
            default: {
                throw new AssertionError((Object)new StringBuilder(31).append("Invalid enum value: ").append(this.yH).toString());
            }
            case 1: {
                return CZ(this.yI, flag.yI);
            }
            case 2: {
                return CT(this.yJ, flag.yJ);
            }
            case 3: {
                return Double.compare(this.yC, flag.yC);
            }
            case 4: {
                return compare(this.yA, flag.yA);
            }
            case 5: {
                if (this.yF == flag.yF) {
                    return 0;
                }
                if (this.yF == null) {
                    return -1;
                }
                if (flag.yF != null) {
                    while (i < Math.min(this.yF.length, flag.yF.length)) {
                        final int cv = CV(this.yF[i], flag.yF[i]);
                        if (cv != 0) {
                            return cv;
                        }
                        ++i;
                    }
                    return Da(this.yF.length, flag.yF.length);
                }
                return 1;
            }
        }
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        boolean b2 = false;
        if (o == null || !(o instanceof Flag)) {
            return false;
        }
        final Flag flag = (Flag)o;
        if (this.yG != flag.yG || !u.kv(this.name, flag.name) || this.yH != flag.yH || this.yD != flag.yD) {
            return false;
        }
        switch (this.yH) {
            default: {
                throw new AssertionError((Object)new StringBuilder(31).append("Invalid enum value: ").append(this.yH).toString());
            }
            case 1: {
                if (this.yI != flag.yI) {
                    b = false;
                }
                return b;
            }
            case 2: {
                if (this.yJ == flag.yJ) {
                    b2 = b;
                }
                return b2;
            }
            case 3: {
                if (this.yC != flag.yC) {
                    b = false;
                }
                return b;
            }
            case 4: {
                return u.kv(this.yA, flag.yA);
            }
            case 5: {
                return Arrays.equals(this.yF, flag.yF);
            }
        }
    }
    
    public String toString() {
        final StringBuilder sb = new StringBuilder("Flag(");
        sb.append(this.yG);
        sb.append(", ");
        sb.append(this.name);
        sb.append(", ");
        switch (this.yH) {
            default: {
                throw new AssertionError((Object)new StringBuilder(31).append("Invalid enum value: ").append(this.yH).toString());
            }
            case 1: {
                sb.append(this.yI);
                break;
            }
            case 2: {
                sb.append(this.yJ);
                break;
            }
            case 3: {
                sb.append(this.yC);
                break;
            }
            case 4: {
                sb.append("'");
                sb.append(this.yA);
                sb.append("'");
                break;
            }
            case 5: {
                if (this.yF != null) {
                    sb.append("'");
                    sb.append(new String(this.yF, Flag.yB));
                    sb.append("'");
                    break;
                }
                sb.append("null");
                break;
            }
        }
        sb.append(", ");
        sb.append(this.yH);
        sb.append(", ");
        sb.append(this.yD);
        sb.append(")");
        return sb.toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        v.Dx(this, parcel, n);
    }
}
