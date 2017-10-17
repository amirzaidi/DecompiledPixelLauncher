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
import android.view.WindowManager$LayoutParams;
import android.os.Bundle;
import android.app.Activity;

public class d
{
    private static int LY;
    private int LN;
    private final Activity LO;
    private Bundle LP;
    private WindowManager$LayoutParams LQ;
    private int LR;
    private final b LS;
    private final g LT;
    private e LU;
    private final h LV;
    protected ILauncherOverlay LW;
    private int LX;
    private final BroadcastReceiver LZ;
    private boolean mDestroyed;
    
    static {
        d.LY = -1;
    }
    
    public d(final Activity lo, final b ls, final f f) {
        final int n = 19;
        this.LZ = new j(this);
        this.LN = 0;
        this.mDestroyed = false;
        this.LX = 0;
        this.LO = lo;
        this.LS = ls;
        this.LV = new h((Context)lo, 65);
        this.LR = f.Mf;
        this.LT = g.get((Context)lo);
        this.LW = this.LT.RN(this);
        final IntentFilter intentFilter = new IntentFilter("android.intent.action.PACKAGE_ADDED");
        intentFilter.addDataScheme("package");
        if (Build$VERSION.SDK_INT >= n) {
            intentFilter.addDataSchemeSpecificPart("com.google.android.googlequicksearchbox", 0);
        }
        this.LO.registerReceiver(this.LZ, intentFilter);
        if (d.LY < 1) {
            Ru((Context)lo);
        }
        this.Ry();
        if (Build$VERSION.SDK_INT >= n && this.LO.getWindow() != null && this.LO.getWindow().peekDecorView() != null && this.LO.getWindow().peekDecorView().isAttachedToWindow()) {
            this.onAttachedToWindow();
        }
    }
    
    static Intent RC(final Context context) {
        final String packageName = context.getPackageName();
        return new Intent("com.android.launcher3.WINDOW_OVERLAY").setPackage("com.google.android.googlequicksearchbox").setData(Uri.parse(new StringBuilder(String.valueOf(packageName).length() + 18).append("app://").append(packageName).append(":").append(Process.myUid()).toString()).buildUpon().appendQueryParameter("v", Integer.toString(7)).build());
    }
    
    private void RE(final int lx) {
        final boolean b = true;
        boolean b2 = false;
        if (this.LX != lx) {
            this.LX = lx;
            final b ls = this.LS;
            final boolean b3 = (lx & 0x1) != 0x0 && b;
            if ((lx & 0x2) != 0x0) {
                b2 = b;
            }
            ls.et(b3, b2);
        }
    }
    
    private void RF(final boolean b) {
        if (!this.mDestroyed) {
            this.LO.unregisterReceiver(this.LZ);
        }
        this.mDestroyed = true;
        this.LV.RS();
        if (this.LU != null) {
            this.LU.clear();
            this.LU = null;
        }
        this.LT.RL(this, b);
    }
    
    private void Rm() {
        if (this.LW != null) {
            ILauncherOverlay lw5 = null;
            try {
                Label_0184: {
                    if (this.LU == null) {
                        break Label_0184;
                    }
                Label_0019:
                    while (true) {
                        this.LU.RJ(this);
                        Label_0200: {
                            if (d.LY < 3) {
                                break Label_0200;
                            }
                            try {
                                final Bundle bundle = new Bundle();
                                bundle.putParcelable("layout_params", (Parcelable)this.LQ);
                                final Activity lo = this.LO;
                                try {
                                    final Resources resources = lo.getResources();
                                    try {
                                        bundle.putParcelable("configuration", (Parcelable)resources.getConfiguration());
                                        bundle.putInt("client_options", this.LR);
                                        Label_0238: {
                                            if (this.LP != null) {
                                                break Label_0238;
                                            }
                                        Label_0127:
                                            while (true) {
                                                final ILauncherOverlay lw = this.LW;
                                                try {
                                                    lw.windowAttached2(bundle, this.LU);
                                                    while (true) {
                                                        Label_0253: {
                                                            if (d.LY < 4) {
                                                                break Label_0253;
                                                            }
                                                            final ILauncherOverlay lw2 = this.LW;
                                                            try {
                                                                lw2.setActivityState(this.LN);
                                                                return;
                                                                try {
                                                                    final e lu = new e();
                                                                    try {
                                                                        this.LU = lu;
                                                                        continue Label_0019;
                                                                        final ILauncherOverlay lw3 = this.LW;
                                                                        try {
                                                                            final WindowManager$LayoutParams lq = this.LQ;
                                                                            try {
                                                                                final e lu2 = this.LU;
                                                                                try {
                                                                                    lw3.windowAttached(lq, lu2, this.LR);
                                                                                    continue;
                                                                                    final ILauncherOverlay lw4 = this.LW;
                                                                                    try {
                                                                                        lw4.onPause();
                                                                                        return;
                                                                                        Label_0278: {
                                                                                            lw5 = this.LW;
                                                                                        }
                                                                                    }
                                                                                    catch (RemoteException ex) {}
                                                                                    bundle.putAll(this.LP);
                                                                                    continue Label_0127;
                                                                                }
                                                                                // iftrue(Label_0278:, this.LN & 0x2 != 0x0)
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
                                        }
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
            lw5.onResume();
        }
    }
    
    private boolean Rq() {
        return this.LW != null;
    }
    
    private static void Ru(final Context context) {
        final int ly = 1;
        final ResolveInfo resolveService = context.getPackageManager().resolveService(RC(context), 128);
        if (resolveService != null && resolveService.serviceInfo.metaData != null) {
            d.LY = resolveService.serviceInfo.metaData.getInt("service.api.version", ly);
        }
        else {
            d.LY = ly;
        }
    }
    
    private void Rw(final WindowManager$LayoutParams lq) {
        if (this.LQ != lq) {
            this.LQ = lq;
            if (this.LQ == null) {
                if (this.LW != null) {
                    try {
                        final ILauncherOverlay lw = this.LW;
                        try {
                            final Activity lo = this.LO;
                            try {
                                lw.windowDetached(lo.isChangingConfigurations());
                                this.LW = null;
                            }
                            catch (RemoteException ex) {}
                        }
                        catch (RemoteException ex2) {}
                    }
                    catch (RemoteException ex3) {}
                }
            }
            else {
                this.Rm();
            }
        }
    }
    
    public void RB(final f f) {
        if (f.Mf != this.LR) {
            this.LR = f.Mf;
            if (this.LQ != null) {
                this.Rm();
            }
        }
    }
    
    public void RD(final boolean b) {
        int n = 0;
        if (this.LW != null) {
            while (true) {
                while (true) {
                    Label_0035: {
                        try {
                            final ILauncherOverlay lw = this.LW;
                            if (b) {
                                break Label_0035;
                            }
                            lw.openOverlay(n);
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
    
    public void Rl() {
        if (this.Rq()) {
            try {
                final ILauncherOverlay lw = this.LW;
                try {
                    lw.endScroll();
                }
                catch (RemoteException ex) {}
            }
            catch (RemoteException ex2) {}
        }
    }
    
    void Rn(final ILauncherOverlay lw) {
        this.LW = lw;
        if (this.LW != null) {
            if (this.LQ != null) {
                this.Rm();
            }
        }
        else {
            this.RE(0);
        }
    }
    
    public void Rp() {
        if (this.Rq()) {
            try {
                final ILauncherOverlay lw = this.LW;
                try {
                    lw.startScroll();
                }
                catch (RemoteException ex) {}
            }
            catch (RemoteException ex2) {}
        }
    }
    
    public void Rr(final boolean b) {
        int n = 0;
        if (this.LW != null) {
            while (true) {
                while (true) {
                    Label_0035: {
                        try {
                            final ILauncherOverlay lw = this.LW;
                            if (b) {
                                break Label_0035;
                            }
                            lw.closeOverlay(n);
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
    
    public void Rx(final Bundle lp) {
        this.LP = lp;
        if (this.LQ != null && d.LY >= 7) {
            this.Rm();
        }
    }
    
    public void Ry() {
        if (!this.mDestroyed) {
            if (!this.LT.RR() || !this.LV.RR()) {
                this.LO.runOnUiThread((Runnable)new i(this));
            }
        }
    }
    
    public void Rz(final float n) {
        if (this.Rq()) {
            try {
                this.LW.onScroll(n);
            }
            catch (RemoteException ex) {}
        }
    }
    
    public final void onAttachedToWindow() {
        if (!this.mDestroyed) {
            this.Rw(this.LO.getWindow().getAttributes());
        }
    }
    
    public void onDestroy() {
        boolean b = false;
        if (!this.LO.isChangingConfigurations()) {
            b = true;
        }
        this.RF(b);
    }
    
    public final void onDetachedFromWindow() {
        if (!this.mDestroyed) {
            this.Rw(null);
        }
    }
    
    public void onPause() {
        if (!this.mDestroyed) {
            this.LN &= 0xFFFFFFFD;
            if (this.LW != null && this.LQ != null) {
                ILauncherOverlay lw2 = null;
                try {
                    Label_0077: {
                        if (d.LY < 4) {
                            break Label_0077;
                        }
                        final ILauncherOverlay lw = this.LW;
                        try {
                            lw.setActivityState(this.LN);
                            return;
                            lw2 = this.LW;
                        }
                        catch (RemoteException ex) {}
                    }
                }
                catch (RemoteException ex2) {}
                lw2.onPause();
            }
        }
    }
    
    public void onResume() {
        if (!this.mDestroyed) {
            this.LN |= 0x2;
            if (this.LW != null && this.LQ != null) {
                ILauncherOverlay lw2 = null;
                try {
                    Label_0076: {
                        if (d.LY < 4) {
                            break Label_0076;
                        }
                        final ILauncherOverlay lw = this.LW;
                        try {
                            lw.setActivityState(this.LN);
                            return;
                            lw2 = this.LW;
                        }
                        catch (RemoteException ex) {}
                    }
                }
                catch (RemoteException ex2) {}
                lw2.onResume();
            }
        }
    }
    
    public void onStart() {
        if (!this.mDestroyed) {
            this.LT.RM(false);
            this.Ry();
            this.LN |= 0x1;
            if (this.LW != null && this.LQ != null) {
                try {
                    final ILauncherOverlay lw = this.LW;
                    try {
                        lw.setActivityState(this.LN);
                    }
                    catch (RemoteException ex) {}
                }
                catch (RemoteException ex2) {}
            }
        }
    }
    
    public void onStop() {
        if (!this.mDestroyed) {
            this.LT.RM(true);
            this.LV.RS();
            this.LN &= 0xFFFFFFFE;
            if (this.LW != null && this.LQ != null) {
                try {
                    final ILauncherOverlay lw = this.LW;
                    try {
                        lw.setActivityState(this.LN);
                    }
                    catch (RemoteException ex) {}
                }
                catch (RemoteException ex2) {}
            }
        }
    }
    
    public boolean startSearch(final byte[] array, final Bundle bundle) {
        if (d.LY >= 6) {
            if (this.LW != null) {
                try {
                    return this.LW.startSearch(array, bundle);
                }
                catch (RemoteException ex) {
                    Log.e("DrawerOverlayClient", "Error starting session for search", (Throwable)ex);
                }
            }
            return false;
        }
        return false;
    }
}
