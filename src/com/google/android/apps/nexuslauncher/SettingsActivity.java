// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher;

import android.app.DialogFragment;
import android.content.Context;
import android.preference.Preference;
import android.preference.PreferenceFragment;
import android.app.Fragment;
import android.os.Bundle;
import android.preference.PreferenceFragment$OnPreferenceStartFragmentCallback;

public class SettingsActivity extends com.android.launcher3.SettingsActivity implements PreferenceFragment$OnPreferenceStartFragmentCallback
{
    protected void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            this.getFragmentManager().beginTransaction().replace(16908290, (Fragment)new SettingsActivity$MySettingsFragment()).commit();
        }
    }
    
    public boolean onPreferenceStartFragment(final PreferenceFragment preferenceFragment, final Preference preference) {
        final Fragment instantiate = Fragment.instantiate((Context)this, preference.getFragment(), preference.getExtras());
        if (instantiate instanceof DialogFragment) {
            ((DialogFragment)instantiate).show(this.getFragmentManager(), preference.getKey());
        }
        else {
            this.getFragmentManager().beginTransaction().replace(16908290, instantiate).addToBackStack(preference.getKey()).commit();
        }
        return true;
    }
}
