// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.phenotype;

import android.os.Parcel;
import java.util.Iterator;
import com.google.android.gms.common.internal.u;
import java.util.TreeMap;
import java.util.Map;
import java.nio.charset.Charset;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class Configurations extends AbstractSafeParcelable
{
    public static final Parcelable$Creator CREATOR;
    private static final Charset lz;
    public final Configuration[] lA;
    public final Map lB;
    public final String lC;
    public final boolean lD;
    final int lE;
    public final String ly;
    
    static {
        lz = Charset.forName("UTF-8");
        CREATOR = (Parcelable$Creator)new r();
    }
    
    Configurations(final int le, final String ly, final String lc, final Configuration[] la, final boolean ld) {
        this.lE = le;
        this.ly = ly;
        this.lC = lc;
        this.lA = la;
        this.lD = ld;
        this.lB = new TreeMap();
        for (int length = la.length, i = 0; i < length; ++i) {
            final Configuration configuration = la[i];
            this.lB.put(configuration.lK, configuration);
        }
    }
    
    public boolean equals(final Object o) {
        boolean b = false;
        if (o != null && o instanceof Configurations) {
            final Configurations configurations = (Configurations)o;
            if (this.lE == configurations.lE && u.hH(this.ly, configurations.ly) && u.hH(this.lC, configurations.lC) && u.hH(this.lB, configurations.lB) && this.lD == configurations.lD) {
                b = true;
            }
            return b;
        }
        return false;
    }
    
    public String toString() {
        final char c = ')';
        final char c2 = '\'';
        final StringBuilder sb = new StringBuilder("Configurations(");
        sb.append(this.lE);
        sb.append(", ");
        sb.append(c2);
        sb.append(this.ly);
        sb.append(c2);
        sb.append(", ");
        sb.append(c2);
        sb.append(this.lC);
        sb.append(c2);
        sb.append(", ");
        sb.append('(');
        final Iterator<Configuration> iterator = this.lB.values().iterator();
        while (iterator.hasNext()) {
            sb.append(iterator.next());
            sb.append(", ");
        }
        sb.append(c);
        sb.append(", ");
        sb.append(this.lD);
        sb.append(c);
        return sb.toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        r.pu(this, parcel, n);
    }
}
