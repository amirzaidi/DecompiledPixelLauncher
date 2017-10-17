// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.images;

import com.google.android.gms.common.internal.u;
import android.net.Uri;

final class f
{
    public final Uri mt;
    
    public f(final Uri mt) {
        this.mt = mt;
    }
    
    public boolean equals(final Object o) {
        return o instanceof f && (this == o || u.kv(((f)o).mt, this.mt));
    }
    
    public int hashCode() {
        return u.kw(this.mt);
    }
}
