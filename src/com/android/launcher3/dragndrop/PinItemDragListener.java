// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.dragndrop;

import android.view.DragEvent;
import com.android.launcher3.userevent.nano.LauncherLogProto$Target;
import com.android.launcher3.ItemInfo;
import com.android.launcher3.PendingAddItemInfo;
import android.view.View;
import android.appwidget.AppWidgetProviderInfo;
import com.android.launcher3.LauncherAppWidgetProviderInfo;
import com.android.launcher3.compat.ShortcutConfigActivityInfo;
import com.android.launcher3.widget.PendingAddShortcutInfo;
import android.content.Context;
import com.android.launcher3.widget.PendingItemDragHelper;
import android.view.View$OnDragListener;
import com.android.launcher3.Utilities;
import android.content.Intent;
import com.android.launcher3.Launcher;
import android.os.Bundle;
import android.widget.RemoteViews;
import android.os.Parcel;
import android.graphics.Rect;
import android.content.pm.LauncherApps$PinItemRequest;
import android.os.Parcelable$Creator;
import android.os.Parcelable;

public class PinItemDragListener extends BaseItemDragListener implements Parcelable
{
    public static final Parcelable$Creator CREATOR;
    private final LauncherApps$PinItemRequest mRequest;
    
    static {
        CREATOR = (Parcelable$Creator)new PinItemDragListener$1();
    }
    
    public PinItemDragListener(final LauncherApps$PinItemRequest mRequest, final Rect rect, final int n, final int n2) {
        super(rect, n, n2);
        this.mRequest = mRequest;
    }
    
    private PinItemDragListener(final Parcel parcel) {
        super(parcel);
        this.mRequest = (LauncherApps$PinItemRequest)LauncherApps$PinItemRequest.CREATOR.createFromParcel(parcel);
    }
    
    public static RemoteViews getPreview(final LauncherApps$PinItemRequest launcherApps$PinItemRequest) {
        final Bundle extras = launcherApps$PinItemRequest.getExtras();
        if (extras != null && extras.get("appWidgetPreview") instanceof RemoteViews) {
            return (RemoteViews)extras.get("appWidgetPreview");
        }
        return null;
    }
    
    public static boolean handleDragRequest(final Launcher launcher, final Intent intent) {
        if (!Utilities.isAtLeastO()) {
            return false;
        }
        if (intent == null || ("android.intent.action.MAIN".equals(intent.getAction()) ^ true)) {
            return false;
        }
        final Parcelable parcelableExtra = intent.getParcelableExtra("pin_item_drag_listener");
        if (parcelableExtra instanceof PinItemDragListener) {
            final PinItemDragListener onDragListener = (PinItemDragListener)parcelableExtra;
            onDragListener.setLauncher(launcher);
            launcher.getDragLayer().setOnDragListener((View$OnDragListener)onDragListener);
            return true;
        }
        return false;
    }
    
    protected PendingItemDragHelper createDragHelper() {
        PendingAddItemInfo tag;
        if (this.mRequest.getRequestType() == 1) {
            tag = new PendingAddShortcutInfo(new PinShortcutRequestActivityInfo(this.mRequest, (Context)this.mLauncher));
        }
        else {
            final LauncherAppWidgetProviderInfo fromProviderInfo = LauncherAppWidgetProviderInfo.fromProviderInfo((Context)this.mLauncher, this.mRequest.getAppWidgetProviderInfo((Context)this.mLauncher));
            tag = new PinItemDragListener$2(this, fromProviderInfo, new PinWidgetFlowHandler(fromProviderInfo, this.mRequest));
        }
        final View view = new View((Context)this.mLauncher);
        view.setTag((Object)tag);
        final PendingItemDragHelper pendingItemDragHelper = new PendingItemDragHelper(view);
        if (this.mRequest.getRequestType() == 2) {
            pendingItemDragHelper.setPreview(getPreview(this.mRequest));
        }
        return pendingItemDragHelper;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void fillInLogContainerData(final View view, final ItemInfo itemInfo, final LauncherLogProto$Target launcherLogProto$Target, final LauncherLogProto$Target launcherLogProto$Target2) {
        launcherLogProto$Target2.containerType = 10;
    }
    
    protected boolean onDragStart(final DragEvent dragEvent) {
        return this.mRequest.isValid() && super.onDragStart(dragEvent);
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        super.writeToParcel(parcel, n);
        this.mRequest.writeToParcel(parcel, n);
    }
}
