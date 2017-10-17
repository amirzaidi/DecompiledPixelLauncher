// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.notification;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.content.res.ColorStateList;
import com.android.launcher3.util.Themes;
import android.graphics.drawable.ColorDrawable;
import com.android.launcher3.Launcher;
import android.view.MotionEvent;
import android.util.Property;
import android.animation.ObjectAnimator;
import com.android.launcher3.ItemInfo;
import android.view.View$OnClickListener;
import android.text.TextUtils;
import android.view.View;
import android.util.AttributeSet;
import android.content.Context;
import android.widget.TextView;
import android.view.ViewGroup;
import android.widget.FrameLayout;

public class NotificationMainView extends FrameLayout implements SwipeHelper$Callback
{
    private int mBackgroundColor;
    private NotificationInfo mNotificationInfo;
    private ViewGroup mTextAndBackground;
    private TextView mTextView;
    private TextView mTitleView;
    
    public NotificationMainView(final Context context) {
        this(context, null, 0);
    }
    
    public NotificationMainView(final Context context, final AttributeSet set) {
        this(context, set, 0);
    }
    
    public NotificationMainView(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
    }
    
    public void applyNotificationInfo(final NotificationInfo notificationInfo, final View view) {
        this.applyNotificationInfo(notificationInfo, view, false);
    }
    
    public void applyNotificationInfo(final NotificationInfo mNotificationInfo, final View view, final boolean b) {
        final int maxLines = 2;
        this.mNotificationInfo = mNotificationInfo;
        final CharSequence title = this.mNotificationInfo.title;
        CharSequence text = this.mNotificationInfo.text;
        if (!TextUtils.isEmpty(title) && (TextUtils.isEmpty(text) ^ true)) {
            this.mTitleView.setText(title);
            this.mTextView.setText(text);
        }
        else {
            this.mTitleView.setMaxLines(maxLines);
            final TextView mTitleView = this.mTitleView;
            if (!TextUtils.isEmpty(title)) {
                text = title;
            }
            mTitleView.setText(text);
            this.mTextView.setVisibility(8);
        }
        view.setBackground(this.mNotificationInfo.getIconForBackground(this.getContext(), this.mBackgroundColor));
        if (this.mNotificationInfo.intent != null) {
            this.setOnClickListener((View$OnClickListener)this.mNotificationInfo);
        }
        this.setTranslationX(0.0f);
        this.setTag((Object)new ItemInfo());
        if (b) {
            final ViewGroup mTextAndBackground = this.mTextAndBackground;
            final Property alpha = NotificationMainView.ALPHA;
            final float[] array = new float[maxLines];
            array[0] = 0.0f;
            array[1] = 1.0f;
            ObjectAnimator.ofFloat((Object)mTextAndBackground, alpha, array).setDuration(150L).start();
        }
    }
    
    public boolean canChildBeDismissed(final View view) {
        return this.mNotificationInfo != null && this.mNotificationInfo.dismissable;
    }
    
    public View getChildAtPosition(final MotionEvent motionEvent) {
        return (View)this;
    }
    
    public float getFalsingThresholdFactor() {
        return 1.0f;
    }
    
    public NotificationInfo getNotificationInfo() {
        return this.mNotificationInfo;
    }
    
    public boolean isAntiFalsingNeeded() {
        return false;
    }
    
    public void onBeginDrag(final View view) {
    }
    
    public void onChildDismissed(final View view) {
        final Launcher launcher = Launcher.getLauncher(this.getContext());
        launcher.getPopupDataProvider().cancelNotification(this.mNotificationInfo.notificationKey);
        launcher.getUserEventDispatcher().logActionOnItem(3, 4, 8);
    }
    
    public void onChildSnappedBack(final View view, final float n) {
    }
    
    public void onDragCancelled(final View view) {
    }
    
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mTextAndBackground = (ViewGroup)this.findViewById(2131624016);
        final ColorDrawable colorDrawable = (ColorDrawable)this.mTextAndBackground.getBackground();
        this.mBackgroundColor = colorDrawable.getColor();
        this.mTextAndBackground.setBackground((Drawable)new RippleDrawable(ColorStateList.valueOf(Themes.getAttrColor(this.getContext(), 16843820)), (Drawable)colorDrawable, (Drawable)null));
        this.mTitleView = (TextView)this.mTextAndBackground.findViewById(2131623982);
        this.mTextView = (TextView)this.mTextAndBackground.findViewById(2131624017);
    }
    
    public boolean updateSwipeProgress(final View view, final boolean b, final float n) {
        return true;
    }
}
