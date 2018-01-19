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
import android.view.WindowManager$LayoutParams;
import android.os.Bundle;
import android.app.Activity;
import android.content.BroadcastReceiver;

public class d
{
    private static int NB;
    private int NA;
    private final i NC;
    private final BroadcastReceiver ND;
    private int Np;
    private final Activity Nq;
    private Bundle Nr;
    private WindowManager$LayoutParams Ns;
    private int Nt;
    private final b Nu;
    private final g Nv;
    private e Nw;
    private final h Nx;
    protected ILauncherOverlay Ny;
    private final i Nz;
    private boolean mDestroyed;
    
    static {
        d.NB = -1;
    }
    
    public d(final Activity nq, final b nu, final f f) {
        final int n = 19;
        this.NC = new i("Client", 20);
        this.Nz = new i("Service", 10);
        this.ND = new l(this);
        this.Np = 0;
        this.mDestroyed = false;
        this.NA = 0;
        this.Nq = nq;
        this.Nu = nu;
        this.Nx = new h((Context)nq, 65);
        this.Nt = f.NJ;
        this.Nv = g.get((Context)nq);
        this.Ny = this.Nv.DW(this);
        final IntentFilter intentFilter = new IntentFilter("android.intent.action.PACKAGE_ADDED");
        intentFilter.addDataScheme("package");
        if (Build$VERSION.SDK_INT >= n) {
            intentFilter.addDataSchemeSpecificPart("com.google.android.googlequicksearchbox", 0);
        }
        this.Nq.registerReceiver(this.ND, intentFilter);
        if (d.NB < 1) {
            DD((Context)nq);
        }
        this.DH();
        if (Build$VERSION.SDK_INT >= n && this.Nq.getWindow() != null && this.Nq.getWindow().peekDecorView() != null && this.Nq.getWindow().peekDecorView().isAttachedToWindow()) {
            this.onAttachedToWindow();
        }
    }
    
    private static void DD(final Context context) {
        final int nb = 1;
        final ResolveInfo resolveService = context.getPackageManager().resolveService(DL(context), 128);
        if (resolveService != null && resolveService.serviceInfo.metaData != null) {
            d.NB = resolveService.serviceInfo.metaData.getInt("service.api.version", nb);
        }
        else {
            d.NB = nb;
        }
    }
    
    private void DF(final WindowManager$LayoutParams ns) {
        if (this.Ns != ns) {
            this.Ns = ns;
            if (this.Ns == null) {
                if (this.Ny != null) {
                    try {
                        final ILauncherOverlay ny = this.Ny;
                        try {
                            final Activity nq = this.Nq;
                            try {
                                ny.windowDetached(nq.isChangingConfigurations());
                                this.Ny = null;
                            }
                            catch (RemoteException ex) {}
                        }
                        catch (RemoteException ex2) {}
                    }
                    catch (RemoteException ex3) {}
                }
            }
            else {
                this.Dt();
            }
        }
    }
    
    static Intent DL(final Context context) {
        final String packageName = context.getPackageName();
        return new Intent("com.android.launcher3.WINDOW_OVERLAY").setPackage("com.google.android.googlequicksearchbox").setData(Uri.parse(new StringBuilder(String.valueOf(packageName).length() + 18).append("app://").append(packageName).append(":").append(Process.myUid()).toString()).buildUpon().appendQueryParameter("v", Integer.toString(7)).appendQueryParameter("cv", Integer.toString(9)).build());
    }
    
    private void DN(final int na) {
        final boolean b = true;
        boolean b2 = false;
        if (this.NA != na) {
            this.NA = na;
            final b nu = this.Nu;
            final boolean b3 = (na & 0x1) != 0x0 && b;
            if ((na & 0x2) != 0x0) {
                b2 = b;
            }
            nu.fd(b3, b2);
        }
    }
    
    private void DO(final boolean b) {
        if (!this.mDestroyed) {
            this.Nq.unregisterReceiver(this.ND);
        }
        this.mDestroyed = true;
        this.Nx.Eb();
        if (this.Nw != null) {
            this.Nw.clear();
            this.Nw = null;
        }
        this.Nv.DU(this, b);
    }
    
    private void Dt() {
        if (this.Ny != null) {
            ILauncherOverlay ny5 = null;
            try {
                Label_0185: {
                    if (this.Nw == null) {
                        break Label_0185;
                    }
                Label_0019:
                    while (true) {
                        this.Nw.DS(this);
                        Label_0201: {
                            if (d.NB < 3) {
                                break Label_0201;
                            }
                            try {
                                final Bundle bundle = new Bundle();
                                bundle.putParcelable("layout_params", (Parcelable)this.Ns);
                                final Activity nq = this.Nq;
                                try {
                                    final Resources resources = nq.getResources();
                                    try {
                                        bundle.putParcelable("configuration", (Parcelable)resources.getConfiguration());
                                        bundle.putInt("client_options", this.Nt);
                                        Label_0239: {
                                            if (this.Nr != null) {
                                                break Label_0239;
                                            }
                                        Label_0128:
                                            while (true) {
                                                final ILauncherOverlay ny = this.Ny;
                                                try {
                                                    ny.windowAttached2(bundle, this.Nw);
                                                    while (true) {
                                                        Label_0254: {
                                                            if (d.NB < 4) {
                                                                break Label_0254;
                                                            }
                                                            final ILauncherOverlay ny2 = this.Ny;
                                                            try {
                                                                ny2.setActivityState(this.Np);
                                                                return;
                                                                try {
                                                                    final e nw = new e();
                                                                    try {
                                                                        this.Nw = nw;
                                                                        continue Label_0019;
                                                                        final ILauncherOverlay ny3 = this.Ny;
                                                                        try {
                                                                            final WindowManager$LayoutParams ns = this.Ns;
                                                                            try {
                                                                                final e nw2 = this.Nw;
                                                                                try {
                                                                                    ny3.windowAttached(ns, nw2, this.Nt);
                                                                                    continue;
                                                                                    final ILauncherOverlay ny4 = this.Ny;
                                                                                    try {
                                                                                        ny4.onPause();
                                                                                        return;
                                                                                        Label_0279: {
                                                                                            ny5 = this.Ny;
                                                                                        }
                                                                                    }
                                                                                    catch (RemoteException ex) {}
                                                                                    bundle.putAll(this.Nr);
                                                                                    continue Label_0128;
                                                                                }
                                                                                // iftrue(Label_0279:, this.Np & 0x2 != 0x0)
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
            ny5.onResume();
        }
    }
    
    private boolean Dy() {
        return this.Ny != null;
    }
    
    public void DB(final String s, final PrintWriter printWriter) {
        printWriter.println(String.valueOf(s).concat("LauncherClient"));
        final String concat = String.valueOf(s).concat("  ");
        printWriter.println(new StringBuilder(String.valueOf(concat).length() + 18).append(concat).append("isConnected: ").append(this.Dy()).toString());
        printWriter.println(new StringBuilder(String.valueOf(concat).length() + 18).append(concat).append("act.isBound: ").append(this.Nx.isBound()).toString());
        printWriter.println(new StringBuilder(String.valueOf(concat).length() + 18).append(concat).append("app.isBound: ").append(this.Nv.isBound()).toString());
        printWriter.println(new StringBuilder(String.valueOf(concat).length() + 27).append(concat).append("serviceVersion: ").append(d.NB).toString());
        printWriter.println(new StringBuilder(String.valueOf(concat).length() + 26).append(concat).append("clientVersion: ").append(9).toString());
        printWriter.println(new StringBuilder(String.valueOf(concat).length() + 27).append(concat).append("mActivityState: ").append(this.Np).toString());
        printWriter.println(new StringBuilder(String.valueOf(concat).length() + 27).append(concat).append("mServiceStatus: ").append(this.NA).toString());
        printWriter.println(new StringBuilder(String.valueOf(concat).length() + 45).append(concat).append("mCurrentServiceConnectionOptions: ").append(this.Nt).toString());
        this.NC.Eh(concat, printWriter);
        this.Nz.Eh(concat, printWriter);
    }
    
    public void DG(final Bundle nr) {
        this.Nr = nr;
        if (this.Ns != null && d.NB >= 7) {
            this.Dt();
        }
    }
    
    public void DH() {
        if (!this.mDestroyed) {
            if (!this.Nv.Ea() || !this.Nx.Ea()) {
                this.Nq.runOnUiThread((Runnable)new j(this));
            }
        }
    }
    
    public void DI(final float n) {
        this.NC.Eg("updateMove", n);
        if (this.Dy()) {
            try {
                this.Ny.onScroll(n);
            }
            catch (RemoteException ex) {}
        }
    }
    
    public void DK(final f f) {
        if (f.NJ != this.Nt) {
            this.Nt = f.NJ;
            if (this.Ns != null) {
                this.Dt();
            }
            this.NC.Ef("setClientOptions ", this.Nt);
        }
    }
    
    public void DM(final boolean b) {
        int n = 0;
        this.NC.Ed("showOverlay", b);
        if (this.Ny != null) {
            while (true) {
                while (true) {
                    Label_0052: {
                        try {
                            final ILauncherOverlay ny = this.Ny;
                            if (b) {
                                break Label_0052;
                            }
                            ny.openOverlay(n);
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
    
    public void Ds() {
        this.NC.Ei("endMove");
        if (this.Dy()) {
            try {
                final ILauncherOverlay ny = this.Ny;
                try {
                    ny.endScroll();
                }
                catch (RemoteException ex) {}
            }
            catch (RemoteException ex2) {}
        }
    }
    
    void Du(final ILauncherOverlay ny) {
        this.Nz.Ed("Connected", ny != null);
        this.Ny = ny;
        if (this.Ny != null) {
            if (this.Ns != null) {
                this.Dt();
            }
        }
        else {
            this.DN(0);
        }
    }
    
    public void Dx() {
        this.NC.Ei("startMove");
        if (this.Dy()) {
            try {
                final ILauncherOverlay ny = this.Ny;
                try {
                    ny.startScroll();
                }
                catch (RemoteException ex) {}
            }
            catch (RemoteException ex2) {}
        }
    }
    
    public void Dz(final boolean b) {
        int n = 0;
        this.NC.Ed("hideOverlay", b);
        if (this.Ny != null) {
            while (true) {
                while (true) {
                    Label_0052: {
                        try {
                            final ILauncherOverlay ny = this.Ny;
                            if (b) {
                                break Label_0052;
                            }
                            ny.closeOverlay(n);
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
            this.NC.Ei("attachedToWindow");
            this.DF(this.Nq.getWindow().getAttributes());
        }
    }
    
    public void onDestroy() {
        boolean b = false;
        if (!this.Nq.isChangingConfigurations()) {
            b = true;
        }
        this.DO(b);
    }
    
    public final void onDetachedFromWindow() {
        if (!this.mDestroyed) {
            this.NC.Ei("detachedFromWindow");
            this.DF(null);
        }
    }
    
    public void onPause() {
        if (!this.mDestroyed) {
            this.Np &= 0xFFFFFFFD;
            Label_0031: {
                if (this.Ny != null && this.Ns != null) {
                    ILauncherOverlay ny2 = null;
                    try {
                        Label_0095: {
                            if (d.NB < 4) {
                                break Label_0095;
                            }
                            final ILauncherOverlay ny = this.Ny;
                            try {
                                ny.setActivityState(this.Np);
                                break Label_0031;
                                ny2 = this.Ny;
                            }
                            catch (RemoteException ex) {}
                        }
                    }
                    catch (RemoteException ex2) {}
                    ny2.onPause();
                }
            }
            this.NC.Ef("stateChanged ", this.Np);
        }
    }
    
    public void onResume() {
        if (!this.mDestroyed) {
            this.Np |= 0x2;
            Label_0030: {
                if (this.Ny != null && this.Ns != null) {
                    ILauncherOverlay ny2 = null;
                    try {
                        Label_0094: {
                            if (d.NB < 4) {
                                break Label_0094;
                            }
                            final ILauncherOverlay ny = this.Ny;
                            try {
                                ny.setActivityState(this.Np);
                                break Label_0030;
                                ny2 = this.Ny;
                            }
                            catch (RemoteException ex) {}
                        }
                    }
                    catch (RemoteException ex2) {}
                    ny2.onResume();
                }
            }
            this.NC.Ef("stateChanged ", this.Np);
        }
    }
    
    public void onStart() {
        if (!this.mDestroyed) {
            this.Nv.DV(false);
            this.DH();
            this.Np |= 0x1;
            if (this.Ny != null && this.Ns != null) {
                try {
                    final ILauncherOverlay ny = this.Ny;
                    try {
                        ny.setActivityState(this.Np);
                    }
                    catch (RemoteException ex) {}
                }
                catch (RemoteException ex2) {}
            }
            this.NC.Ef("stateChanged ", this.Np);
        }
    }
    
    public void onStop() {
        if (!this.mDestroyed) {
            this.Nv.DV(true);
            this.Nx.Eb();
            this.Np &= 0xFFFFFFFE;
            if (this.Ny != null && this.Ns != null) {
                try {
                    final ILauncherOverlay ny = this.Ny;
                    try {
                        ny.setActivityState(this.Np);
                    }
                    catch (RemoteException ex) {}
                }
                catch (RemoteException ex2) {}
            }
            this.NC.Ef("stateChanged ", this.Np);
        }
    }
    
    public boolean startSearch(final byte[] array, final Bundle bundle) {
        this.NC.Ei("startSearch");
        if (d.NB >= 6) {
            if (this.Ny != null) {
                try {
                    return this.Ny.startSearch(array, bundle);
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
