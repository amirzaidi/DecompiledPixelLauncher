// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.places;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;
import java.util.List;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public abstract class AbstractPlaceFilter extends AbstractSafeParcelable
{
    static Set Ei(final List list) {
        if (list != null && !list.isEmpty()) {
            return Collections.unmodifiableSet((Set<?>)new HashSet<Object>(list));
        }
        return Collections.emptySet();
    }
    
    static List Ej(final Collection collection) {
        if (collection != null && !collection.isEmpty()) {
            return new ArrayList(collection);
        }
        return Collections.emptyList();
    }
}
