// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.libraries.launcherclient;

import android.os.Parcel;
import android.os.IBinder;
import com.google.android.aidl.BaseProxy;

public class ILauncherOverlayCallback$Stub$Proxy extends BaseProxy implements ILauncherOverlayCallback
{
    ILauncherOverlayCallback$Stub$Proxy(final IBinder binder) {
        super(binder, "com.google.android.libraries.launcherclient.ILauncherOverlayCallback");
    }
    
    public void overlayScrollChanged(final float n) {
        final Parcel obtainAndWriteInterfaceToken = this.obtainAndWriteInterfaceToken();
        obtainAndWriteInterfaceToken.writeFloat(n);
        this.transactOneway(1, obtainAndWriteInterfaceToken);
    }
    
    public void overlayStatusChanged(final int n) {
        final Parcel obtainAndWriteInterfaceToken = this.obtainAndWriteInterfaceToken();
        obtainAndWriteInterfaceToken.writeInt(n);
        this.transactOneway(2, obtainAndWriteInterfaceToken);
    }
}
