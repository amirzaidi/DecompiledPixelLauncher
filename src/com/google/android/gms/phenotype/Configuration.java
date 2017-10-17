// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.phenotype;

import android.os.Parcel;
import java.util.Iterator;
import com.google.android.gms.common.internal.u;
import java.util.Arrays;
import java.util.TreeMap;
import java.util.Map;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class Configuration extends AbstractSafeParcelable implements Comparable
{
    public static final Parcelable$Creator CREATOR;
    public final int lK;
    public final Flag[] lL;
    final int lM;
    public final String[] lN;
    public final Map lO;
    
    static {
        CREATOR = (Parcelable$Creator)new n();
    }
    
    Configuration(final int lm, final int lk, final Flag[] ll, final String[] ln) {
        this.lM = lm;
        this.lK = lk;
        this.lL = ll;
        this.lO = new TreeMap();
        for (int length = ll.length, i = 0; i < length; ++i) {
            final Flag flag = ll[i];
            this.lO.put(flag.name, flag);
        }
        this.lN = ln;
        if (this.lN != null) {
            Arrays.sort(this.lN);
        }
    }
    
    public boolean equals(final Object o) {
        boolean b = false;
        if (o != null && o instanceof Configuration) {
            final Configuration configuration = (Configuration)o;
            if (this.lM == configuration.lM && this.lK == configuration.lK && u.hH(this.lO, configuration.lO) && Arrays.equals(this.lN, configuration.lN)) {
                b = true;
            }
            return b;
        }
        return false;
    }
    
    public int pc(final Configuration configuration) {
        return this.lK - configuration.lK;
    }
    
    public String toString() {
        final StringBuilder sb = new StringBuilder("Configuration(");
        sb.append(this.lM);
        sb.append(", ");
        sb.append(this.lK);
        sb.append(", ");
        sb.append("(");
        final Iterator<Flag> iterator = this.lO.values().iterator();
        while (iterator.hasNext()) {
            sb.append(iterator.next());
            sb.append(", ");
        }
        sb.append(")");
        sb.append(", ");
        sb.append("(");
        if (this.lN == null) {
            sb.append("null");
        }
        else {
            final String[] ln = this.lN;
            for (int length = ln.length, i = 0; i < length; ++i) {
                sb.append(ln[i]);
                sb.append(", ");
            }
        }
        sb.append(")");
        sb.append(")");
        return sb.toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        n.pn(this, parcel, n);
    }
}
