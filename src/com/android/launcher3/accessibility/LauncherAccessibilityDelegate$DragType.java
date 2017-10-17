// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.accessibility;

public enum LauncherAccessibilityDelegate$DragType
{
    FOLDER("FOLDER", n2), 
    ICON("ICON", 0), 
    WIDGET("WIDGET", n);
    
    static {
        final int n = 2;
        final int n2 = 1;
        final LauncherAccessibilityDelegate$DragType[] $values = { LauncherAccessibilityDelegate$DragType.ICON, null, null };
        $values[n2] = LauncherAccessibilityDelegate$DragType.FOLDER;
        $values[n] = LauncherAccessibilityDelegate$DragType.WIDGET;
        $VALUES = $values;
    }
    
    private LauncherAccessibilityDelegate$DragType(final String s, final int n) {
    }
}
