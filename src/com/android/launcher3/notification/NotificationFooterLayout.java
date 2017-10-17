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
import android.animation.Animator;
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
import android.view.View;
import java.util.List;
import android.widget.LinearLayout;
import android.widget.FrameLayout$LayoutParams;
import android.graphics.Rect;
import android.widget.FrameLayout;

public class NotificationFooterLayout extends FrameLayout
{
    private static final Rect sTempRect;
    private int mBackgroundColor;
    FrameLayout$LayoutParams mIconLayoutParams;
    private LinearLayout mIconRow;
    private final List mNotifications;
    private View mOverflowEllipsis;
    private final List mOverflowNotifications;
    private final boolean mRtl;
    
    static {
        sTempRect = new Rect();
    }
    
    public NotificationFooterLayout(final Context context) {
        this(context, null, 0);
    }
    
    public NotificationFooterLayout(final Context context, final AttributeSet set) {
        this(context, set, 0);
    }
    
    public NotificationFooterLayout(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
        this.mNotifications = new ArrayList();
        this.mOverflowNotifications = new ArrayList();
        final Resources resources = this.getResources();
        this.mRtl = Utilities.isRtl(resources);
        final int dimensionPixelSize = resources.getDimensionPixelSize(2131427472);
        this.mIconLayoutParams = new FrameLayout$LayoutParams(dimensionPixelSize, dimensionPixelSize);
        this.mIconLayoutParams.gravity = 16;
        this.mIconLayoutParams.setMarginStart((resources.getDimensionPixelSize(2131427434) - resources.getDimensionPixelSize(2131427464) - (resources.getDimensionPixelSize(2131427476) + resources.getDimensionPixelSize(2131427475)) - dimensionPixelSize * 5) / 5);
    }
    
    private View addNotificationIconForInfo(final NotificationInfo notificationInfo) {
        final View view = new View(this.getContext());
        view.setBackground(notificationInfo.getIconForBackground(this.getContext(), this.mBackgroundColor));
        view.setOnClickListener((View$OnClickListener)notificationInfo);
        view.setTag((Object)notificationInfo);
        view.setImportantForAccessibility(2);
        this.mIconRow.addView(view, 0, (ViewGroup$LayoutParams)this.mIconLayoutParams);
        return view;
    }
    
    private void removeViewFromIconRow(final View view) {
        this.mIconRow.removeView(view);
        this.mNotifications.remove(view.getTag());
        this.updateOverflowEllipsisVisibility();
        if (this.mIconRow.getChildCount() == 0) {
            final PopupContainerWithArrow open = PopupContainerWithArrow.getOpen(Launcher.getLauncher(this.getContext()));
            if (open != null) {
                final Animator reduceNotificationViewHeight = open.reduceNotificationViewHeight(this.getHeight(), this.getResources().getInteger(2131558427));
                reduceNotificationViewHeight.addListener((Animator$AnimatorListener)new NotificationFooterLayout$2(this));
                reduceNotificationViewHeight.start();
            }
        }
    }
    
    private void updateOverflowEllipsisVisibility() {
        final View mOverflowEllipsis = this.mOverflowEllipsis;
        int visibility;
        if (this.mOverflowNotifications.isEmpty()) {
            visibility = 8;
        }
        else {
            visibility = 0;
        }
        mOverflowEllipsis.setVisibility(visibility);
    }
    
    public void addNotificationInfo(final NotificationInfo notificationInfo) {
        if (this.mNotifications.size() < 5) {
            this.mNotifications.add(notificationInfo);
        }
        else {
            this.mOverflowNotifications.add(notificationInfo);
        }
    }
    
    public void animateFirstNotificationTo(final Rect rect, final NotificationFooterLayout$IconAnimationEndListener notificationFooterLayout$IconAnimationEndListener) {
        final int n = 1;
        final AnimatorSet animatorSet = LauncherAnimUtils.createAnimatorSet();
        final View child = this.mIconRow.getChildAt(this.mIconRow.getChildCount() - 1);
        final Rect sTempRect = NotificationFooterLayout.sTempRect;
        child.getGlobalVisibleRect(sTempRect);
        final float n2 = rect.height() / sTempRect.height();
        final ObjectAnimator ofPropertyValuesHolder = LauncherAnimUtils.ofPropertyValuesHolder(child, new PropertyListBuilder().scale(n2).translationY((n2 * sTempRect.height() - sTempRect.height()) / 2.0f + (rect.top - sTempRect.top)).build());
        ((Animator)ofPropertyValuesHolder).addListener((Animator$AnimatorListener)new NotificationFooterLayout$1(this, notificationFooterLayout$IconAnimationEndListener, child));
        animatorSet.play((Animator)ofPropertyValuesHolder);
        final int n3 = this.mIconLayoutParams.width + this.mIconLayoutParams.getMarginStart();
        int n4;
        if (this.mRtl) {
            n4 = -n3;
        }
        else {
            n4 = n3;
        }
        if (!this.mOverflowNotifications.isEmpty()) {
            final NotificationInfo notificationInfo = this.mOverflowNotifications.remove(0);
            this.mNotifications.add(notificationInfo);
            final View addNotificationIconForInfo = this.addNotificationIconForInfo(notificationInfo);
            final Property alpha = NotificationFooterLayout.ALPHA;
            final float[] array = { 0.0f, 0.0f };
            array[n] = 1.0f;
            animatorSet.play((Animator)ObjectAnimator.ofFloat((Object)addNotificationIconForInfo, alpha, array));
        }
        final int n5 = this.mIconRow.getChildCount() - 1;
        final PropertyResetListener propertyResetListener = new PropertyResetListener(NotificationFooterLayout.TRANSLATION_X, 0.0f);
        for (int i = 0; i < n5; ++i) {
            final View child2 = this.mIconRow.getChildAt(i);
            final Property translation_X = NotificationFooterLayout.TRANSLATION_X;
            final float[] array2 = new float[n];
            array2[0] = n4;
            final ObjectAnimator ofFloat = ObjectAnimator.ofFloat((Object)child2, translation_X, array2);
            ((Animator)ofFloat).addListener((Animator$AnimatorListener)propertyResetListener);
            animatorSet.play((Animator)ofFloat);
        }
        animatorSet.start();
    }
    
    public void commitNotificationInfos() {
        this.mIconRow.removeAllViews();
        for (int i = 0; i < this.mNotifications.size(); ++i) {
            this.addNotificationIconForInfo((NotificationInfo)this.mNotifications.get(i));
        }
        this.updateOverflowEllipsisVisibility();
    }
    
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mOverflowEllipsis = this.findViewById(2131624015);
        this.mIconRow = (LinearLayout)this.findViewById(2131624014);
        this.mBackgroundColor = ((ColorDrawable)this.getBackground()).getColor();
    }
    
    public void trimNotifications(final List list) {
        if (!this.isAttachedToWindow() || this.mIconRow.getChildCount() == 0) {
            return;
        }
        final Iterator<NotificationInfo> iterator = (Iterator<NotificationInfo>)this.mOverflowNotifications.iterator();
        while (iterator.hasNext()) {
            if (!list.contains(iterator.next().notificationKey)) {
                iterator.remove();
            }
        }
        for (int i = this.mIconRow.getChildCount() - 1; i >= 0; --i) {
            final View child = this.mIconRow.getChildAt(i);
            if (!list.contains(((NotificationInfo)child.getTag()).notificationKey)) {
                this.removeViewFromIconRow(child);
            }
        }
    }
}
