// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.badge;

import android.graphics.drawable.Drawable;
import android.graphics.BitmapShader;
import android.graphics.Shader$TileMode;
import android.graphics.Canvas;
import android.graphics.Bitmap;
import android.graphics.Bitmap$Config;
import android.content.Context;
import com.android.launcher3.notification.NotificationKeyData;
import java.util.ArrayList;
import com.android.launcher3.util.PackageUserKey;
import java.util.List;
import com.android.launcher3.notification.NotificationInfo;
import android.graphics.Shader;

public class BadgeInfo
{
    private Shader mNotificationIcon;
    private NotificationInfo mNotificationInfo;
    private List mNotificationKeys;
    private PackageUserKey mPackageUserKey;
    private int mTotalCount;
    
    public BadgeInfo(final PackageUserKey mPackageUserKey) {
        this.mPackageUserKey = mPackageUserKey;
        this.mNotificationKeys = new ArrayList();
    }
    
    public boolean addOrUpdateNotificationKey(final NotificationKeyData notificationKeyData) {
        NotificationKeyData notificationKeyData2 = null;
        final int index = this.mNotificationKeys.indexOf(notificationKeyData);
        if (index != -1) {
            notificationKeyData2 = (NotificationKeyData)this.mNotificationKeys.get(index);
        }
        if (notificationKeyData2 == null) {
            final boolean add = this.mNotificationKeys.add(notificationKeyData);
            if (add) {
                this.mTotalCount += notificationKeyData.count;
            }
            return add;
        }
        if (notificationKeyData2.count == notificationKeyData.count) {
            return false;
        }
        this.mTotalCount -= notificationKeyData2.count;
        this.mTotalCount += notificationKeyData.count;
        notificationKeyData2.count = notificationKeyData.count;
        return true;
    }
    
    public int getNotificationCount() {
        return Math.min(this.mTotalCount, 999);
    }
    
    public Shader getNotificationIconForBadge(final Context context, final int n, final int n2, final int n3) {
        if (this.mNotificationInfo == null) {
            return null;
        }
        if (this.mNotificationIcon == null) {
            final Drawable drawable = this.mNotificationInfo.getIconForBackground(context, n).getConstantState().newDrawable();
            final int n4 = n2 - n3 * 2;
            drawable.setBounds(0, 0, n4, n4);
            final Bitmap bitmap = Bitmap.createBitmap(n2, n2, Bitmap$Config.ARGB_8888);
            final Canvas canvas = new Canvas(bitmap);
            canvas.translate((float)n3, (float)n3);
            drawable.draw(canvas);
            this.mNotificationIcon = (Shader)new BitmapShader(bitmap, Shader$TileMode.CLAMP, Shader$TileMode.CLAMP);
        }
        return this.mNotificationIcon;
    }
    
    public List getNotificationKeys() {
        return this.mNotificationKeys;
    }
    
    public boolean hasNotificationToShow() {
        return this.mNotificationInfo != null;
    }
    
    public boolean isIconLarge() {
        return this.mNotificationInfo != null && this.mNotificationInfo.isIconLarge();
    }
    
    public boolean removeNotificationKey(final NotificationKeyData notificationKeyData) {
        final boolean remove = this.mNotificationKeys.remove(notificationKeyData);
        if (remove) {
            this.mTotalCount -= notificationKeyData.count;
        }
        return remove;
    }
    
    public void setNotificationToShow(final NotificationInfo mNotificationInfo) {
        this.mNotificationInfo = mNotificationInfo;
        this.mNotificationIcon = null;
    }
    
    public boolean shouldBeInvalidated(final BadgeInfo badgeInfo) {
        return this.mPackageUserKey.equals(badgeInfo.mPackageUserKey) && (this.getNotificationCount() != badgeInfo.getNotificationCount() || this.hasNotificationToShow());
    }
}
