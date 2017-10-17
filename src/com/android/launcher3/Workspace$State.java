// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

public enum Workspace$State
{
    NORMAL("NORMAL", 0, false, false, 1), 
    NORMAL_HIDDEN("NORMAL_HIDDEN", 1, false, false, 4), 
    OVERVIEW("OVERVIEW", 3, true, true, 6), 
    OVERVIEW_HIDDEN("OVERVIEW_HIDDEN", 4, true, false, 5), 
    SPRING_LOADED("SPRING_LOADED", 2, false, true, 1);
    
    public final int containerType;
    public final boolean hasMultipleVisiblePages;
    public final boolean shouldUpdateWidget;
    
    private Workspace$State(final String s, final int n, final boolean shouldUpdateWidget, final boolean hasMultipleVisiblePages, final int containerType) {
        this.shouldUpdateWidget = shouldUpdateWidget;
        this.hasMultipleVisiblePages = hasMultipleVisiblePages;
        this.containerType = containerType;
    }
}
