// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.smartspace;

import com.google.android.apps.nexuslauncher.smartspace.b.i;
import com.android.launcher3.util.Preconditions;
import java.util.List;
import java.io.PrintWriter;
import android.content.Intent;
import android.os.Message;
import android.content.BroadcastReceiver;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Handler;
import android.content.Context;
import android.os.Handler$Callback;
import com.android.launcher3.Alarm;
import com.android.launcher3.OnAlarmListener;

final class g implements OnAlarmListener
{
    final /* synthetic */ b eP;
    
    g(final b ep) {
        this.eP = ep;
    }
    
    public void onAlarm(final Alarm alarm) {
        this.eP.dq();
    }
}
