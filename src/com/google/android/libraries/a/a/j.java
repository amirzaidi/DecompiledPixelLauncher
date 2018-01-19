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

class j implements Runnable
{
    final /* synthetic */ d NR;
    
    j(final d nr) {
        this.NR = nr;
    }
    
    public void run() {
        this.NR.DN(0);
    }
}
