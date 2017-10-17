// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher;

import android.app.Fragment;
import android.os.Bundle;

public class SettingsActivity extends com.android.launcher3.SettingsActivity
{
    protected void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        this.getFragmentManager().beginTransaction().replace(16908290, (Fragment)new a()).commit();
    }
}
