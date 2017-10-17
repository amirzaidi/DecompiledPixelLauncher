// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.internal;

import java.util.Collections;
import android.os.DeadObjectException;
import com.google.android.gms.common.ConnectionResult;
import android.accounts.Account;
import android.content.Intent;
import java.util.Set;
import com.google.android.gms.common.api.A;
import java.util.Date;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.io.PrintWriter;
import java.io.FileDescriptor;
import android.util.Log;
import android.content.Context;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicInteger;
import android.os.IInterface;
import com.google.android.gms.common.f;
import android.os.Looper;
import android.os.Handler;
import android.os.Message;
import android.os.Bundle;
import android.os.IBinder;
import android.content.ComponentName;
import android.content.ServiceConnection;

public final class e implements ServiceConnection
{
    private final int Jm;
    final /* synthetic */ x fi;
    
    public e(final x fi, final int jm) {
        this.fi = fi;
        this.Jm = jm;
    }
    
    public void onServiceConnected(final ComponentName componentName, final IBinder binder) {
        l.ho(binder, "Expecting a valid IBinder");
        final x fi = this.fi;
        synchronized (fi.gh) {
            this.fi.gi = zzu$zza.zzha(binder);
            // monitorexit(x.ii(fi))
            this.fi.hS(0, null, this.Jm);
        }
    }
    
    public void onServiceDisconnected(final ComponentName componentName) {
        Object o = this.fi.gh;
        synchronized (o) {
            this.fi.gi = null;
            // monitorexit(o)
            final Handler mHandler = this.fi.mHandler;
            o = this.fi.mHandler;
            o = ((Handler)o).obtainMessage(4, this.Jm, 1);
            mHandler.sendMessage((Message)o);
        }
    }
}
