// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.notification;

import com.android.launcher3.graphics.IconPalette;
import android.view.MotionEvent;
import android.support.v4.c.a;
import com.android.launcher3.userevent.nano.LauncherLogProto$Target;
import com.android.launcher3.ItemInfo;
import java.util.List;
import com.android.launcher3.anim.PillHeightRevealOutlineProvider;
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
    
    public Animator animateHeightRemoval(final int n) {
        return (Animator)new PillHeightRevealOutlineProvider(this.mPillRect, this.getBackgroundRadius(), this.getHeight() - n).createRevealAnimator((View)this, true);
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
    
    public int getArrowColor(final boolean b) {
        final Context context = this.getContext();
        int n;
        if (b) {
            n = 2131361824;
        }
        else {
            n = 2131361823;
        }
        return a.arj(context, n);
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
        this.mHeaderCount = (TextView)this.findViewById(2131624011);
        this.mMainView = (NotificationMainView)this.findViewById(2131624012);
        this.mFooter = (NotificationFooterLayout)this.findViewById(2131624013);
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
                this.mNotificationHeaderTextColor = IconPalette.resolveContrastColor(this.getContext(), iconPalette.dominantColor, this.getResources().getColor(2131361823));
            }
            this.mHeaderCount.setTextColor(this.mNotificationHeaderTextColor);
        }
    }
}
