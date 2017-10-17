// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.media.session;

import android.text.TextUtils;
import java.util.List;
import android.support.v4.media.MediaMetadataCompat;
import android.os.Bundle;
import android.os.Parcel;
import android.os.IBinder;

class g implements IMediaControllerCallback
{
    private IBinder mRemote;
    
    g(final IBinder mRemote) {
        this.mRemote = mRemote;
    }
    
    public IBinder asBinder() {
        return this.mRemote;
    }
    
    public void onCaptioningEnabledChanged(final boolean b) {
        final boolean b2 = true;
        int n = 0;
        final Parcel obtain = Parcel.obtain();
        final String s = "android.support.v4.media.session.IMediaControllerCallback";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            if (b) {
                n = (b2 ? 1 : 0);
            }
            obtain.writeInt(n);
            this.mRemote.transact(11, obtain, (Parcel)null, 1);
        }
        finally {
            obtain.recycle();
        }
    }
    
    public void onEvent(final String s, final Bundle bundle) {
        final Parcel obtain = Parcel.obtain();
        final String s2 = "android.support.v4.media.session.IMediaControllerCallback";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s2);
            obtain.writeString(s);
            if (bundle == null) {
                obtain.writeInt(0);
            }
            else {
                obtain.writeInt(1);
                bundle.writeToParcel(obtain, 0);
            }
            this.mRemote.transact(1, obtain, (Parcel)null, 1);
        }
        finally {
            obtain.recycle();
        }
    }
    
    public void onExtrasChanged(final Bundle bundle) {
        final Parcel obtain = Parcel.obtain();
        final String s = "android.support.v4.media.session.IMediaControllerCallback";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            if (bundle == null) {
                obtain.writeInt(0);
            }
            else {
                obtain.writeInt(1);
                bundle.writeToParcel(obtain, 0);
            }
            this.mRemote.transact(7, obtain, (Parcel)null, 1);
        }
        finally {
            obtain.recycle();
        }
    }
    
    public void onMetadataChanged(final MediaMetadataCompat mediaMetadataCompat) {
        final Parcel obtain = Parcel.obtain();
        final String s = "android.support.v4.media.session.IMediaControllerCallback";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            if (mediaMetadataCompat == null) {
                obtain.writeInt(0);
            }
            else {
                obtain.writeInt(1);
                mediaMetadataCompat.writeToParcel(obtain, 0);
            }
            this.mRemote.transact(4, obtain, (Parcel)null, 1);
        }
        finally {
            obtain.recycle();
        }
    }
    
    public void onPlaybackStateChanged(final PlaybackStateCompat playbackStateCompat) {
        final Parcel obtain = Parcel.obtain();
        final String s = "android.support.v4.media.session.IMediaControllerCallback";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            if (playbackStateCompat == null) {
                obtain.writeInt(0);
            }
            else {
                obtain.writeInt(1);
                playbackStateCompat.writeToParcel(obtain, 0);
            }
            this.mRemote.transact(3, obtain, (Parcel)null, 1);
        }
        finally {
            obtain.recycle();
        }
    }
    
    public void onQueueChanged(final List list) {
        final Parcel obtain = Parcel.obtain();
        final String s = "android.support.v4.media.session.IMediaControllerCallback";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            obtain.writeTypedList(list);
            this.mRemote.transact(5, obtain, (Parcel)null, 1);
        }
        finally {
            obtain.recycle();
        }
    }
    
    public void onQueueTitleChanged(final CharSequence charSequence) {
        final Parcel obtain = Parcel.obtain();
        final String s = "android.support.v4.media.session.IMediaControllerCallback";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            if (charSequence == null) {
                obtain.writeInt(0);
            }
            else {
                obtain.writeInt(1);
                TextUtils.writeToParcel(charSequence, obtain, 0);
            }
            this.mRemote.transact(6, obtain, (Parcel)null, 1);
        }
        finally {
            obtain.recycle();
        }
    }
    
    public void onRepeatModeChanged(final int n) {
        final Parcel obtain = Parcel.obtain();
        final String s = "android.support.v4.media.session.IMediaControllerCallback";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            obtain.writeInt(n);
            this.mRemote.transact(9, obtain, (Parcel)null, 1);
        }
        finally {
            obtain.recycle();
        }
    }
    
    public void onSessionDestroyed() {
        final Parcel obtain = Parcel.obtain();
        final String s = "android.support.v4.media.session.IMediaControllerCallback";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            this.mRemote.transact(2, obtain, (Parcel)null, 1);
        }
        finally {
            obtain.recycle();
        }
    }
    
    public void onShuffleModeChanged(final int n) {
        final Parcel obtain = Parcel.obtain();
        final String s = "android.support.v4.media.session.IMediaControllerCallback";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            obtain.writeInt(n);
            this.mRemote.transact(12, obtain, (Parcel)null, 1);
        }
        finally {
            obtain.recycle();
        }
    }
    
    public void onShuffleModeChangedDeprecated(final boolean b) {
        final boolean b2 = true;
        int n = 0;
        final Parcel obtain = Parcel.obtain();
        final String s = "android.support.v4.media.session.IMediaControllerCallback";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            if (b) {
                n = (b2 ? 1 : 0);
            }
            obtain.writeInt(n);
            this.mRemote.transact(10, obtain, (Parcel)null, 1);
        }
        finally {
            obtain.recycle();
        }
    }
    
    public void onVolumeInfoChanged(final ParcelableVolumeInfo parcelableVolumeInfo) {
        final Parcel obtain = Parcel.obtain();
        final String s = "android.support.v4.media.session.IMediaControllerCallback";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            if (parcelableVolumeInfo == null) {
                obtain.writeInt(0);
            }
            else {
                obtain.writeInt(1);
                parcelableVolumeInfo.writeToParcel(obtain, 0);
            }
            this.mRemote.transact(8, obtain, (Parcel)null, 1);
        }
        finally {
            obtain.recycle();
        }
    }
}
