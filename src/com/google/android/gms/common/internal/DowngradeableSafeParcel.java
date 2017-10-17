// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.internal;

import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public abstract class DowngradeableSafeParcel extends AbstractSafeParcelable implements ReflectedParcelable
{
    private static ClassLoader fq;
    private static Integer fr;
    private static final Object fs;
    private boolean ft;
    
    static {
        fs = new Object();
        DowngradeableSafeParcel.fq = null;
        DowngradeableSafeParcel.fr = null;
    }
    
    public DowngradeableSafeParcel() {
        this.ft = false;
    }
}
