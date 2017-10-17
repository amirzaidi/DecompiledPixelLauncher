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
    private final ArrayList gE;
    private final int gF;
    
    static {
        CREATOR = (Parcelable$Creator)new j();
    }
    
    BeaconStateImpl(final int gf, final ArrayList ge) {
        this.gF = gf;
        this.gE = ge;
    }
    
    ArrayList fV() {
        return this.gE;
    }
    
    int fW() {
        return this.gF;
    }
    
    public String toString() {
        if (this.gE != null && !this.gE.isEmpty()) {
            final StringBuilder sb = new StringBuilder();
            sb.append("BeaconState: ");
            final Iterator<a> iterator = (Iterator<a>)this.gE.iterator();
            while (iterator.hasNext()) {
                sb.append(iterator.next());
            }
            return sb.toString();
        }
        return "BeaconState: empty";
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        j.fx(this, parcel, n);
    }
}
