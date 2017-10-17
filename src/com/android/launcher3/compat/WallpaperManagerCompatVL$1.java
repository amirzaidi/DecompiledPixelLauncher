// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.compat;

import android.app.job.JobInfo$Builder;
import android.content.ComponentName;
import android.app.job.JobScheduler;
import android.util.Pair;
import java.util.Iterator;
import android.app.WallpaperManager;
import com.android.launcher3.Utilities;
import java.util.ArrayList;
import android.content.Intent;
import android.content.Context;
import android.content.BroadcastReceiver;

final class WallpaperManagerCompatVL$1 extends BroadcastReceiver
{
    final /* synthetic */ WallpaperManagerCompatVL this$0;
    
    WallpaperManagerCompatVL$1(final WallpaperManagerCompatVL this$0) {
        this.this$0 = this$0;
    }
    
    public void onReceive(final Context context, final Intent intent) {
        this.this$0.reloadColors();
    }
}
