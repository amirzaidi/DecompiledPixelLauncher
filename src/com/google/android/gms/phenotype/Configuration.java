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
    public final int xS;
    public final Flag[] xT;
    final int xU;
    public final String[] xV;
    public final Map xW;
    
    static {
        CREATOR = (Parcelable$Creator)new m();
    }
    
    Configuration(final int xu, final int xs, final Flag[] xt, final String[] xv) {
        this.xU = xu;
        this.xS = xs;
        this.xT = xt;
        this.xW = new TreeMap();
        for (int length = xt.length, i = 0; i < length; ++i) {
            final Flag flag = xt[i];
            this.xW.put(flag.name, flag);
        }
        this.xV = xv;
        if (this.xV != null) {
            Arrays.sort(this.xV);
        }
    }
    
    public int CM(final Configuration configuration) {
        return this.xS - configuration.xS;
    }
    
    public boolean equals(final Object o) {
        boolean b = false;
        if (o != null && o instanceof Configuration) {
            final Configuration configuration = (Configuration)o;
            if (this.xU == configuration.xU && this.xS == configuration.xS && u.kv(this.xW, configuration.xW) && Arrays.equals(this.xV, configuration.xV)) {
                b = true;
            }
            return b;
        }
        return false;
    }
    
    public String toString() {
        final StringBuilder sb = new StringBuilder("Configuration(");
        sb.append(this.xU);
        sb.append(", ");
        sb.append(this.xS);
        sb.append(", ");
        sb.append("(");
        final Iterator<Flag> iterator = this.xW.values().iterator();
        while (iterator.hasNext()) {
            sb.append(iterator.next());
            sb.append(", ");
        }
        sb.append(")");
        sb.append(", ");
        sb.append("(");
        if (this.xV == null) {
            sb.append("null");
        }
        else {
            final String[] xv = this.xV;
            for (int length = xv.length, i = 0; i < length; ++i) {
                sb.append(xv[i]);
                sb.append(", ");
            }
        }
        sb.append(")");
        sb.append(")");
        return sb.toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        m.Dh(this, parcel, n);
    }
}
