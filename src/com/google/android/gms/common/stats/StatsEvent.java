// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.stats;

import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public abstract class StatsEvent extends AbstractSafeParcelable implements ReflectedParcelable
{
    public abstract long oB();
    
    public abstract String os();
    
    public abstract long ow();
    
    public abstract int ox();
    
    public String toString() {
        final long ow = this.ow();
        final String value = String.valueOf("\t");
        final int ox = this.ox();
        final String value2 = String.valueOf("\t");
        final long ob = this.oB();
        final String value3 = String.valueOf(this.os());
        return new StringBuilder(String.valueOf(value).length() + 51 + String.valueOf(value2).length() + String.valueOf(value3).length()).append(ow).append(value).append(ox).append(value2).append(ob).append(value3).toString();
    }
}
