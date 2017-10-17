// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.contextmanager.fence.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Iterator;
import com.google.android.gms.common.internal.safeparcel.c;
import java.util.HashMap;
import android.os.Bundle;
import java.util.Map;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class FenceStateMapImpl extends AbstractSafeParcelable
{
    public static final Parcelable$Creator CREATOR;
    public final Map HT;
    private final int HU;
    
    static {
        CREATOR = (Parcelable$Creator)new b();
    }
    
    FenceStateMapImpl(final int hu, final Bundle bundle) {
        this.HU = hu;
        this.HT = new HashMap();
        if (bundle != null) {
            for (final String s : bundle.keySet()) {
                this.HT.put(s, c.gk(bundle.getByteArray(s), FenceStateImpl.CREATOR));
            }
        }
    }
    
    Bundle NC() {
        if (this.HT != null) {
            final Bundle bundle = new Bundle();
            for (final Map.Entry<String, V> entry : this.HT.entrySet()) {
                bundle.putByteArray((String)entry.getKey(), c.gl((SafeParcelable)entry.getValue()));
            }
            return bundle;
        }
        return null;
    }
    
    int ND() {
        return this.HU;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        b.NH(this, parcel, n);
    }
}
