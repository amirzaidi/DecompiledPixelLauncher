// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.libraries.launcherclient;

import android.os.Bundle;
import android.view.WindowManager$LayoutParams;
import android.os.Parcel;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Binder;

public abstract class ILauncherOverlay$Stub extends Binder implements ILauncherOverlay
{
    public ILauncherOverlay$Stub() {
        this.attachInterface((IInterface)this, "com.google.android.libraries.launcherclient.ILauncherOverlay");
    }
    
    public static ILauncherOverlay asInterface(final IBinder binder) {
        if (binder == null) {
            return null;
        }
        final IInterface queryLocalInterface = binder.queryLocalInterface("com.google.android.libraries.launcherclient.ILauncherOverlay");
        if (queryLocalInterface != null && queryLocalInterface instanceof ILauncherOverlay) {
            return (ILauncherOverlay)queryLocalInterface;
        }
        return new b(binder);
    }
    
    public IBinder asBinder() {
        return (IBinder)this;
    }
    
    public boolean onTransact(final int n, final Parcel parcel, final Parcel parcel2, final int n2) {
        Object o = null;
        int n3 = 0;
        final int n4 = 1;
        switch (n) {
            default: {
                return super.onTransact(n, parcel, parcel2, n2);
            }
            case 1598968902: {
                parcel2.writeString("com.google.android.libraries.launcherclient.ILauncherOverlay");
                return n4 != 0;
            }
            case 1: {
                parcel.enforceInterface("com.google.android.libraries.launcherclient.ILauncherOverlay");
                this.startScroll();
                return n4 != 0;
            }
            case 2: {
                parcel.enforceInterface("com.google.android.libraries.launcherclient.ILauncherOverlay");
                this.onScroll(parcel.readFloat());
                return n4 != 0;
            }
            case 3: {
                parcel.enforceInterface("com.google.android.libraries.launcherclient.ILauncherOverlay");
                this.endScroll();
                return n4 != 0;
            }
            case 4: {
                parcel.enforceInterface("com.google.android.libraries.launcherclient.ILauncherOverlay");
                if (parcel.readInt() != 0) {
                    o = WindowManager$LayoutParams.CREATOR.createFromParcel(parcel);
                }
                this.windowAttached((WindowManager$LayoutParams)o, ILauncherOverlayCallback$Stub.asInterface(parcel.readStrongBinder()), parcel.readInt());
                return n4 != 0;
            }
            case 14: {
                parcel.enforceInterface("com.google.android.libraries.launcherclient.ILauncherOverlay");
                if (parcel.readInt() != 0) {
                    o = Bundle.CREATOR.createFromParcel(parcel);
                }
                this.windowAttached2((Bundle)o, ILauncherOverlayCallback$Stub.asInterface(parcel.readStrongBinder()));
                return n4 != 0;
            }
            case 5: {
                parcel.enforceInterface("com.google.android.libraries.launcherclient.ILauncherOverlay");
                this.windowDetached(parcel.readInt() != 0 && n4);
                return n4 != 0;
            }
            case 6: {
                parcel.enforceInterface("com.google.android.libraries.launcherclient.ILauncherOverlay");
                this.closeOverlay(parcel.readInt());
                return n4 != 0;
            }
            case 7: {
                parcel.enforceInterface("com.google.android.libraries.launcherclient.ILauncherOverlay");
                this.onPause();
                return n4 != 0;
            }
            case 8: {
                parcel.enforceInterface("com.google.android.libraries.launcherclient.ILauncherOverlay");
                this.onResume();
                return n4 != 0;
            }
            case 16: {
                parcel.enforceInterface("com.google.android.libraries.launcherclient.ILauncherOverlay");
                this.setActivityState(parcel.readInt());
                return n4 != 0;
            }
            case 9: {
                parcel.enforceInterface("com.google.android.libraries.launcherclient.ILauncherOverlay");
                this.openOverlay(parcel.readInt());
                return n4 != 0;
            }
            case 10: {
                parcel.enforceInterface("com.google.android.libraries.launcherclient.ILauncherOverlay");
                if (parcel.readInt() != 0) {
                    n3 = n4;
                }
                this.requestVoiceDetection(n3 != 0);
                return n4 != 0;
            }
            case 11: {
                parcel.enforceInterface("com.google.android.libraries.launcherclient.ILauncherOverlay");
                final String voiceSearchLanguage = this.getVoiceSearchLanguage();
                parcel2.writeNoException();
                parcel2.writeString(voiceSearchLanguage);
                return n4 != 0;
            }
            case 12: {
                parcel.enforceInterface("com.google.android.libraries.launcherclient.ILauncherOverlay");
                final boolean voiceDetectionRunning = this.isVoiceDetectionRunning();
                parcel2.writeNoException();
                if (voiceDetectionRunning) {
                    n3 = n4;
                }
                parcel2.writeInt(n3);
                return n4 != 0;
            }
            case 13: {
                parcel.enforceInterface("com.google.android.libraries.launcherclient.ILauncherOverlay");
                final boolean hasOverlayContent = this.hasOverlayContent();
                parcel2.writeNoException();
                if (hasOverlayContent) {
                    n3 = n4;
                }
                parcel2.writeInt(n3);
                return n4 != 0;
            }
        }
    }
}
