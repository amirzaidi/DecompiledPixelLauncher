// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.notification;

import java.util.Iterator;
import android.graphics.drawable.ColorDrawable;
import android.util.Property;
import android.animation.AnimatorSet;
import com.android.launcher3.anim.PropertyResetListener;
import android.animation.ObjectAnimator;
import com.android.launcher3.anim.PropertyListBuilder;
import com.android.launcher3.LauncherAnimUtils;
import android.animation.Animator$AnimatorListener;
import com.android.launcher3.popup.PopupContainerWithArrow;
import com.android.launcher3.Launcher;
import android.view.ViewGroup$LayoutParams;
import android.view.View$OnClickListener;
import android.content.res.Resources;
import com.android.launcher3.Utilities;
import java.util.ArrayList;
import android.util.AttributeSet;
import android.content.Context;
import java.util.List;
import android.widget.LinearLayout;
import android.widget.FrameLayout$LayoutParams;
import android.graphics.Rect;
import android.widget.FrameLayout;
import android.animation.Animator;
import android.view.View;
import android.animation.AnimatorListenerAdapter;

final class NotificationFooterLayout$1 extends AnimatorListenerAdapter
{
    final /* synthetic */ NotificationFooterLayout this$0;
    final /* synthetic */ NotificationFooterLayout$IconAnimationEndListener val$callback;
    final /* synthetic */ View val$firstNotification;
    
    NotificationFooterLayout$1(final NotificationFooterLayout this$0, final NotificationFooterLayout$IconAnimationEndListener val$callback, final View val$firstNotification) {
        this.this$0 = this$0;
        this.val$callback = val$callback;
        this.val$firstNotification = val$firstNotification;
    }
    
    public void onAnimationEnd(final Animator animator) {
        this.val$callback.onIconAnimationEnd((NotificationInfo)this.val$firstNotification.getTag());
        this.this$0.removeViewFromIconRow(this.val$firstNotification);
    }
}
