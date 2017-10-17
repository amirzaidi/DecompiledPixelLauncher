// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher;

import com.google.android.apps.nexuslauncher.a.b;
import android.app.Fragment;
import com.google.android.apps.nexuslauncher.reflection.c;
import android.preference.PreferenceScreen;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager$NameNotFoundException;
import android.util.Log;
import android.preference.Preference;
import com.google.android.apps.nexuslauncher.smartspace.f;
import android.content.Context;
import com.google.android.apps.nexuslauncher.qsb.a;
import android.preference.SwitchPreference;
import android.os.Bundle;
import android.preference.Preference$OnPreferenceClickListener;
import android.preference.Preference$OnPreferenceChangeListener;
import com.android.launcher3.SettingsActivity$LauncherSettingsFragment;

public class SettingsActivity$MySettingsFragment extends SettingsActivity$LauncherSettingsFragment implements Preference$OnPreferenceChangeListener, Preference$OnPreferenceClickListener
{
    public void onCreate(final Bundle bundle) {
        while (true) {
            super.onCreate(bundle);
            ((SwitchPreference)this.findPreference((CharSequence)"pref_show_predictions")).setOnPreferenceChangeListener((Preference$OnPreferenceChangeListener)this);
            this.findPreference((CharSequence)"pref_enable_minus_one").setTitle((CharSequence)a.br((Context)this.getActivity()));
            Object o = "";
            try {
                final Context context = this.getContext();
                try {
                    final PackageManager packageManager = context.getPackageManager();
                    try {
                        final Context context2 = this.getContext();
                        try {
                            final PackageInfo packageInfo = packageManager.getPackageInfo(context2.getPackageName(), 0);
                            try {
                                final Object versionName = packageInfo.versionName;
                                o = this.findPreference((CharSequence)"about_app_version");
                                ((Preference)o).setSummary((CharSequence)versionName);
                                if (f.get((Context)this.getActivity()).cY() ^ true) {
                                    final PreferenceScreen preferenceScreen = this.getPreferenceScreen();
                                    o = this.findPreference((CharSequence)"pref_smartspace");
                                    preferenceScreen.removePreference((Preference)o);
                                    return;
                                }
                            }
                            catch (PackageManager$NameNotFoundException ex) {
                                Log.e("SettingsActivity", "Unable to load my own package info", (Throwable)ex);
                                final Object versionName = o;
                            }
                        }
                        catch (PackageManager$NameNotFoundException ex2) {}
                    }
                    catch (PackageManager$NameNotFoundException ex3) {}
                }
                catch (PackageManager$NameNotFoundException ex4) {}
            }
            catch (PackageManager$NameNotFoundException ex5) {}
            this.findPreference((CharSequence)"pref_smartspace").setOnPreferenceClickListener((Preference$OnPreferenceClickListener)this);
        }
    }
    
    public boolean onPreferenceChange(final Preference preference, final Object o) {
        final boolean b = true;
        if (!"pref_show_predictions".equals(preference.getKey())) {
            return false;
        }
        if (o) {
            c.getInstance(this.getContext()).aD(b);
            return b;
        }
        final SettingsActivity$SuggestionConfirmationFragment settingsActivity$SuggestionConfirmationFragment = new SettingsActivity$SuggestionConfirmationFragment();
        settingsActivity$SuggestionConfirmationFragment.setTargetFragment((Fragment)this, 0);
        settingsActivity$SuggestionConfirmationFragment.show(this.getFragmentManager(), preference.getKey());
        return false;
    }
    
    public boolean onPreferenceClick(final Preference preference) {
        if ("pref_smartspace".equals(preference.getKey())) {
            f.get(this.getContext()).cZ();
            return true;
        }
        return false;
    }
    
    public void onResume() {
        super.onResume();
        this.findPreference((CharSequence)"pref_enable_minus_one").setEnabled(b.dz(this.getContext()));
    }
}
