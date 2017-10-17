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
    private final StringToIntConverter il;
    private final int im;
    
    static {
        CREATOR = new b();
    }
    
    ConverterWrapper(final int im, final StringToIntConverter il) {
        this.im = im;
        this.il = il;
    }
    
    private ConverterWrapper(final StringToIntConverter il) {
        this.im = 1;
        this.il = il;
    }
    
    public static ConverterWrapper lp(final e e) {
        if (!(e instanceof StringToIntConverter)) {
            throw new IllegalArgumentException("Unsupported safe parcelable field converter class.");
        }
        return new ConverterWrapper((StringToIntConverter)e);
    }
    
    StringToIntConverter lo() {
        return this.il;
    }
    
    int lq() {
        return this.im;
    }
    
    public e lr() {
        if (this.il == null) {
            throw new IllegalStateException("There was no converter wrapped in this ConverterWrapper.");
        }
        return this.il;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final b creator = ConverterWrapper.CREATOR;
        b.lt(this, parcel, n);
    }
}
