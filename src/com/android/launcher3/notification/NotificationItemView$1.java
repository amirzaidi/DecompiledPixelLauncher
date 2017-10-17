// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.notification;

import com.android.launcher3.util.Themes;
import com.android.launcher3.graphics.IconPalette;
import android.view.MotionEvent;
import com.android.launcher3.userevent.nano.LauncherLogProto$Target;
import com.android.launcher3.ItemInfo;
import java.util.List;
import android.animation.AnimatorSet;
import android.animation.Animator$AnimatorListener;
import com.android.launcher3.anim.PropertyResetListener;
import android.animation.ObjectAnimator;
import com.android.launcher3.anim.RoundedRectRevealOutlineProvider;
import com.android.launcher3.LauncherAnimUtils;
import android.animation.Animator;
import android.util.AttributeSet;
import android.content.Context;
import android.view.View;
import android.widget.TextView;
import android.graphics.Rect;
import com.android.launcher3.logging.UserEventDispatcher$LogContainerProvider;
import com.android.launcher3.popup.PopupItemView;

final class NotificationItemView$1 implements NotificationFooterLayout$IconAnimationEndListener
{
    final /* synthetic */ NotificationItemView this$0;
    
    NotificationItemView$1(final NotificationItemView this$0) {
        this.this$0 = this$0;
    }
    
    public void onIconAnimationEnd(final NotificationInfo notificationInfo) {
        if (notificationInfo != null) {
            this.this$0.mMainView.applyNotificationInfo(notificationInfo, this.this$0.mIconView, true);
            this.this$0.mMainView.setVisibility(0);
        }
        this.this$0.mAnimatingNextIcon = false;
    }
}
