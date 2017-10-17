// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.widget;

import com.android.launcher3.LauncherAppWidgetInfo;
import android.appwidget.AppWidgetHost;
import android.app.Activity;
import com.android.launcher3.compat.AppWidgetManagerCompat;
import android.content.Intent;
import com.android.launcher3.util.PendingRequestArgs;
import com.android.launcher3.ItemInfo;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherAppWidgetProviderInfo;
import android.content.Context;
import android.os.Parcel;
import android.appwidget.AppWidgetProviderInfo;
import android.os.Parcelable$Creator;
import android.os.Parcelable;

public class WidgetAddFlowHandler implements Parcelable
{
    public static final Parcelable$Creator CREATOR;
    private final AppWidgetProviderInfo mProviderInfo;
    
    static {
        CREATOR = (Parcelable$Creator)new WidgetAddFlowHandler$1();
    }
    
    public WidgetAddFlowHandler(final AppWidgetProviderInfo mProviderInfo) {
        this.mProviderInfo = mProviderInfo;
    }
    
    protected WidgetAddFlowHandler(final Parcel parcel) {
        this.mProviderInfo = (AppWidgetProviderInfo)AppWidgetProviderInfo.CREATOR.createFromParcel(parcel);
    }
    
    public int describeContents() {
        return 0;
    }
    
    public LauncherAppWidgetProviderInfo getProviderInfo(final Context context) {
        return LauncherAppWidgetProviderInfo.fromProviderInfo(context, this.mProviderInfo);
    }
    
    public boolean needsConfigure() {
        return this.mProviderInfo.configure != null;
    }
    
    public void startBindFlow(final Launcher launcher, final int n, final ItemInfo itemInfo, final int n2) {
        launcher.setWaitingForResult(PendingRequestArgs.forWidgetInfo(n, this, itemInfo));
        final Intent intent = new Intent("android.appwidget.action.APPWIDGET_BIND");
        intent.putExtra("appWidgetId", n);
        intent.putExtra("appWidgetProvider", (Parcelable)this.mProviderInfo.provider);
        intent.putExtra("appWidgetProviderProfile", (Parcelable)this.mProviderInfo.getProfile());
        launcher.startActivityForResult(intent, n2);
    }
    
    public boolean startConfigActivity(final Launcher launcher, final int n, final ItemInfo itemInfo, final int n2) {
        if (!this.needsConfigure()) {
            return false;
        }
        launcher.setWaitingForResult(PendingRequestArgs.forWidgetInfo(n, this, itemInfo));
        AppWidgetManagerCompat.getInstance((Context)launcher).startConfigActivity(this.mProviderInfo, n, launcher, launcher.getAppWidgetHost(), n2);
        return true;
    }
    
    public boolean startConfigActivity(final Launcher launcher, final LauncherAppWidgetInfo launcherAppWidgetInfo, final int n) {
        return this.startConfigActivity(launcher, launcherAppWidgetInfo.appWidgetId, launcherAppWidgetInfo, n);
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        this.mProviderInfo.writeToParcel(parcel, n);
    }
}
