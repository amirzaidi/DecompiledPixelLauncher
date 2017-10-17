// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.internal;

import com.google.android.gms.location.b;
import android.location.Location;
import com.google.android.gms.location.a;

public class p implements a
{
    public Location GD(final com.google.android.gms.common.api.a a) {
        final com.google.android.gms.location.internal.a hu = b.Hu(a);
        try {
            return hu.FK();
        }
        catch (Exception ex) {
            return null;
        }
    }
}
