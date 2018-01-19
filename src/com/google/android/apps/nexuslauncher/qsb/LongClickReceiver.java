// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.qsb;

import android.content.pm.LauncherActivityInfo;
import com.android.launcher3.dragndrop.BaseItemDragListener;
import com.android.launcher3.AppInfo;
import com.android.launcher3.util.ComponentKey;
import android.os.Parcelable;
import android.os.Bundle;
import android.content.ClipData;
import android.content.ClipData$Item;
import android.content.ClipDescription;
import android.view.View$OnDragListener;
import com.android.launcher3.Launcher;
import com.android.launcher3.compat.LauncherAppsCompat;
import com.google.android.apps.nexuslauncher.instantapps.a;
import com.google.android.apps.nexuslauncher.search.AppSearchProvider;
import android.content.Intent;
import android.content.Context;
import com.google.android.apps.nexuslauncher.NexusLauncherActivity;
import java.lang.ref.WeakReference;
import android.content.BroadcastReceiver;

public class LongClickReceiver extends BroadcastReceiver
{
    private static WeakReference cL;
    
    static {
        LongClickReceiver.cL = new WeakReference(null);
    }
    
    public static void cA(final NexusLauncherActivity nexusLauncherActivity) {
        LongClickReceiver.cL = new WeakReference((T)nexusLauncherActivity);
    }
    
    public void onReceive(final Context context, final Intent intent) {
        final NexusLauncherActivity launcher = (NexusLauncherActivity)LongClickReceiver.cL.get();
        if (launcher == null) {
            return;
        }
        final ComponentKey es = AppSearchProvider.es(intent.getData(), context);
        BaseItemDragListener onDragListener;
        if (es.componentName.getClassName().equals("@instantapp")) {
            final AppInfo ee = a.get(context).eE(es.componentName.getPackageName());
            if (ee == null) {
                return;
            }
            onDragListener = new i(ee, intent.getSourceBounds());
        }
        else {
            final LauncherActivityInfo resolveActivity = LauncherAppsCompat.getInstance(context).resolveActivity(new Intent("android.intent.action.MAIN").setComponent(es.componentName), es.user);
            if (resolveActivity == null) {
                return;
            }
            onDragListener = new b(resolveActivity, intent.getSourceBounds());
        }
        onDragListener.setLauncher(launcher);
        launcher.showWorkspace(false);
        launcher.getDragLayer().setOnDragListener((View$OnDragListener)onDragListener);
        final ClipData clipData = new ClipData(new ClipDescription((CharSequence)"", new String[] { onDragListener.getMimeType() }), new ClipData$Item((CharSequence)""));
        final Bundle bundle = new Bundle();
        bundle.putParcelable("clip_data", (Parcelable)clipData);
        this.setResult(-1, (String)null, bundle);
    }
}
