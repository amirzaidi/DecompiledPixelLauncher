// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher;

import com.android.launcher3.LauncherCallbacks;
import com.google.android.apps.nexuslauncher.reflection.l;
import com.android.launcher3.LauncherExterns;
import android.app.Activity;
import com.google.android.libraries.a.a.c;

public class d
{
    c dE;
    com.google.android.apps.nexuslauncher.c dF;
    private final Activity dG;
    private boolean dH;
    private final LauncherExterns dI;
    private l dJ;
    private boolean dK;
    private boolean mStarted;
    
    public d(final Activity dg, final LauncherExterns di) {
        this.dG = dg;
        (this.dI = di).setLauncherCallbacks(new e(this, null));
    }
}
