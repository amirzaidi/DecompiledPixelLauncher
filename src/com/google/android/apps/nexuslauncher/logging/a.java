// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.logging;

import com.android.launcher3.userevent.nano.LauncherLogProto$LauncherEvent;
import android.content.Context;

public class a
{
    private com.google.android.gms.clearcut.a da;
    
    public a(final Context context) {
        this.da = new com.google.android.gms.clearcut.a(context, "GOOGLE_NOW_LAUNCHER", null);
    }
    
    public void cy(final LauncherLogProto$LauncherEvent launcherLogProto$LauncherEvent) {
        this.da.Ls(com.google.protobuf.nano.a.toByteArray(launcherLogProto$LauncherEvent)).LF();
    }
}
