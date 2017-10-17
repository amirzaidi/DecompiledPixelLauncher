// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.compat;

import android.os.Parcel;
import android.content.pm.ShortcutInfo;
import android.appwidget.AppWidgetProviderInfo;
import android.content.Context;
import android.os.Bundle;
import java.lang.reflect.Method;
import com.android.launcher3.Utilities;
import android.content.Intent;
import android.os.Parcelable$Creator;
import android.os.Parcelable;

public class PinItemRequestCompat implements Parcelable
{
    public static final Parcelable$Creator CREATOR;
    public static final String EXTRA_PIN_ITEM_REQUEST = "android.content.pm.extra.PIN_ITEM_REQUEST";
    public static final int REQUEST_TYPE_APPWIDGET = 2;
    public static final int REQUEST_TYPE_SHORTCUT = 1;
    private final Parcelable mObject;
    
    static {
        CREATOR = (Parcelable$Creator)new PinItemRequestCompat$1();
    }
    
    private PinItemRequestCompat(final Parcelable mObject) {
        this.mObject = mObject;
    }
    
    public static PinItemRequestCompat getPinItemRequest(final Intent intent) {
        PinItemRequestCompat pinItemRequestCompat = null;
        if (!Utilities.isAtLeastO()) {
            return null;
        }
        final Parcelable parcelableExtra = intent.getParcelableExtra("android.content.pm.extra.PIN_ITEM_REQUEST");
        if (parcelableExtra != null) {
            pinItemRequestCompat = new PinItemRequestCompat(parcelableExtra);
        }
        return pinItemRequestCompat;
    }
    
    private Object invokeMethod(final String s) {
        try {
            final Parcelable mObject = this.mObject;
            try {
                final Method declaredMethod = mObject.getClass().getDeclaredMethod(s, (Class<?>[])new Class[0]);
                try {
                    return declaredMethod.invoke(this.mObject, new Object[0]);
                }
                catch (Exception ex) {
                    throw new RuntimeException(ex);
                }
            }
            catch (Exception ex2) {}
        }
        catch (Exception ex3) {}
    }
    
    public boolean accept() {
        return (boolean)this.invokeMethod("accept");
    }
    
    public boolean accept(final Bundle bundle) {
        try {
            final Parcelable mObject = this.mObject;
            try {
                final Method declaredMethod = mObject.getClass().getDeclaredMethod("accept", Bundle.class);
                try {
                    final Object invoke = declaredMethod.invoke(this.mObject, bundle);
                    try {
                        final Boolean b = (Boolean)invoke;
                        try {
                            return b;
                        }
                        catch (Exception ex) {
                            throw new RuntimeException(ex);
                        }
                    }
                    catch (Exception ex2) {}
                }
                catch (Exception ex3) {}
            }
            catch (Exception ex4) {}
        }
        catch (Exception ex5) {}
    }
    
    public int describeContents() {
        return 0;
    }
    
    public AppWidgetProviderInfo getAppWidgetProviderInfo(final Context context) {
        try {
            final Parcelable mObject = this.mObject;
            try {
                final Method declaredMethod = mObject.getClass().getDeclaredMethod("getAppWidgetProviderInfo", Context.class);
                try {
                    final Object invoke = declaredMethod.invoke(this.mObject, context);
                    try {
                        return (AppWidgetProviderInfo)invoke;
                    }
                    catch (Exception ex) {
                        throw new RuntimeException(ex);
                    }
                }
                catch (Exception ex2) {}
            }
            catch (Exception ex3) {}
        }
        catch (Exception ex4) {}
    }
    
    public Bundle getExtras() {
        try {
            final Parcelable mObject = this.mObject;
            try {
                final Method declaredMethod = mObject.getClass().getDeclaredMethod("getExtras", (Class<?>[])new Class[0]);
                try {
                    final Object invoke = declaredMethod.invoke(this.mObject, new Object[0]);
                    try {
                        return (Bundle)invoke;
                    }
                    catch (Exception ex) {
                        return null;
                    }
                }
                catch (Exception ex2) {}
            }
            catch (Exception ex3) {}
        }
        catch (Exception ex4) {}
    }
    
    public int getRequestType() {
        return (int)this.invokeMethod("getRequestType");
    }
    
    public ShortcutInfo getShortcutInfo() {
        return (ShortcutInfo)this.invokeMethod("getShortcutInfo");
    }
    
    public boolean isValid() {
        return (boolean)this.invokeMethod("isValid");
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        parcel.writeParcelable(this.mObject, n);
    }
}
