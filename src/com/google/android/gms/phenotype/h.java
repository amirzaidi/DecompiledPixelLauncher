// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.phenotype;

import java.util.Comparator;

public class h implements Comparator
{
    public int Dc(final Flag flag, final Flag flag2) {
        if (flag.yD != flag2.yD) {
            return flag.yD - flag2.yD;
        }
        return flag.name.compareTo(flag2.name);
    }
}
