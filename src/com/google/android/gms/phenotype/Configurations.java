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
    private static final Charset xY;
    public final String xX;
    public final Configuration[] xZ;
    public final Map ya;
    public final String yb;
    public final boolean yc;
    final int yd;
    
    static {
        xY = Charset.forName("UTF-8");
        CREATOR = (Parcelable$Creator)new q();
    }
    
    Configurations(final int yd, final String xx, final String yb, final Configuration[] xz, final boolean yc) {
        this.yd = yd;
        this.xX = xx;
        this.yb = yb;
        this.xZ = xz;
        this.yc = yc;
        this.ya = new TreeMap();
        for (int length = xz.length, i = 0; i < length; ++i) {
            final Configuration configuration = xz[i];
            this.ya.put(configuration.xS, configuration);
        }
    }
    
    public boolean equals(final Object o) {
        boolean b = false;
        if (o != null && o instanceof Configurations) {
            final Configurations configurations = (Configurations)o;
            if (this.yd == configurations.yd && u.kv(this.xX, configurations.xX) && u.kv(this.yb, configurations.yb) && u.kv(this.ya, configurations.ya) && this.yc == configurations.yc) {
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
        sb.append(this.yd);
        sb.append(", ");
        sb.append(c2);
        sb.append(this.xX);
        sb.append(c2);
        sb.append(", ");
        sb.append(c2);
        sb.append(this.yb);
        sb.append(c2);
        sb.append(", ");
        sb.append('(');
        final Iterator<Configuration> iterator = this.ya.values().iterator();
        while (iterator.hasNext()) {
            sb.append(iterator.next());
            sb.append(", ");
        }
        sb.append(c);
        sb.append(", ");
        sb.append(this.yc);
        sb.append(c);
        return sb.toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        q.Do(this, parcel, n);
    }
}
