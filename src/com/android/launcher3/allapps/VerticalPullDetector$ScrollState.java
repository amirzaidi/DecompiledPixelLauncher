// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.allapps;

enum VerticalPullDetector$ScrollState
{
    DRAGGING("DRAGGING", n2), 
    IDLE("IDLE", 0), 
    SETTLING("SETTLING", n);
    
    static {
        final int n = 2;
        final int n2 = 1;
        final VerticalPullDetector$ScrollState[] $values = { VerticalPullDetector$ScrollState.IDLE, null, null };
        $values[n2] = VerticalPullDetector$ScrollState.DRAGGING;
        $values[n] = VerticalPullDetector$ScrollState.SETTLING;
        $VALUES = $values;
    }
    
    private VerticalPullDetector$ScrollState(final String s, final int n) {
    }
}
