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
    private final HashMap kZ;
    private final ArrayList la;
    private final int lb;
    private final SparseArray lc;
    
    static {
        CREATOR = new a();
    }
    
    public StringToIntConverter() {
        this.lb = 1;
        this.kZ = new HashMap();
        this.lc = new SparseArray();
        this.la = null;
    }
    
    StringToIntConverter(final int lb, final ArrayList list) {
        this.lb = lb;
        this.kZ = new HashMap();
        this.lc = new SparseArray();
        this.la = null;
        this.nU(list);
    }
    
    private void nU(final ArrayList list) {
        for (final StringToIntConverter$Entry stringToIntConverter$Entry : list) {
            this.nW(stringToIntConverter$Entry.kX, stringToIntConverter$Entry.kY);
        }
    }
    
    public String nV(final Integer n) {
        final String s = (String)this.lc.get((int)n);
        if (s == null && this.kZ.containsKey("gms_unknown")) {
            return "gms_unknown";
        }
        return s;
    }
    
    public StringToIntConverter nW(final String s, final int n) {
        this.kZ.put(s, n);
        this.lc.put(n, (Object)s);
        return this;
    }
    
    ArrayList nX() {
        final ArrayList<StringToIntConverter$Entry> list = new ArrayList<StringToIntConverter$Entry>();
        for (final String s : this.kZ.keySet()) {
            list.add(new StringToIntConverter$Entry(s, (int)this.kZ.get(s)));
        }
        return list;
    }
    
    int nY() {
        return this.lb;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final a creator = StringToIntConverter.CREATOR;
        a.nZ(this, parcel, n);
    }
}
