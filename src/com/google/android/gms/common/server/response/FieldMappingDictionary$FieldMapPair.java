// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.server.response;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class FieldMappingDictionary$FieldMapPair extends AbstractSafeParcelable
{
    public static final a CREATOR;
    final int hC;
    final FastJsonResponse$Field hD;
    final String hE;
    
    static {
        CREATOR = new a();
    }
    
    FieldMappingDictionary$FieldMapPair(final int hc, final String he, final FastJsonResponse$Field hd) {
        this.hC = hc;
        this.hE = he;
        this.hD = hd;
    }
    
    FieldMappingDictionary$FieldMapPair(final String he, final FastJsonResponse$Field hd) {
        this.hC = 1;
        this.hE = he;
        this.hD = hd;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final a creator = FieldMappingDictionary$FieldMapPair.CREATOR;
        a.kw(this, parcel, n);
    }
}
