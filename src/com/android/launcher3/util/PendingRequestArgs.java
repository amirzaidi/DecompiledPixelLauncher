// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.util;

import android.content.Context;
import com.android.launcher3.widget.WidgetAddFlowHandler;
import android.content.Intent;
import android.os.UserHandle;
import android.content.ContentValues;
import android.os.Parcel;
import android.os.Parcelable$Creator;
import android.os.Parcelable;
import com.android.launcher3.ItemInfo;

public class PendingRequestArgs extends ItemInfo implements Parcelable
{
    public static final Parcelable$Creator CREATOR;
    private final int mArg1;
    private final Parcelable mObject;
    private final int mObjectType;
    
    static {
        CREATOR = (Parcelable$Creator)new PendingRequestArgs$1();
    }
    
    private PendingRequestArgs(final int mArg1, final int mObjectType, final Parcelable mObject) {
        this.mArg1 = mArg1;
        this.mObjectType = mObjectType;
        this.mObject = mObject;
    }
    
    public PendingRequestArgs(final Parcel parcel) {
        this.readFromValues((ContentValues)ContentValues.CREATOR.createFromParcel(parcel));
        this.user = (UserHandle)parcel.readParcelable((ClassLoader)null);
        this.mArg1 = parcel.readInt();
        this.mObjectType = parcel.readInt();
        this.mObject = parcel.readParcelable((ClassLoader)null);
    }
    
    public PendingRequestArgs(final ItemInfo itemInfo) {
        this.mArg1 = 0;
        this.mObjectType = 0;
        this.mObject = null;
        this.copyFrom(itemInfo);
    }
    
    public static PendingRequestArgs forIntent(final int n, final Intent intent, final ItemInfo itemInfo) {
        final PendingRequestArgs pendingRequestArgs = new PendingRequestArgs(n, 1, (Parcelable)intent);
        pendingRequestArgs.copyFrom(itemInfo);
        return pendingRequestArgs;
    }
    
    public static PendingRequestArgs forWidgetInfo(final int n, final WidgetAddFlowHandler widgetAddFlowHandler, final ItemInfo itemInfo) {
        final PendingRequestArgs pendingRequestArgs = new PendingRequestArgs(n, 2, (Parcelable)widgetAddFlowHandler);
        pendingRequestArgs.copyFrom(itemInfo);
        return pendingRequestArgs;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public Intent getPendingIntent() {
        Intent intent;
        if (this.mObjectType == 1) {
            intent = (Intent)this.mObject;
        }
        else {
            intent = null;
        }
        return intent;
    }
    
    public int getRequestCode() {
        int mArg1;
        if (this.mObjectType == 1) {
            mArg1 = this.mArg1;
        }
        else {
            mArg1 = 0;
        }
        return mArg1;
    }
    
    public WidgetAddFlowHandler getWidgetHandler() {
        WidgetAddFlowHandler widgetAddFlowHandler;
        if (this.mObjectType == 2) {
            widgetAddFlowHandler = (WidgetAddFlowHandler)this.mObject;
        }
        else {
            widgetAddFlowHandler = null;
        }
        return widgetAddFlowHandler;
    }
    
    public int getWidgetId() {
        int mArg1;
        if (this.mObjectType == 2) {
            mArg1 = this.mArg1;
        }
        else {
            mArg1 = 0;
        }
        return mArg1;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final ContentValues contentValues = new ContentValues();
        this.writeToValues(new ContentWriter(contentValues, null));
        contentValues.writeToParcel(parcel, n);
        parcel.writeParcelable((Parcelable)this.user, n);
        parcel.writeInt(this.mArg1);
        parcel.writeInt(this.mObjectType);
        parcel.writeParcelable(this.mObject, n);
    }
}
