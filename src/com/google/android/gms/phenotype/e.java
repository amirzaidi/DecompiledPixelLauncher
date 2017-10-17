// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.phenotype;

import java.util.Comparator;

public class e implements Comparator
{
    public int pd(final Flag flag, final Flag flag2) {
        if (flag.kZ != flag2.kZ) {
            return flag.kZ - flag2.kZ;
        }
        return flag.name.compareTo(flag2.name);
    }
}
