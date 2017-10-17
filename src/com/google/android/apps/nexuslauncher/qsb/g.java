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
import android.content.Context;
import android.content.BroadcastReceiver;
import android.animation.ObjectAnimator;
import android.view.View;
import android.util.Property;

final class g extends Property
{
    g(final Class clazz, final String s) {
        super(clazz, s);
    }
    
    public Integer af(final QsbConnector qsbConnector) {
        return qsbConnector.m;
    }
    
    public void ag(final QsbConnector qsbConnector, final Integer n) {
        qsbConnector.j(n);
    }
}
