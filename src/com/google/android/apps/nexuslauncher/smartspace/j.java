// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.smartspace;

import android.content.Context;
import android.net.Uri$Builder;
import android.net.Uri;
import android.content.ActivityNotFoundException;
import android.os.Process;
import android.content.ComponentName;
import com.android.launcher3.compat.LauncherAppsCompat;
import com.android.launcher3.ItemInfo;
import com.android.launcher3.Launcher;
import android.content.Intent;
import android.content.ContentUris;
import android.provider.CalendarContract;
import android.view.View;
import android.view.View$OnClickListener;

final class j implements View$OnClickListener
{
    final /* synthetic */ SmartspaceView eS;
    
    j(final SmartspaceView es) {
        this.eS = es;
    }
    
    public void onClick(final View view) {
        try {
            this.eS.dD(1);
            final Uri content_URI = CalendarContract.CONTENT_URI;
            try {
                final Uri$Builder appendPath = content_URI.buildUpon().appendPath("time");
                try {
                    ContentUris.appendId(appendPath, System.currentTimeMillis());
                    final Intent addFlags = new Intent("android.intent.action.VIEW").setData(appendPath.build()).addFlags(270532608);
                    try {
                        final SmartspaceView es = this.eS;
                        try {
                            final Context context = es.getContext();
                            try {
                                Launcher.getLauncher(context).startActivitySafely(view, addFlags, null);
                            }
                            catch (ActivityNotFoundException ex) {
                                LauncherAppsCompat.getInstance(this.eS.getContext()).showAppDetailsForProfile(new ComponentName("com.google.android.calendar", ""), Process.myUserHandle());
                            }
                        }
                        catch (ActivityNotFoundException ex2) {}
                    }
                    catch (ActivityNotFoundException ex3) {}
                }
                catch (ActivityNotFoundException ex4) {}
            }
            catch (ActivityNotFoundException ex5) {}
        }
        catch (ActivityNotFoundException ex6) {}
    }
}
