// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.logging;

import com.android.launcher3.userevent.nano.LauncherLogProto$LauncherEvent;
import android.content.Context;

public class a
{
    private com.google.android.gms.clearcut.a gl;
    
    public a(final Context context) {
        this.gl = new com.google.android.gms.clearcut.a(context, "GOOGLE_NOW_LAUNCHER", null);
    }
    
    public void eT(final LauncherLogProto$LauncherEvent launcherLogProto$LauncherEvent) {
        this.gl.Cx(com.google.protobuf.nano.a.toByteArray(launcherLogProto$LauncherEvent)).CJ();
    }
}
