// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.phenotype;

import android.os.Parcel;
import java.util.Arrays;
import com.google.android.gms.common.internal.u;
import java.util.Collections;
import java.util.ArrayList;
import java.util.List;
import java.nio.charset.Charset;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class ExperimentTokens extends AbstractSafeParcelable
{
    public static final Parcelable$Creator CREATOR;
    private static final Charset yS;
    private static final l yT;
    private static final l yX;
    public static final ExperimentTokens yY;
    private static final l zb;
    private static final l zc;
    public static final byte[][] zd;
    public final byte[][] yR;
    public final byte[][] yU;
    final int yV;
    public final int[] yW;
    public final byte[] yZ;
    public final byte[][] za;
    public final byte[][] ze;
    public final String zf;
    public final byte[][] zg;
    
    static {
        CREATOR = (Parcelable$Creator)new p();
        zd = new byte[0][];
        yY = new ExperimentTokens("", null, ExperimentTokens.zd, ExperimentTokens.zd, ExperimentTokens.zd, ExperimentTokens.zd, null, null);
        zc = new s();
        zb = new i();
        yT = new n();
        yX = new w();
        yS = Charset.forName("UTF-8");
    }
    
    ExperimentTokens(final int yv, final String zf, final byte[] yz, final byte[][] zg, final byte[][] ze, final byte[][] za, final byte[][] yu, final int[] yw, final byte[][] yr) {
        this.yV = yv;
        this.zf = zf;
        this.yZ = yz;
        this.zg = zg;
        this.ze = ze;
        this.za = za;
        this.yU = yu;
        this.yW = yw;
        this.yR = yr;
    }
    
    public ExperimentTokens(final String s, final byte[] array, final byte[][] array2, final byte[][] array3, final byte[][] array4, final byte[][] array5, final int[] array6, final byte[][] array7) {
        this(1, s, array, array2, array3, array4, array5, array6, array7);
    }
    
    private static void Dq(final StringBuilder sb, final String s, final byte[][] array) {
        sb.append(s);
        sb.append("=");
        if (array != null) {
            sb.append("(");
            final int length = array.length;
            int n = 1;
            for (int i = 0; i < length; ++i, n = 0) {
                final byte[] array2 = array[i];
                if (n == 0) {
                    sb.append(", ");
                }
                sb.append("'");
                sb.append(new String(array2, ExperimentTokens.yS));
                sb.append("'");
            }
            sb.append(")");
        }
        else {
            sb.append("null");
        }
    }
    
    private static void Dr(final StringBuilder sb, final String s, final int[] array) {
        sb.append(s);
        sb.append("=");
        if (array != null) {
            sb.append("(");
            final int length = array.length;
            int n = 1;
            for (int i = 0; i < length; ++i, n = 0) {
                final int n2 = array[i];
                if (n == 0) {
                    sb.append(", ");
                }
                sb.append(n2);
            }
            sb.append(")");
        }
        else {
            sb.append("null");
        }
    }
    
    private static void Ds(final StringBuilder sb, final String s, final byte[] array) {
        sb.append(s);
        sb.append("=");
        if (array != null) {
            sb.append("'");
            sb.append(new String(array, ExperimentTokens.yS));
            sb.append("'");
        }
        else {
            sb.append("null");
        }
    }
    
    private static List Dt(final byte[][] array) {
        if (array != null) {
            final ArrayList<Comparable> list = new ArrayList<Comparable>(array.length);
            for (int length = array.length, i = 0; i < length; ++i) {
                list.add(new String(array[i], ExperimentTokens.yS));
            }
            Collections.sort(list);
            return list;
        }
        return null;
    }
    
    private static List Du(final int[] array) {
        if (array != null) {
            final ArrayList<Comparable> list = new ArrayList<Comparable>(array.length);
            for (int length = array.length, i = 0; i < length; ++i) {
                list.add(array[i]);
            }
            Collections.sort(list);
            return list;
        }
        return null;
    }
    
    public boolean equals(final Object o) {
        boolean b = false;
        if (o != null && o instanceof ExperimentTokens) {
            final ExperimentTokens experimentTokens = (ExperimentTokens)o;
            if (this.yV == experimentTokens.yV && u.kv(this.zf, experimentTokens.zf) && Arrays.equals(this.yZ, experimentTokens.yZ) && u.kv(Dt(this.zg), Dt(experimentTokens.zg)) && u.kv(Dt(this.ze), Dt(experimentTokens.ze)) && u.kv(Dt(this.za), Dt(experimentTokens.za)) && u.kv(Dt(this.yU), Dt(experimentTokens.yU)) && u.kv(Du(this.yW), Du(experimentTokens.yW)) && u.kv(Dt(this.yR), Dt(experimentTokens.yR))) {
                b = true;
            }
            return b;
        }
        return false;
    }
    
    public String toString() {
        final StringBuilder sb = new StringBuilder("ExperimentTokens");
        sb.append("(");
        sb.append(this.yV);
        sb.append(", ");
        String string;
        if (this.zf != null) {
            final String value = String.valueOf("'");
            final String zf = this.zf;
            final String value2 = String.valueOf("'");
            string = new StringBuilder(String.valueOf(value).length() + 0 + String.valueOf(zf).length() + String.valueOf(value2).length()).append(value).append(zf).append(value2).toString();
        }
        else {
            string = "null";
        }
        sb.append(string);
        sb.append(", ");
        Ds(sb, "direct", this.yZ);
        sb.append(", ");
        Dq(sb, "GAIA", this.zg);
        sb.append(", ");
        Dq(sb, "PSEUDO", this.ze);
        sb.append(", ");
        Dq(sb, "ALWAYS", this.za);
        sb.append(", ");
        Dq(sb, "OTHER", this.yU);
        sb.append(", ");
        Dr(sb, "weak", this.yW);
        sb.append(", ");
        Dq(sb, "directs", this.yR);
        sb.append(")");
        return sb.toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        p.Dl(this, parcel, n);
    }
}
