// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection;

import com.android.launcher3.compat.UserManagerCompat;
import com.android.launcher3.util.PackageUserKey;
import android.os.Message;
import android.util.Pair;
import com.android.launcher3.userevent.nano.LauncherLogProto$LauncherEvent;
import com.android.launcher3.util.ComponentKey;
import com.android.launcher3.Utilities;
import com.android.launcher3.LauncherAppState;
import android.os.HandlerThread;
import android.os.Handler;
import android.content.Context;
import com.android.launcher3.InvariantDeviceProfile;
import android.os.Handler$Callback;

public class o implements Handler$Callback
{
    private static final Object LOCK;
    static final int MSG_DESTROY = 1;
    static final int MSG_INIT;
    private static o bV;
    private final InvariantDeviceProfile bU;
    private final Context mContext;
    final Handler mMessageHandler;
    k mServiceHandler;
    final HandlerThread mWorkerThread;
    
    static {
        LOCK = new Object();
    }
    
    private o(final Context mContext) {
        this.mServiceHandler = null;
        this.mContext = mContext;
        (this.mWorkerThread = new HandlerThread("reflection-thread")).start();
        this.mMessageHandler = new Handler(this.mWorkerThread.getLooper(), (Handler$Callback)this);
        this.bU = LauncherAppState.getIDP(mContext);
    }
    
    private void bD() {
        if (this.mServiceHandler != null) {
            this.mServiceHandler.bf(true);
            this.mServiceHandler = null;
        }
    }
    
    private int bE() {
        return Math.max(this.bU.landscapeProfile.allAppsNumPredictiveCols, this.bU.portraitProfile.allAppsNumPredictiveCols);
    }
    
    private void bF() {
        if (this.mServiceHandler == null) {
            this.mServiceHandler = j.ba(this.mContext);
        }
    }
    
    public static o getInstance(final Context context) {
        synchronized (o.LOCK) {
            if (o.bV == null) {
                (o.bV = new o(context.getApplicationContext())).bA(Utilities.getPrefs(context).getBoolean("pref_show_predictions", true));
            }
            return o.bV;
        }
    }
    
    public void bA(final boolean b) {
        final int n = 1;
        if (b) {
            this.mMessageHandler.removeMessages(n);
            this.mMessageHandler.sendEmptyMessage(0);
        }
        else {
            this.mMessageHandler.removeMessages(0);
            this.mMessageHandler.sendEmptyMessage(n);
        }
    }
    
    public void bB(final ComponentKey componentKey, final LauncherLogProto$LauncherEvent launcherLogProto$LauncherEvent) {
        Message.obtain(this.mMessageHandler, 2, (Object)Pair.create((Object)componentKey, (Object)launcherLogProto$LauncherEvent)).sendToTarget();
    }
    
    public void bC(final PackageUserKey packageUserKey) {
        Message.obtain(this.mMessageHandler, 4, (Object)packageUserKey).sendToTarget();
    }
    
    public void bz(final long n) {
        final int n2 = 3;
        this.mMessageHandler.removeMessages(n2);
        this.mMessageHandler.sendEmptyMessageDelayed(n2, n);
    }
    
    public boolean handleMessage(final Message message) {
        final boolean b = true;
        switch (message.what) {
            default: {
                return false;
            }
            case 0: {
                this.bF();
                return b;
            }
            case 1: {
                this.bD();
                return b;
            }
            case 2: {
                final Pair pair = (Pair)message.obj;
                final ComponentKey componentKey = (ComponentKey)pair.first;
                final LauncherLogProto$LauncherEvent launcherLogProto$LauncherEvent = (LauncherLogProto$LauncherEvent)pair.second;
                if (this.mServiceHandler != null) {
                    this.mServiceHandler.bk("GEL", this.mServiceHandler.bh(componentKey.componentName, UserManagerCompat.getInstance(this.mContext).getSerialNumberForUser(componentKey.user)), "app_launch", launcherLogProto$LauncherEvent);
                }
                return b;
            }
            case 3: {
                if (this.mServiceHandler != null) {
                    this.mServiceHandler.bj("GEL", this.bE());
                }
                return b;
            }
            case 4: {
                if (this.mServiceHandler != null) {
                    this.mServiceHandler.bi((PackageUserKey)message.obj);
                }
                return b;
            }
        }
    }
}
