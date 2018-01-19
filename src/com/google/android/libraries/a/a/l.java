// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.libraries.a.a;

import android.util.Log;
import java.io.PrintWriter;
import android.content.res.Resources;
import com.google.android.libraries.launcherclient.ILauncherOverlayCallback;
import android.os.Parcelable;
import android.os.Process;
import android.os.RemoteException;
import android.content.pm.ResolveInfo;
import android.content.IntentFilter;
import com.google.android.libraries.launcherclient.ILauncherOverlay;
import android.view.WindowManager$LayoutParams;
import android.os.Bundle;
import android.app.Activity;
import android.net.Uri;
import android.os.Build$VERSION;
import android.content.Intent;
import android.content.Context;
import android.content.BroadcastReceiver;

class l extends BroadcastReceiver
{
    final /* synthetic */ d NS;
    
    l(final d ns) {
        this.NS = ns;
    }
    
    public void onReceive(final Context context, final Intent intent) {
        final Uri data = intent.getData();
        if (Build$VERSION.SDK_INT < 19) {
            if (data == null) {
                return;
            }
            if (!"com.google.android.googlequicksearchbox".equals(data.getSchemeSpecificPart())) {
                return;
            }
        }
        this.NS.Nx.Eb();
        this.NS.Nv.Eb();
        DD(context);
        if ((this.NS.Np & 0x2) != 0x0) {
            this.NS.DH();
        }
    }
}
