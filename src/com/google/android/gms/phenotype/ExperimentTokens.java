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
    private static final Charset lj;
    private static final m lk;
    private static final m lo;
    public static final ExperimentTokens lp;
    private static final m ls;
    private static final m lt;
    public static final byte[][] lu;
    public final byte[][] li;
    public final byte[][] ll;
    final int lm;
    public final int[] ln;
    public final byte[] lq;
    public final byte[][] lr;
    public final byte[][] lv;
    public final String lw;
    public final byte[][] lx;
    
    static {
        CREATOR = (Parcelable$Creator)new q();
        lu = new byte[0][];
        lp = new ExperimentTokens("", null, ExperimentTokens.lu, ExperimentTokens.lu, ExperimentTokens.lu, ExperimentTokens.lu, null, null);
        lt = new s();
        ls = new j();
        lk = new o();
        lo = new w();
        lj = Charset.forName("UTF-8");
    }
    
    ExperimentTokens(final int lm, final String lw, final byte[] lq, final byte[][] lx, final byte[][] lv, final byte[][] lr, final byte[][] ll, final int[] ln, final byte[][] li) {
        this.lm = lm;
        this.lw = lw;
        this.lq = lq;
        this.lx = lx;
        this.lv = lv;
        this.lr = lr;
        this.ll = ll;
        this.ln = ln;
        this.li = li;
    }
    
    public ExperimentTokens(final String s, final byte[] array, final byte[][] array2, final byte[][] array3, final byte[][] array4, final byte[][] array5, final int[] array6, final byte[][] array7) {
        this(1, s, array, array2, array3, array4, array5, array6, array7);
    }
    
    private static void oQ(final StringBuilder sb, final String s, final byte[][] array) {
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
                sb.append(new String(array2, ExperimentTokens.lj));
                sb.append("'");
            }
            sb.append(")");
        }
        else {
            sb.append("null");
        }
    }
    
    private static void oR(final StringBuilder sb, final String s, final int[] array) {
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
    
    private static void oS(final StringBuilder sb, final String s, final byte[] array) {
        sb.append(s);
        sb.append("=");
        if (array != null) {
            sb.append("'");
            sb.append(new String(array, ExperimentTokens.lj));
            sb.append("'");
        }
        else {
            sb.append("null");
        }
    }
    
    private static List oT(final byte[][] array) {
        if (array != null) {
            final ArrayList<Comparable> list = new ArrayList<Comparable>(array.length);
            for (int length = array.length, i = 0; i < length; ++i) {
                list.add(new String(array[i], ExperimentTokens.lj));
            }
            Collections.sort(list);
            return list;
        }
        return null;
    }
    
    private static List oU(final int[] array) {
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
            if (this.lm == experimentTokens.lm && u.hH(this.lw, experimentTokens.lw) && Arrays.equals(this.lq, experimentTokens.lq) && u.hH(oT(this.lx), oT(experimentTokens.lx)) && u.hH(oT(this.lv), oT(experimentTokens.lv)) && u.hH(oT(this.lr), oT(experimentTokens.lr)) && u.hH(oT(this.ll), oT(experimentTokens.ll)) && u.hH(oU(this.ln), oU(experimentTokens.ln)) && u.hH(oT(this.li), oT(experimentTokens.li))) {
                b = true;
            }
            return b;
        }
        return false;
    }
    
    public String toString() {
        final StringBuilder sb = new StringBuilder("ExperimentTokens");
        sb.append("(");
        sb.append(this.lm);
        sb.append(", ");
        String string;
        if (this.lw != null) {
            final String value = String.valueOf("'");
            final String lw = this.lw;
            final String value2 = String.valueOf("'");
            string = new StringBuilder(String.valueOf(value).length() + 0 + String.valueOf(lw).length() + String.valueOf(value2).length()).append(value).append(lw).append(value2).toString();
        }
        else {
            string = "null";
        }
        sb.append(string);
        sb.append(", ");
        oS(sb, "direct", this.lq);
        sb.append(", ");
        oQ(sb, "GAIA", this.lx);
        sb.append(", ");
        oQ(sb, "PSEUDO", this.lv);
        sb.append(", ");
        oQ(sb, "ALWAYS", this.lr);
        sb.append(", ");
        oQ(sb, "OTHER", this.ll);
        sb.append(", ");
        oR(sb, "weak", this.ln);
        sb.append(", ");
        oQ(sb, "directs", this.li);
        sb.append(")");
        return sb.toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        q.pr(this, parcel, n);
    }
}
