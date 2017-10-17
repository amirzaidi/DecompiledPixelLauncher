// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.dragndrop;

import android.os.Parcel;
import android.os.Parcelable$Creator;

final class PinWidgetFlowHandler$1 implements Parcelable$Creator
{
    public PinWidgetFlowHandler createFromParcel(final Parcel parcel) {
        return new PinWidgetFlowHandler(parcel);
    }
    
    public PinWidgetFlowHandler[] newArray(final int n) {
        return new PinWidgetFlowHandler[n];
    }
}
