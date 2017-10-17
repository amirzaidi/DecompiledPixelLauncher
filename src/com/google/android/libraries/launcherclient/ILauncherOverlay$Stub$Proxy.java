// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.libraries.launcherclient;

import android.os.IInterface;
import android.view.WindowManager$LayoutParams;
import android.os.Parcelable;
import android.os.Bundle;
import com.google.android.aidl.a;
import android.os.Parcel;
import android.os.IBinder;
import com.google.android.aidl.BaseProxy;

public class ILauncherOverlay$Stub$Proxy extends BaseProxy implements ILauncherOverlay
{
    ILauncherOverlay$Stub$Proxy(final IBinder binder) {
        super(binder, "com.google.android.libraries.launcherclient.ILauncherOverlay");
    }
    
    public void closeOverlay(final int n) {
        final Parcel obtainAndWriteInterfaceToken = this.obtainAndWriteInterfaceToken();
        obtainAndWriteInterfaceToken.writeInt(n);
        this.transactOneway(6, obtainAndWriteInterfaceToken);
    }
    
    public void endScroll() {
        this.transactOneway(3, this.obtainAndWriteInterfaceToken());
    }
    
    public String getVoiceSearchLanguage() {
        final Parcel transactAndReadException = this.transactAndReadException(11, this.obtainAndWriteInterfaceToken());
        final String string = transactAndReadException.readString();
        transactAndReadException.recycle();
        return string;
    }
    
    public boolean hasOverlayContent() {
        final Parcel transactAndReadException = this.transactAndReadException(13, this.obtainAndWriteInterfaceToken());
        final boolean ry = a.RY(transactAndReadException);
        transactAndReadException.recycle();
        return ry;
    }
    
    public boolean isVoiceDetectionRunning() {
        final Parcel transactAndReadException = this.transactAndReadException(12, this.obtainAndWriteInterfaceToken());
        final boolean ry = a.RY(transactAndReadException);
        transactAndReadException.recycle();
        return ry;
    }
    
    public void onPause() {
        this.transactOneway(7, this.obtainAndWriteInterfaceToken());
    }
    
    public void onResume() {
        this.transactOneway(8, this.obtainAndWriteInterfaceToken());
    }
    
    public void onScroll(final float n) {
        final Parcel obtainAndWriteInterfaceToken = this.obtainAndWriteInterfaceToken();
        obtainAndWriteInterfaceToken.writeFloat(n);
        this.transactOneway(2, obtainAndWriteInterfaceToken);
    }
    
    public void openOverlay(final int n) {
        final Parcel obtainAndWriteInterfaceToken = this.obtainAndWriteInterfaceToken();
        obtainAndWriteInterfaceToken.writeInt(n);
        this.transactOneway(9, obtainAndWriteInterfaceToken);
    }
    
    public void requestVoiceDetection(final boolean b) {
        final Parcel obtainAndWriteInterfaceToken = this.obtainAndWriteInterfaceToken();
        a.Sc(obtainAndWriteInterfaceToken, b);
        this.transactOneway(10, obtainAndWriteInterfaceToken);
    }
    
    public void setActivityState(final int n) {
        final Parcel obtainAndWriteInterfaceToken = this.obtainAndWriteInterfaceToken();
        obtainAndWriteInterfaceToken.writeInt(n);
        this.transactOneway(16, obtainAndWriteInterfaceToken);
    }
    
    public void startScroll() {
        this.transactOneway(1, this.obtainAndWriteInterfaceToken());
    }
    
    public boolean startSearch(final byte[] array, final Bundle bundle) {
        final Parcel obtainAndWriteInterfaceToken = this.obtainAndWriteInterfaceToken();
        obtainAndWriteInterfaceToken.writeByteArray(array);
        a.Sa(obtainAndWriteInterfaceToken, (Parcelable)bundle);
        final Parcel transactAndReadException = this.transactAndReadException(17, obtainAndWriteInterfaceToken);
        final boolean ry = a.RY(transactAndReadException);
        transactAndReadException.recycle();
        return ry;
    }
    
    public void windowAttached(final WindowManager$LayoutParams windowManager$LayoutParams, final ILauncherOverlayCallback launcherOverlayCallback, final int n) {
        final Parcel obtainAndWriteInterfaceToken = this.obtainAndWriteInterfaceToken();
        a.Sa(obtainAndWriteInterfaceToken, (Parcelable)windowManager$LayoutParams);
        a.Sb(obtainAndWriteInterfaceToken, (IInterface)launcherOverlayCallback);
        obtainAndWriteInterfaceToken.writeInt(n);
        this.transactOneway(4, obtainAndWriteInterfaceToken);
    }
    
    public void windowAttached2(final Bundle bundle, final ILauncherOverlayCallback launcherOverlayCallback) {
        final Parcel obtainAndWriteInterfaceToken = this.obtainAndWriteInterfaceToken();
        a.Sa(obtainAndWriteInterfaceToken, (Parcelable)bundle);
        a.Sb(obtainAndWriteInterfaceToken, (IInterface)launcherOverlayCallback);
        this.transactOneway(14, obtainAndWriteInterfaceToken);
    }
    
    public void windowDetached(final boolean b) {
        final Parcel obtainAndWriteInterfaceToken = this.obtainAndWriteInterfaceToken();
        a.Sc(obtainAndWriteInterfaceToken, b);
        this.transactOneway(5, obtainAndWriteInterfaceToken);
    }
}
