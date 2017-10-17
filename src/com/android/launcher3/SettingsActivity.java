// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.app.Fragment;
import android.os.Bundle;
import android.app.Activity;

public class SettingsActivity extends Activity
{
    protected void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            this.getFragmentManager().beginTransaction().replace(16908290, (Fragment)new SettingsActivity$LauncherSettingsFragment()).commit();
        }
    }
}
