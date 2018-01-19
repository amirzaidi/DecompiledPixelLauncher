// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.a;

import android.content.Intent;
import android.graphics.Bitmap;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.MainThreadExecutor;
import java.util.Iterator;
import java.util.TimeZone;
import android.graphics.drawable.LayerDrawable;
import android.os.Bundle;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.Path;
import android.graphics.RectF;
import com.android.launcher3.graphics.IconNormalizer;
import com.android.launcher3.util.Preconditions;
import android.graphics.drawable.Drawable;
import android.os.Looper;
import android.content.IntentFilter;
import com.google.android.apps.nexuslauncher.b.a;
import android.os.Handler;
import com.android.launcher3.LauncherModel;
import java.util.Map;
import java.util.Collections;
import java.util.WeakHashMap;
import android.content.Context;
import java.util.Set;
import android.content.ComponentName;
import android.content.BroadcastReceiver;

final class f implements Runnable
{
    final /* synthetic */ c co;
    final /* synthetic */ b cp;
    
    f(final c co, final b cp) {
        this.co = co;
        this.cp = cp;
    }
    
    public void run() {
        this.co.bR(this.cp);
    }
}
