// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher;

import android.view.View;
import android.webkit.WebViewClient;
import android.webkit.WebView;
import com.google.android.apps.nexuslauncher.reflection.l;
import android.preference.Preference;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager$NameNotFoundException;
import android.util.Log;
import android.content.Context;
import com.google.android.apps.nexuslauncher.qsb.b;
import android.preference.SwitchPreference;
import android.os.Bundle;
import android.content.DialogInterface$OnClickListener;
import android.app.AlertDialog$Builder;
import android.preference.TwoStatePreference;
import android.preference.Preference$OnPreferenceClickListener;
import android.preference.Preference$OnPreferenceChangeListener;
import com.android.launcher3.SettingsActivity$LauncherSettingsFragment;

public class a extends SettingsActivity$LauncherSettingsFragment implements Preference$OnPreferenceChangeListener, Preference$OnPreferenceClickListener
{
    private void cR(final TwoStatePreference twoStatePreference) {
        new AlertDialog$Builder(this.getContext()).setTitle(2131493003).setMessage(2131493004).setNegativeButton(17039360, (DialogInterface$OnClickListener)null).setPositiveButton(2131493005, (DialogInterface$OnClickListener)new f(this, twoStatePreference)).show();
    }
    
    public void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        ((SwitchPreference)this.findPreference((CharSequence)"pref_show_predictions")).setOnPreferenceChangeListener((Preference$OnPreferenceChangeListener)this);
        this.findPreference((CharSequence)"pref_enable_minus_one").setTitle((CharSequence)b.f((Context)this.getActivity()));
        final String s = "";
        try {
            final Context context = this.getContext();
            try {
                final PackageManager packageManager = context.getPackageManager();
                try {
                    final Context context2 = this.getContext();
                    try {
                        final PackageInfo packageInfo = packageManager.getPackageInfo(context2.getPackageName(), 0);
                        try {
                            final String versionName = packageInfo.versionName;
                            this.findPreference((CharSequence)"about_app_version").setSummary((CharSequence)versionName);
                            this.findPreference((CharSequence)"open_source_licenses").setOnPreferenceClickListener((Preference$OnPreferenceClickListener)this);
                        }
                        catch (PackageManager$NameNotFoundException ex) {
                            Log.e("SettingsActivity", "Unable to load my own package info", (Throwable)ex);
                            final String versionName = s;
                        }
                    }
                    catch (PackageManager$NameNotFoundException ex2) {}
                }
                catch (PackageManager$NameNotFoundException ex3) {}
            }
            catch (PackageManager$NameNotFoundException ex4) {}
        }
        catch (PackageManager$NameNotFoundException ex5) {}
    }
    
    public boolean onPreferenceChange(final Preference preference, final Object o) {
        final boolean b = true;
        if (!"pref_show_predictions".equals(preference.getKey())) {
            return false;
        }
        if (o) {
            l.getInstance(this.getContext()).cq(b);
            return b;
        }
        this.cR((TwoStatePreference)preference);
        return false;
    }
    
    public boolean onPreferenceClick(final Preference preference) {
        final boolean builtInZoomControls = true;
        if (!"open_source_licenses".equals(preference.getKey())) {
            return false;
        }
        final WebView view = new WebView((Context)this.getActivity());
        view.setWebViewClient(new WebViewClient());
        view.getSettings().setBuiltInZoomControls(builtInZoomControls);
        view.loadUrl("file:///android_res/raw/license.html");
        new AlertDialog$Builder((Context)this.getActivity()).setTitle(2131493018).setView((View)view).show();
        return builtInZoomControls;
    }
    
    public void onResume() {
        super.onResume();
        this.findPreference((CharSequence)"pref_enable_minus_one").setEnabled(com.google.android.apps.nexuslauncher.util.a.cB(this.getContext()));
    }
}
