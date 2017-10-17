// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.qsb;

import android.os.SystemClock;
import java.io.PrintWriter;
import java.io.FileDescriptor;
import com.android.launcher3.util.Preconditions;
import java.util.Iterator;
import android.content.Intent;
import android.widget.RemoteViews;
import android.os.Bundle;
import android.content.BroadcastReceiver;
import java.util.ArrayList;
import android.content.Context;
import com.google.android.apps.nexuslauncher.util.c;
import com.android.launcher3.Alarm;
import com.android.launcher3.OnAlarmListener;

final class o implements OnAlarmListener
{
    final /* synthetic */ d ai;
    
    o(final d ai) {
        this.ai = ai;
    }
    
    public void onAlarm(final Alarm alarm) {
        this.ai.Q(alarm);
    }
}
