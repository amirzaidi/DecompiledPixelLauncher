// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.qsb;

import android.widget.RemoteViews;
import android.content.Intent;
import android.content.Context;
import android.content.BroadcastReceiver;

public class WeatherUpdateReceiver extends BroadcastReceiver
{
    public void onReceive(final Context context, final Intent intent) {
        d.get(context).N((RemoteViews)intent.getParcelableExtra("com.google.android.apps.nexuslauncher.weather_view"));
    }
}
