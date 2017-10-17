// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.provider.Settings$System;
import android.os.Handler;
import android.preference.Preference;
import android.content.ContentResolver;
import android.database.ContentObserver;

class SettingsActivity$SystemDisplayRotationLockObserver extends ContentObserver
{
    private final ContentResolver mResolver;
    private final Preference mRotationPref;
    
    public SettingsActivity$SystemDisplayRotationLockObserver(final Preference mRotationPref, final ContentResolver mResolver) {
        super(new Handler());
        this.mRotationPref = mRotationPref;
        this.mResolver = mResolver;
    }
    
    public void onChange(final boolean b) {
        int enabled = 1;
        if (Settings$System.getInt(this.mResolver, "accelerometer_rotation", enabled) != enabled) {
            enabled = 0;
        }
        this.mRotationPref.setEnabled((boolean)(enabled != 0));
        final Preference mRotationPref = this.mRotationPref;
        int summary;
        if (enabled != 0) {
            summary = 2131492949;
        }
        else {
            summary = 2131492950;
        }
        mRotationPref.setSummary(summary);
    }
}
