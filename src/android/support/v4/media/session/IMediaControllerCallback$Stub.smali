.class public abstract Landroid/support/v4/media/session/IMediaControllerCallback$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/media/session/IMediaControllerCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string/jumbo v0, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p0, p0, v0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/session/IMediaControllerCallback;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 28
    if-eqz p0, :cond_1

    .line 31
    const-string/jumbo v0, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    if-nez v0, :cond_2

    .line 35
    :cond_0
    new-instance v0, Landroid/support/v4/media/session/e;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/e;-><init>(Landroid/os/IBinder;)V

    return-object v0

    .line 29
    :cond_1
    return-object v0

    .line 32
    :cond_2
    instance-of v1, v0, Landroid/support/v4/media/session/IMediaControllerCallback;

    if-eqz v1, :cond_0

    .line 33
    check-cast v0, Landroid/support/v4/media/session/IMediaControllerCallback;

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 177
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 47
    :sswitch_0
    const-string/jumbo v0, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    return v2

    .line 52
    :sswitch_1
    const-string/jumbo v1, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-nez v3, :cond_0

    .line 62
    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 63
    return v2

    .line 57
    :cond_0
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    goto :goto_0

    .line 67
    :sswitch_2
    const-string/jumbo v0, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onSessionDestroyed()V

    .line 69
    return v2

    .line 73
    :sswitch_3
    const-string/jumbo v1, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_1

    .line 81
    :goto_1
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onPlaybackStateChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    .line 82
    return v2

    .line 76
    :cond_1
    sget-object v0, Landroid/support/v4/media/session/PlaybackStateCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/PlaybackStateCompat;

    goto :goto_1

    .line 86
    :sswitch_4
    const-string/jumbo v1, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_2

    .line 94
    :goto_2
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 95
    return v2

    .line 89
    :cond_2
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaMetadataCompat;

    goto :goto_2

    .line 99
    :sswitch_5
    const-string/jumbo v0, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    sget-object v0, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 102
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onQueueChanged(Ljava/util/List;)V

    .line 103
    return v2

    .line 107
    :sswitch_6
    const-string/jumbo v1, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_3

    .line 115
    :goto_3
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onQueueTitleChanged(Ljava/lang/CharSequence;)V

    .line 116
    return v2

    .line 110
    :cond_3
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto :goto_3

    .line 120
    :sswitch_7
    const-string/jumbo v1, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_4

    .line 128
    :goto_4
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onExtrasChanged(Landroid/os/Bundle;)V

    .line 129
    return v2

    .line 123
    :cond_4
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    goto :goto_4

    .line 133
    :sswitch_8
    const-string/jumbo v1, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_5

    .line 141
    :goto_5
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onVolumeInfoChanged(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V

    .line 142
    return v2

    .line 136
    :cond_5
    sget-object v0, Landroid/support/v4/media/session/ParcelableVolumeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/ParcelableVolumeInfo;

    goto :goto_5

    .line 146
    :sswitch_9
    const-string/jumbo v0, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 149
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onRepeatModeChanged(I)V

    .line 150
    return v2

    .line 154
    :sswitch_a
    const-string/jumbo v0, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    .line 157
    :goto_6
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onShuffleModeChangedDeprecated(Z)V

    .line 158
    return v2

    :cond_6
    move v0, v2

    .line 156
    goto :goto_6

    .line 162
    :sswitch_b
    const-string/jumbo v0, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_7

    .line 165
    :goto_7
    invoke-virtual {p0, v1}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onCaptioningEnabledChanged(Z)V

    .line 166
    return v2

    :cond_7
    move v1, v2

    .line 164
    goto :goto_7

    .line 170
    :sswitch_c
    const-string/jumbo v0, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 173
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onShuffleModeChanged(I)V

    .line 174
    return v2

    .line 43
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
