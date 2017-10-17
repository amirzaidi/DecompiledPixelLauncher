// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location;

import android.os.Parcel;
import com.google.android.gms.common.internal.u;
import java.util.Iterator;
import java.util.List;
import android.os.Bundle;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class ActivityRecognitionResult extends AbstractSafeParcelable implements ReflectedParcelable
{
    public static final v CREATOR;
    Bundle Cn;
    private final int Co;
    List Cp;
    long Cq;
    int Cr;
    long Cs;
    
    static {
        CREATOR = new v();
    }
    
    public ActivityRecognitionResult(final int co, final List cp, final long cs, final long cq, final int cr, final Bundle cn) {
        this.Co = co;
        this.Cp = cp;
        this.Cs = cs;
        this.Cq = cq;
        this.Cr = cr;
        this.Cn = cn;
    }
    
    private static boolean GK(final Bundle bundle, final Bundle bundle2) {
        final boolean b = true;
        if (bundle == null && bundle2 == null) {
            return b;
        }
        if ((bundle == null && bundle2 != null) || (bundle != null && bundle2 == null)) {
            return false;
        }
        if (bundle.size() == bundle2.size()) {
            for (final String s : bundle.keySet()) {
                if (!bundle2.containsKey(s)) {
                    return false;
                }
                if (bundle.get(s) != null) {
                    if (!(bundle.get(s) instanceof Bundle)) {
                        if (!bundle.get(s).equals(bundle2.get(s))) {
                            return false;
                        }
                        continue;
                    }
                    else {
                        if (!GK(bundle.getBundle(s), bundle2.getBundle(s))) {
                            return false;
                        }
                        continue;
                    }
                }
                else {
                    if (bundle2.get(s) != null) {
                        return false;
                    }
                    continue;
                }
            }
            return b;
        }
        return false;
    }
    
    public int GJ() {
        return this.Co;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (o != null && this.getClass() == o.getClass()) {
            final ActivityRecognitionResult activityRecognitionResult = (ActivityRecognitionResult)o;
            if (this.Cs != activityRecognitionResult.Cs || this.Cq != activityRecognitionResult.Cq || this.Cr != activityRecognitionResult.Cr || !u.hH(this.Cp, activityRecognitionResult.Cp) || GK(this.Cn, activityRecognitionResult.Cn)) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        return u.hI(this.Cs, this.Cq, this.Cr, this.Cp, this.Cn);
    }
    
    public String toString() {
        final String value = String.valueOf(this.Cp);
        return new StringBuilder(String.valueOf(value).length() + 124).append("ActivityRecognitionResult [probableActivities=").append(value).append(", timeMillis=").append(this.Cs).append(", elapsedRealtimeMillis=").append(this.Cq).append("]").toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        v.Ik(this, parcel, n);
    }
}
