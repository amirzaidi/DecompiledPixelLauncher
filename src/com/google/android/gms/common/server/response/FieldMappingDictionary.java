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
    private final HashMap kS;
    private final int kT;
    private final ArrayList kU;
    private final String kV;
    
    static {
        CREATOR = new c();
    }
    
    FieldMappingDictionary(final int kt, final ArrayList list, final String s) {
        this.kT = kt;
        this.kU = null;
        this.kS = nF(list);
        this.kV = (String)l.kh(s);
        this.nE();
    }
    
    private static HashMap nF(final ArrayList list) {
        final HashMap<String, HashMap> hashMap = new HashMap<String, HashMap>();
        for (int size = list.size(), i = 0; i < size; ++i) {
            final FieldMappingDictionary$Entry fieldMappingDictionary$Entry = list.get(i);
            hashMap.put(fieldMappingDictionary$Entry.kJ, fieldMappingDictionary$Entry.ni());
        }
        return hashMap;
    }
    
    public void nE() {
        final Iterator<String> iterator = this.kS.keySet().iterator();
        while (iterator.hasNext()) {
            final Map<String, V> map = this.kS.get(iterator.next());
            final Iterator<String> iterator2 = map.keySet().iterator();
            while (iterator2.hasNext()) {
                ((FastJsonResponse$Field)map.get(iterator2.next())).na(this);
            }
        }
    }
    
    int nG() {
        return this.kT;
    }
    
    ArrayList nH() {
        final ArrayList<FieldMappingDictionary$Entry> list = new ArrayList<FieldMappingDictionary$Entry>();
        for (final String s : this.kS.keySet()) {
            list.add(new FieldMappingDictionary$Entry(s, (Map)this.kS.get(s)));
        }
        return list;
    }
    
    public Map nI(final String s) {
        return this.kS.get(s);
    }
    
    public String nJ() {
        return this.kV;
    }
    
    public String toString() {
        final StringBuilder sb = new StringBuilder();
        for (final String s : this.kS.keySet()) {
            sb.append(s).append(":\n");
            final Map<String, V> map = this.kS.get(s);
            for (final String s2 : map.keySet()) {
                sb.append("  ").append(s2).append(": ");
                sb.append(map.get(s2));
            }
        }
        return sb.toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final c creator = FieldMappingDictionary.CREATOR;
        c.nB(this, parcel, n);
    }
}
