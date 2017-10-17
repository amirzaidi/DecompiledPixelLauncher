// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.server.converter;

import android.os.Parcel;
import com.google.android.gms.common.server.response.e;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class ConverterWrapper extends AbstractSafeParcelable
{
    public static final b CREATOR;
    private final StringToIntConverter ld;
    private final int le;
    
    static {
        CREATOR = new b();
    }
    
    ConverterWrapper(final int le, final StringToIntConverter ld) {
        this.le = le;
        this.ld = ld;
    }
    
    private ConverterWrapper(final StringToIntConverter ld) {
        this.le = 1;
        this.ld = ld;
    }
    
    public static ConverterWrapper od(final e e) {
        if (!(e instanceof StringToIntConverter)) {
            throw new IllegalArgumentException("Unsupported safe parcelable field converter class.");
        }
        return new ConverterWrapper((StringToIntConverter)e);
    }
    
    StringToIntConverter oc() {
        return this.ld;
    }
    
    int oe() {
        return this.le;
    }
    
    public e of() {
        if (this.ld == null) {
            throw new IllegalStateException("There was no converter wrapped in this ConverterWrapper.");
        }
        return this.ld;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final b creator = ConverterWrapper.CREATOR;
        b.oh(this, parcel, n);
    }
}
