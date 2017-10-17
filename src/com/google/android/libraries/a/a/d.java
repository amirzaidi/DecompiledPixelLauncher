// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.libraries.a.a;

import android.content.res.Resources;
import com.google.android.libraries.launcherclient.ILauncherOverlayCallback;
import android.os.Parcelable;
import android.os.Bundle;
import android.net.Uri;
import android.os.Process;
import android.content.Intent;
import android.os.RemoteException;
import android.content.pm.ResolveInfo;
import android.os.Build$VERSION;
import android.content.IntentFilter;
import android.content.Context;
import android.content.BroadcastReceiver;
import com.google.android.libraries.launcherclient.ILauncherOverlay;
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

class d extends ILauncherOverlayCallback$Stub implements Handler$Callback
{
    private boolean Ku;
    private final Handler Kv;
    private int Kw;
    private c Kx;
    private WindowManager Ky;
    private Window Kz;
    
    d() {
        this.Ku = false;
        this.Kv = new Handler(Looper.getMainLooper(), (Handler$Callback)this);
    }
    
    private void QO(final boolean ku) {
        if (this.Ku != ku) {
            this.Ku = ku;
        }
    }
    
    public void QP(final c kx) {
        this.Kx = kx;
        this.Ky = kx.Kj.getWindowManager();
        final Point point = new Point();
        this.Ky.getDefaultDisplay().getRealSize(point);
        this.Kw = -Math.max(point.x, point.y);
        this.Kz = kx.Kj.getWindow();
    }
    
    public void clear() {
        this.Kx = null;
        this.Ky = null;
        this.Kz = null;
    }
    
    public boolean handleMessage(final Message message) {
        final boolean b = true;
        if (this.Kx == null) {
            return b;
        }
        switch (message.what) {
            default: {
                return false;
            }
            case 2: {
                if ((this.Kx.Kr & 0x1) != 0x0) {
                    this.Kx.Km.onOverlayScrollChanged((float)message.obj);
                }
                return b;
            }
            case 3: {
                final WindowManager$LayoutParams attributes = this.Kz.getAttributes();
                if (!(boolean)message.obj) {
                    attributes.x = 0;
                    attributes.flags &= 0xFFFFFDFF;
                }
                else {
                    attributes.x = this.Kw;
                    attributes.flags |= 0x200;
                }
                this.Ky.updateViewLayout(this.Kz.getDecorView(), (ViewGroup$LayoutParams)attributes);
                return b;
            }
            case 4: {
                this.Kx.QK(message.arg1);
                return b;
            }
        }
    }
    
    public void overlayScrollChanged(final float n) {
        final int n2 = 2;
        this.Kv.removeMessages(n2);
        Message.obtain(this.Kv, n2, (Object)n).sendToTarget();
        if (n > 0.0f) {
            this.QO(false);
        }
    }
    
    public void overlayStatusChanged(final int n) {
        Message.obtain(this.Kv, 4, n, 0).sendToTarget();
    }
}
