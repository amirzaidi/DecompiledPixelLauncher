// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.smartspace;

import com.google.android.apps.nexuslauncher.smartspace.b.i;
import com.android.launcher3.util.Preconditions;
import java.util.List;
import java.io.PrintWriter;
import android.os.Message;
import com.android.launcher3.OnAlarmListener;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Handler;
import com.android.launcher3.Alarm;
import android.os.Handler$Callback;
import android.content.Intent;
import android.content.Context;
import android.content.BroadcastReceiver;

final class h extends BroadcastReceiver
{
    final /* synthetic */ b eQ;
    
    h(final b eq) {
        this.eQ = eq;
    }
    
    public void onReceive(final Context context, final Intent intent) {
        this.eQ.dr();
    }
}
