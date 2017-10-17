// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location;

import android.os.Parcel;
import java.util.Iterator;
import android.location.Location;
import java.util.Collections;
import java.util.List;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public final class LocationResult extends AbstractSafeParcelable implements ReflectedParcelable
{
    public static final Parcelable$Creator CREATOR;
    static final List Eo;
    private final List Em;
    private final int En;
    
    static {
        Eo = Collections.emptyList();
        CREATOR = (Parcelable$Creator)new t();
    }
    
    LocationResult(final int en, final List em) {
        this.En = en;
        this.Em = em;
    }
    
    public List HW() {
        return this.Em;
    }
    
    int HX() {
        return this.En;
    }
    
    public boolean equals(final Object o) {
        if (!(o instanceof LocationResult)) {
            return false;
        }
        final LocationResult locationResult = (LocationResult)o;
        if (locationResult.Em.size() == this.Em.size()) {
            final Iterator iterator = locationResult.Em.iterator();
            final Iterator<Location> iterator2 = this.Em.iterator();
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
        final Iterator<Location> iterator = (Iterator<Location>)this.Em.iterator();
        int n2 = n;
        while (iterator.hasNext()) {
            final long time = iterator.next().getTime();
            n2 = (int)(time ^ time >>> 32) + n2 * 31;
        }
        return n2;
    }
    
    public String toString() {
        final String value = String.valueOf(this.Em);
        return new StringBuilder(String.valueOf(value).length() + 27).append("LocationResult[locations: ").append(value).append("]").toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        t.Ja(this, parcel, n);
    }
}
