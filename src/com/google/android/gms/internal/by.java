// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import java.util.Iterator;
import java.util.Map;
import java.util.Collections;
import java.util.WeakHashMap;
import java.util.Set;

public class by
{
    private final Set uQ;
    
    public by() {
        this.uQ = Collections.newSetFromMap(new WeakHashMap<Object, Boolean>());
    }
    
    public void zQ() {
        final Iterator<c> iterator = this.uQ.iterator();
        while (iterator.hasNext()) {
            iterator.next().clear();
        }
        this.uQ.clear();
    }
}
