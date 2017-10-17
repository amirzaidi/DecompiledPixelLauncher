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

public class NotificationItemView extends PopupItemView implements UserEventDispatcher$LogContainerProvider
{
    private static final Rect sTempRect;
    private boolean mAnimatingNextIcon;
    private NotificationFooterLayout mFooter;
    private TextView mHeaderCount;
    private TextView mHeaderText;
    private NotificationMainView mMainView;
    private int mNotificationHeaderTextColor;
    private SwipeHelper mSwipeHelper;
    
    static {
        sTempRect = new Rect();
    }
    
    public NotificationItemView(final Context context) {
        this(context, null, 0);
    }
    
    public NotificationItemView(final Context context, final AttributeSet set) {
        this(context, set, 0);
    }
    
    public NotificationItemView(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
        this.mNotificationHeaderTextColor = 0;
    }
    
    public Animator animateHeightRemoval(final int n, final boolean b) {
        final AnimatorSet animatorSet = LauncherAnimUtils.createAnimatorSet();
        final Rect rect = new Rect(this.mPillRect);
        final Rect rect2 = new Rect(this.mPillRect);
        if (b) {
            rect2.top += n;
        }
        else {
            rect2.bottom -= n;
        }
        animatorSet.play((Animator)new RoundedRectRevealOutlineProvider(this.getBackgroundRadius(), this.getBackgroundRadius(), rect, rect2, this.mRoundedCorners).createRevealAnimator((View)this, false));
        final View viewById = this.findViewById(2131624023);
        if (viewById != null && viewById.getVisibility() == 0) {
            final ObjectAnimator ofFloat = ObjectAnimator.ofFloat((Object)viewById, NotificationItemView.TRANSLATION_Y, new float[] { -n });
            ((Animator)ofFloat).addListener((Animator$AnimatorListener)new PropertyResetListener(NotificationItemView.TRANSLATION_Y, 0.0f));
            animatorSet.play((Animator)ofFloat);
        }
        return (Animator)animatorSet;
    }
    
    public void applyNotificationInfos(final List list) {
        if (list.isEmpty()) {
            return;
        }
        this.mMainView.applyNotificationInfo(list.get(0), this.mIconView);
        for (int i = 1; i < list.size(); ++i) {
            this.mFooter.addNotificationInfo(list.get(i));
        }
        this.mFooter.commitNotificationInfos();
    }
    
    public void fillInLogContainerData(final View view, final ItemInfo itemInfo, final LauncherLogProto$Target launcherLogProto$Target, final LauncherLogProto$Target launcherLogProto$Target2) {
        launcherLogProto$Target.itemType = 8;
        launcherLogProto$Target2.containerType = 9;
    }
    
    public int getHeightMinusFooter() {
        int height;
        if (this.mFooter.getParent() == null) {
            height = 0;
        }
        else {
            height = this.mFooter.getHeight();
        }
        return this.getHeight() - height;
    }
    
    public NotificationMainView getMainView() {
        return this.mMainView;
    }
    
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mHeaderText = (TextView)this.findViewById(2131624019);
        this.mHeaderCount = (TextView)this.findViewById(2131624020);
        this.mMainView = (NotificationMainView)this.findViewById(2131624021);
        this.mFooter = (NotificationFooterLayout)this.findViewById(2131624022);
        (this.mSwipeHelper = new SwipeHelper(0, this.mMainView, this.getContext())).setDisableHardwareLayers(true);
    }
    
    public boolean onInterceptTouchEvent(final MotionEvent motionEvent) {
        if (this.mMainView.getNotificationInfo() == null) {
            return false;
        }
        this.getParent().requestDisallowInterceptTouchEvent(true);
        return this.mSwipeHelper.onInterceptTouchEvent(motionEvent);
    }
    
    public boolean onTouchEvent(final MotionEvent motionEvent) {
        return this.mMainView.getNotificationInfo() != null && (this.mSwipeHelper.onTouchEvent(motionEvent) || super.onTouchEvent(motionEvent));
    }
    
    public void trimNotifications(final List list) {
        if ((list.contains(this.mMainView.getNotificationInfo().notificationKey) ^ true) && (this.mAnimatingNextIcon ^ true)) {
            this.mAnimatingNextIcon = true;
            this.mMainView.setVisibility(4);
            this.mMainView.setTranslationX(0.0f);
            this.mIconView.getGlobalVisibleRect(NotificationItemView.sTempRect);
            this.mFooter.animateFirstNotificationTo(NotificationItemView.sTempRect, new NotificationItemView$1(this));
        }
        else {
            this.mFooter.trimNotifications(list);
        }
    }
    
    public void updateHeader(final int n, final IconPalette iconPalette) {
        final TextView mHeaderCount = this.mHeaderCount;
        String value;
        if (n <= 1) {
            value = "";
        }
        else {
            value = String.valueOf(n);
        }
        mHeaderCount.setText((CharSequence)value);
        if (iconPalette != null) {
            if (this.mNotificationHeaderTextColor == 0) {
                this.mNotificationHeaderTextColor = IconPalette.resolveContrastColor(this.getContext(), iconPalette.dominantColor, Themes.getAttrColor(this.getContext(), 2130772007));
            }
            this.mHeaderText.setTextColor(this.mNotificationHeaderTextColor);
            this.mHeaderCount.setTextColor(this.mNotificationHeaderTextColor);
        }
    }
}
