// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.internal;

import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public abstract class DowngradeableSafeParcel extends AbstractSafeParcelable implements ReflectedParcelable
{
    private static ClassLoader ii;
    private static Integer ij;
    private static final Object ik;
    private boolean il;
    
    static {
        ik = new Object();
        DowngradeableSafeParcel.ii = null;
        DowngradeableSafeParcel.ij = null;
    }
    
    public DowngradeableSafeParcel() {
        this.il = false;
    }
}
