// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher;

import com.google.android.libraries.a.a.f;
import android.content.SharedPreferences;
import com.google.android.apps.nexuslauncher.reflection.o;
import android.os.Bundle;
import com.android.launcher3.LauncherExterns;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherCallbacks;
import com.google.android.libraries.a.a.d;

public class c
{
    d gA;
    a gB;
    final LauncherCallbacks gC;
    private final Launcher gD;
    private boolean gE;
    private final LauncherExterns gF;
    com.google.android.apps.nexuslauncher.search.a gG;
    private final Bundle gH;
    private o gI;
    private boolean gJ;
    private boolean mStarted;
    
    public c(final Launcher gd, final LauncherExterns gf) {
        this.gH = new Bundle();
        this.gD = gd;
        this.gF = gf;
        this.gC = new com.google.android.apps.nexuslauncher.d(this, null);
        this.gF.setLauncherCallbacks(this.gC);
    }
    
    private static f fi(final SharedPreferences sharedPreferences) {
        boolean b = true;
        if (!sharedPreferences.getBoolean("pref_enable_minus_one", b)) {
            b = false;
        }
        return new f((b ? 1 : 0) | 0x2 | 0x4 | 0x8);
    }
}
