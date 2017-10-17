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
    final int hQ;
    final String hR;
    final ArrayList hS;
    
    static {
        CREATOR = new d();
    }
    
    FieldMappingDictionary$Entry(final int hq, final String hr, final ArrayList hs) {
        this.hQ = hq;
        this.hR = hr;
        this.hS = hs;
    }
    
    FieldMappingDictionary$Entry(final String hr, final Map map) {
        this.hQ = 1;
        this.hR = hr;
        this.hS = kv(map);
    }
    
    private static ArrayList kv(final Map map) {
        if (map != null) {
            final ArrayList<FieldMappingDictionary$FieldMapPair> list = new ArrayList<FieldMappingDictionary$FieldMapPair>();
            for (final String s : map.keySet()) {
                list.add(new FieldMappingDictionary$FieldMapPair(s, (FastJsonResponse$Field)map.get(s)));
            }
            return list;
        }
        return null;
    }
    
    HashMap ku() {
        final HashMap<String, FastJsonResponse$Field> hashMap = new HashMap<String, FastJsonResponse$Field>();
        for (int size = this.hS.size(), i = 0; i < size; ++i) {
            final FieldMappingDictionary$FieldMapPair fieldMappingDictionary$FieldMapPair = this.hS.get(i);
            hashMap.put(fieldMappingDictionary$FieldMapPair.hE, fieldMappingDictionary$FieldMapPair.hD);
        }
        return hashMap;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final d creator = FieldMappingDictionary$Entry.CREATOR;
        d.kO(this, parcel, n);
    }
}
