// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.server.response;

import android.os.Parcel;
import java.util.Iterator;
import java.util.Map;
import com.google.android.gms.common.internal.l;
import java.util.ArrayList;
import java.util.HashMap;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class FieldMappingDictionary extends AbstractSafeParcelable
{
    public static final c CREATOR;
    private final HashMap ia;
    private final int ib;
    private final ArrayList ic;
    private final String id;
    
    static {
        CREATOR = new c();
    }
    
    FieldMappingDictionary(final int ib, final ArrayList list, final String s) {
        this.ib = ib;
        this.ic = null;
        this.ia = kS(list);
        this.id = (String)l.ht(s);
        this.kR();
    }
    
    private static HashMap kS(final ArrayList list) {
        final HashMap<String, HashMap> hashMap = new HashMap<String, HashMap>();
        for (int size = list.size(), i = 0; i < size; ++i) {
            final FieldMappingDictionary$Entry fieldMappingDictionary$Entry = list.get(i);
            hashMap.put(fieldMappingDictionary$Entry.hR, fieldMappingDictionary$Entry.ku());
        }
        return hashMap;
    }
    
    public void kR() {
        final Iterator<String> iterator = this.ia.keySet().iterator();
        while (iterator.hasNext()) {
            final Map<String, V> map = this.ia.get(iterator.next());
            final Iterator<String> iterator2 = map.keySet().iterator();
            while (iterator2.hasNext()) {
                ((FastJsonResponse$Field)map.get(iterator2.next())).km(this);
            }
        }
    }
    
    int kT() {
        return this.ib;
    }
    
    ArrayList kU() {
        final ArrayList<FieldMappingDictionary$Entry> list = new ArrayList<FieldMappingDictionary$Entry>();
        for (final String s : this.ia.keySet()) {
            list.add(new FieldMappingDictionary$Entry(s, (Map)this.ia.get(s)));
        }
        return list;
    }
    
    public Map kV(final String s) {
        return this.ia.get(s);
    }
    
    public String kW() {
        return this.id;
    }
    
    public String toString() {
        final StringBuilder sb = new StringBuilder();
        for (final String s : this.ia.keySet()) {
            sb.append(s).append(":\n");
            final Map<String, V> map = this.ia.get(s);
            for (final String s2 : map.keySet()) {
                sb.append("  ").append(s2).append(": ");
                sb.append(map.get(s2));
            }
        }
        return sb.toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final c creator = FieldMappingDictionary.CREATOR;
        c.kN(this, parcel, n);
    }
}
