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
    private static final Charset kX;
    public static final e la;
    final String kW;
    final double kY;
    public final int kZ;
    final byte[] lb;
    final int lc;
    public final int ld;
    final long le;
    final boolean lf;
    public final String name;
    
    static {
        CREATOR = (Parcelable$Creator)new v();
        kX = Charset.forName("UTF-8");
        la = new e();
    }
    
    Flag(final int lc, final String name, final long le, final boolean lf, final double ky, final String kw, final byte[] lb, final int ld, final int kz) {
        this.lc = lc;
        this.name = name;
        this.le = le;
        this.lf = lf;
        this.kY = ky;
        this.kW = kw;
        this.lb = lb;
        this.ld = ld;
        this.kZ = kz;
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
    
    private static int oH(final boolean b, final boolean b2) {
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
    
    private static int oJ(final byte b, final byte b2) {
        return b - b2;
    }
    
    private static int oN(final long n, final long n2) {
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
    
    private static int oO(final int n, final int n2) {
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
    
    public boolean equals(final Object o) {
        boolean b = true;
        boolean b2 = false;
        if (o == null || !(o instanceof Flag)) {
            return false;
        }
        final Flag flag = (Flag)o;
        if (this.lc != flag.lc || !u.hH(this.name, flag.name) || this.ld != flag.ld || this.kZ != flag.kZ) {
            return false;
        }
        switch (this.ld) {
            default: {
                throw new AssertionError((Object)new StringBuilder(31).append("Invalid enum value: ").append(this.ld).toString());
            }
            case 1: {
                if (this.le != flag.le) {
                    b = false;
                }
                return b;
            }
            case 2: {
                if (this.lf == flag.lf) {
                    b2 = b;
                }
                return b2;
            }
            case 3: {
                if (this.kY != flag.kY) {
                    b = false;
                }
                return b;
            }
            case 4: {
                return u.hH(this.kW, flag.kW);
            }
            case 5: {
                return Arrays.equals(this.lb, flag.lb);
            }
        }
    }
    
    public long oG() {
        if (this.ld == 1) {
            return this.le;
        }
        throw new IllegalArgumentException("Not a long type");
    }
    
    public double oI() {
        if (this.ld == 3) {
            return this.kY;
        }
        throw new IllegalArgumentException("Not a double type");
    }
    
    public boolean oK() {
        if (this.ld == 2) {
            return this.lf;
        }
        throw new IllegalArgumentException("Not a boolean type");
    }
    
    public String oL() {
        if (this.ld == 4) {
            return this.kW;
        }
        throw new IllegalArgumentException("Not a String type");
    }
    
    public byte[] oM() {
        if (this.ld == 5) {
            return this.lb;
        }
        throw new IllegalArgumentException("Not a bytes type");
    }
    
    public int oP(final Flag flag) {
        int i = 0;
        final int compareTo = this.name.compareTo(flag.name);
        if (compareTo != 0) {
            return compareTo;
        }
        final int oo = oO(this.ld, flag.ld);
        if (oo != 0) {
            return oo;
        }
        switch (this.ld) {
            default: {
                throw new AssertionError((Object)new StringBuilder(31).append("Invalid enum value: ").append(this.ld).toString());
            }
            case 1: {
                return oN(this.le, flag.le);
            }
            case 2: {
                return oH(this.lf, flag.lf);
            }
            case 3: {
                return Double.compare(this.kY, flag.kY);
            }
            case 4: {
                return compare(this.kW, flag.kW);
            }
            case 5: {
                if (this.lb == flag.lb) {
                    return 0;
                }
                if (this.lb == null) {
                    return -1;
                }
                if (flag.lb != null) {
                    while (i < Math.min(this.lb.length, flag.lb.length)) {
                        final int oj = oJ(this.lb[i], flag.lb[i]);
                        if (oj != 0) {
                            return oj;
                        }
                        ++i;
                    }
                    return oO(this.lb.length, flag.lb.length);
                }
                return 1;
            }
        }
    }
    
    public String toString() {
        final StringBuilder sb = new StringBuilder("Flag(");
        sb.append(this.lc);
        sb.append(", ");
        sb.append(this.name);
        sb.append(", ");
        switch (this.ld) {
            default: {
                throw new AssertionError((Object)new StringBuilder(31).append("Invalid enum value: ").append(this.ld).toString());
            }
            case 1: {
                sb.append(this.le);
                break;
            }
            case 2: {
                sb.append(this.lf);
                break;
            }
            case 3: {
                sb.append(this.kY);
                break;
            }
            case 4: {
                sb.append("'");
                sb.append(this.kW);
                sb.append("'");
                break;
            }
            case 5: {
                if (this.lb != null) {
                    sb.append("'");
                    sb.append(new String(this.lb, Flag.kX));
                    sb.append("'");
                    break;
                }
                sb.append("null");
                break;
            }
        }
        sb.append(", ");
        sb.append(this.ld);
        sb.append(", ");
        sb.append(this.kZ);
        sb.append(")");
        return sb.toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        v.py(this, parcel, n);
    }
}
