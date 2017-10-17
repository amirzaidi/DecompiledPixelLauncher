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
    public final Map Jy;
    private final int Jz;
    
    static {
        CREATOR = (Parcelable$Creator)new b();
    }
    
    FenceStateMapImpl(final int jz, final Bundle bundle) {
        this.Jz = jz;
        this.Jy = new HashMap();
        if (bundle != null) {
            for (final String s : bundle.keySet()) {
                this.Jy.put(s, c.iY(bundle.getByteArray(s), FenceStateImpl.CREATOR));
            }
        }
    }
    
    Bundle Ov() {
        if (this.Jy != null) {
            final Bundle bundle = new Bundle();
            for (final Map.Entry<String, V> entry : this.Jy.entrySet()) {
                bundle.putByteArray((String)entry.getKey(), c.iZ((SafeParcelable)entry.getValue()));
            }
            return bundle;
        }
        return null;
    }
    
    int Ow() {
        return this.Jz;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        b.OA(this, parcel, n);
    }
}
