// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher;

import com.android.launcher3.LauncherExterns;
import com.android.launcher3.Launcher;
import android.view.View;
import com.android.launcher3.graphics.DrawableFactory;
import android.view.Menu;
import android.content.SharedPreferences;
import com.google.android.apps.nexuslauncher.reflection.c;
import android.app.Activity;
import com.android.launcher3.Utilities;
import android.os.Bundle;
import android.content.Intent;
import android.text.TextUtils;
import com.google.android.apps.nexuslauncher.reflection.g;
import com.android.launcher3.util.ComponentKey;
import java.util.Collections;
import java.util.List;
import android.content.Context;
import com.google.android.apps.nexuslauncher.smartspace.f;
import java.io.PrintWriter;
import java.io.FileDescriptor;
import java.util.ArrayList;
import com.google.android.apps.nexuslauncher.smartspace.SmartspaceView;
import android.content.SharedPreferences$OnSharedPreferenceChangeListener;
import com.android.launcher3.LauncherCallbacks;

class b implements LauncherCallbacks, SharedPreferences$OnSharedPreferenceChangeListener
{
    private SmartspaceView fH;
    final /* synthetic */ a fI;
    
    private b(final a fi) {
        this.fI = fi;
    }
    
    private com.google.android.apps.nexuslauncher.search.a el() {
        if (this.fI.fE == null) {
            this.fI.fE = new com.google.android.apps.nexuslauncher.search.a(this.fI.fB, this);
        }
        return this.fI.fE;
    }
    
    public void bindAllApplications(final ArrayList list) {
        this.el().di();
    }
    
    public void dump(final String s, final FileDescriptor fileDescriptor, final PrintWriter printWriter, final String[] array) {
        f.get((Context)this.fI.fB).cX(s, printWriter);
    }
    
    public void finishBindingItems(final boolean b) {
    }
    
    public List getPredictedApps() {
        if (!this.fI.fD.getSharedPrefs().getBoolean("pref_show_predictions", true)) {
            return Collections.emptyList();
        }
        final ArrayList<ComponentKey> list = new ArrayList<ComponentKey>();
        final String string = g.aT((Context)this.fI.fB).getString("reflection_last_predictions", (String)null);
        if (!TextUtils.isEmpty((CharSequence)string)) {
            final String[] split = string.split(";");
            for (int i = 0; i < split.length; ++i) {
                list.add(new ComponentKey((Context)this.fI.fB, split[i]));
            }
        }
        return list;
    }
    
    public boolean handleBackPressed() {
        return false;
    }
    
    public boolean hasCustomContentToLeft() {
        return false;
    }
    
    public boolean hasSettings() {
        return true;
    }
    
    public void onActivityResult(final int n, final int n2, final Intent intent) {
    }
    
    public void onAttachedToWindow() {
        this.fI.fy.onAttachedToWindow();
    }
    
    public void onCreate(final Bundle bundle) {
        final SharedPreferences prefs = Utilities.getPrefs((Context)this.fI.fB);
        this.fI.fz = new d(this.fI.fB);
        this.fI.fy = new com.google.android.libraries.a.a.d(this.fI.fB, this.fI.fz, dZ(prefs));
        this.fI.fz.eq(this.fI.fy);
        this.fI.fF = c.getInstance((Context)this.fI.fB);
        prefs.registerOnSharedPreferenceChangeListener((SharedPreferences$OnSharedPreferenceChangeListener)this);
        f.get((Context)this.fI.fB).cW();
        this.fH = (SmartspaceView)this.fI.fB.findViewById(2131623953);
        final Bundle bundle2 = new Bundle();
        bundle2.putInt("system_ui_visibility", this.fI.fB.getWindow().getDecorView().getSystemUiVisibility());
        this.fI.fy.Rx(bundle2);
        this.el().onCreate();
    }
    
    public void onDestroy() {
        this.fI.fy.onDestroy();
        this.fI.fE.onDestroy();
        Utilities.getPrefs((Context)this.fI.fB).unregisterOnSharedPreferenceChangeListener((SharedPreferences$OnSharedPreferenceChangeListener)this);
    }
    
    public void onDetachedFromWindow() {
        this.fI.fy.onDetachedFromWindow();
    }
    
    public void onHomeIntent() {
        this.fI.fy.Rr(this.fI.fC);
    }
    
    public void onInteractionBegin() {
    }
    
    public void onInteractionEnd() {
    }
    
    public void onLauncherProviderChange() {
        this.fI.fF.ay(1000L);
    }
    
    public void onNewIntent(final Intent intent) {
    }
    
    public void onPause() {
        this.fI.fG = false;
        this.fI.fy.onPause();
        if (this.fH != null) {
            this.fH.onPause();
        }
    }
    
    public void onPostCreate(final Bundle bundle) {
    }
    
    public boolean onPrepareOptionsMenu(final Menu menu) {
        return false;
    }
    
    public void onRequestPermissionsResult(final int n, final String[] array, final int[] array2) {
    }
    
    public void onResume() {
        final boolean b = true;
        this.fI.fG = b;
        if (this.fI.mStarted) {
            this.fI.fC = b;
        }
        this.fI.fy.onResume();
        this.fI.fF.ay(0L);
        if (this.fH != null) {
            this.fH.onResume();
        }
    }
    
    public void onSaveInstanceState(final Bundle bundle) {
    }
    
    public void onSharedPreferenceChanged(final SharedPreferences sharedPreferences, final String s) {
        if ("pref_enable_minus_one".equals(s)) {
            this.fI.fy.RB(dZ(sharedPreferences));
        }
    }
    
    public void onStart() {
        this.fI.mStarted = true;
        this.fI.fy.onStart();
    }
    
    public void onStop() {
        this.fI.mStarted = false;
        this.fI.fy.onStop();
        if (!this.fI.fG) {
            this.fI.fC = false;
        }
        this.fI.fz.er();
    }
    
    public void onTrimMemory(final int n) {
    }
    
    public void onWindowFocusChanged(final boolean b) {
    }
    
    public void onWorkspaceLockedChanged() {
    }
    
    public void populateCustomContentContainer() {
    }
    
    public void preOnCreate() {
        DrawableFactory.get((Context)this.fI.fB);
    }
    
    public void preOnResume() {
    }
    
    public boolean shouldMoveToDefaultScreenOnHomeIntent() {
        return true;
    }
    
    public boolean shouldShowDiscoveryBounce() {
        final SharedPreferences devicePrefs = Utilities.getDevicePrefs((Context)this.fI.fB);
        if (devicePrefs.getBoolean("pref_show_discovery_bounce", false)) {
            devicePrefs.edit().remove("pref_show_discovery_bounce").apply();
            return true;
        }
        return false;
    }
    
    public boolean startSearch(final String s, final boolean b, final Bundle bundle) {
        View viewById = this.fI.fB.findViewById(2131624000);
        while (viewById != null && (viewById.isClickable() ^ true)) {
            if (viewById.getParent() instanceof View) {
                viewById = (View)viewById.getParent();
            }
            else {
                viewById = null;
            }
        }
        if (viewById != null && viewById.performClick()) {
            this.fI.fD.clearTypedText();
            return true;
        }
        return false;
    }
}
