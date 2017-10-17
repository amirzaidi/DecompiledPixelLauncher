// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection;

import com.android.launcher3.compat.UserManagerCompat;
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

public class l implements Handler$Callback
{
    private static final Object LOCK;
    static final int MSG_DESTROY = 1;
    static final int MSG_INIT;
    private static l cW;
    private final InvariantDeviceProfile cV;
    private final Context mContext;
    final Handler mMessageHandler;
    e mServiceHandler;
    final HandlerThread mWorkerThread;
    
    static {
        LOCK = new Object();
    }
    
    private l(final Context mContext) {
        this.mServiceHandler = null;
        this.mContext = mContext;
        (this.mWorkerThread = new HandlerThread("reflection-thread")).start();
        this.mMessageHandler = new Handler(this.mWorkerThread.getLooper(), (Handler$Callback)this);
        this.cV = LauncherAppState.getIDP(mContext);
    }
    
    private void cr() {
        if (this.mServiceHandler != null) {
            this.mServiceHandler.bU(true);
            this.mServiceHandler = null;
        }
    }
    
    private int cs() {
        return Math.max(this.cV.landscapeProfile.allAppsNumPredictiveCols, this.cV.portraitProfile.allAppsNumPredictiveCols);
    }
    
    private void ct() {
        if (this.mServiceHandler == null) {
            this.mServiceHandler = n.cw(this.mContext);
        }
    }
    
    public static l getInstance(final Context context) {
        synchronized (l.LOCK) {
            if (l.cW == null) {
                (l.cW = new l(context.getApplicationContext())).cq(Utilities.getPrefs(context).getBoolean("pref_show_predictions", true));
            }
            return l.cW;
        }
    }
    
    public void cq(final boolean b) {
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
    
    public void cu(final ComponentKey componentKey, final LauncherLogProto$LauncherEvent launcherLogProto$LauncherEvent) {
        Message.obtain(this.mMessageHandler, 2, (Object)Pair.create((Object)componentKey, (Object)launcherLogProto$LauncherEvent)).sendToTarget();
    }
    
    public void cv(final long n) {
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
                this.ct();
                return b;
            }
            case 1: {
                this.cr();
                return b;
            }
            case 2: {
                final Pair pair = (Pair)message.obj;
                final ComponentKey componentKey = (ComponentKey)pair.first;
                final LauncherLogProto$LauncherEvent launcherLogProto$LauncherEvent = (LauncherLogProto$LauncherEvent)pair.second;
                if (this.mServiceHandler != null) {
                    this.mServiceHandler.bY("GEL", this.mServiceHandler.bW(componentKey.componentName, UserManagerCompat.getInstance(this.mContext).getSerialNumberForUser(componentKey.user)), "app_launch", launcherLogProto$LauncherEvent);
                }
                return b;
            }
            case 3: {
                if (this.mServiceHandler != null) {
                    this.mServiceHandler.bX("GEL", this.cs());
                }
                return b;
            }
        }
    }
}
