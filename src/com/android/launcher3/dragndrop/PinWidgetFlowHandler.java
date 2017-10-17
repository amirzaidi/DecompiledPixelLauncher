// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.dragndrop;

import android.os.Bundle;
import com.android.launcher3.ItemInfo;
import com.android.launcher3.Launcher;
import android.os.Parcel;
import android.appwidget.AppWidgetProviderInfo;
import android.content.pm.LauncherApps$PinItemRequest;
import android.os.Parcelable$Creator;
import android.os.Parcelable;
import com.android.launcher3.widget.WidgetAddFlowHandler;

public class PinWidgetFlowHandler extends WidgetAddFlowHandler implements Parcelable
{
    public static final Parcelable$Creator CREATOR;
    private final LauncherApps$PinItemRequest mRequest;
    
    static {
        CREATOR = (Parcelable$Creator)new PinWidgetFlowHandler$1();
    }
    
    public PinWidgetFlowHandler(final AppWidgetProviderInfo appWidgetProviderInfo, final LauncherApps$PinItemRequest mRequest) {
        super(appWidgetProviderInfo);
        this.mRequest = mRequest;
    }
    
    protected PinWidgetFlowHandler(final Parcel parcel) {
        super(parcel);
        this.mRequest = (LauncherApps$PinItemRequest)LauncherApps$PinItemRequest.CREATOR.createFromParcel(parcel);
    }
    
    public boolean needsConfigure() {
        return false;
    }
    
    public boolean startConfigActivity(final Launcher launcher, final int n, final ItemInfo itemInfo, final int n2) {
        final Bundle bundle = new Bundle();
        bundle.putInt("appWidgetId", n);
        this.mRequest.accept(bundle);
        return false;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        super.writeToParcel(parcel, n);
        this.mRequest.writeToParcel(parcel, n);
    }
}
