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
import android.view.WindowManager$LayoutParams;
import android.app.Activity;

public class c
{
    private static int Ks;
    private int Ki;
    private final Activity Kj;
    private WindowManager$LayoutParams Kk;
    private int Kl;
    private final a Km;
    private final f Kn;
    private d Ko;
    private final g Kp;
    protected ILauncherOverlay Kq;
    private int Kr;
    private final BroadcastReceiver Kt;
    private boolean mDestroyed;
    
    static {
        c.Ks = -1;
    }
    
    public c(final Activity kj, final a km, final e e) {
        this.Kt = new i(this);
        this.Ki = 0;
        this.mDestroyed = false;
        this.Kr = 0;
        this.Kj = kj;
        this.Km = km;
        this.Kp = new g((Context)kj, 65);
        this.Kl = e.KA;
        this.Kn = f.get((Context)kj);
        this.Kq = this.Kn.QT(this);
        final IntentFilter intentFilter = new IntentFilter("android.intent.action.PACKAGE_ADDED");
        intentFilter.addDataScheme("package");
        if (Build$VERSION.SDK_INT >= 19) {
            intentFilter.addDataSchemeSpecificPart("com.google.android.googlequicksearchbox", 0);
        }
        this.Kj.registerReceiver(this.Kt, intentFilter);
        if (c.Ks < 1) {
            QB((Context)kj);
        }
        this.QE();
    }
    
    private static void QB(final Context context) {
        final int ks = 1;
        final ResolveInfo resolveService = context.getPackageManager().resolveService(QI(context), 128);
        if (resolveService != null && resolveService.serviceInfo.metaData != null) {
            c.Ks = resolveService.serviceInfo.metaData.getInt("service.api.version", ks);
        }
        else {
            c.Ks = ks;
        }
    }
    
    private void QD(final WindowManager$LayoutParams kk) {
        this.Kk = kk;
        if (this.Kk == null) {
            if (this.Kq != null) {
                try {
                    final ILauncherOverlay kq = this.Kq;
                    try {
                        final Activity kj = this.Kj;
                        try {
                            kq.windowDetached(kj.isChangingConfigurations());
                            this.Kq = null;
                        }
                        catch (RemoteException ex) {}
                    }
                    catch (RemoteException ex2) {}
                }
                catch (RemoteException ex3) {}
            }
        }
        else {
            this.Qt();
        }
    }
    
    static Intent QI(final Context context) {
        final String packageName = context.getPackageName();
        return new Intent("com.android.launcher3.WINDOW_OVERLAY").setPackage("com.google.android.googlequicksearchbox").setData(Uri.parse(new StringBuilder(String.valueOf(packageName).length() + 18).append("app://").append(packageName).append(":").append(Process.myUid()).toString()).buildUpon().appendQueryParameter("v", Integer.toString(5)).build());
    }
    
    private void QK(final int kr) {
        final boolean b = true;
        boolean b2 = false;
        if (this.Kr != kr) {
            this.Kr = kr;
            final a km = this.Km;
            final boolean b3 = (kr & 0x1) != 0x0 && b;
            if ((kr & 0x2) != 0x0) {
                b2 = b;
            }
            km.dd(b3, b2);
        }
    }
    
    private void QL(final boolean b) {
        if (!this.mDestroyed) {
            this.Kj.unregisterReceiver(this.Kt);
        }
        this.mDestroyed = true;
        this.Kp.QY();
        if (this.Ko != null) {
            this.Ko.clear();
            this.Ko = null;
        }
        this.Kn.QR(this, b);
    }
    
    private void Qt() {
        if (this.Kq != null) {
            ILauncherOverlay kq5 = null;
            try {
                Label_0174: {
                    if (this.Ko == null) {
                        break Label_0174;
                    }
                Label_0019:
                    while (true) {
                        this.Ko.QP(this);
                        Label_0190: {
                            if (c.Ks < 3) {
                                break Label_0190;
                            }
                            try {
                                final Bundle bundle = new Bundle();
                                bundle.putParcelable("layout_params", (Parcelable)this.Kk);
                                final Activity kj = this.Kj;
                                try {
                                    final Resources resources = kj.getResources();
                                    try {
                                        bundle.putParcelable("configuration", (Parcelable)resources.getConfiguration());
                                        bundle.putInt("client_options", this.Kl);
                                        final ILauncherOverlay kq = this.Kq;
                                        try {
                                            kq.windowAttached2(bundle, this.Ko);
                                            while (true) {
                                                Label_0228: {
                                                    if (c.Ks < 4) {
                                                        break Label_0228;
                                                    }
                                                    final ILauncherOverlay kq2 = this.Kq;
                                                    try {
                                                        kq2.setActivityState(this.Ki);
                                                        return;
                                                        try {
                                                            final d ko = new d();
                                                            try {
                                                                this.Ko = ko;
                                                                continue Label_0019;
                                                                final ILauncherOverlay kq3 = this.Kq;
                                                                try {
                                                                    final WindowManager$LayoutParams kk = this.Kk;
                                                                    try {
                                                                        final d ko2 = this.Ko;
                                                                        try {
                                                                            kq3.windowAttached(kk, ko2, this.Kl);
                                                                            continue;
                                                                            // iftrue(Label_0253:, this.Ki & 0x2 != 0x0)
                                                                            final ILauncherOverlay kq4 = this.Kq;
                                                                            try {
                                                                                kq4.onPause();
                                                                                return;
                                                                                Label_0253: {
                                                                                    kq5 = this.Kq;
                                                                                }
                                                                            }
                                                                            catch (RemoteException ex) {}
                                                                        }
                                                                        catch (RemoteException ex2) {}
                                                                    }
                                                                    catch (RemoteException ex3) {}
                                                                }
                                                                catch (RemoteException ex4) {}
                                                            }
                                                            catch (RemoteException ex5) {}
                                                        }
                                                        catch (RemoteException ex6) {}
                                                    }
                                                    catch (RemoteException ex7) {}
                                                }
                                            }
                                        }
                                        catch (RemoteException ex8) {}
                                    }
                                    catch (RemoteException ex9) {}
                                }
                                catch (RemoteException ex10) {}
                            }
                            catch (RemoteException ex11) {}
                        }
                        break;
                    }
                }
            }
            catch (RemoteException ex12) {}
            kq5.onResume();
        }
    }
    
    private boolean Qx() {
        return this.Kq != null;
    }
    
    public void QE() {
        if (!this.mDestroyed) {
            if (!this.Kn.QX() || !this.Kp.QX()) {
                this.Kj.runOnUiThread((Runnable)new h(this));
            }
        }
    }
    
    public void QF(final float n) {
        if (this.Qx()) {
            try {
                this.Kq.onScroll(n);
            }
            catch (RemoteException ex) {}
        }
    }
    
    public void QH(final e e) {
        if (e.KA != this.Kl) {
            this.Kl = e.KA;
            if (this.Kk != null) {
                this.Qt();
            }
        }
    }
    
    public void QJ(final boolean b) {
        int n = 0;
        if (this.Kq != null) {
            while (true) {
                while (true) {
                    Label_0035: {
                        try {
                            final ILauncherOverlay kq = this.Kq;
                            if (b) {
                                break Label_0035;
                            }
                            kq.openOverlay(n);
                        }
                        catch (RemoteException ex) {}
                        break;
                    }
                    n = 1;
                    continue;
                }
            }
        }
    }
    
    public void Qs() {
        if (this.Qx()) {
            try {
                final ILauncherOverlay kq = this.Kq;
                try {
                    kq.endScroll();
                }
                catch (RemoteException ex) {}
            }
            catch (RemoteException ex2) {}
        }
    }
    
    void Qu(final ILauncherOverlay kq) {
        this.Kq = kq;
        if (this.Kq != null) {
            if (this.Kk != null) {
                this.Qt();
            }
        }
        else {
            this.QK(0);
        }
    }
    
    public void Qw() {
        if (this.Qx()) {
            try {
                final ILauncherOverlay kq = this.Kq;
                try {
                    kq.startScroll();
                }
                catch (RemoteException ex) {}
            }
            catch (RemoteException ex2) {}
        }
    }
    
    public void Qy(final boolean b) {
        int n = 0;
        if (this.Kq != null) {
            while (true) {
                while (true) {
                    Label_0035: {
                        try {
                            final ILauncherOverlay kq = this.Kq;
                            if (b) {
                                break Label_0035;
                            }
                            kq.closeOverlay(n);
                        }
                        catch (RemoteException ex) {}
                        break;
                    }
                    n = 1;
                    continue;
                }
            }
        }
    }
    
    public final void onAttachedToWindow() {
        if (!this.mDestroyed) {
            this.QD(this.Kj.getWindow().getAttributes());
        }
    }
    
    public void onDestroy() {
        boolean b = false;
        if (!this.Kj.isChangingConfigurations()) {
            b = true;
        }
        this.QL(b);
    }
    
    public final void onDetachedFromWindow() {
        if (!this.mDestroyed) {
            this.QD(null);
        }
    }
    
    public void onPause() {
        if (!this.mDestroyed) {
            this.Ki &= 0xFFFFFFFD;
            if (this.Kq != null && this.Kk != null) {
                ILauncherOverlay kq2 = null;
                try {
                    Label_0077: {
                        if (c.Ks < 4) {
                            break Label_0077;
                        }
                        final ILauncherOverlay kq = this.Kq;
                        try {
                            kq.setActivityState(this.Ki);
                            return;
                            kq2 = this.Kq;
                        }
                        catch (RemoteException ex) {}
                    }
                }
                catch (RemoteException ex2) {}
                kq2.onPause();
            }
        }
    }
    
    public void onResume() {
        if (!this.mDestroyed) {
            this.Ki |= 0x2;
            if (this.Kq != null && this.Kk != null) {
                ILauncherOverlay kq2 = null;
                try {
                    Label_0076: {
                        if (c.Ks < 4) {
                            break Label_0076;
                        }
                        final ILauncherOverlay kq = this.Kq;
                        try {
                            kq.setActivityState(this.Ki);
                            return;
                            kq2 = this.Kq;
                        }
                        catch (RemoteException ex) {}
                    }
                }
                catch (RemoteException ex2) {}
                kq2.onResume();
            }
        }
    }
    
    public void onStart() {
        if (!this.mDestroyed) {
            this.Kn.QS(false);
            this.QE();
            this.Ki |= 0x1;
            if (this.Kq != null && this.Kk != null) {
                try {
                    final ILauncherOverlay kq = this.Kq;
                    try {
                        kq.setActivityState(this.Ki);
                    }
                    catch (RemoteException ex) {}
                }
                catch (RemoteException ex2) {}
            }
        }
    }
    
    public void onStop() {
        if (!this.mDestroyed) {
            this.Kn.QS(true);
            this.Kp.QY();
            this.Ki &= 0xFFFFFFFE;
            if (this.Kq != null && this.Kk != null) {
                try {
                    final ILauncherOverlay kq = this.Kq;
                    try {
                        kq.setActivityState(this.Ki);
                    }
                    catch (RemoteException ex) {}
                }
                catch (RemoteException ex2) {}
            }
        }
    }
}
