// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.stats;

import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public abstract class StatsEvent extends AbstractSafeParcelable implements ReflectedParcelable
{
    public abstract String lE();
    
    public abstract long lI();
    
    public abstract int lJ();
    
    public abstract long lN();
    
    public String toString() {
        final long li = this.lI();
        final String value = String.valueOf("\t");
        final int lj = this.lJ();
        final String value2 = String.valueOf("\t");
        final long ln = this.lN();
        final String value3 = String.valueOf(this.lE());
        return new StringBuilder(String.valueOf(value).length() + 51 + String.valueOf(value2).length() + String.valueOf(value3).length()).append(li).append(value).append(lj).append(value2).append(ln).append(value3).toString();
    }
}
