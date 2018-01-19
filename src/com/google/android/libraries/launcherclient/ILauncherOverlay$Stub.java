// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.libraries.launcherclient;

import android.os.Bundle;
import com.google.android.aidl.a;
import android.view.WindowManager$LayoutParams;
import android.os.Parcel;
import android.os.IBinder;
import android.os.IInterface;
import com.google.android.aidl.BaseStub;

public abstract class ILauncherOverlay$Stub extends BaseStub implements ILauncherOverlay
{
    public ILauncherOverlay$Stub() {
        this.attachInterface((IInterface)this, "com.google.android.libraries.launcherclient.ILauncherOverlay");
    }
    
    public static ILauncherOverlay asInterface(final IBinder binder) {
        if (binder == null) {
            return null;
        }
        final IInterface queryLocalInterface = binder.queryLocalInterface("com.google.android.libraries.launcherclient.ILauncherOverlay");
        if (!(queryLocalInterface instanceof ILauncherOverlay)) {
            return new ILauncherOverlay$Stub$Proxy(binder);
        }
        return (ILauncherOverlay)queryLocalInterface;
    }
    
    public boolean onTransact(final int n, final Parcel parcel, final Parcel parcel2, final int n2) {
        final boolean b = true;
        if (!this.routeToSuperOrEnforceInterface(n, parcel, parcel2, n2)) {
            switch (n) {
                default: {
                    return false;
                }
                case 1: {
                    this.startScroll();
                    break;
                }
                case 2: {
                    this.onScroll(parcel.readFloat());
                    break;
                }
                case 3: {
                    this.endScroll();
                    break;
                }
                case 4: {
                    this.windowAttached((WindowManager$LayoutParams)a.Er(parcel, WindowManager$LayoutParams.CREATOR), ILauncherOverlayCallback$Stub.asInterface(parcel.readStrongBinder()), parcel.readInt());
                    break;
                }
                case 14: {
                    this.windowAttached2((Bundle)a.Er(parcel, Bundle.CREATOR), ILauncherOverlayCallback$Stub.asInterface(parcel.readStrongBinder()));
                    break;
                }
                case 5: {
                    this.windowDetached(a.Eq(parcel));
                    break;
                }
                case 6: {
                    this.closeOverlay(parcel.readInt());
                    break;
                }
                case 7: {
                    this.onPause();
                    break;
                }
                case 8: {
                    this.onResume();
                    break;
                }
                case 16: {
                    this.setActivityState(parcel.readInt());
                    break;
                }
                case 9: {
                    this.openOverlay(parcel.readInt());
                    break;
                }
                case 10: {
                    this.requestVoiceDetection(a.Eq(parcel));
                    break;
                }
                case 11: {
                    final String voiceSearchLanguage = this.getVoiceSearchLanguage();
                    parcel2.writeNoException();
                    parcel2.writeString(voiceSearchLanguage);
                    break;
                }
                case 12: {
                    final boolean voiceDetectionRunning = this.isVoiceDetectionRunning();
                    parcel2.writeNoException();
                    a.Eu(parcel2, voiceDetectionRunning);
                    break;
                }
                case 13: {
                    final boolean hasOverlayContent = this.hasOverlayContent();
                    parcel2.writeNoException();
                    a.Eu(parcel2, hasOverlayContent);
                    break;
                }
                case 17: {
                    final boolean startSearch = this.startSearch(parcel.createByteArray(), (Bundle)a.Er(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    a.Eu(parcel2, startSearch);
                    break;
                }
            }
            return b;
        }
        return b;
    }
}
