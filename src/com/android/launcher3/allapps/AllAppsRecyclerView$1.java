// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.allapps;

import android.util.Property;

final class AllAppsRecyclerView$1 extends Property
{
    AllAppsRecyclerView$1(final Class clazz, final String s) {
        super(clazz, s);
    }
    
    public Float get(final AllAppsRecyclerView allAppsRecyclerView) {
        return allAppsRecyclerView.getContentTranslationY();
    }
    
    public void set(final AllAppsRecyclerView allAppsRecyclerView, final Float n) {
        allAppsRecyclerView.setContentTranslationY(n);
    }
}
