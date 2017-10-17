// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable$Creator;

class k implements Parcelable$Creator
{
    public BinderWrapper hm(final Parcel parcel) {
        return new BinderWrapper(parcel, null);
    }
    
    public BinderWrapper[] hn(final int n) {
        return new BinderWrapper[n];
    }
}
