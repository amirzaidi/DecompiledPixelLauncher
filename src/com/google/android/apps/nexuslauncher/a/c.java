// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.a;

import android.content.Intent;
import java.util.Calendar;
import android.os.Bundle;
import android.content.pm.ApplicationInfo;
import android.graphics.Path;
import android.graphics.RectF;
import com.android.launcher3.graphics.IconNormalizer;
import com.android.launcher3.LauncherAppState;
import android.graphics.drawable.Drawable;
import android.content.res.Resources;
import android.os.Handler;
import com.android.launcher3.LauncherModel;
import android.content.Context;
import android.graphics.drawable.LayerDrawable;
import android.content.ComponentName;
import android.content.BroadcastReceiver;

final class c implements Runnable
{
    final /* synthetic */ a dt;
    
    c(final a dt) {
        this.dt = dt;
    }
    
    public void run() {
        this.dt.cP();
    }
}
