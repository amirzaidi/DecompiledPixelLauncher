// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.qsb;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import com.android.launcher3.Workspace$State;
import com.android.launcher3.DeviceProfile;
import android.widget.FrameLayout$LayoutParams;
import android.view.View$MeasureSpec;
import android.graphics.Canvas;
import com.android.launcher3.Workspace;
import android.animation.AnimatorSet;
import com.android.launcher3.Launcher;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.util.AttributeSet;
import android.content.Context;
import android.graphics.Paint;
import android.view.View;
import com.android.launcher3.Workspace$OnStateChangeListener;
import android.widget.FrameLayout;
import android.util.Property;

final class m extends Property
{
    m(final Class clazz, final String s) {
        super(clazz, s);
    }
    
    public Integer ak(final QsbBlockerView qsbBlockerView) {
        return qsbBlockerView.y.getAlpha();
    }
    
    public void al(final QsbBlockerView qsbBlockerView, final Integer n) {
        boolean willNotDraw = false;
        qsbBlockerView.y.setAlpha((int)n);
        if (n == 0) {
            willNotDraw = true;
        }
        qsbBlockerView.setWillNotDraw(willNotDraw);
        qsbBlockerView.invalidate();
    }
}
