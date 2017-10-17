// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.util;

import java.util.Iterator;
import java.util.Collection;
import java.util.Map;
import java.util.ArrayList;
import java.util.HashMap;

public class MultiHashMap extends HashMap
{
    public MultiHashMap() {
    }
    
    public MultiHashMap(final int n) {
        super(n);
    }
    
    public void addToList(final Object o, final Object o2) {
        final ArrayList<Object> list = this.get(o);
        if (list == null) {
            final ArrayList<Object> list2 = new ArrayList<Object>();
            list2.add(o2);
            this.put(o, list2);
        }
        else {
            list.add(o2);
        }
    }
    
    public MultiHashMap clone() {
        final MultiHashMap multiHashMap = new MultiHashMap(this.size());
        for (final Map.Entry<Object, Object> entry : this.entrySet()) {
            multiHashMap.put(entry.getKey(), new ArrayList(entry.getValue()));
        }
        return multiHashMap;
    }
}
