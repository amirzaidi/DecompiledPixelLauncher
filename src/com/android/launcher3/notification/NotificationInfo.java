// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.notification;

import com.android.launcher3.logging.UserEventDispatcher;
import android.os.Bundle;
import android.app.PendingIntent$CanceledException;
import com.android.launcher3.AbstractFloatingView;
import android.os.Handler;
import android.app.PendingIntent$OnFinished;
import android.content.Intent;
import android.app.ActivityOptions;
import com.android.launcher3.Launcher;
import android.view.View;
import android.content.res.ColorStateList;
import com.android.launcher3.graphics.IconPalette;
import android.app.Notification;
import android.graphics.drawable.Icon;
import android.graphics.drawable.BitmapDrawable;
import com.android.launcher3.LauncherAppState;
import android.service.notification.StatusBarNotification;
import android.content.Context;
import com.android.launcher3.util.PackageUserKey;
import android.graphics.drawable.Drawable;
import android.app.PendingIntent;
import android.view.View$OnClickListener;

public class NotificationInfo implements View$OnClickListener
{
    public final boolean autoCancel;
    public final boolean dismissable;
    public final PendingIntent intent;
    private int mBadgeIcon;
    private int mIconColor;
    private Drawable mIconDrawable;
    private boolean mIsIconLarge;
    public final String notificationKey;
    public final PackageUserKey packageUserKey;
    public final CharSequence text;
    public final CharSequence title;
    
    public NotificationInfo(final Context context, final StatusBarNotification statusBarNotification) {
        Icon largeIcon = null;
        boolean b = true;
        this.packageUserKey = PackageUserKey.fromNotification(statusBarNotification);
        this.notificationKey = statusBarNotification.getKey();
        final Notification notification = statusBarNotification.getNotification();
        this.title = notification.extras.getCharSequence("android.title");
        this.text = notification.extras.getCharSequence("android.text");
        this.mBadgeIcon = notification.getBadgeIconType();
        if (this.mBadgeIcon != (b ? 1 : 0)) {
            largeIcon = notification.getLargeIcon();
        }
        if (largeIcon == null) {
            this.mIconDrawable = notification.getSmallIcon().loadDrawable(context);
            this.mIconColor = statusBarNotification.getNotification().color;
            this.mIsIconLarge = false;
        }
        else {
            this.mIconDrawable = largeIcon.loadDrawable(context);
            this.mIsIconLarge = b;
        }
        if (this.mIconDrawable == null) {
            this.mIconDrawable = (Drawable)new BitmapDrawable(context.getResources(), LauncherAppState.getInstance(context).getIconCache().getDefaultIcon(statusBarNotification.getUser()));
            this.mBadgeIcon = 0;
        }
        this.intent = notification.contentIntent;
        this.autoCancel = ((notification.flags & 0x10) != 0x0 && b);
        if ((notification.flags & 0x2) != 0x0) {
            b = false;
        }
        this.dismissable = b;
    }
    
    public Drawable getIconForBackground(final Context context, final int n) {
        if (this.mIsIconLarge) {
            return this.mIconDrawable;
        }
        this.mIconColor = IconPalette.resolveContrastColor(context, this.mIconColor, n);
        final Drawable mutate = this.mIconDrawable.mutate();
        mutate.setTintList((ColorStateList)null);
        mutate.setTint(this.mIconColor);
        return mutate;
    }
    
    public boolean isIconLarge() {
        return this.mIsIconLarge;
    }
    
    public void onClick(final View view) {
        final Launcher launcher = Launcher.getLauncher(view.getContext());
        final Bundle bundle = ActivityOptions.makeClipRevealAnimation(view, 0, 0, view.getWidth(), view.getHeight()).toBundle();
        try {
            this.intent.send((Context)null, 0, (Intent)null, (PendingIntent$OnFinished)null, (Handler)null, (String)null, bundle);
            final UserEventDispatcher userEventDispatcher = launcher.getUserEventDispatcher();
            try {
                userEventDispatcher.logNotificationLaunch(view, this.intent);
                if (this.autoCancel) {
                    launcher.getPopupDataProvider().cancelNotification(this.notificationKey);
                }
                AbstractFloatingView.closeOpenContainer(launcher, 2);
            }
            catch (PendingIntent$CanceledException ex) {
                ex.printStackTrace();
            }
        }
        catch (PendingIntent$CanceledException ex2) {}
    }
    
    public boolean shouldShowIconInBadge() {
        boolean b = true;
        if ((!this.mIsIconLarge || this.mBadgeIcon != 2) && (this.mIsIconLarge || this.mBadgeIcon != (b ? 1 : 0))) {
            b = false;
        }
        return b;
    }
}
