// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.libraries.a.a;

import android.util.Log;
import java.io.PrintWriter;
import android.content.res.Resources;
import com.google.android.libraries.launcherclient.ILauncherOverlayCallback;
import android.os.Parcelable;
import android.net.Uri;
import android.os.Process;
import android.content.Intent;
import android.os.RemoteException;
import android.content.pm.ResolveInfo;
import android.os.Build$VERSION;
import android.content.IntentFilter;
import android.content.Context;
import com.google.android.libraries.launcherclient.ILauncherOverlay;
import android.os.Bundle;
import android.app.Activity;
import android.content.BroadcastReceiver;
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
    private boolean NE;
    private final Handler NF;
    private int NG;
    private d NH;
    private WindowManager NI;
    private Window mWindow;
    
    e() {
        this.NE = false;
        this.NF = new Handler(Looper.getMainLooper(), (Handler$Callback)this);
    }
    
    private void DR(final boolean ne) {
        if (this.NE != ne) {
            this.NE = ne;
        }
    }
    
    public void DS(final d nh) {
        this.NH = nh;
        this.NI = nh.Nq.getWindowManager();
        final Point point = new Point();
        this.NI.getDefaultDisplay().getRealSize(point);
        this.NG = -Math.max(point.x, point.y);
        this.mWindow = nh.Nq.getWindow();
    }
    
    public void clear() {
        this.NH = null;
        this.NI = null;
        this.mWindow = null;
    }
    
    public boolean handleMessage(final Message message) {
        final boolean b = true;
        if (this.NH == null) {
            return b;
        }
        switch (message.what) {
            default: {
                return false;
            }
            case 2: {
                if ((this.NH.NA & 0x1) != 0x0) {
                    final float floatValue = (float)message.obj;
                    this.NH.Nu.onOverlayScrollChanged(floatValue);
                    if (floatValue <= 0.0f) {
                        this.NH.Nz.Ei("onScroll 0, overlay closed");
                    }
                    else if (floatValue >= 1.0f) {
                        this.NH.Nz.Ei("onScroll 1, overlay opened");
                    }
                    else {
                        this.NH.Nz.Eg("onScroll", floatValue);
                    }
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
                    attributes.x = this.NG;
                    attributes.flags |= 0x200;
                }
                this.NI.updateViewLayout(this.mWindow.getDecorView(), (ViewGroup$LayoutParams)attributes);
                return b;
            }
            case 4: {
                this.NH.DN(message.arg1);
                this.NH.Nz.Ef("stateChanged", message.arg1);
                if (this.NH.Nu instanceof a) {
                    ((a)this.NH.Nu).fc(message.arg1);
                }
                return b;
            }
        }
    }
    
    public void overlayScrollChanged(final float n) {
        final int n2 = 2;
        this.NF.removeMessages(n2);
        Message.obtain(this.NF, n2, (Object)n).sendToTarget();
        if (n > 0.0f) {
            this.DR(false);
        }
    }
    
    public void overlayStatusChanged(final int n) {
        Message.obtain(this.NF, 4, n, 0).sendToTarget();
    }
}
