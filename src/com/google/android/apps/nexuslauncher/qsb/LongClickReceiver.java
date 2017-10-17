// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.qsb;

import android.content.pm.LauncherActivityInfo;
import com.android.launcher3.util.ComponentKey;
import android.os.Parcelable;
import android.os.Bundle;
import android.content.ClipData;
import android.content.ClipData$Item;
import android.content.ClipDescription;
import android.view.View$OnDragListener;
import com.android.launcher3.Launcher;
import com.android.launcher3.compat.LauncherAppsCompat;
import com.google.android.apps.nexuslauncher.search.AppSearchProvider;
import android.content.Intent;
import android.content.Context;
import com.google.android.apps.nexuslauncher.NexusLauncherActivity;
import java.lang.ref.WeakReference;
import android.content.BroadcastReceiver;

public class LongClickReceiver extends BroadcastReceiver
{
    private static WeakReference bR;
    
    static {
        LongClickReceiver.bR = new WeakReference(null);
    }
    
    public static void bq(final NexusLauncherActivity nexusLauncherActivity) {
        LongClickReceiver.bR = new WeakReference((T)nexusLauncherActivity);
    }
    
    public void onReceive(final Context context, final Intent intent) {
        final NexusLauncherActivity launcher = (NexusLauncherActivity)LongClickReceiver.bR.get();
        if (launcher == null) {
            return;
        }
        final ComponentKey dl = AppSearchProvider.dl(intent.getData(), context);
        final LauncherActivityInfo resolveActivity = LauncherAppsCompat.getInstance(context).resolveActivity(new Intent("android.intent.action.MAIN").setComponent(dl.componentName), dl.user);
        if (resolveActivity == null) {
            return;
        }
        final b onDragListener = new b(resolveActivity, intent.getSourceBounds());
        onDragListener.setLauncher(launcher);
        launcher.showWorkspace(false);
        launcher.getDragLayer().setOnDragListener((View$OnDragListener)onDragListener);
        final ClipData clipData = new ClipData(new ClipDescription((CharSequence)"", new String[] { onDragListener.getMimeType() }), new ClipData$Item((CharSequence)""));
        final Bundle bundle = new Bundle();
        bundle.putParcelable("clip_data", (Parcelable)clipData);
        this.setResult(-1, (String)null, bundle);
    }
}
