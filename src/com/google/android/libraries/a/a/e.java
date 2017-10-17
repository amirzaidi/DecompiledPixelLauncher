// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.libraries.a.a;

import android.util.Log;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.os.RemoteException;
import com.google.android.libraries.launcherclient.ILauncherOverlayCallback;
import android.os.Parcelable;
import android.net.Uri;
import android.os.Process;
import android.content.Intent;
import android.os.Build$VERSION;
import android.content.IntentFilter;
import android.content.Context;
import android.content.BroadcastReceiver;
import com.google.android.libraries.launcherclient.ILauncherOverlay;
import android.os.Bundle;
import android.app.Activity;
import android.view.WindowManager$LayoutParams;
import android.view.ViewGroup$LayoutParams;
import android.os.Message;
import android.graphics.Point;
import android.os.Looper;
import android.view.Window;
import android.view.WindowManager;
import android.os.Handler;
import android.os.Handler$Callback;
import com.google.android.libraries.launcherclient.ILauncherOverlayCallback$Stub;

class e extends ILauncherOverlayCallback$Stub implements Handler$Callback
{
    private boolean Ma;
    private final Handler Mb;
    private int Mc;
    private d Md;
    private WindowManager Me;
    private Window mWindow;
    
    e() {
        this.Ma = false;
        this.Mb = new Handler(Looper.getMainLooper(), (Handler$Callback)this);
    }
    
    private void RI(final boolean ma) {
        if (this.Ma != ma) {
            this.Ma = ma;
        }
    }
    
    public void RJ(final d md) {
        this.Md = md;
        this.Me = md.LO.getWindowManager();
        final Point point = new Point();
        this.Me.getDefaultDisplay().getRealSize(point);
        this.Mc = -Math.max(point.x, point.y);
        this.mWindow = md.LO.getWindow();
    }
    
    public void clear() {
        this.Md = null;
        this.Me = null;
        this.mWindow = null;
    }
    
    public boolean handleMessage(final Message message) {
        final boolean b = true;
        if (this.Md == null) {
            return b;
        }
        switch (message.what) {
            default: {
                return false;
            }
            case 2: {
                if ((this.Md.LX & 0x1) != 0x0) {
                    this.Md.LS.onOverlayScrollChanged((float)message.obj);
                }
                return b;
            }
            case 3: {
                final WindowManager$LayoutParams attributes = this.mWindow.getAttributes();
                if (!(boolean)message.obj) {
                    attributes.x = 0;
                    attributes.flags &= 0xFFFFFDFF;
                }
                else {
                    attributes.x = this.Mc;
                    attributes.flags |= 0x200;
                }
                this.Me.updateViewLayout(this.mWindow.getDecorView(), (ViewGroup$LayoutParams)attributes);
                return b;
            }
            case 4: {
                this.Md.RE(message.arg1);
                if (this.Md.LS instanceof a) {
                    ((a)this.Md.LS).es(message.arg1);
                }
                return b;
            }
        }
    }
    
    public void overlayScrollChanged(final float n) {
        final int n2 = 2;
        this.Mb.removeMessages(n2);
        Message.obtain(this.Mb, n2, (Object)n).sendToTarget();
        if (n > 0.0f) {
            this.RI(false);
        }
    }
    
    public void overlayStatusChanged(final int n) {
        Message.obtain(this.Mb, 4, n, 0).sendToTarget();
    }
}
