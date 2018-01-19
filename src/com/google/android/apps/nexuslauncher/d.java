// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher;

import com.google.android.libraries.a.a.f;
import com.android.launcher3.LauncherExterns;
import com.android.launcher3.Launcher;
import android.view.View;
import com.android.launcher3.graphics.DrawableFactory;
import android.view.Menu;
import com.android.launcher3.util.Themes;
import com.google.android.apps.nexuslauncher.qsb.h;
import android.content.SharedPreferences;
import com.android.launcher3.dynamicui.WallpaperColorInfo;
import com.google.android.apps.nexuslauncher.reflection.o;
import android.app.Activity;
import com.android.launcher3.Utilities;
import android.os.Bundle;
import android.content.Intent;
import com.android.launcher3.util.ComponentKey;
import android.text.TextUtils;
import java.util.Collections;
import java.util.List;
import android.content.Context;
import com.google.android.apps.nexuslauncher.smartspace.b;
import java.io.PrintWriter;
import java.io.FileDescriptor;
import java.util.ArrayList;
import com.google.android.apps.nexuslauncher.search.a;
import com.google.android.apps.nexuslauncher.smartspace.SmartspaceView;
import com.android.launcher3.dynamicui.WallpaperColorInfo$OnChangeListener;
import android.content.SharedPreferences$OnSharedPreferenceChangeListener;
import com.android.launcher3.LauncherCallbacks;

class d implements LauncherCallbacks, SharedPreferences$OnSharedPreferenceChangeListener, WallpaperColorInfo$OnChangeListener
{
    private SmartspaceView gK;
    final /* synthetic */ c gL;
    
    private d(final c gl) {
        this.gL = gl;
    }
    
    private a fv() {
        if (this.gL.gG == null) {
            this.gL.gG = new a(this.gL.gD, this);
        }
        return this.gL.gG;
    }
    
    public void bindAllApplications(final ArrayList list) {
        this.fv().en();
    }
    
    public void dump(final String s, final FileDescriptor fileDescriptor, final PrintWriter printWriter, final String[] array) {
        b.get((Context)this.gL.gD).dm(s, printWriter);
        this.gL.gA.DB(s, printWriter);
    }
    
    public void finishBindingItems(final boolean b) {
    }
    
    public List getPredictedApps() {
        if (!this.gL.gF.getSharedPrefs().getBoolean("pref_show_predictions", true)) {
            return Collections.EMPTY_LIST;
        }
        final ArrayList<com.google.android.apps.nexuslauncher.instantapps.d> list = new ArrayList<com.google.android.apps.nexuslauncher.instantapps.d>();
        final String string = com.google.android.apps.nexuslauncher.reflection.b.aL((Context)this.gL.gD).getString("reflection_last_predictions", (String)null);
        if (!TextUtils.isEmpty((CharSequence)string)) {
            final String[] split = string.split(";");
            for (int i = 0; i < split.length; ++i) {
                list.add(new com.google.android.apps.nexuslauncher.instantapps.d((Context)this.gL.gD, new ComponentKey((Context)this.gL.gD, split[i])));
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
        this.gL.gA.onAttachedToWindow();
    }
    
    public void onCreate(final Bundle bundle) {
        final SharedPreferences prefs = Utilities.getPrefs((Context)this.gL.gD);
        this.gL.gB = new com.google.android.apps.nexuslauncher.a(this.gL.gD);
        this.gL.gA = new com.google.android.libraries.a.a.d(this.gL.gD, this.gL.gB, fi(prefs));
        this.gL.gB.fe(this.gL.gA);
        this.gL.gI = o.getInstance((Context)this.gL.gD);
        prefs.registerOnSharedPreferenceChangeListener((SharedPreferences$OnSharedPreferenceChangeListener)this);
        this.gK = (SmartspaceView)this.gL.gD.findViewById(2131623953);
        this.gL.gH.putInt("system_ui_visibility", this.gL.gD.getWindow().getDecorView().getSystemUiVisibility());
        final WallpaperColorInfo instance = WallpaperColorInfo.getInstance((Context)this.gL.gD);
        instance.addOnChangeListener(this);
        this.onExtractedColorsChanged(instance);
        this.fv().onCreate();
    }
    
    public void onDestroy() {
        this.gL.gA.onDestroy();
        this.gL.gG.onDestroy();
        Utilities.getPrefs((Context)this.gL.gD).unregisterOnSharedPreferenceChangeListener((SharedPreferences$OnSharedPreferenceChangeListener)this);
        WallpaperColorInfo.getInstance((Context)this.gL.gD).removeOnChangeListener(this);
    }
    
    public void onDetachedFromWindow() {
        this.gL.gA.onDetachedFromWindow();
    }
    
    public void onExtractedColorsChanged(final WallpaperColorInfo wallpaperColorInfo) {
        final int integer = this.gL.gD.getResources().getInteger(2131558402);
        this.gL.gH.putInt("background_color_hint", h.cT(wallpaperColorInfo, (Context)this.gL.gD, integer));
        this.gL.gH.putInt("background_secondary_color_hint", h.cU(wallpaperColorInfo, (Context)this.gL.gD, integer));
        this.gL.gH.putBoolean("is_background_dark", Themes.getAttrBoolean((Context)this.gL.gD, 2130772011));
        this.gL.gA.DG(this.gL.gH);
    }
    
    public void onHomeIntent() {
        this.gL.gA.Dz(this.gL.gE);
    }
    
    public void onInteractionBegin() {
    }
    
    public void onInteractionEnd() {
    }
    
    public void onLauncherProviderChange() {
        this.gL.gI.bz(1000L);
    }
    
    public void onNewIntent(final Intent intent) {
    }
    
    public void onPause() {
        this.gL.gJ = false;
        this.gL.gA.onPause();
        if (this.gK != null) {
            this.gK.onPause();
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
        this.gL.gJ = b;
        if (this.gL.mStarted) {
            this.gL.gE = b;
        }
        this.gL.gA.onResume();
        this.gL.gI.bz(0L);
        if (this.gK != null) {
            this.gK.onResume();
        }
    }
    
    public void onSaveInstanceState(final Bundle bundle) {
    }
    
    public void onSharedPreferenceChanged(final SharedPreferences sharedPreferences, final String s) {
        if ("pref_enable_minus_one".equals(s)) {
            this.gL.gA.DK(fi(sharedPreferences));
        }
    }
    
    public void onStart() {
        this.gL.mStarted = true;
        this.gL.gA.onStart();
    }
    
    public void onStop() {
        this.gL.mStarted = false;
        this.gL.gA.onStop();
        if (!this.gL.gJ) {
            this.gL.gE = false;
        }
        this.gL.gB.fb();
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
        DrawableFactory.get((Context)this.gL.gD);
    }
    
    public void preOnResume() {
    }
    
    public boolean shouldMoveToDefaultScreenOnHomeIntent() {
        return true;
    }
    
    public boolean startSearch(final String s, final boolean b, final Bundle bundle) {
        int n;
        if (this.gL.gD.getWorkspace().getState().containerType == 4) {
            n = 2131623955;
        }
        else {
            n = 2131623954;
        }
        final View viewById = this.gL.gD.findViewById(n);
        if (viewById instanceof com.google.android.apps.nexuslauncher.qsb.a && viewById.performClick()) {
            this.gL.gF.clearTypedText();
            return true;
        }
        return false;
    }
}
