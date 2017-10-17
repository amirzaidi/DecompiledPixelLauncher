// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.awareness.snapshot.internal;

import android.os.Parcel;
import java.util.Iterator;
import com.google.android.gms.awareness.state.a;
import java.util.ArrayList;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public final class BeaconStateImpl extends AbstractSafeParcelable
{
    public static final Parcelable$Creator CREATOR;
    private final ArrayList nh;
    private final int ni;
    
    static {
        CREATOR = (Parcelable$Creator)new j();
    }
    
    BeaconStateImpl(final int ni, final ArrayList nh) {
        this.ni = ni;
        this.nh = nh;
    }
    
    ArrayList rb() {
        return this.nh;
    }
    
    int rc() {
        return this.ni;
    }
    
    public String toString() {
        if (this.nh != null && !this.nh.isEmpty()) {
            final StringBuilder sb = new StringBuilder();
            sb.append("BeaconState: ");
            final Iterator<a> iterator = (Iterator<a>)this.nh.iterator();
            while (iterator.hasNext()) {
                sb.append(iterator.next());
            }
            return sb.toString();
        }
        return "BeaconState: empty";
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        j.qF(this, parcel, n);
    }
}
