// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.server.response;

import android.os.Parcel;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.ArrayList;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class FieldMappingDictionary$Entry extends AbstractSafeParcelable
{
    public static final d CREATOR;
    final int kI;
    final String kJ;
    final ArrayList kK;
    
    static {
        CREATOR = new d();
    }
    
    FieldMappingDictionary$Entry(final int ki, final String kj, final ArrayList kk) {
        this.kI = ki;
        this.kJ = kj;
        this.kK = kk;
    }
    
    FieldMappingDictionary$Entry(final String kj, final Map map) {
        this.kI = 1;
        this.kJ = kj;
        this.kK = nj(map);
    }
    
    private static ArrayList nj(final Map map) {
        if (map != null) {
            final ArrayList<FieldMappingDictionary$FieldMapPair> list = new ArrayList<FieldMappingDictionary$FieldMapPair>();
            for (final String s : map.keySet()) {
                list.add(new FieldMappingDictionary$FieldMapPair(s, (FastJsonResponse$Field)map.get(s)));
            }
            return list;
        }
        return null;
    }
    
    HashMap ni() {
        final HashMap<String, FastJsonResponse$Field> hashMap = new HashMap<String, FastJsonResponse$Field>();
        for (int size = this.kK.size(), i = 0; i < size; ++i) {
            final FieldMappingDictionary$FieldMapPair fieldMappingDictionary$FieldMapPair = this.kK.get(i);
            hashMap.put(fieldMappingDictionary$FieldMapPair.kw, fieldMappingDictionary$FieldMapPair.kv);
        }
        return hashMap;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final d creator = FieldMappingDictionary$Entry.CREATOR;
        d.nC(this, parcel, n);
    }
}
