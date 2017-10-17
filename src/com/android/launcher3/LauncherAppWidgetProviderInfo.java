// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.graphics.Rect;
import android.appwidget.AppWidgetHostView;
import android.os.Process;
import android.os.UserHandle;
import android.graphics.Point;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.content.Context;
import android.os.Parcel;
import android.appwidget.AppWidgetProviderInfo;

public class LauncherAppWidgetProviderInfo extends AppWidgetProviderInfo
{
    public boolean isCustomWidget;
    public int minSpanX;
    public int minSpanY;
    public int spanX;
    public int spanY;
    
    private LauncherAppWidgetProviderInfo(final Parcel parcel) {
        super(parcel);
        this.isCustomWidget = false;
    }
    
    public static LauncherAppWidgetProviderInfo fromProviderInfo(final Context context, final AppWidgetProviderInfo appWidgetProviderInfo) {
        LauncherAppWidgetProviderInfo launcherAppWidgetProviderInfo;
        if (appWidgetProviderInfo instanceof LauncherAppWidgetProviderInfo) {
            launcherAppWidgetProviderInfo = (LauncherAppWidgetProviderInfo)appWidgetProviderInfo;
        }
        else {
            final Parcel obtain = Parcel.obtain();
            appWidgetProviderInfo.writeToParcel(obtain, 0);
            obtain.setDataPosition(0);
            launcherAppWidgetProviderInfo = new LauncherAppWidgetProviderInfo(obtain);
            obtain.recycle();
        }
        launcherAppWidgetProviderInfo.initSpans(context);
        return launcherAppWidgetProviderInfo;
    }
    
    public Drawable getIcon(final Context context, final IconCache iconCache) {
        if (this.isCustomWidget) {
            return iconCache.getFullResIcon(this.provider.getPackageName(), this.icon);
        }
        return super.loadIcon(context, LauncherAppState.getIDP(context).fillResIconDpi);
    }
    
    public String getLabel(final PackageManager packageManager) {
        if (this.isCustomWidget) {
            return Utilities.trim(this.label);
        }
        return super.loadLabel(packageManager);
    }
    
    public Point getMinSpans(final InvariantDeviceProfile invariantDeviceProfile, final Context context) {
        int minSpanY = -1;
        int minSpanX;
        if ((this.resizeMode & 0x1) != 0x0) {
            minSpanX = this.minSpanX;
        }
        else {
            minSpanX = minSpanY;
        }
        if ((this.resizeMode & 0x2) != 0x0) {
            minSpanY = this.minSpanY;
        }
        return new Point(minSpanX, minSpanY);
    }
    
    public UserHandle getUser() {
        UserHandle userHandle;
        if (this.isCustomWidget) {
            userHandle = Process.myUserHandle();
        }
        else {
            userHandle = this.getProfile();
        }
        return userHandle;
    }
    
    public void initSpans(final Context context) {
        final int n = 1;
        final InvariantDeviceProfile idp = LauncherAppState.getIDP(context);
        final Point totalWorkspacePadding = idp.landscapeProfile.getTotalWorkspacePadding();
        final Point totalWorkspacePadding2 = idp.portraitProfile.getTotalWorkspacePadding();
        final float n2 = DeviceProfile.calculateCellWidth(Math.min(idp.landscapeProfile.widthPx - totalWorkspacePadding.x, idp.portraitProfile.widthPx - totalWorkspacePadding2.x), idp.numColumns);
        final float n3 = DeviceProfile.calculateCellWidth(Math.min(idp.landscapeProfile.heightPx - totalWorkspacePadding.y, idp.portraitProfile.heightPx - totalWorkspacePadding2.y), idp.numRows);
        final Rect defaultPaddingForWidget = AppWidgetHostView.getDefaultPaddingForWidget(context, this.provider, (Rect)null);
        this.spanX = Math.max(n, (int)Math.ceil((this.minWidth + defaultPaddingForWidget.left + defaultPaddingForWidget.right) / n2));
        this.spanY = Math.max(n, (int)Math.ceil((this.minHeight + defaultPaddingForWidget.top + defaultPaddingForWidget.bottom) / n3));
        this.minSpanX = Math.max(n, (int)Math.ceil((this.minResizeWidth + defaultPaddingForWidget.left + defaultPaddingForWidget.right) / n2));
        this.minSpanY = Math.max(n, (int)Math.ceil((defaultPaddingForWidget.bottom + (this.minResizeHeight + defaultPaddingForWidget.top)) / n3));
    }
}
