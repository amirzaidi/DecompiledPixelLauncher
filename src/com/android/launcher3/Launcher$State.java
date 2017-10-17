// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

enum Launcher$State
{
    APPS("APPS", n2), 
    APPS_SPRING_LOADED("APPS_SPRING_LOADED", n), 
    NONE("NONE", 0), 
    WIDGETS("WIDGETS", 5), 
    WIDGETS_SPRING_LOADED("WIDGETS_SPRING_LOADED", 6), 
    WORKSPACE("WORKSPACE", n4), 
    WORKSPACE_SPRING_LOADED("WORKSPACE_SPRING_LOADED", n3);
    
    static {
        final int n = 4;
        final int n2 = 3;
        final int n3 = 2;
        final int n4 = 1;
        final Launcher$State[] $values = new Launcher$State[7];
        $values[0] = Launcher$State.NONE;
        $values[n4] = Launcher$State.WORKSPACE;
        $values[n3] = Launcher$State.WORKSPACE_SPRING_LOADED;
        $values[n2] = Launcher$State.APPS;
        $values[n] = Launcher$State.APPS_SPRING_LOADED;
        $values[5] = Launcher$State.WIDGETS;
        $values[6] = Launcher$State.WIDGETS_SPRING_LOADED;
        $VALUES = $values;
    }
    
    private Launcher$State(final String s, final int n) {
    }
}
