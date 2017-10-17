// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location;

import android.os.Parcel;
import java.util.Iterator;
import android.location.Location;
import java.util.Collections;
import android.os.Parcelable$Creator;
import java.util.List;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public final class LocationResult extends AbstractSafeParcelable implements ReflectedParcelable
{
    static final List CJ;
    public static final Parcelable$Creator CREATOR;
    private final List CH;
    private final int CI;
    
    static {
        CJ = Collections.emptyList();
        CREATOR = (Parcelable$Creator)new t();
    }
    
    LocationResult(final int ci, final List ch) {
        this.CI = ci;
        this.CH = ch;
    }
    
    public List Hd() {
        return this.CH;
    }
    
    int He() {
        return this.CI;
    }
    
    public boolean equals(final Object o) {
        if (!(o instanceof LocationResult)) {
            return false;
        }
        final LocationResult locationResult = (LocationResult)o;
        if (locationResult.CH.size() == this.CH.size()) {
            final Iterator iterator = locationResult.CH.iterator();
            final Iterator<Location> iterator2 = this.CH.iterator();
            while (iterator.hasNext()) {
                if (iterator2.next().getTime() != iterator.next().getTime()) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }
    
    public int hashCode() {
        final int n = 17;
        final Iterator<Location> iterator = (Iterator<Location>)this.CH.iterator();
        int n2 = n;
        while (iterator.hasNext()) {
            final long time = iterator.next().getTime();
            n2 = (int)(time ^ time >>> 32) + n2 * 31;
        }
        return n2;
    }
    
    public String toString() {
        final String value = String.valueOf(this.CH);
        return new StringBuilder(String.valueOf(value).length() + 27).append("LocationResult[locations: ").append(value).append("]").toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        t.Ih(this, parcel, n);
    }
}
