// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.content.ContentResolver;
import android.preference.ListPreference;
import com.android.launcher3.graphics.IconShapeOverride;
import android.provider.Settings$Secure;
import android.preference.Preference;
import com.android.launcher3.views.ButtonPreference;
import android.content.Context;
import android.database.ContentObserver;
import android.provider.Settings$System;
import android.os.Bundle;
import android.preference.PreferenceFragment;

public class SettingsActivity$LauncherSettingsFragment extends PreferenceFragment
{
    private SettingsActivity$IconBadgingObserver mIconBadgingObserver;
    private SettingsActivity$SystemDisplayRotationLockObserver mRotationLockObserver;
    
    public void onCreate(final Bundle bundle) {
        final boolean b = true;
        super.onCreate(bundle);
        this.getPreferenceManager().setSharedPreferencesName("com.android.launcher3.prefs");
        this.addPreferencesFromResource(2131230735);
        final ContentResolver contentResolver = this.getActivity().getContentResolver();
        final Preference preference = this.findPreference((CharSequence)"pref_allowRotation");
        if (this.getResources().getBoolean(2131689477)) {
            this.getPreferenceScreen().removePreference(preference);
        }
        else {
            this.mRotationLockObserver = new SettingsActivity$SystemDisplayRotationLockObserver(preference, contentResolver);
            contentResolver.registerContentObserver(Settings$System.getUriFor("accelerometer_rotation"), false, (ContentObserver)this.mRotationLockObserver);
            this.mRotationLockObserver.onChange(b);
            preference.setDefaultValue((Object)Utilities.getAllowRotationDefaultValue((Context)this.getActivity()));
        }
        final ButtonPreference buttonPreference = (ButtonPreference)this.findPreference((CharSequence)"pref_icon_badging");
        if (!Utilities.isAtLeastO()) {
            this.getPreferenceScreen().removePreference(this.findPreference((CharSequence)"pref_add_icon_to_home"));
            this.getPreferenceScreen().removePreference((Preference)buttonPreference);
        }
        else {
            this.mIconBadgingObserver = new SettingsActivity$IconBadgingObserver(buttonPreference, contentResolver, this.getFragmentManager());
            contentResolver.registerContentObserver(Settings$Secure.getUriFor("notification_badging"), false, (ContentObserver)this.mIconBadgingObserver);
            contentResolver.registerContentObserver(Settings$Secure.getUriFor("enabled_notification_listeners"), false, (ContentObserver)this.mIconBadgingObserver);
            this.mIconBadgingObserver.onChange(b);
        }
        final Preference preference2 = this.findPreference((CharSequence)"pref_override_icon_shape");
        if (preference2 != null) {
            if (IconShapeOverride.isSupported((Context)this.getActivity())) {
                IconShapeOverride.handlePreferenceUi((ListPreference)preference2);
            }
            else {
                this.getPreferenceScreen().removePreference(preference2);
            }
        }
    }
    
    public void onDestroy() {
        if (this.mRotationLockObserver != null) {
            this.getActivity().getContentResolver().unregisterContentObserver((ContentObserver)this.mRotationLockObserver);
            this.mRotationLockObserver = null;
        }
        if (this.mIconBadgingObserver != null) {
            this.getActivity().getContentResolver().unregisterContentObserver((ContentObserver)this.mIconBadgingObserver);
            this.mIconBadgingObserver = null;
        }
        super.onDestroy();
    }
}
