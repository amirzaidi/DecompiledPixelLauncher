// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.clearcut;

import java.util.TimeZone;

public class c
{
    public long MA(final long n) {
        return TimeZone.getDefault().getOffset(n) / 1000;
    }
}
