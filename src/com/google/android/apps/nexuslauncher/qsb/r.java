// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.qsb;

import android.os.Bundle;
import android.os.Handler;
import com.google.android.apps.nexuslauncher.logging.UserEventDispatcherImpl;
import com.android.launcher3.Utilities;
import android.view.View$AccessibilityDelegate;
import android.animation.TimeInterpolator;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.LayoutInflater;
import com.android.launcher3.compat.UserManagerCompat;
import android.content.ActivityNotFoundException;
import android.os.Process;
import android.content.ComponentName;
import com.android.launcher3.compat.LauncherAppsCompat;
import android.view.ViewGroup;
import android.content.SharedPreferences;
import com.google.android.apps.nexuslauncher.util.a;
import android.graphics.Point;
import android.os.Parcelable;
import android.graphics.Rect;
import com.android.launcher3.Launcher;
import android.util.AttributeSet;
import android.animation.ObjectAnimator;
import com.google.android.apps.nexuslauncher.NexusLauncherActivity;
import android.view.View;
import android.content.SharedPreferences$OnSharedPreferenceChangeListener;
import android.view.View$OnClickListener;
import android.widget.FrameLayout;
import android.content.Intent;
import android.content.Context;
import android.content.BroadcastReceiver;

final class r extends BroadcastReceiver
{
    final /* synthetic */ f al;
    
    r(final f al) {
        this.al = al;
    }
    
    public void onReceive(final Context context, final Intent intent) {
        if (this.getResultCode() == 0) {
            this.al.ab(f.T);
        }
        else {
            this.al.aa();
        }
    }
}
