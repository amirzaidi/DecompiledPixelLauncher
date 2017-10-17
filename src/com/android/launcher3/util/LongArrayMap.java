// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.util;

import java.util.Iterator;
import android.util.LongSparseArray;

public class LongArrayMap extends LongSparseArray implements Iterable
{
    public LongArrayMap clone() {
        return (LongArrayMap)super.clone();
    }
    
    public boolean containsKey(final long n) {
        boolean b = false;
        if (this.indexOfKey(n) >= 0) {
            b = true;
        }
        return b;
    }
    
    public Iterator iterator() {
        return new LongArrayMap$ValueIterator(this);
    }
}
