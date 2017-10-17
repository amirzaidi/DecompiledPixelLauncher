// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.provider.Settings$Secure;
import android.os.Handler;
import android.content.ContentResolver;
import android.preference.Preference;
import android.database.ContentObserver;

class SettingsActivity$IconBadgingObserver extends ContentObserver
{
    private final Preference mBadgingPref;
    private final ContentResolver mResolver;
    
    public SettingsActivity$IconBadgingObserver(final Preference mBadgingPref, final ContentResolver mResolver) {
        super(new Handler());
        this.mBadgingPref = mBadgingPref;
        this.mResolver = mResolver;
    }
    
    public void onChange(final boolean b) {
        int n = 1;
        if (Settings$Secure.getInt(this.mResolver, "notification_badging", n) != n) {
            n = 0;
        }
        final Preference mBadgingPref = this.mBadgingPref;
        int summary;
        if (n != 0) {
            summary = 2131492950;
        }
        else {
            summary = 2131492951;
        }
        mBadgingPref.setSummary(summary);
    }
}
