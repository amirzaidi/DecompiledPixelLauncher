// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.awareness.snapshot.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.u;
import java.util.Iterator;
import java.util.ArrayList;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class SnapshotRequest extends AbstractSafeParcelable
{
    public static final Parcelable$Creator CREATOR;
    private static final int[] ga;
    private final ArrayList fZ;
    private final int gb;
    private final int gc;
    
    static {
        ga = new int[] { 10002, 10003, 10004, 10005, 10006, 10007, 10008 };
        CREATOR = (Parcelable$Creator)new c();
    }
    
    SnapshotRequest(final int gb, final int gc, final ArrayList fz) {
        this.gb = gb;
        this.gc = gc;
        this.fZ = fz;
    }
    
    public boolean equals(final Object o) {
        final boolean b = true;
        if (this == o) {
            return b;
        }
        if (!(o instanceof SnapshotRequest)) {
            return false;
        }
        final SnapshotRequest snapshotRequest = (SnapshotRequest)o;
        if (this.gc != snapshotRequest.fc()) {
            return false;
        }
        if (!((this.fZ == null && b) ^ (snapshotRequest.fa() == null && b))) {
            if (this.fZ != null) {
                if (this.fZ.size() != snapshotRequest.fa().size()) {
                    return false;
                }
                final Iterator<BeaconStateImpl$TypeFilterImpl> iterator = this.fZ.iterator();
                while (iterator.hasNext()) {
                    if (!snapshotRequest.fa().contains(iterator.next())) {
                        return false;
                    }
                }
            }
            return b;
        }
        return false;
    }
    
    public ArrayList fa() {
        return this.fZ;
    }
    
    int fb() {
        return this.gb;
    }
    
    public int fc() {
        return this.gc;
    }
    
    public int hashCode() {
        int n;
        if (this.fZ == null) {
            n = 0;
        }
        else {
            final Iterator<BeaconStateImpl$TypeFilterImpl> iterator = this.fZ.iterator();
            n = 0;
            while (iterator.hasNext()) {
                n += iterator.next().hashCode() * 13;
            }
        }
        return u.kw(this.gc, n);
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        c.eI(this, parcel, n);
    }
}
