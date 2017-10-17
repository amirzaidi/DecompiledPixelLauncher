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
import android.os.IInterface;
import android.os.Binder;

public abstract class IMediaControllerCallback$Stub extends Binder implements IMediaControllerCallback
{
    public IMediaControllerCallback$Stub() {
        this.attachInterface((IInterface)this, "android.support.v4.media.session.IMediaControllerCallback");
    }
    
    public static IMediaControllerCallback asInterface(final IBinder binder) {
        if (binder == null) {
            return null;
        }
        final IInterface queryLocalInterface = binder.queryLocalInterface("android.support.v4.media.session.IMediaControllerCallback");
        if (queryLocalInterface != null && queryLocalInterface instanceof IMediaControllerCallback) {
            return (IMediaControllerCallback)queryLocalInterface;
        }
        return new e(binder);
    }
    
    public IBinder asBinder() {
        return (IBinder)this;
    }
    
    public boolean onTransact(final int n, final Parcel parcel, final Parcel parcel2, final int n2) {
        Object o = null;
        boolean b = false;
        final boolean b2 = true;
        switch (n) {
            default: {
                return super.onTransact(n, parcel, parcel2, n2);
            }
            case 1598968902: {
                parcel2.writeString("android.support.v4.media.session.IMediaControllerCallback");
                return b2;
            }
            case 1: {
                parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                final String string = parcel.readString();
                if (parcel.readInt() != 0) {
                    o = Bundle.CREATOR.createFromParcel(parcel);
                }
                this.onEvent(string, (Bundle)o);
                return b2;
            }
            case 2: {
                parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                this.onSessionDestroyed();
                return b2;
            }
            case 3: {
                parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                if (parcel.readInt() != 0) {
                    o = PlaybackStateCompat.CREATOR.createFromParcel(parcel);
                }
                this.onPlaybackStateChanged((PlaybackStateCompat)o);
                return b2;
            }
            case 4: {
                parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                if (parcel.readInt() != 0) {
                    o = MediaMetadataCompat.CREATOR.createFromParcel(parcel);
                }
                this.onMetadataChanged((MediaMetadataCompat)o);
                return b2;
            }
            case 5: {
                parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                this.onQueueChanged(parcel.createTypedArrayList(MediaSessionCompat$QueueItem.CREATOR));
                return b2;
            }
            case 6: {
                parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                if (parcel.readInt() != 0) {
                    o = TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
                }
                this.onQueueTitleChanged((CharSequence)o);
                return b2;
            }
            case 7: {
                parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                if (parcel.readInt() != 0) {
                    o = Bundle.CREATOR.createFromParcel(parcel);
                }
                this.onExtrasChanged((Bundle)o);
                return b2;
            }
            case 8: {
                parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                if (parcel.readInt() != 0) {
                    o = ParcelableVolumeInfo.CREATOR.createFromParcel(parcel);
                }
                this.onVolumeInfoChanged((ParcelableVolumeInfo)o);
                return b2;
            }
            case 9: {
                parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                this.onRepeatModeChanged(parcel.readInt());
                return b2;
            }
            case 10: {
                parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                this.onShuffleModeChangedDeprecated(parcel.readInt() != 0 && b2);
                return b2;
            }
            case 11: {
                parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                if (parcel.readInt() != 0) {
                    b = b2;
                }
                this.onCaptioningEnabledChanged(b);
                return b2;
            }
            case 12: {
                parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                this.onShuffleModeChanged(parcel.readInt());
                return b2;
            }
        }
    }
}
