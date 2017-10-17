// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.preference.Preference;
import android.content.ComponentName;
import com.android.launcher3.notification.NotificationListener;
import android.provider.Settings$Secure;
import android.os.Handler;
import android.content.ContentResolver;
import android.app.FragmentManager;
import com.android.launcher3.views.ButtonPreference;
import android.preference.Preference$OnPreferenceClickListener;
import android.database.ContentObserver;

class SettingsActivity$IconBadgingObserver extends ContentObserver implements Preference$OnPreferenceClickListener
{
    private final ButtonPreference mBadgingPref;
    private final FragmentManager mFragmentManager;
    private final ContentResolver mResolver;
    
    public SettingsActivity$IconBadgingObserver(final ButtonPreference mBadgingPref, final ContentResolver mResolver, final FragmentManager mFragmentManager) {
        super(new Handler());
        this.mBadgingPref = mBadgingPref;
        this.mResolver = mResolver;
        this.mFragmentManager = mFragmentManager;
    }
    
    public void onChange(final boolean b) {
        int contains = 1;
        int n;
        if (Settings$Secure.getInt(this.mResolver, "notification_badging", contains) == contains) {
            n = contains;
        }
        else {
            n = 0;
        }
        int summary;
        if (n != 0) {
            summary = 2131492952;
        }
        else {
            summary = 2131492953;
        }
        if (n != 0) {
            final String string = Settings$Secure.getString(this.mResolver, "enabled_notification_listeners");
            final ComponentName componentName = new ComponentName(this.mBadgingPref.getContext(), (Class)NotificationListener.class);
            if (string != null) {
                if (!string.contains(componentName.flattenToString())) {
                    contains = (string.contains(componentName.flattenToShortString()) ? 1 : 0);
                }
            }
            else {
                contains = 0;
            }
            if (contains == 0) {
                summary = 2131492954;
            }
        }
        this.mBadgingPref.setWidgetFrameVisible((contains ^ 0x1) != 0x0);
        final ButtonPreference mBadgingPref = this.mBadgingPref;
        Object onPreferenceClickListener;
        if (contains != 0) {
            onPreferenceClickListener = null;
        }
        else {
            onPreferenceClickListener = this;
        }
        mBadgingPref.setOnPreferenceClickListener((Preference$OnPreferenceClickListener)onPreferenceClickListener);
        this.mBadgingPref.setSummary(summary);
    }
    
    public boolean onPreferenceClick(final Preference preference) {
        new SettingsActivity$NotificationAccessConfirmation().show(this.mFragmentManager, "notification_access");
        return true;
    }
}
