// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.libraries.a.a;

import android.content.res.Resources;
import com.google.android.libraries.launcherclient.ILauncherOverlayCallback;
import android.os.Parcelable;
import android.os.Bundle;
import android.os.Process;
import android.os.RemoteException;
import android.content.pm.ResolveInfo;
import android.content.IntentFilter;
import com.google.android.libraries.launcherclient.ILauncherOverlay;
import android.view.WindowManager$LayoutParams;
import android.app.Activity;
import android.net.Uri;
import android.os.Build$VERSION;
import android.content.Intent;
import android.content.Context;
import android.content.BroadcastReceiver;

class i extends BroadcastReceiver
{
    final /* synthetic */ c KH;
    
    i(final c kh) {
        this.KH = kh;
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
        this.KH.Kp.QY();
        this.KH.Kn.QY();
        QB(context);
        if ((this.KH.Ki & 0x2) != 0x0) {
            this.KH.QE();
        }
    }
}
