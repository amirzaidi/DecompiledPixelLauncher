// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.images;

import com.google.android.gms.common.internal.u;
import android.net.Uri;

final class f
{
    public final Uri jB;
    
    public f(final Uri jb) {
        this.jB = jb;
    }
    
    public boolean equals(final Object o) {
        return o instanceof f && (this == o || u.hH(((f)o).jB, this.jB));
    }
    
    public int hashCode() {
        return u.hI(this.jB);
    }
}
