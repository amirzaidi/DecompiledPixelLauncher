// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.libraries.launcherclient;

import android.os.Bundle;
import android.view.WindowManager$LayoutParams;
import android.os.Parcel;
import android.os.IBinder;

class b implements ILauncherOverlay
{
    private IBinder KJ;
    
    b(final IBinder kj) {
        this.KJ = kj;
    }
    
    public IBinder asBinder() {
        return this.KJ;
    }
    
    public void closeOverlay(final int n) {
        final Parcel obtain = Parcel.obtain();
        final String s = "com.google.android.libraries.launcherclient.ILauncherOverlay";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            obtain.writeInt(n);
            this.KJ.transact(6, obtain, (Parcel)null, 1);
        }
        finally {
            obtain.recycle();
        }
    }
    
    public void endScroll() {
        final Parcel obtain = Parcel.obtain();
        final String s = "com.google.android.libraries.launcherclient.ILauncherOverlay";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            this.KJ.transact(3, obtain, (Parcel)null, 1);
        }
        finally {
            obtain.recycle();
        }
    }
    
    public String getVoiceSearchLanguage() {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s = "com.google.android.libraries.launcherclient.ILauncherOverlay";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            this.KJ.transact(11, obtain, obtain2, 0);
            obtain2.readException();
            return obtain2.readString();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    public boolean hasOverlayContent() {
        boolean b = false;
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s = "com.google.android.libraries.launcherclient.ILauncherOverlay";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            this.KJ.transact(13, obtain, obtain2, 0);
            obtain2.readException();
            if (obtain2.readInt() != 0) {
                b = true;
            }
            return b;
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    public boolean isVoiceDetectionRunning() {
        boolean b = false;
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s = "com.google.android.libraries.launcherclient.ILauncherOverlay";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            this.KJ.transact(12, obtain, obtain2, 0);
            obtain2.readException();
            if (obtain2.readInt() != 0) {
                b = true;
            }
            return b;
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    public void onPause() {
        final Parcel obtain = Parcel.obtain();
        final String s = "com.google.android.libraries.launcherclient.ILauncherOverlay";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            this.KJ.transact(7, obtain, (Parcel)null, 1);
        }
        finally {
            obtain.recycle();
        }
    }
    
    public void onResume() {
        final Parcel obtain = Parcel.obtain();
        final String s = "com.google.android.libraries.launcherclient.ILauncherOverlay";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            this.KJ.transact(8, obtain, (Parcel)null, 1);
        }
        finally {
            obtain.recycle();
        }
    }
    
    public void onScroll(final float n) {
        final Parcel obtain = Parcel.obtain();
        final String s = "com.google.android.libraries.launcherclient.ILauncherOverlay";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            obtain.writeFloat(n);
            this.KJ.transact(2, obtain, (Parcel)null, 1);
        }
        finally {
            obtain.recycle();
        }
    }
    
    public void openOverlay(final int n) {
        final Parcel obtain = Parcel.obtain();
        final String s = "com.google.android.libraries.launcherclient.ILauncherOverlay";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            obtain.writeInt(n);
            this.KJ.transact(9, obtain, (Parcel)null, 1);
        }
        finally {
            obtain.recycle();
        }
    }
    
    public void requestVoiceDetection(final boolean b) {
        final boolean b2 = true;
        int n = 0;
        final Parcel obtain = Parcel.obtain();
        final String s = "com.google.android.libraries.launcherclient.ILauncherOverlay";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            if (b) {
                n = (b2 ? 1 : 0);
            }
            obtain.writeInt(n);
            this.KJ.transact(10, obtain, (Parcel)null, 1);
        }
        finally {
            obtain.recycle();
        }
    }
    
    public void setActivityState(final int n) {
        final Parcel obtain = Parcel.obtain();
        final String s = "com.google.android.libraries.launcherclient.ILauncherOverlay";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            obtain.writeInt(n);
            this.KJ.transact(16, obtain, (Parcel)null, 1);
        }
        finally {
            obtain.recycle();
        }
    }
    
    public void startScroll() {
        final Parcel obtain = Parcel.obtain();
        final String s = "com.google.android.libraries.launcherclient.ILauncherOverlay";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            this.KJ.transact(1, obtain, (Parcel)null, 1);
        }
        finally {
            obtain.recycle();
        }
    }
    
    public void windowAttached(final WindowManager$LayoutParams windowManager$LayoutParams, final ILauncherOverlayCallback launcherOverlayCallback, final int n) {
        while (true) {
            IBinder binder = null;
            final Parcel obtain = Parcel.obtain();
            final String s = "com.google.android.libraries.launcherclient.ILauncherOverlay";
            final Parcel parcel = obtain;
            while (true) {
                try {
                    parcel.writeInterfaceToken(s);
                    if (windowManager$LayoutParams == null) {
                        obtain.writeInt(0);
                    }
                    else {
                        obtain.writeInt(1);
                        windowManager$LayoutParams.writeToParcel(obtain, 0);
                    }
                    if (launcherOverlayCallback == null) {
                        obtain.writeStrongBinder(binder);
                        obtain.writeInt(n);
                        this.KJ.transact(4, obtain, (Parcel)null, 1);
                        return;
                    }
                }
                finally {
                    obtain.recycle();
                }
                binder = launcherOverlayCallback.asBinder();
                continue;
            }
        }
    }
    
    public void windowAttached2(final Bundle bundle, final ILauncherOverlayCallback launcherOverlayCallback) {
        while (true) {
            IBinder binder = null;
            final Parcel obtain = Parcel.obtain();
            final String s = "com.google.android.libraries.launcherclient.ILauncherOverlay";
            final Parcel parcel = obtain;
            while (true) {
                try {
                    parcel.writeInterfaceToken(s);
                    if (bundle == null) {
                        obtain.writeInt(0);
                    }
                    else {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    }
                    if (launcherOverlayCallback == null) {
                        obtain.writeStrongBinder(binder);
                        this.KJ.transact(14, obtain, (Parcel)null, 1);
                        return;
                    }
                }
                finally {
                    obtain.recycle();
                }
                binder = launcherOverlayCallback.asBinder();
                continue;
            }
        }
    }
    
    public void windowDetached(final boolean b) {
        final boolean b2 = true;
        int n = 0;
        final Parcel obtain = Parcel.obtain();
        final String s = "com.google.android.libraries.launcherclient.ILauncherOverlay";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            if (b) {
                n = (b2 ? 1 : 0);
            }
            obtain.writeInt(n);
            this.KJ.transact(5, obtain, (Parcel)null, 1);
        }
        finally {
            obtain.recycle();
        }
    }
}
