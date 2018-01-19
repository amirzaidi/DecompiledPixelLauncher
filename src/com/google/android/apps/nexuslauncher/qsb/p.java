// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.qsb;

import java.util.Iterator;
import android.os.Message;
import com.android.launcher3.util.Preconditions;
import android.content.SharedPreferences$Editor;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.Log;
import android.database.Cursor;
import android.content.IntentFilter;
import com.google.android.apps.nexuslauncher.b.a;
import android.os.HandlerThread;
import android.os.Handler;
import java.util.ArrayList;
import android.database.ContentObserver;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Handler$Callback;
import android.content.Intent;
import android.content.Context;
import android.content.BroadcastReceiver;

final class p extends BroadcastReceiver
{
    final /* synthetic */ f dj;
    
    p(final f dj) {
        this.dj = dj;
    }
    
    public void onReceive(final Context context, final Intent intent) {
        this.dj.cH();
    }
}
