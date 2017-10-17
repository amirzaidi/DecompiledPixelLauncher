// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.widget;

import android.os.Parcel;
import android.os.Parcelable$Creator;

final class WidgetAddFlowHandler$1 implements Parcelable$Creator
{
    public WidgetAddFlowHandler createFromParcel(final Parcel parcel) {
        return new WidgetAddFlowHandler(parcel);
    }
    
    public WidgetAddFlowHandler[] newArray(final int n) {
        return new WidgetAddFlowHandler[n];
    }
}
