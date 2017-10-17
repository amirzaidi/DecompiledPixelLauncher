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
    private final b fv;
    private final HashMap fw;
    private final Context fx;
    private final long fy;
    private final Handler mHandler;
    
    h(final Context context) {
        this.fw = new HashMap();
        this.fx = context.getApplicationContext();
        this.mHandler = new Handler(context.getMainLooper(), (Handler$Callback)this);
        this.fv = b.mc();
        this.fy = 5000L;
    }
    
    private void hc(final v v, final ServiceConnection serviceConnection, final String s) {
        while (true) {
            l.ho(serviceConnection, "ServiceConnection must not be null");
            Label_0248: {
                synchronized (this.fw) {
                    final f f = this.fw.get(v);
                    if (f == null) {
                        final String value = String.valueOf(v);
                        throw new IllegalStateException(new StringBuilder(String.valueOf(value).length() + 50).append("Nonexistent connection status for service config: ").append(value).toString());
                    }
                    if (f.gV(serviceConnection)) {
                        f.gP(serviceConnection, s);
                        if (!f.gO()) {
                            return;
                        }
                        break Label_0248;
                    }
                }
                break;
            }
            final Throwable t;
            this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(0, (Object)t), this.fy);
            return;
        }
        final String value2 = String.valueOf(v);
        throw new IllegalStateException(new StringBuilder(String.valueOf(value2).length() + 76).append("Trying to unbind a GmsServiceConnection  that was not bound before.  config=").append(value2).toString());
    }
    
    private boolean he(final v v, final ServiceConnection serviceConnection, final String s) {
        while (true) {
            l.ho(serviceConnection, "ServiceConnection must not be null");
            while (true) {
                f f = null;
                Label_0286: {
                    Label_0259: {
                        synchronized (this.fw) {
                            f = this.fw.get(v);
                            if (f != null) {
                                this.mHandler.removeMessages(0, (Object)f);
                                if (f.gV(serviceConnection)) {
                                    break;
                                }
                                f.gN(serviceConnection, s);
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
                                f.gN(serviceConnection, s);
                                f.gQ(s);
                                this.fw.put(v, f);
                            }
                            // monitorexit(this.fw)
                            return f.isBound();
                        }
                        break;
                    }
                    serviceConnection.onServiceConnected(f.gU(), f.gM());
                    continue;
                }
                f.gQ(s);
                continue;
            }
        }
        final String value = String.valueOf(v);
        final IllegalStateException ex = new IllegalStateException(new StringBuilder(String.valueOf(value).length() + 81).append("Trying to bind a GmsServiceConnection that was already connected before.  config=").append(value).toString());
    }
    
    public void gZ(final String s, final String s2, final ServiceConnection serviceConnection, final String s3) {
        this.hc(new v(s, s2), serviceConnection, s3);
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
                            synchronized (this.fw) {
                                if (f.gO()) {
                                    if (f.isBound()) {
                                        break Label_0105;
                                    }
                                    this.fw.remove(f.fl);
                                }
                                return true;
                            }
                        }
                        f.gS("GmsClientSupervisor");
                        continue;
                    }
                }
                break;
            }
        }
    }
    
    public boolean hd(final String s, final String s2, final ServiceConnection serviceConnection, final String s3) {
        return this.he(new v(s, s2), serviceConnection, s3);
    }
}
