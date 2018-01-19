// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.search;

import android.content.SharedPreferences;
import com.google.android.apps.nexuslauncher.reflection.b;
import com.android.launcher3.AppInfo;
import java.util.Iterator;
import com.android.launcher3.IconCache;
import com.android.launcher3.allapps.AlphabeticalAppsList;
import com.android.launcher3.ItemInfoWithIcon;
import com.android.launcher3.util.ComponentKeyMapper;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.allapps.AllAppsRecyclerView;
import android.content.Context;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherCallbacks;
import android.content.SharedPreferences$OnSharedPreferenceChangeListener;
import com.android.launcher3.IconCache$ItemInfoUpdateReceiver;

public class a implements IconCache$ItemInfoUpdateReceiver, SharedPreferences$OnSharedPreferenceChangeListener
{
    private final LauncherCallbacks fE;
    private final com.google.android.apps.nexuslauncher.instantapps.a fF;
    private final int fG;
    private final Launcher mLauncher;
    
    public a(final Launcher mLauncher, final LauncherCallbacks fe) {
        this.mLauncher = mLauncher;
        this.fE = fe;
        this.fG = mLauncher.getDeviceProfile().allAppsNumCols;
        this.fF = com.google.android.apps.nexuslauncher.instantapps.a.get((Context)mLauncher);
    }
    
    public void en() {
        final AlphabeticalAppsList apps = ((AllAppsRecyclerView)this.mLauncher.findViewById(2131623979)).getApps();
        final IconCache iconCache = LauncherAppState.getInstance((Context)this.mLauncher).getIconCache();
        final Iterator iterator = this.fE.getPredictedApps().iterator();
        int n = 0;
        while (iterator.hasNext()) {
            final AppInfo app = apps.findApp(iterator.next());
            int n2;
            if (app != null) {
                if (app.usingLowResIcon) {
                    iconCache.updateIconInBackground(this, app);
                }
                n2 = n + 1;
                if (n2 >= this.fG) {
                    break;
                }
            }
            else {
                n2 = n;
            }
            n = n2;
        }
    }
    
    public void eo() {
        final Iterator iterator = this.fE.getPredictedApps().iterator();
        String s = null;
        while (iterator.hasNext()) {
            final ComponentKeyMapper componentKeyMapper = iterator.next();
            String package1;
            if ("@instantapp".equals(componentKeyMapper.getComponentClass())) {
                package1 = componentKeyMapper.getPackage();
            }
            else {
                package1 = s;
            }
            s = package1;
        }
        this.fF.eD(s);
    }
    
    public void onCreate() {
        this.mLauncher.getSharedPrefs().registerOnSharedPreferenceChangeListener((SharedPreferences$OnSharedPreferenceChangeListener)this);
        b.aL((Context)this.mLauncher).registerOnSharedPreferenceChangeListener((SharedPreferences$OnSharedPreferenceChangeListener)this);
        this.eo();
    }
    
    public void onDestroy() {
        this.mLauncher.getSharedPrefs().unregisterOnSharedPreferenceChangeListener((SharedPreferences$OnSharedPreferenceChangeListener)this);
        b.aL((Context)this.mLauncher).unregisterOnSharedPreferenceChangeListener((SharedPreferences$OnSharedPreferenceChangeListener)this);
    }
    
    public void onSharedPreferenceChanged(final SharedPreferences sharedPreferences, final String s) {
        if ("reflection_last_predictions".equals(s) || "pref_show_predictions".equals(s)) {
            this.en();
            this.eo();
        }
    }
    
    public void reapplyItemInfo(final ItemInfoWithIcon itemInfoWithIcon) {
    }
}
