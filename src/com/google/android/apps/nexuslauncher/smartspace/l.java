// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.smartspace;

import com.google.android.apps.nexuslauncher.smartspace.b.i;
import java.util.List;
import java.io.PrintWriter;
import android.os.Message;
import com.google.android.apps.nexuslauncher.a.b;
import com.android.launcher3.OnAlarmListener;
import android.os.Looper;
import com.android.launcher3.LauncherModel;
import android.os.Handler;
import com.google.android.apps.nexuslauncher.a.a;
import com.android.launcher3.Alarm;
import android.os.Handler$Callback;
import android.content.Intent;
import android.content.Context;
import android.content.BroadcastReceiver;

final class l extends BroadcastReceiver
{
    final /* synthetic */ f ed;
    
    l(final f ed) {
        this.ed = ed;
    }
    
    public void onReceive(final Context context, final Intent intent) {
        this.ed.dd();
    }
}
