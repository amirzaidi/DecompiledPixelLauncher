// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.libraries.launcherclient;

import android.os.Parcel;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Binder;

public abstract class ILauncherOverlayCallback$Stub extends Binder implements ILauncherOverlayCallback
{
    public ILauncherOverlayCallback$Stub() {
        this.attachInterface((IInterface)this, "com.google.android.libraries.launcherclient.ILauncherOverlayCallback");
    }
    
    public static ILauncherOverlayCallback asInterface(final IBinder binder) {
        if (binder == null) {
            return null;
        }
        final IInterface queryLocalInterface = binder.queryLocalInterface("com.google.android.libraries.launcherclient.ILauncherOverlayCallback");
        if (queryLocalInterface != null && queryLocalInterface instanceof ILauncherOverlayCallback) {
            return (ILauncherOverlayCallback)queryLocalInterface;
        }
        return new a(binder);
    }
    
    public IBinder asBinder() {
        return (IBinder)this;
    }
    
    public boolean onTransact(final int n, final Parcel parcel, final Parcel parcel2, final int n2) {
        final boolean b = true;
        switch (n) {
            default: {
                return super.onTransact(n, parcel, parcel2, n2);
            }
            case 1598968902: {
                parcel2.writeString("com.google.android.libraries.launcherclient.ILauncherOverlayCallback");
                return b;
            }
            case 1: {
                parcel.enforceInterface("com.google.android.libraries.launcherclient.ILauncherOverlayCallback");
                this.overlayScrollChanged(parcel.readFloat());
                return b;
            }
            case 2: {
                parcel.enforceInterface("com.google.android.libraries.launcherclient.ILauncherOverlayCallback");
                this.overlayStatusChanged(parcel.readInt());
                return b;
            }
        }
    }
}
