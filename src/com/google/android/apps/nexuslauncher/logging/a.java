// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.logging;

import com.android.launcher3.userevent.nano.LauncherLogProto$LauncherEvent;
import android.content.Context;

public class a
{
    private com.google.android.gms.clearcut.a bN;
    
    public a(final Context context) {
        this.bN = new com.google.android.gms.clearcut.a(context, "GOOGLE_NOW_LAUNCHER", null);
    }
    
    public void bm(final LauncherLogProto$LauncherEvent launcherLogProto$LauncherEvent) {
        this.bN.Ml(com.google.protobuf.nano.a.toByteArray(launcherLogProto$LauncherEvent)).My();
    }
}
