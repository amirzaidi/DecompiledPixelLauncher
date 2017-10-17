// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.qsb;

import android.content.IntentFilter;
import android.view.ViewGroup$MarginLayoutParams;
import com.android.launcher3.CellLayout;
import android.util.Property;
import com.android.launcher3.dragndrop.DragLayer;
import android.view.animation.DecelerateInterpolator;
import android.animation.TimeInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.animation.ObjectAnimator;
import android.animation.Animator$AnimatorListener;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Handler;
import com.android.launcher3.Utilities;
import android.app.WallpaperInfo;
import android.app.WallpaperManager;
import android.graphics.Rect;
import android.content.Intent;
import android.view.ViewGroup;
import android.view.View;
import android.view.ContextThemeWrapper;
import com.android.launcher3.Launcher;
import android.view.View$AccessibilityDelegate;
import android.view.View$OnClickListener;
import android.util.AttributeSet;
import android.content.Context;
import android.content.BroadcastReceiver;
import android.animation.AnimatorSet;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

final class j extends AnimatorListenerAdapter
{
    final /* synthetic */ HotseatQsbWidget cv;
    
    j(final HotseatQsbWidget cv) {
        this.cv = cv;
    }
    
    public void onAnimationEnd(final Animator animator) {
        if (animator == this.cv.ci) {
            this.cv.ci = null;
        }
    }
}
