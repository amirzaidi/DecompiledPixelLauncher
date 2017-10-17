// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.smartspace;

import com.google.android.apps.nexuslauncher.smartspace.b.i;
import java.util.List;
import java.io.PrintWriter;
import android.os.Message;
import android.content.Intent;
import android.content.BroadcastReceiver;
import com.google.android.apps.nexuslauncher.a.b;
import android.os.Looper;
import com.android.launcher3.LauncherModel;
import android.os.Handler;
import android.content.Context;
import com.google.android.apps.nexuslauncher.a.a;
import android.os.Handler$Callback;
import com.android.launcher3.Alarm;
import com.android.launcher3.OnAlarmListener;

final class k implements OnAlarmListener
{
    final /* synthetic */ f ec;
    
    k(final f ec) {
        this.ec = ec;
    }
    
    public void onAlarm(final Alarm alarm) {
        this.ec.dc();
    }
}
