// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.libraries.launcherclient;

import android.os.Parcel;
import android.os.IBinder;
import android.os.IInterface;
import com.google.android.aidl.BaseStub;

public abstract class ILauncherOverlayCallback$Stub extends BaseStub implements ILauncherOverlayCallback
{
    public ILauncherOverlayCallback$Stub() {
        this.attachInterface((IInterface)this, "com.google.android.libraries.launcherclient.ILauncherOverlayCallback");
    }
    
    public static ILauncherOverlayCallback asInterface(final IBinder binder) {
        if (binder == null) {
            return null;
        }
        final IInterface queryLocalInterface = binder.queryLocalInterface("com.google.android.libraries.launcherclient.ILauncherOverlayCallback");
        if (!(queryLocalInterface instanceof ILauncherOverlayCallback)) {
            return new ILauncherOverlayCallback$Stub$Proxy(binder);
        }
        return (ILauncherOverlayCallback)queryLocalInterface;
    }
    
    public boolean onTransact(final int n, final Parcel parcel, final Parcel parcel2, final int n2) {
        final boolean b = true;
        if (!this.routeToSuperOrEnforceInterface(n, parcel, parcel2, n2)) {
            switch (n) {
                default: {
                    return false;
                }
                case 1: {
                    this.overlayScrollChanged(parcel.readFloat());
                    break;
                }
                case 2: {
                    this.overlayStatusChanged(parcel.readInt());
                    break;
                }
            }
            return b;
        }
        return b;
    }
}
