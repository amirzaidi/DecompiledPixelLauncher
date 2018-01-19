// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher;

import android.content.Context;
import com.android.launcher3.Utilities;
import java.util.List;
import com.google.android.libraries.a.a.d;
import com.android.launcher3.LauncherExterns;
import com.android.launcher3.Launcher;

public class NexusLauncherActivity extends Launcher
{
    final c gz;
    
    public NexusLauncherActivity() {
        this.gz = new c(this, this);
    }
    
    public d ff() {
        return this.gz.gA;
    }
    
    public boolean fg() {
        return this.gz.gB.fa();
    }
    
    public void fh() {
        this.gz.gA.DM(true);
    }
    
    public List getPredictedApps() {
        return this.gz.gC.getPredictedApps();
    }
    
    public void overrideTheme(final boolean b, final boolean b2) {
        boolean b3 = false;
        final int int1 = Utilities.getDevicePrefs((Context)this).getInt("pref_persistent_flags", 0);
        int n;
        if (this.getResources().getConfiguration().orientation == 2) {
            n = 16;
        }
        else {
            n = 8;
        }
        if ((n & int1) != 0x0) {
            b3 = true;
        }
        if (b3 && b) {
            this.setTheme(2131886099);
        }
        else if (b3 && b2) {
            this.setTheme(2131886100);
        }
        else if (b3) {
            this.setTheme(2131886098);
        }
        else {
            super.overrideTheme(b, b2);
        }
    }
}
