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
    private static final int[] mD;
    private final ArrayList mC;
    private final int mE;
    private final int mF;
    
    static {
        mD = new int[] { 10002, 10003, 10004, 10005, 10006, 10007, 10008 };
        CREATOR = (Parcelable$Creator)new c();
    }
    
    SnapshotRequest(final int me, final int mf, final ArrayList mc) {
        this.mE = me;
        this.mF = mf;
        this.mC = mc;
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
        if (this.mF != snapshotRequest.qf()) {
            return false;
        }
        if (!((this.mC == null && b) ^ (snapshotRequest.qd() == null && b))) {
            if (this.mC != null) {
                if (this.mC.size() != snapshotRequest.qd().size()) {
                    return false;
                }
                final Iterator<BeaconStateImpl$TypeFilterImpl> iterator = this.mC.iterator();
                while (iterator.hasNext()) {
                    if (!snapshotRequest.qd().contains(iterator.next())) {
                        return false;
                    }
                }
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        int n;
        if (this.mC == null) {
            n = 0;
        }
        else {
            final Iterator<BeaconStateImpl$TypeFilterImpl> iterator = this.mC.iterator();
            n = 0;
            while (iterator.hasNext()) {
                n += iterator.next().hashCode() * 13;
            }
        }
        return u.hI(this.mF, n);
    }
    
    public ArrayList qd() {
        return this.mC;
    }
    
    int qe() {
        return this.mE;
    }
    
    public int qf() {
        return this.mF;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        c.pO(this, parcel, n);
    }
}
