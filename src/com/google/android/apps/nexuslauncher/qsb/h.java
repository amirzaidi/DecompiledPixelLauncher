// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.qsb;

import android.graphics.Canvas;
import com.google.android.apps.nexuslauncher.util.a;
import android.animation.TimeInterpolator;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.util.AttributeSet;
import android.animation.ObjectAnimator;
import android.util.Property;
import android.view.View;
import android.content.Intent;
import android.content.Context;
import android.content.BroadcastReceiver;

final class h extends BroadcastReceiver
{
    final /* synthetic */ QsbConnector ab;
    
    h(final QsbConnector ab) {
        this.ab = ab;
    }
    
    public void onReceive(final Context context, final Intent intent) {
        this.ab.i();
    }
}
