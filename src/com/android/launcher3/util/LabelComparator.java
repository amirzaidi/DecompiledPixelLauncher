// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.util;

import java.text.Collator;
import java.util.Comparator;

public class LabelComparator implements Comparator
{
    private final Collator mCollator;
    
    public LabelComparator() {
        this.mCollator = Collator.getInstance();
    }
    
    public int compare(final String s, final String s2) {
        boolean letterOrDigit = false;
        final boolean b = s.length() > 0 && Character.isLetterOrDigit(s.codePointAt(0));
        if (s2.length() > 0) {
            letterOrDigit = Character.isLetterOrDigit(s2.codePointAt(0));
        }
        if (b && (letterOrDigit ^ true)) {
            return -1;
        }
        if (!b && letterOrDigit) {
            return 1;
        }
        return this.mCollator.compare(s, s2);
    }
}
