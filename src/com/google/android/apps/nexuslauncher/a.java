// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher;

import com.google.android.libraries.a.a.f;
import android.content.SharedPreferences;
import com.google.android.libraries.a.a.d;
import com.google.android.apps.nexuslauncher.reflection.c;
import com.android.launcher3.LauncherExterns;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherCallbacks;

public class a
{
    final LauncherCallbacks fA;
    private final Launcher fB;
    private boolean fC;
    private final LauncherExterns fD;
    com.google.android.apps.nexuslauncher.search.a fE;
    private c fF;
    private boolean fG;
    d fy;
    com.google.android.apps.nexuslauncher.d fz;
    private boolean mStarted;
    
    public a(final Launcher fb, final LauncherExterns fd) {
        this.fB = fb;
        this.fD = fd;
        this.fA = new b(this, null);
        this.fD.setLauncherCallbacks(this.fA);
    }
    
    private static f dZ(final SharedPreferences sharedPreferences) {
        boolean b = true;
        if (!sharedPreferences.getBoolean("pref_enable_minus_one", b)) {
            b = false;
        }
        return new f((b ? 1 : 0) | 0x2 | 0x4 | 0x8);
    }
}
