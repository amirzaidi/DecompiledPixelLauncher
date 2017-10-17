// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.server.converter;

import android.os.Parcel;
import java.util.Iterator;
import android.util.SparseArray;
import java.util.ArrayList;
import java.util.HashMap;
import com.google.android.gms.common.server.response.e;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public final class StringToIntConverter extends AbstractSafeParcelable implements e
{
    public static final a CREATOR;
    private final HashMap ih;
    private final ArrayList ii;
    private final int ij;
    private final SparseArray ik;
    
    static {
        CREATOR = new a();
    }
    
    public StringToIntConverter() {
        this.ij = 1;
        this.ih = new HashMap();
        this.ik = new SparseArray();
        this.ii = null;
    }
    
    StringToIntConverter(final int ij, final ArrayList list) {
        this.ij = ij;
        this.ih = new HashMap();
        this.ik = new SparseArray();
        this.ii = null;
        this.lg(list);
    }
    
    private void lg(final ArrayList list) {
        for (final StringToIntConverter$Entry stringToIntConverter$Entry : list) {
            this.li(stringToIntConverter$Entry.if, stringToIntConverter$Entry.ig);
        }
    }
    
    public String lh(final Integer n) {
        final String s = (String)this.ik.get((int)n);
        if (s == null && this.ih.containsKey("gms_unknown")) {
            return "gms_unknown";
        }
        return s;
    }
    
    public StringToIntConverter li(final String s, final int n) {
        this.ih.put(s, n);
        this.ik.put(n, (Object)s);
        return this;
    }
    
    ArrayList lj() {
        final ArrayList<StringToIntConverter$Entry> list = new ArrayList<StringToIntConverter$Entry>();
        for (final String s : this.ih.keySet()) {
            list.add(new StringToIntConverter$Entry(s, (int)this.ih.get(s)));
        }
        return list;
    }
    
    int lk() {
        return this.ij;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final a creator = StringToIntConverter.CREATOR;
        a.ll(this, parcel, n);
    }
}
