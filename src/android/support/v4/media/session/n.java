// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.media.session;

import android.view.KeyEvent;
import android.support.v4.media.RatingCompat;
import android.net.Uri;
import android.text.TextUtils;
import java.util.List;
import android.support.v4.media.MediaMetadataCompat;
import android.app.PendingIntent;
import android.os.Bundle;
import android.os.Parcel;
import android.support.v4.media.MediaDescriptionCompat;
import android.os.IBinder;

class n implements IMediaSession
{
    private IBinder adR;
    
    n(final IBinder adR) {
        this.adR = adR;
    }
    
    public void addQueueItem(final MediaDescriptionCompat mediaDescriptionCompat) {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s = "android.support.v4.media.session.IMediaSession";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            if (mediaDescriptionCompat == null) {
                obtain.writeInt(0);
            }
            else {
                obtain.writeInt(1);
                mediaDescriptionCompat.writeToParcel(obtain, 0);
            }
            this.adR.transact(41, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    public void addQueueItemAt(final MediaDescriptionCompat mediaDescriptionCompat, final int n) {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s = "android.support.v4.media.session.IMediaSession";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            if (mediaDescriptionCompat == null) {
                obtain.writeInt(0);
            }
            else {
                obtain.writeInt(1);
                mediaDescriptionCompat.writeToParcel(obtain, 0);
            }
            obtain.writeInt(n);
            this.adR.transact(42, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    public void adjustVolume(final int n, final int n2, final String s) {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s2 = "android.support.v4.media.session.IMediaSession";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s2);
            obtain.writeInt(n);
            obtain.writeInt(n2);
            obtain.writeString(s);
            this.adR.transact(11, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    public IBinder asBinder() {
        return this.adR;
    }
    
    public void fastForward() {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s = "android.support.v4.media.session.IMediaSession";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            this.adR.transact(22, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    public Bundle getExtras() {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s = "android.support.v4.media.session.IMediaSession";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            this.adR.transact(31, obtain, obtain2, 0);
            obtain2.readException();
            Bundle bundle;
            if (obtain2.readInt() == 0) {
                bundle = null;
            }
            else {
                bundle = (Bundle)Bundle.CREATOR.createFromParcel(obtain2);
            }
            return bundle;
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    public long getFlags() {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s = "android.support.v4.media.session.IMediaSession";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            this.adR.transact(9, obtain, obtain2, 0);
            obtain2.readException();
            return obtain2.readLong();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    public PendingIntent getLaunchPendingIntent() {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s = "android.support.v4.media.session.IMediaSession";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            this.adR.transact(8, obtain, obtain2, 0);
            obtain2.readException();
            PendingIntent pendingIntent;
            if (obtain2.readInt() == 0) {
                pendingIntent = null;
            }
            else {
                pendingIntent = (PendingIntent)PendingIntent.CREATOR.createFromParcel(obtain2);
            }
            return pendingIntent;
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    public MediaMetadataCompat getMetadata() {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s = "android.support.v4.media.session.IMediaSession";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            this.adR.transact(27, obtain, obtain2, 0);
            obtain2.readException();
            MediaMetadataCompat mediaMetadataCompat;
            if (obtain2.readInt() == 0) {
                mediaMetadataCompat = null;
            }
            else {
                mediaMetadataCompat = (MediaMetadataCompat)MediaMetadataCompat.CREATOR.createFromParcel(obtain2);
            }
            return mediaMetadataCompat;
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    public String getPackageName() {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s = "android.support.v4.media.session.IMediaSession";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            this.adR.transact(6, obtain, obtain2, 0);
            obtain2.readException();
            return obtain2.readString();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    public PlaybackStateCompat getPlaybackState() {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s = "android.support.v4.media.session.IMediaSession";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            this.adR.transact(28, obtain, obtain2, 0);
            obtain2.readException();
            PlaybackStateCompat playbackStateCompat;
            if (obtain2.readInt() == 0) {
                playbackStateCompat = null;
            }
            else {
                playbackStateCompat = (PlaybackStateCompat)PlaybackStateCompat.CREATOR.createFromParcel(obtain2);
            }
            return playbackStateCompat;
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    public List getQueue() {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s = "android.support.v4.media.session.IMediaSession";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            this.adR.transact(29, obtain, obtain2, 0);
            obtain2.readException();
            return obtain2.createTypedArrayList(MediaSessionCompat$QueueItem.CREATOR);
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    public CharSequence getQueueTitle() {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s = "android.support.v4.media.session.IMediaSession";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            this.adR.transact(30, obtain, obtain2, 0);
            obtain2.readException();
            CharSequence charSequence;
            if (obtain2.readInt() == 0) {
                charSequence = null;
            }
            else {
                charSequence = (CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(obtain2);
            }
            return charSequence;
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    public int getRatingType() {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s = "android.support.v4.media.session.IMediaSession";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            this.adR.transact(32, obtain, obtain2, 0);
            obtain2.readException();
            return obtain2.readInt();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    public int getRepeatMode() {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s = "android.support.v4.media.session.IMediaSession";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            this.adR.transact(37, obtain, obtain2, 0);
            obtain2.readException();
            return obtain2.readInt();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    public int getShuffleMode() {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s = "android.support.v4.media.session.IMediaSession";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            this.adR.transact(47, obtain, obtain2, 0);
            obtain2.readException();
            return obtain2.readInt();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    public String getTag() {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s = "android.support.v4.media.session.IMediaSession";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            this.adR.transact(7, obtain, obtain2, 0);
            obtain2.readException();
            return obtain2.readString();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    public ParcelableVolumeInfo getVolumeAttributes() {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s = "android.support.v4.media.session.IMediaSession";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            this.adR.transact(10, obtain, obtain2, 0);
            obtain2.readException();
            ParcelableVolumeInfo parcelableVolumeInfo;
            if (obtain2.readInt() == 0) {
                parcelableVolumeInfo = null;
            }
            else {
                parcelableVolumeInfo = (ParcelableVolumeInfo)ParcelableVolumeInfo.CREATOR.createFromParcel(obtain2);
            }
            return parcelableVolumeInfo;
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    public boolean isCaptioningEnabled() {
        boolean b = false;
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s = "android.support.v4.media.session.IMediaSession";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            this.adR.transact(45, obtain, obtain2, 0);
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
    
    public boolean isShuffleModeEnabledDeprecated() {
        boolean b = false;
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s = "android.support.v4.media.session.IMediaSession";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            this.adR.transact(38, obtain, obtain2, 0);
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
    
    public boolean isTransportControlEnabled() {
        boolean b = false;
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s = "android.support.v4.media.session.IMediaSession";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            this.adR.transact(5, obtain, obtain2, 0);
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
    
    public void next() {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s = "android.support.v4.media.session.IMediaSession";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            this.adR.transact(20, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    public void pause() {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s = "android.support.v4.media.session.IMediaSession";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            this.adR.transact(18, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    public void play() {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s = "android.support.v4.media.session.IMediaSession";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            this.adR.transact(13, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    public void playFromMediaId(final String s, final Bundle bundle) {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s2 = "android.support.v4.media.session.IMediaSession";
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
            this.adR.transact(14, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    public void playFromSearch(final String s, final Bundle bundle) {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s2 = "android.support.v4.media.session.IMediaSession";
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
            this.adR.transact(15, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    public void playFromUri(final Uri uri, final Bundle bundle) {
        while (true) {
            final Parcel obtain = Parcel.obtain();
            final Parcel obtain2 = Parcel.obtain();
            final String s = "android.support.v4.media.session.IMediaSession";
            final Parcel parcel = obtain;
            while (true) {
                try {
                    parcel.writeInterfaceToken(s);
                    if (uri == null) {
                        obtain.writeInt(0);
                    }
                    else {
                        obtain.writeInt(1);
                        uri.writeToParcel(obtain, 0);
                    }
                    if (bundle == null) {
                        obtain.writeInt(0);
                        this.adR.transact(16, obtain, obtain2, 0);
                        obtain2.readException();
                        return;
                    }
                }
                finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
                obtain.writeInt(1);
                bundle.writeToParcel(obtain, 0);
                continue;
            }
        }
    }
    
    public void prepare() {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s = "android.support.v4.media.session.IMediaSession";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            this.adR.transact(33, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    public void prepareFromMediaId(final String s, final Bundle bundle) {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s2 = "android.support.v4.media.session.IMediaSession";
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
            this.adR.transact(34, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    public void prepareFromSearch(final String s, final Bundle bundle) {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s2 = "android.support.v4.media.session.IMediaSession";
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
            this.adR.transact(35, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    public void prepareFromUri(final Uri uri, final Bundle bundle) {
        while (true) {
            final Parcel obtain = Parcel.obtain();
            final Parcel obtain2 = Parcel.obtain();
            final String s = "android.support.v4.media.session.IMediaSession";
            final Parcel parcel = obtain;
            while (true) {
                try {
                    parcel.writeInterfaceToken(s);
                    if (uri == null) {
                        obtain.writeInt(0);
                    }
                    else {
                        obtain.writeInt(1);
                        uri.writeToParcel(obtain, 0);
                    }
                    if (bundle == null) {
                        obtain.writeInt(0);
                        this.adR.transact(36, obtain, obtain2, 0);
                        obtain2.readException();
                        return;
                    }
                }
                finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
                obtain.writeInt(1);
                bundle.writeToParcel(obtain, 0);
                continue;
            }
        }
    }
    
    public void previous() {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s = "android.support.v4.media.session.IMediaSession";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            this.adR.transact(21, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    public void rate(final RatingCompat ratingCompat) {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s = "android.support.v4.media.session.IMediaSession";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            if (ratingCompat == null) {
                obtain.writeInt(0);
            }
            else {
                obtain.writeInt(1);
                ratingCompat.writeToParcel(obtain, 0);
            }
            this.adR.transact(25, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    public void registerCallbackListener(final IMediaControllerCallback mediaControllerCallback) {
        IBinder binder = null;
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s = "android.support.v4.media.session.IMediaSession";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            if (mediaControllerCallback != null) {
                binder = mediaControllerCallback.asBinder();
            }
            obtain.writeStrongBinder(binder);
            this.adR.transact(3, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    public void removeQueueItem(final MediaDescriptionCompat mediaDescriptionCompat) {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s = "android.support.v4.media.session.IMediaSession";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            if (mediaDescriptionCompat == null) {
                obtain.writeInt(0);
            }
            else {
                obtain.writeInt(1);
                mediaDescriptionCompat.writeToParcel(obtain, 0);
            }
            this.adR.transact(43, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    public void removeQueueItemAt(final int n) {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s = "android.support.v4.media.session.IMediaSession";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            obtain.writeInt(n);
            this.adR.transact(44, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    public void rewind() {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s = "android.support.v4.media.session.IMediaSession";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            this.adR.transact(23, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    public void seekTo(final long n) {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s = "android.support.v4.media.session.IMediaSession";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            obtain.writeLong(n);
            this.adR.transact(24, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    public void sendCommand(final String s, final Bundle bundle, final MediaSessionCompat$ResultReceiverWrapper mediaSessionCompat$ResultReceiverWrapper) {
        while (true) {
            final Parcel obtain = Parcel.obtain();
            final Parcel obtain2 = Parcel.obtain();
            final String s2 = "android.support.v4.media.session.IMediaSession";
            final Parcel parcel = obtain;
            while (true) {
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
                    if (mediaSessionCompat$ResultReceiverWrapper == null) {
                        obtain.writeInt(0);
                        this.adR.transact(1, obtain, obtain2, 0);
                        obtain2.readException();
                        return;
                    }
                }
                finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
                obtain.writeInt(1);
                mediaSessionCompat$ResultReceiverWrapper.writeToParcel(obtain, 0);
                continue;
            }
        }
    }
    
    public void sendCustomAction(final String s, final Bundle bundle) {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s2 = "android.support.v4.media.session.IMediaSession";
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
            this.adR.transact(26, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    public boolean sendMediaButton(final KeyEvent keyEvent) {
        while (true) {
            final boolean b = true;
            boolean b2 = false;
            final Parcel obtain = Parcel.obtain();
            final Parcel obtain2 = Parcel.obtain();
            final String s = "android.support.v4.media.session.IMediaSession";
            final Parcel parcel = obtain;
            try {
                parcel.writeInterfaceToken(s);
                if (keyEvent == null) {
                    obtain.writeInt(0);
                }
                else {
                    obtain.writeInt(1);
                    keyEvent.writeToParcel(obtain, 0);
                }
                this.adR.transact(2, obtain, obtain2, 0);
                obtain2.readException();
                if (obtain2.readInt() == 0) {
                    return b2;
                }
            }
            finally {
                obtain2.recycle();
                obtain.recycle();
            }
            b2 = b;
            return b2;
        }
    }
    
    public void setCaptioningEnabled(final boolean b) {
        int n = 0;
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s = "android.support.v4.media.session.IMediaSession";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            if (b) {
                n = 1;
            }
            obtain.writeInt(n);
            this.adR.transact(46, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    public void setRepeatMode(final int n) {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s = "android.support.v4.media.session.IMediaSession";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            obtain.writeInt(n);
            this.adR.transact(39, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    public void setShuffleMode(final int n) {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s = "android.support.v4.media.session.IMediaSession";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            obtain.writeInt(n);
            this.adR.transact(48, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    public void setShuffleModeEnabledDeprecated(final boolean b) {
        int n = 0;
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s = "android.support.v4.media.session.IMediaSession";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            if (b) {
                n = 1;
            }
            obtain.writeInt(n);
            this.adR.transact(40, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    public void setVolumeTo(final int n, final int n2, final String s) {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s2 = "android.support.v4.media.session.IMediaSession";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s2);
            obtain.writeInt(n);
            obtain.writeInt(n2);
            obtain.writeString(s);
            this.adR.transact(12, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    public void skipToQueueItem(final long n) {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s = "android.support.v4.media.session.IMediaSession";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            obtain.writeLong(n);
            this.adR.transact(17, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    public void stop() {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s = "android.support.v4.media.session.IMediaSession";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            this.adR.transact(19, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    public void unregisterCallbackListener(final IMediaControllerCallback mediaControllerCallback) {
        IBinder binder = null;
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s = "android.support.v4.media.session.IMediaSession";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            if (mediaControllerCallback != null) {
                binder = mediaControllerCallback.asBinder();
            }
            obtain.writeStrongBinder(binder);
            this.adR.transact(4, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
}
