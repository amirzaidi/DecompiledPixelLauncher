// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.search;

import android.content.SharedPreferences;
import com.google.android.apps.nexuslauncher.reflection.g;
import com.android.launcher3.AppInfo;
import java.util.Iterator;
import com.android.launcher3.IconCache;
import com.android.launcher3.allapps.AlphabeticalAppsList;
import com.android.launcher3.ItemInfoWithIcon;
import com.android.launcher3.util.ComponentKey;
import android.content.Context;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.allapps.AllAppsRecyclerView;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherCallbacks;
import android.content.SharedPreferences$OnSharedPreferenceChangeListener;
import com.android.launcher3.IconCache$ItemInfoUpdateReceiver;

public class a implements IconCache$ItemInfoUpdateReceiver, SharedPreferences$OnSharedPreferenceChangeListener
{
    private final LauncherCallbacks eC;
    private final int eD;
    private final Launcher mLauncher;
    
    public a(final Launcher mLauncher, final LauncherCallbacks ec) {
        this.mLauncher = mLauncher;
        this.eC = ec;
        this.eD = mLauncher.getDeviceProfile().allAppsNumCols;
    }
    
    public void di() {
        final AlphabeticalAppsList apps = ((AllAppsRecyclerView)this.mLauncher.findViewById(2131623979)).getApps();
        final IconCache iconCache = LauncherAppState.getInstance((Context)this.mLauncher).getIconCache();
        final Iterator iterator = this.eC.getPredictedApps().iterator();
        int n = 0;
        while (iterator.hasNext()) {
            final AppInfo app = apps.findApp(iterator.next());
            int n2;
            if (app != null) {
                if (app.usingLowResIcon) {
                    iconCache.updateIconInBackground(this, app);
                }
                n2 = n + 1;
                if (n2 >= this.eD) {
                    break;
                }
            }
            else {
                n2 = n;
            }
            n = n2;
        }
    }
    
    public void onCreate() {
        this.mLauncher.getSharedPrefs().registerOnSharedPreferenceChangeListener((SharedPreferences$OnSharedPreferenceChangeListener)this);
        g.aT((Context)this.mLauncher).registerOnSharedPreferenceChangeListener((SharedPreferences$OnSharedPreferenceChangeListener)this);
    }
    
    public void onDestroy() {
        this.mLauncher.getSharedPrefs().unregisterOnSharedPreferenceChangeListener((SharedPreferences$OnSharedPreferenceChangeListener)this);
        g.aT((Context)this.mLauncher).unregisterOnSharedPreferenceChangeListener((SharedPreferences$OnSharedPreferenceChangeListener)this);
    }
    
    public void onSharedPreferenceChanged(final SharedPreferences sharedPreferences, final String s) {
        if ("reflection_last_predictions".equals(s) || "pref_show_predictions".equals(s)) {
            this.di();
        }
    }
    
    public void reapplyItemInfo(final ItemInfoWithIcon itemInfoWithIcon) {
    }
}
