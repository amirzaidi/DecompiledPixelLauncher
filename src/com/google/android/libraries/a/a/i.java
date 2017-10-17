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

class i implements Runnable
{
    final /* synthetic */ d Ml;
    
    i(final d ml) {
        this.Ml = ml;
    }
    
    public void run() {
        this.Ml.RE(0);
    }
}
