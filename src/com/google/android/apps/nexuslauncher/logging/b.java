// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.logging;

import android.content.SharedPreferences;
import com.android.launcher3.util.ComponentKey;
import android.text.TextUtils;
import java.util.Collections;
import com.android.launcher3.Utilities;
import java.util.ArrayList;
import android.content.Context;
import java.util.List;
import android.content.SharedPreferences$OnSharedPreferenceChangeListener;

class b implements SharedPreferences$OnSharedPreferenceChangeListener
{
    boolean gr;
    List mApps;
    private final Context mContext;
    
    b(final Context mContext) {
        this.mApps = new ArrayList();
        this.mContext = mContext;
        Utilities.getPrefs(this.mContext).registerOnSharedPreferenceChangeListener((SharedPreferences$OnSharedPreferenceChangeListener)this);
        com.google.android.apps.nexuslauncher.reflection.b.aL(this.mContext).registerOnSharedPreferenceChangeListener((SharedPreferences$OnSharedPreferenceChangeListener)this);
        if (this.eZ()) {
            this.eY();
        }
    }
    
    private void eY() {
        if (!this.gr) {
            this.mApps = Collections.emptyList();
            return;
        }
        final String string = com.google.android.apps.nexuslauncher.reflection.b.aL(this.mContext).getString("reflection_last_predictions", (String)null);
        if (TextUtils.isEmpty((CharSequence)string)) {
            this.mApps = Collections.emptyList();
            return;
        }
        final ArrayList<ComponentKey> mApps = new ArrayList<ComponentKey>();
        final String[] split = string.split(";");
        for (int i = 0; i < split.length; ++i) {
            mApps.add(new ComponentKey(this.mContext, split[i]));
        }
        this.mApps = mApps;
    }
    
    private boolean eZ() {
        return this.gr = Utilities.getPrefs(this.mContext).getBoolean("pref_show_predictions", true);
    }
    
    public void onSharedPreferenceChanged(final SharedPreferences sharedPreferences, final String s) {
        if ("pref_show_predictions".equals(s)) {
            this.eZ();
            this.eY();
        }
        if (this.gr && "reflection_last_predictions".equals(s)) {
            this.eY();
        }
    }
}
