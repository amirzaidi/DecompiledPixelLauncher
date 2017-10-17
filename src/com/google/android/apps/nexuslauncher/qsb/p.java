// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.qsb;

import android.os.SystemClock;
import java.io.PrintWriter;
import java.io.FileDescriptor;
import com.android.launcher3.util.Preconditions;
import java.util.Iterator;
import android.widget.RemoteViews;
import android.os.Bundle;
import com.android.launcher3.OnAlarmListener;
import java.util.ArrayList;
import com.android.launcher3.Alarm;
import com.google.android.apps.nexuslauncher.util.c;
import android.content.Intent;
import android.content.Context;
import android.content.BroadcastReceiver;

final class p extends BroadcastReceiver
{
    final /* synthetic */ d aj;
    
    p(final d aj) {
        this.aj = aj;
    }
    
    public void onReceive(final Context context, final Intent intent) {
        this.aj.P();
    }
}
