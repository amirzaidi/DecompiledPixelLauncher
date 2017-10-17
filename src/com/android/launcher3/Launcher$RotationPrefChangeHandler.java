// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.content.SharedPreferences;
import android.content.SharedPreferences$OnSharedPreferenceChangeListener;

class Launcher$RotationPrefChangeHandler implements SharedPreferences$OnSharedPreferenceChangeListener
{
    final /* synthetic */ Launcher this$0;
    
    private Launcher$RotationPrefChangeHandler(final Launcher this$0) {
        this.this$0 = this$0;
    }
    
    public void onSharedPreferenceChanged(final SharedPreferences sharedPreferences, final String s) {
        if ("pref_allowRotation".equals(s)) {
            this.this$0.recreate();
        }
    }
}
