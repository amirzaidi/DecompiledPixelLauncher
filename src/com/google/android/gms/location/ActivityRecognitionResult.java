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
    Bundle DS;
    private final int DT;
    List DU;
    long DV;
    int DW;
    long DX;
    
    static {
        CREATOR = new v();
    }
    
    public ActivityRecognitionResult(final int dt, final List du, final long dx, final long dv, final int dw, final Bundle ds) {
        this.DT = dt;
        this.DU = du;
        this.DX = dx;
        this.DV = dv;
        this.DW = dw;
        this.DS = ds;
    }
    
    private static boolean HD(final Bundle bundle, final Bundle bundle2) {
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
                        if (!HD(bundle.getBundle(s), bundle2.getBundle(s))) {
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
    
    public int HC() {
        return this.DT;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (o != null && this.getClass() == o.getClass()) {
            final ActivityRecognitionResult activityRecognitionResult = (ActivityRecognitionResult)o;
            if (this.DX != activityRecognitionResult.DX || this.DV != activityRecognitionResult.DV || this.DW != activityRecognitionResult.DW || !u.kv(this.DU, activityRecognitionResult.DU) || HD(this.DS, activityRecognitionResult.DS)) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        return u.kw(this.DX, this.DV, this.DW, this.DU, this.DS);
    }
    
    public String toString() {
        final String value = String.valueOf(this.DU);
        return new StringBuilder(String.valueOf(value).length() + 124).append("ActivityRecognitionResult [probableActivities=").append(value).append(", timeMillis=").append(this.DX).append(", elapsedRealtimeMillis=").append(this.DV).append("]").toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        v.Jd(this, parcel, n);
    }
}
