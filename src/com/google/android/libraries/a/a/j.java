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
import android.os.Process;
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

class j extends BroadcastReceiver
{
    final /* synthetic */ d Mm;
    
    j(final d mm) {
        this.Mm = mm;
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
        this.Mm.LV.RS();
        this.Mm.LT.RS();
        Ru(context);
        if ((this.Mm.LN & 0x2) != 0x0) {
            this.Mm.Ry();
        }
    }
}
