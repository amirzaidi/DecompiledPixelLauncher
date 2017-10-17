// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.allapps.search;

import java.text.Collator;

public class DefaultAppSearchAlgorithm$StringMatcher
{
    private final Collator mCollator;
    
    DefaultAppSearchAlgorithm$StringMatcher() {
        (this.mCollator = Collator.getInstance()).setStrength(0);
        this.mCollator.setDecomposition(1);
    }
    
    public static DefaultAppSearchAlgorithm$StringMatcher getInstance() {
        return new DefaultAppSearchAlgorithm$StringMatcher();
    }
    
    public boolean matches(final String s, final String s2) {
        boolean b = true;
        switch (this.mCollator.compare(s, s2)) {
            default: {
                return false;
            }
            case 0: {
                return b;
            }
            case -1: {
                if (this.mCollator.compare(s + (char)(-1), s2) <= -1) {
                    b = false;
                }
                return b;
            }
        }
    }
}
