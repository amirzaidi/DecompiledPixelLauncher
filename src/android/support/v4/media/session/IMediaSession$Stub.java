// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.media.session;

import java.util.List;
import android.support.v4.media.MediaMetadataCompat;
import android.app.PendingIntent;
import android.support.v4.media.RatingCompat;
import android.net.Uri;
import android.support.v4.media.MediaDescriptionCompat;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Binder;

public abstract class IMediaSession$Stub extends Binder implements IMediaSession
{
    public IMediaSession$Stub() {
        this.attachInterface((IInterface)this, "android.support.v4.media.session.IMediaSession");
    }
    
    public static IMediaSession asInterface(final IBinder binder) {
        if (binder == null) {
            return null;
        }
        final IInterface queryLocalInterface = binder.queryLocalInterface("android.support.v4.media.session.IMediaSession");
        if (queryLocalInterface != null && queryLocalInterface instanceof IMediaSession) {
            return (IMediaSession)queryLocalInterface;
        }
        return new n(binder);
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
                parcel2.writeString("android.support.v4.media.session.IMediaSession");
                return n4 != 0;
            }
            case 1: {
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                final String string = parcel.readString();
                Bundle bundle;
                if (parcel.readInt() == 0) {
                    bundle = null;
                }
                else {
                    bundle = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
                }
                if (parcel.readInt() != 0) {
                    o = MediaSessionCompat$ResultReceiverWrapper.CREATOR.createFromParcel(parcel);
                }
                this.sendCommand(string, bundle, (MediaSessionCompat$ResultReceiverWrapper)o);
                parcel2.writeNoException();
                return n4 != 0;
            }
            case 2: {
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                if (parcel.readInt() != 0) {
                    o = KeyEvent.CREATOR.createFromParcel(parcel);
                }
                final boolean sendMediaButton = this.sendMediaButton((KeyEvent)o);
                parcel2.writeNoException();
                int n5;
                if (!sendMediaButton) {
                    n5 = 0;
                }
                else {
                    n5 = n4;
                }
                parcel2.writeInt(n5);
                return n4 != 0;
            }
            case 3: {
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                this.registerCallbackListener(IMediaControllerCallback$Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return n4 != 0;
            }
            case 4: {
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                this.unregisterCallbackListener(IMediaControllerCallback$Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return n4 != 0;
            }
            case 5: {
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                final boolean transportControlEnabled = this.isTransportControlEnabled();
                parcel2.writeNoException();
                if (transportControlEnabled) {
                    n3 = n4;
                }
                parcel2.writeInt(n3);
                return n4 != 0;
            }
            case 6: {
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                final String packageName = this.getPackageName();
                parcel2.writeNoException();
                parcel2.writeString(packageName);
                return n4 != 0;
            }
            case 7: {
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                final String tag = this.getTag();
                parcel2.writeNoException();
                parcel2.writeString(tag);
                return n4 != 0;
            }
            case 8: {
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                final PendingIntent launchPendingIntent = this.getLaunchPendingIntent();
                parcel2.writeNoException();
                if (launchPendingIntent == null) {
                    parcel2.writeInt(0);
                }
                else {
                    parcel2.writeInt(n4);
                    launchPendingIntent.writeToParcel(parcel2, n4);
                }
                return n4 != 0;
            }
            case 9: {
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                final long flags = this.getFlags();
                parcel2.writeNoException();
                parcel2.writeLong(flags);
                return n4 != 0;
            }
            case 10: {
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                final ParcelableVolumeInfo volumeAttributes = this.getVolumeAttributes();
                parcel2.writeNoException();
                if (volumeAttributes == null) {
                    parcel2.writeInt(0);
                }
                else {
                    parcel2.writeInt(n4);
                    volumeAttributes.writeToParcel(parcel2, n4);
                }
                return n4 != 0;
            }
            case 11: {
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                this.adjustVolume(parcel.readInt(), parcel.readInt(), parcel.readString());
                parcel2.writeNoException();
                return n4 != 0;
            }
            case 12: {
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                this.setVolumeTo(parcel.readInt(), parcel.readInt(), parcel.readString());
                parcel2.writeNoException();
                return n4 != 0;
            }
            case 27: {
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                final MediaMetadataCompat metadata = this.getMetadata();
                parcel2.writeNoException();
                if (metadata == null) {
                    parcel2.writeInt(0);
                }
                else {
                    parcel2.writeInt(n4);
                    metadata.writeToParcel(parcel2, n4);
                }
                return n4 != 0;
            }
            case 28: {
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                final PlaybackStateCompat playbackState = this.getPlaybackState();
                parcel2.writeNoException();
                if (playbackState == null) {
                    parcel2.writeInt(0);
                }
                else {
                    parcel2.writeInt(n4);
                    playbackState.writeToParcel(parcel2, n4);
                }
                return n4 != 0;
            }
            case 29: {
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                final List queue = this.getQueue();
                parcel2.writeNoException();
                parcel2.writeTypedList(queue);
                return n4 != 0;
            }
            case 30: {
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                final CharSequence queueTitle = this.getQueueTitle();
                parcel2.writeNoException();
                if (queueTitle == null) {
                    parcel2.writeInt(0);
                }
                else {
                    parcel2.writeInt(n4);
                    TextUtils.writeToParcel(queueTitle, parcel2, n4);
                }
                return n4 != 0;
            }
            case 31: {
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                final Bundle extras = this.getExtras();
                parcel2.writeNoException();
                if (extras == null) {
                    parcel2.writeInt(0);
                }
                else {
                    parcel2.writeInt(n4);
                    extras.writeToParcel(parcel2, n4);
                }
                return n4 != 0;
            }
            case 32: {
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                final int ratingType = this.getRatingType();
                parcel2.writeNoException();
                parcel2.writeInt(ratingType);
                return n4 != 0;
            }
            case 45: {
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                final boolean captioningEnabled = this.isCaptioningEnabled();
                parcel2.writeNoException();
                if (captioningEnabled) {
                    n3 = n4;
                }
                parcel2.writeInt(n3);
                return n4 != 0;
            }
            case 37: {
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                final int repeatMode = this.getRepeatMode();
                parcel2.writeNoException();
                parcel2.writeInt(repeatMode);
                return n4 != 0;
            }
            case 38: {
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                final boolean shuffleModeEnabledDeprecated = this.isShuffleModeEnabledDeprecated();
                parcel2.writeNoException();
                if (shuffleModeEnabledDeprecated) {
                    n3 = n4;
                }
                parcel2.writeInt(n3);
                return n4 != 0;
            }
            case 47: {
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                final int shuffleMode = this.getShuffleMode();
                parcel2.writeNoException();
                parcel2.writeInt(shuffleMode);
                return n4 != 0;
            }
            case 41: {
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                if (parcel.readInt() != 0) {
                    o = MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
                }
                this.addQueueItem((MediaDescriptionCompat)o);
                parcel2.writeNoException();
                return n4 != 0;
            }
            case 42: {
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                if (parcel.readInt() != 0) {
                    o = MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
                }
                this.addQueueItemAt((MediaDescriptionCompat)o, parcel.readInt());
                parcel2.writeNoException();
                return n4 != 0;
            }
            case 43: {
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                if (parcel.readInt() != 0) {
                    o = MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
                }
                this.removeQueueItem((MediaDescriptionCompat)o);
                parcel2.writeNoException();
                return n4 != 0;
            }
            case 44: {
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                this.removeQueueItemAt(parcel.readInt());
                parcel2.writeNoException();
                return n4 != 0;
            }
            case 33: {
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                this.prepare();
                parcel2.writeNoException();
                return n4 != 0;
            }
            case 34: {
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                final String string2 = parcel.readString();
                if (parcel.readInt() != 0) {
                    o = Bundle.CREATOR.createFromParcel(parcel);
                }
                this.prepareFromMediaId(string2, (Bundle)o);
                parcel2.writeNoException();
                return n4 != 0;
            }
            case 35: {
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                final String string3 = parcel.readString();
                if (parcel.readInt() != 0) {
                    o = Bundle.CREATOR.createFromParcel(parcel);
                }
                this.prepareFromSearch(string3, (Bundle)o);
                parcel2.writeNoException();
                return n4 != 0;
            }
            case 36: {
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                Uri uri;
                if (parcel.readInt() == 0) {
                    uri = null;
                }
                else {
                    uri = (Uri)Uri.CREATOR.createFromParcel(parcel);
                }
                if (parcel.readInt() != 0) {
                    o = Bundle.CREATOR.createFromParcel(parcel);
                }
                this.prepareFromUri(uri, (Bundle)o);
                parcel2.writeNoException();
                return n4 != 0;
            }
            case 13: {
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                this.play();
                parcel2.writeNoException();
                return n4 != 0;
            }
            case 14: {
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                final String string4 = parcel.readString();
                if (parcel.readInt() != 0) {
                    o = Bundle.CREATOR.createFromParcel(parcel);
                }
                this.playFromMediaId(string4, (Bundle)o);
                parcel2.writeNoException();
                return n4 != 0;
            }
            case 15: {
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                final String string5 = parcel.readString();
                if (parcel.readInt() != 0) {
                    o = Bundle.CREATOR.createFromParcel(parcel);
                }
                this.playFromSearch(string5, (Bundle)o);
                parcel2.writeNoException();
                return n4 != 0;
            }
            case 16: {
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                Uri uri2;
                if (parcel.readInt() == 0) {
                    uri2 = null;
                }
                else {
                    uri2 = (Uri)Uri.CREATOR.createFromParcel(parcel);
                }
                if (parcel.readInt() != 0) {
                    o = Bundle.CREATOR.createFromParcel(parcel);
                }
                this.playFromUri(uri2, (Bundle)o);
                parcel2.writeNoException();
                return n4 != 0;
            }
            case 17: {
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                this.skipToQueueItem(parcel.readLong());
                parcel2.writeNoException();
                return n4 != 0;
            }
            case 18: {
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                this.pause();
                parcel2.writeNoException();
                return n4 != 0;
            }
            case 19: {
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                this.stop();
                parcel2.writeNoException();
                return n4 != 0;
            }
            case 20: {
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                this.next();
                parcel2.writeNoException();
                return n4 != 0;
            }
            case 21: {
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                this.previous();
                parcel2.writeNoException();
                return n4 != 0;
            }
            case 22: {
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                this.fastForward();
                parcel2.writeNoException();
                return n4 != 0;
            }
            case 23: {
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                this.rewind();
                parcel2.writeNoException();
                return n4 != 0;
            }
            case 24: {
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                this.seekTo(parcel.readLong());
                parcel2.writeNoException();
                return n4 != 0;
            }
            case 25: {
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                if (parcel.readInt() != 0) {
                    o = RatingCompat.CREATOR.createFromParcel(parcel);
                }
                this.rate((RatingCompat)o);
                parcel2.writeNoException();
                return n4 != 0;
            }
            case 46: {
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                if (parcel.readInt() != 0) {
                    n3 = n4;
                }
                this.setCaptioningEnabled(n3 != 0);
                parcel2.writeNoException();
                return n4 != 0;
            }
            case 39: {
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                this.setRepeatMode(parcel.readInt());
                parcel2.writeNoException();
                return n4 != 0;
            }
            case 40: {
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                if (parcel.readInt() != 0) {
                    n3 = n4;
                }
                this.setShuffleModeEnabledDeprecated(n3 != 0);
                parcel2.writeNoException();
                return n4 != 0;
            }
            case 48: {
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                this.setShuffleMode(parcel.readInt());
                parcel2.writeNoException();
                return n4 != 0;
            }
            case 26: {
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                final String string6 = parcel.readString();
                if (parcel.readInt() != 0) {
                    o = Bundle.CREATOR.createFromParcel(parcel);
                }
                this.sendCustomAction(string6, (Bundle)o);
                parcel2.writeNoException();
                return n4 != 0;
            }
        }
    }
}
