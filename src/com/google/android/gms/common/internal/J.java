// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.internal;

import java.util.Collections;
import android.os.DeadObjectException;
import android.accounts.Account;
import android.content.Intent;
import android.os.IBinder;
import java.util.Set;
import com.google.android.gms.common.api.A;
import java.util.Date;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.io.PrintWriter;
import java.io.FileDescriptor;
import android.os.Bundle;
import android.content.ServiceConnection;
import android.content.Context;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicInteger;
import com.google.android.gms.common.f;
import android.util.Log;
import android.os.IInterface;
import com.google.android.gms.common.ConnectionResult;
import android.app.PendingIntent;
import android.os.Message;
import android.os.Looper;
import android.os.Handler;

final class j extends Handler
{
    final /* synthetic */ x iu;
    
    public j(final x iu, final Looper looper) {
        this.iu = iu;
        super(looper);
    }
    
    private void jY(final Message message) {
        final F f = (F)message.obj;
        f.jX();
        f.lo();
    }
    
    private boolean jZ(final Message message) {
        boolean b = true;
        if (message.what != 2 && message.what != (b ? 1 : 0) && message.what != 5) {
            b = false;
        }
        return b;
    }
    
    public void handleMessage(final Message message) {
        final int n = 1;
        final int n2 = 4;
        PendingIntent pendingIntent = null;
        if (this.iu.je.get() != message.arg1) {
            if (this.jZ(message)) {
                this.jY(message);
            }
            return;
        }
        if (message.what == n || message.what == 5) {
            if (!this.iu.gH()) {
                this.jY(message);
                return;
            }
        }
        if (message.what == 3) {
            if (message.obj instanceof PendingIntent) {
                pendingIntent = (PendingIntent)message.obj;
            }
            final ConnectionResult connectionResult = new ConnectionResult(message.arg2, pendingIntent);
            this.iu.jj.jp(connectionResult);
            this.iu.kJ(connectionResult);
            return;
        }
        if (message.what == n2) {
            this.iu.kV(n2, null);
            if (this.iu.iW != null) {
                this.iu.iW.le(message.arg2);
            }
            this.iu.kX(message.arg2);
            this.iu.kT(n2, n, null);
            return;
        }
        if (message.what == 2 && !this.iu.gN()) {
            this.jY(message);
            return;
        }
        if (!this.jZ(message)) {
            Log.wtf("GmsClient", new StringBuilder(45).append("Don't know how to handle message: ").append(message.what).toString(), (Throwable)new Exception());
            return;
        }
        ((F)message.obj).lm();
    }
}
