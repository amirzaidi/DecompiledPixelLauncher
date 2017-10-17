// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import java.io.IOException;

public class zzaxp$zza extends IOException
{
    zzaxp$zza(final int n, final int n2) {
        super(new StringBuilder(108).append("CodedOutputStream was writing to a flat byte array and ran out of space (pos ").append(n).append(" limit ").append(n2).append(").").toString());
    }
}
