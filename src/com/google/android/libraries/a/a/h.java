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

class h implements Runnable
{
    final /* synthetic */ c KG;
    
    h(final c kg) {
        this.KG = kg;
    }
    
    public void run() {
        this.KG.QK(0);
    }
}
