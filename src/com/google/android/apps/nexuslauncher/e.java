// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher;

import com.android.launcher3.LauncherExterns;
import android.app.Activity;
import android.view.View;
import android.view.Menu;
import android.content.SharedPreferences;
import com.google.android.apps.nexuslauncher.reflection.l;
import com.google.android.libraries.a.a.a;
import com.android.launcher3.Utilities;
import android.os.Bundle;
import android.content.Intent;
import android.text.TextUtils;
import com.google.android.apps.nexuslauncher.reflection.g;
import com.android.launcher3.util.ComponentKey;
import java.util.Collections;
import java.util.List;
import com.android.launcher3.allapps.AllAppsSearchBarController;
import android.content.Context;
import java.io.PrintWriter;
import java.io.FileDescriptor;
import java.util.ArrayList;
import android.content.SharedPreferences$OnSharedPreferenceChangeListener;
import com.android.launcher3.LauncherCallbacks;

class e implements LauncherCallbacks, SharedPreferences$OnSharedPreferenceChangeListener
{
    final /* synthetic */ d dL;
    
    private e(final d dl) {
        this.dL = dl;
    }
    
    public void bindAllApplications(final ArrayList list) {
    }
    
    public void dump(final String s, final FileDescriptor fileDescriptor, final PrintWriter printWriter, final String[] array) {
        com.google.android.apps.nexuslauncher.qsb.d.get((Context)this.dL.dG).dump(s, fileDescriptor, printWriter, array);
    }
    
    public void finishBindingItems(final boolean b) {
    }
    
    public AllAppsSearchBarController getAllAppsSearchBarController() {
        return new b();
    }
    
    public List getPredictedApps() {
        if (!this.dL.dI.getSharedPrefs().getBoolean("pref_show_predictions", true)) {
            return Collections.emptyList();
        }
        final ArrayList<ComponentKey> list = new ArrayList<ComponentKey>();
        final String string = g.ca((Context)this.dL.dG).getString("reflection_last_predictions", (String)null);
        if (!TextUtils.isEmpty((CharSequence)string)) {
            final String[] split = string.split(";");
            for (int i = 0; i < split.length; ++i) {
                list.add(new ComponentKey((Context)this.dL.dG, split[i]));
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
        this.dL.dE.onAttachedToWindow();
    }
    
    public void onCreate(final Bundle bundle) {
        final boolean b = true;
        final SharedPreferences prefs = Utilities.getPrefs((Context)this.dL.dG);
        this.dL.dF = new c(this.dL.dI);
        this.dL.dE = new com.google.android.libraries.a.a.c(this.dL.dG, this.dL.dF, new com.google.android.libraries.a.a.e(prefs.getBoolean("pref_enable_minus_one", b), b, b));
        this.dL.dF.de(this.dL.dE);
        this.dL.dJ = l.getInstance((Context)this.dL.dG);
        prefs.registerOnSharedPreferenceChangeListener((SharedPreferences$OnSharedPreferenceChangeListener)this);
    }
    
    public void onDestroy() {
        this.dL.dE.onDestroy();
        Utilities.getPrefs((Context)this.dL.dG).unregisterOnSharedPreferenceChangeListener((SharedPreferences$OnSharedPreferenceChangeListener)this);
    }
    
    public void onDetachedFromWindow() {
        this.dL.dE.onDetachedFromWindow();
    }
    
    public void onHomeIntent() {
        this.dL.dE.Qy(this.dL.dH);
    }
    
    public void onInteractionBegin() {
    }
    
    public void onInteractionEnd() {
    }
    
    public void onLauncherProviderChange() {
        this.dL.dJ.cv(1000L);
    }
    
    public void onNewIntent(final Intent intent) {
    }
    
    public void onPause() {
        this.dL.dK = false;
        this.dL.dE.onPause();
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
        this.dL.dK = b;
        if (this.dL.mStarted) {
            this.dL.dH = b;
        }
        this.dL.dE.onResume();
        this.dL.dJ.cv(0L);
    }
    
    public void onSaveInstanceState(final Bundle bundle) {
    }
    
    public void onSharedPreferenceChanged(final SharedPreferences sharedPreferences, final String s) {
        final boolean b = true;
        if ("pref_enable_minus_one".equals(s)) {
            this.dL.dE.QH(new com.google.android.libraries.a.a.e(sharedPreferences.getBoolean("pref_enable_minus_one", b), b, b));
        }
    }
    
    public void onStart() {
        this.dL.mStarted = true;
        this.dL.dE.onStart();
    }
    
    public void onStop() {
        this.dL.mStarted = false;
        this.dL.dE.onStop();
        if (!this.dL.dK) {
            this.dL.dH = false;
        }
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
        com.google.android.apps.nexuslauncher.a.a.getInstance((Context)this.dL.dG);
    }
    
    public void preOnResume() {
    }
    
    public void setLauncherSearchCallback(final Object o) {
    }
    
    public boolean shouldMoveToDefaultScreenOnHomeIntent() {
        return true;
    }
    
    public boolean shouldShowDiscoveryBounce() {
        final SharedPreferences sharedPreferences = this.dL.dG.getSharedPreferences("com.android.launcher3.device.prefs", 0);
        if (sharedPreferences.getBoolean("pref_show_discovery_bounce", false)) {
            sharedPreferences.edit().remove("pref_show_discovery_bounce").apply();
            return true;
        }
        return false;
    }
    
    public boolean startSearch(final String s, final boolean b, final Bundle bundle) {
        View viewById = this.dL.dG.findViewById(2131624034);
        while (viewById != null && (viewById.isClickable() ^ true)) {
            if (viewById.getParent() instanceof View) {
                viewById = (View)viewById.getParent();
            }
            else {
                viewById = null;
            }
        }
        if (viewById != null && viewById.performClick()) {
            this.dL.dI.clearTypedText();
            return true;
        }
        return false;
    }
}
