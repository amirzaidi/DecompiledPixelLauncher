// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.internal;

import java.util.HashSet;
import android.content.ComponentName;
import java.util.Set;
import android.os.IBinder;
import android.os.Message;
import android.content.ServiceConnection;
import android.os.Handler;
import android.content.Context;
import java.util.HashMap;
import com.google.android.gms.common.stats.b;
import android.os.Handler$Callback;

final class h extends C implements Handler$Callback
{
    private final b in;
    private final HashMap io;
    private final Context ip;
    private final long iq;
    private final Handler mHandler;
    
    h(final Context context) {
        this.io = new HashMap();
        this.ip = context.getApplicationContext();
        this.mHandler = new Handler(context.getMainLooper(), (Handler$Callback)this);
        this.in = b.oQ();
        this.iq = 5000L;
    }
    
    private void jQ(final v v, final ServiceConnection serviceConnection, final String s) {
        while (true) {
            l.kc(serviceConnection, "ServiceConnection must not be null");
            Label_0248: {
                synchronized (this.io) {
                    final f f = this.io.get(v);
                    if (f == null) {
                        final String value = String.valueOf(v);
                        throw new IllegalStateException(new StringBuilder(String.valueOf(value).length() + 50).append("Nonexistent connection status for service config: ").append(value).toString());
                    }
                    if (f.jJ(serviceConnection)) {
                        f.jD(serviceConnection, s);
                        if (!f.jC()) {
                            return;
                        }
                        break Label_0248;
                    }
                }
                break;
            }
            final Throwable t;
            this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(0, (Object)t), this.iq);
            return;
        }
        final String value2 = String.valueOf(v);
        throw new IllegalStateException(new StringBuilder(String.valueOf(value2).length() + 76).append("Trying to unbind a GmsServiceConnection  that was not bound before.  config=").append(value2).toString());
    }
    
    private boolean jS(final v v, final ServiceConnection serviceConnection, final String s) {
        while (true) {
            l.kc(serviceConnection, "ServiceConnection must not be null");
            while (true) {
                f f = null;
                Label_0286: {
                    Label_0259: {
                        synchronized (this.io) {
                            f = this.io.get(v);
                            if (f != null) {
                                this.mHandler.removeMessages(0, (Object)f);
                                if (f.jJ(serviceConnection)) {
                                    break;
                                }
                                f.jB(serviceConnection, s);
                                switch (f.getState()) {
                                    case 1: {
                                        break Label_0259;
                                    }
                                    case 2: {
                                        break Label_0286;
                                    }
                                }
                            }
                            else {
                                f = new f(this, v);
                                f.jB(serviceConnection, s);
                                f.jE(s);
                                this.io.put(v, f);
                            }
                            // monitorexit(this.io)
                            return f.isBound();
                        }
                        break;
                    }
                    serviceConnection.onServiceConnected(f.jI(), f.jA());
                    continue;
                }
                f.jE(s);
                continue;
            }
        }
        final String value = String.valueOf(v);
        final IllegalStateException ex = new IllegalStateException(new StringBuilder(String.valueOf(value).length() + 81).append("Trying to bind a GmsServiceConnection that was already connected before.  config=").append(value).toString());
    }
    
    public boolean handleMessage(final Message message) {
        switch (message.what) {
            default: {
                return false;
            }
            case 0: {
                while (true) {
                    final f f = (f)message.obj;
                    while (true) {
                        Label_0105: {
                            synchronized (this.io) {
                                if (f.jC()) {
                                    if (f.isBound()) {
                                        break Label_0105;
                                    }
                                    this.io.remove(f.id);
                                }
                                return true;
                            }
                        }
                        f.jG("GmsClientSupervisor");
                        continue;
                    }
                }
                break;
            }
        }
    }
    
    public void jN(final String s, final String s2, final ServiceConnection serviceConnection, final String s3) {
        this.jQ(new v(s, s2), serviceConnection, s3);
    }
    
    public boolean jR(final String s, final String s2, final ServiceConnection serviceConnection, final String s3) {
        return this.jS(new v(s, s2), serviceConnection, s3);
    }
}
