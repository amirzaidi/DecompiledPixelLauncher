// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.server.response;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class FieldMappingDictionary$FieldMapPair extends AbstractSafeParcelable
{
    public static final a CREATOR;
    final int ku;
    final FastJsonResponse$Field kv;
    final String kw;
    
    static {
        CREATOR = new a();
    }
    
    FieldMappingDictionary$FieldMapPair(final int ku, final String kw, final FastJsonResponse$Field kv) {
        this.ku = ku;
        this.kw = kw;
        this.kv = kv;
    }
    
    FieldMappingDictionary$FieldMapPair(final String kw, final FastJsonResponse$Field kv) {
        this.ku = 1;
        this.kw = kw;
        this.kv = kv;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final a creator = FieldMappingDictionary$FieldMapPair.CREATOR;
        a.nk(this, parcel, n);
    }
}
