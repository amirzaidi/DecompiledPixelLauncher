// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.internal;

import com.google.android.gms.location.b;
import android.location.Location;
import com.google.android.gms.common.api.d;
import com.google.android.gms.location.a;

public class p implements a
{
    public Location FK(final d d) {
        final com.google.android.gms.location.internal.a gb = b.GB(d);
        try {
            return gb.ER();
        }
        catch (Exception ex) {
            return null;
        }
    }
}
