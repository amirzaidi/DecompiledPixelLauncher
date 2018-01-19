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
import java.util.ArrayList;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.BroadcastReceiver;
import android.os.Handler$Callback;
import android.net.Uri;
import android.os.Handler;
import android.database.ContentObserver;

final class r extends ContentObserver
{
    final /* synthetic */ f dl;
    
    r(final f dl, final Handler handler) {
        this.dl = dl;
        super(handler);
    }
    
    public void onChange(final boolean b, final Uri uri) {
        this.dl.cI(b, uri);
    }
}
