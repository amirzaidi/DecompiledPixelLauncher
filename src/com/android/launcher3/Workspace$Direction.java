// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.util.Property;

public enum Workspace$Direction
{
    X("X", 0, Workspace.TRANSLATION_X), 
    Y("Y", n, Workspace.TRANSLATION_Y);
    
    private final Property viewProperty;
    
    static {
        final int n = 1;
        final Workspace$Direction[] $values = { Workspace$Direction.X, null };
        $values[n] = Workspace$Direction.Y;
        $VALUES = $values;
    }
    
    private Workspace$Direction(final String s, final int n, final Property viewProperty) {
        this.viewProperty = viewProperty;
    }
}
