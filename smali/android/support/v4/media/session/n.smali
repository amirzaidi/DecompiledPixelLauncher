.class Landroid/support/v4/media/session/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/media/session/IMediaSession;


# instance fields
.field private adR:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 601
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 602
    iput-object p1, p0, Landroid/support/v4/media/session/n;->adR:Landroid/os/IBinder;

    .line 603
    return-void
.end method


# virtual methods
.method public addQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;)V
    .locals 5

    .prologue
    .line 1035
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1036
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1038
    :try_start_0
    const-string/jumbo v0, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1039
    if-nez p1, :cond_0

    .line 1044
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1046
    :goto_0
    iget-object v0, p0, Landroid/support/v4/media/session/n;->adR:Landroid/os/IBinder;

    const/16 v3, 0x29

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1047
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1050
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1051
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1053
    return-void

    .line 1040
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1041
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/support/v4/media/MediaDescriptionCompat;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1050
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1051
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public addQueueItemAt(Landroid/support/v4/media/MediaDescriptionCompat;I)V
    .locals 5

    .prologue
    .line 1056
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1057
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1059
    :try_start_0
    const-string/jumbo v0, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1060
    if-nez p1, :cond_0

    .line 1065
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1067
    :goto_0
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1068
    iget-object v0, p0, Landroid/support/v4/media/session/n;->adR:Landroid/os/IBinder;

    const/16 v3, 0x2a

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1069
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1072
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1073
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1075
    return-void

    .line 1061
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1062
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/support/v4/media/MediaDescriptionCompat;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1072
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1073
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public adjustVolume(IILjava/lang/String;)V
    .locals 5

    .prologue
    .line 811
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 812
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 814
    :try_start_0
    const-string/jumbo v0, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 815
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 816
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 817
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 818
    iget-object v0, p0, Landroid/support/v4/media/session/n;->adR:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 819
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 822
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 823
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 825
    return-void

    .line 822
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 823
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Landroid/support/v4/media/session/n;->adR:Landroid/os/IBinder;

    return-object v0
.end method

.method public fastForward()V
    .locals 5

    .prologue
    .line 1359
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1360
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1362
    :try_start_0
    const-string/jumbo v0, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1363
    iget-object v0, p0, Landroid/support/v4/media/session/n;->adR:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1364
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1367
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1368
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1370
    return-void

    .line 1367
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1368
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 5

    .prologue
    .line 928
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 929
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 932
    :try_start_0
    const-string/jumbo v0, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 933
    iget-object v0, p0, Landroid/support/v4/media/session/n;->adR:Landroid/os/IBinder;

    const/16 v3, 0x1f

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 934
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 935
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 939
    const/4 v0, 0x0

    .line 943
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 944
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 946
    return-object v0

    .line 936
    :cond_0
    :try_start_1
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 943
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 944
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getFlags()J
    .locals 6

    .prologue
    .line 772
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 773
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 776
    :try_start_0
    const-string/jumbo v0, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 777
    iget-object v0, p0, Landroid/support/v4/media/session/n;->adR:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 778
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 779
    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    .line 782
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 783
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 785
    return-wide v4

    .line 782
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 783
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getLaunchPendingIntent()Landroid/app/PendingIntent;
    .locals 5

    .prologue
    .line 750
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 751
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 754
    :try_start_0
    const-string/jumbo v0, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 755
    iget-object v0, p0, Landroid/support/v4/media/session/n;->adR:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 756
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 757
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 761
    const/4 v0, 0x0

    .line 765
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 766
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 768
    return-object v0

    .line 758
    :cond_0
    :try_start_1
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 765
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 766
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getMetadata()Landroid/support/v4/media/MediaMetadataCompat;
    .locals 5

    .prologue
    .line 845
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 846
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 849
    :try_start_0
    const-string/jumbo v0, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 850
    iget-object v0, p0, Landroid/support/v4/media/session/n;->adR:Landroid/os/IBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 851
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 852
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 856
    const/4 v0, 0x0

    .line 860
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 861
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 863
    return-object v0

    .line 853
    :cond_0
    :try_start_1
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaMetadataCompat;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 860
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 861
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 716
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 717
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 720
    :try_start_0
    const-string/jumbo v0, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 721
    iget-object v0, p0, Landroid/support/v4/media/session/n;->adR:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 722
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 723
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 726
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 727
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 729
    return-object v0

    .line 726
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 727
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 5

    .prologue
    .line 867
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 868
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 871
    :try_start_0
    const-string/jumbo v0, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 872
    iget-object v0, p0, Landroid/support/v4/media/session/n;->adR:Landroid/os/IBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 873
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 874
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 878
    const/4 v0, 0x0

    .line 882
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 883
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 885
    return-object v0

    .line 875
    :cond_0
    :try_start_1
    sget-object v0, Landroid/support/v4/media/session/PlaybackStateCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/PlaybackStateCompat;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 882
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 883
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getQueue()Ljava/util/List;
    .locals 5

    .prologue
    .line 889
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 890
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 893
    :try_start_0
    const-string/jumbo v0, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 894
    iget-object v0, p0, Landroid/support/v4/media/session/n;->adR:Landroid/os/IBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 895
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 896
    sget-object v0, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 899
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 900
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 902
    return-object v0

    .line 899
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 900
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getQueueTitle()Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 906
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 907
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 910
    :try_start_0
    const-string/jumbo v0, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 911
    iget-object v0, p0, Landroid/support/v4/media/session/n;->adR:Landroid/os/IBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 912
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 913
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 917
    const/4 v0, 0x0

    .line 921
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 922
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 924
    return-object v0

    .line 914
    :cond_0
    :try_start_1
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 921
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 922
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getRatingType()I
    .locals 5

    .prologue
    .line 950
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 951
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 954
    :try_start_0
    const-string/jumbo v0, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 955
    iget-object v0, p0, Landroid/support/v4/media/session/n;->adR:Landroid/os/IBinder;

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 956
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 957
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 960
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 961
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 963
    return v0

    .line 960
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 961
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getRepeatMode()I
    .locals 5

    .prologue
    .line 984
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 985
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 988
    :try_start_0
    const-string/jumbo v0, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 989
    iget-object v0, p0, Landroid/support/v4/media/session/n;->adR:Landroid/os/IBinder;

    const/16 v3, 0x25

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 990
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 991
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 994
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 995
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 997
    return v0

    .line 994
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 995
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getShuffleMode()I
    .locals 5

    .prologue
    .line 1018
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1019
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1022
    :try_start_0
    const-string/jumbo v0, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1023
    iget-object v0, p0, Landroid/support/v4/media/session/n;->adR:Landroid/os/IBinder;

    const/16 v3, 0x2f

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1024
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 1025
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1028
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1029
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1031
    return v0

    .line 1028
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1029
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 5

    .prologue
    .line 733
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 734
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 737
    :try_start_0
    const-string/jumbo v0, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 738
    iget-object v0, p0, Landroid/support/v4/media/session/n;->adR:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 739
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 740
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 743
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 744
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 746
    return-object v0

    .line 743
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 744
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getVolumeAttributes()Landroid/support/v4/media/session/ParcelableVolumeInfo;
    .locals 5

    .prologue
    .line 789
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 790
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 793
    :try_start_0
    const-string/jumbo v0, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 794
    iget-object v0, p0, Landroid/support/v4/media/session/n;->adR:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 795
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 796
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 800
    const/4 v0, 0x0

    .line 804
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 805
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 807
    return-object v0

    .line 797
    :cond_0
    :try_start_1
    sget-object v0, Landroid/support/v4/media/session/ParcelableVolumeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/ParcelableVolumeInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 804
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 805
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public isCaptioningEnabled()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 967
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 968
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 971
    :try_start_0
    const-string/jumbo v3, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 972
    iget-object v3, p0, Landroid/support/v4/media/session/n;->adR:Landroid/os/IBinder;

    const/16 v4, 0x2d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 973
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 974
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 977
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 978
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 980
    return v0

    .line 974
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 977
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 978
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public isShuffleModeEnabledDeprecated()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1001
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1002
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1005
    :try_start_0
    const-string/jumbo v3, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1006
    iget-object v3, p0, Landroid/support/v4/media/session/n;->adR:Landroid/os/IBinder;

    const/16 v4, 0x26

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1007
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 1008
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 1011
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1012
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1014
    return v0

    .line 1008
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1011
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1012
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public isTransportControlEnabled()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 699
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 700
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 703
    :try_start_0
    const-string/jumbo v3, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 704
    iget-object v3, p0, Landroid/support/v4/media/session/n;->adR:Landroid/os/IBinder;

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 705
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 706
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 709
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 710
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 712
    return v0

    .line 706
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 709
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 710
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public next()V
    .locals 5

    .prologue
    .line 1331
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1332
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1334
    :try_start_0
    const-string/jumbo v0, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1335
    iget-object v0, p0, Landroid/support/v4/media/session/n;->adR:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1336
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1339
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1340
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1342
    return-void

    .line 1339
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1340
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public pause()V
    .locals 5

    .prologue
    .line 1303
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1304
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1306
    :try_start_0
    const-string/jumbo v0, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1307
    iget-object v0, p0, Landroid/support/v4/media/session/n;->adR:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1308
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1311
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1312
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1314
    return-void

    .line 1311
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1312
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public play()V
    .locals 5

    .prologue
    .line 1202
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1203
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1205
    :try_start_0
    const-string/jumbo v0, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1206
    iget-object v0, p0, Landroid/support/v4/media/session/n;->adR:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1207
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1210
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1211
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1213
    return-void

    .line 1210
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1211
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public playFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 1216
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1217
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1219
    :try_start_0
    const-string/jumbo v0, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1220
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1221
    if-nez p2, :cond_0

    .line 1226
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1228
    :goto_0
    iget-object v0, p0, Landroid/support/v4/media/session/n;->adR:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1229
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1232
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1233
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1235
    return-void

    .line 1222
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1223
    const/4 v0, 0x0

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1232
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1233
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public playFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 1238
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1239
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1241
    :try_start_0
    const-string/jumbo v0, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1242
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1243
    if-nez p2, :cond_0

    .line 1248
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1250
    :goto_0
    iget-object v0, p0, Landroid/support/v4/media/session/n;->adR:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1251
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1254
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1255
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1257
    return-void

    .line 1244
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1245
    const/4 v0, 0x0

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1254
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1255
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public playFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 1260
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1261
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1263
    :try_start_0
    const-string/jumbo v0, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1264
    if-nez p1, :cond_0

    .line 1269
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1271
    :goto_0
    if-nez p2, :cond_1

    .line 1276
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1278
    :goto_1
    iget-object v0, p0, Landroid/support/v4/media/session/n;->adR:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1279
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1282
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1283
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1285
    return-void

    .line 1265
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1266
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1282
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1283
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0

    .line 1272
    :cond_1
    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1273
    const/4 v0, 0x0

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public prepare()V
    .locals 5

    .prologue
    .line 1116
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1117
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1119
    :try_start_0
    const-string/jumbo v0, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1120
    iget-object v0, p0, Landroid/support/v4/media/session/n;->adR:Landroid/os/IBinder;

    const/16 v3, 0x21

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1121
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1124
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1125
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1127
    return-void

    .line 1124
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1125
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public prepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 1130
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1131
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1133
    :try_start_0
    const-string/jumbo v0, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1134
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1135
    if-nez p2, :cond_0

    .line 1140
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1142
    :goto_0
    iget-object v0, p0, Landroid/support/v4/media/session/n;->adR:Landroid/os/IBinder;

    const/16 v3, 0x22

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1143
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1146
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1147
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1149
    return-void

    .line 1136
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1137
    const/4 v0, 0x0

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1146
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1147
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public prepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 1152
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1153
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1155
    :try_start_0
    const-string/jumbo v0, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1156
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1157
    if-nez p2, :cond_0

    .line 1162
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1164
    :goto_0
    iget-object v0, p0, Landroid/support/v4/media/session/n;->adR:Landroid/os/IBinder;

    const/16 v3, 0x23

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1165
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1168
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1169
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1171
    return-void

    .line 1158
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1159
    const/4 v0, 0x0

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1168
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1169
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public prepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 1174
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1175
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1177
    :try_start_0
    const-string/jumbo v0, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1178
    if-nez p1, :cond_0

    .line 1183
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1185
    :goto_0
    if-nez p2, :cond_1

    .line 1190
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1192
    :goto_1
    iget-object v0, p0, Landroid/support/v4/media/session/n;->adR:Landroid/os/IBinder;

    const/16 v3, 0x24

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1193
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1196
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1197
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1199
    return-void

    .line 1179
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1180
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1196
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1197
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0

    .line 1186
    :cond_1
    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1187
    const/4 v0, 0x0

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public previous()V
    .locals 5

    .prologue
    .line 1345
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1346
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1348
    :try_start_0
    const-string/jumbo v0, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1349
    iget-object v0, p0, Landroid/support/v4/media/session/n;->adR:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1350
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1353
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1354
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1356
    return-void

    .line 1353
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1354
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public rate(Landroid/support/v4/media/RatingCompat;)V
    .locals 5

    .prologue
    .line 1402
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1403
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1405
    :try_start_0
    const-string/jumbo v0, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1406
    if-nez p1, :cond_0

    .line 1411
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1413
    :goto_0
    iget-object v0, p0, Landroid/support/v4/media/session/n;->adR:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1414
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1417
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1418
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1420
    return-void

    .line 1407
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1408
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/support/v4/media/RatingCompat;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1417
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1418
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public registerCallbackListener(Landroid/support/v4/media/session/IMediaControllerCallback;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 669
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 670
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 672
    :try_start_0
    const-string/jumbo v3, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 673
    if-nez p1, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 674
    iget-object v0, p0, Landroid/support/v4/media/session/n;->adR:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 675
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 678
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 679
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 681
    return-void

    .line 673
    :cond_0
    :try_start_1
    invoke-interface {p1}, Landroid/support/v4/media/session/IMediaControllerCallback;->asBinder()Landroid/os/IBinder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 678
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 679
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public removeQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;)V
    .locals 5

    .prologue
    .line 1078
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1079
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1081
    :try_start_0
    const-string/jumbo v0, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1082
    if-nez p1, :cond_0

    .line 1087
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1089
    :goto_0
    iget-object v0, p0, Landroid/support/v4/media/session/n;->adR:Landroid/os/IBinder;

    const/16 v3, 0x2b

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1090
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1093
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1094
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1096
    return-void

    .line 1083
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1084
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/support/v4/media/MediaDescriptionCompat;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1093
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1094
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public removeQueueItemAt(I)V
    .locals 5

    .prologue
    .line 1099
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1100
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1102
    :try_start_0
    const-string/jumbo v0, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1103
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1104
    iget-object v0, p0, Landroid/support/v4/media/session/n;->adR:Landroid/os/IBinder;

    const/16 v3, 0x2c

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1105
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1108
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1109
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1111
    return-void

    .line 1108
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1109
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public rewind()V
    .locals 5

    .prologue
    .line 1373
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1374
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1376
    :try_start_0
    const-string/jumbo v0, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1377
    iget-object v0, p0, Landroid/support/v4/media/session/n;->adR:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1378
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1381
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1382
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1384
    return-void

    .line 1381
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1382
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public seekTo(J)V
    .locals 5

    .prologue
    .line 1387
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1388
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1390
    :try_start_0
    const-string/jumbo v0, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1391
    invoke-virtual {v1, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1392
    iget-object v0, p0, Landroid/support/v4/media/session/n;->adR:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1393
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1396
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1397
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1399
    return-void

    .line 1396
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1397
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;)V
    .locals 5

    .prologue
    .line 616
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 617
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 619
    :try_start_0
    const-string/jumbo v0, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 620
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 621
    if-nez p2, :cond_0

    .line 626
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 628
    :goto_0
    if-nez p3, :cond_1

    .line 633
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 635
    :goto_1
    iget-object v0, p0, Landroid/support/v4/media/session/n;->adR:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 636
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 639
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 640
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 642
    return-void

    .line 622
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 623
    const/4 v0, 0x0

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 639
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 640
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0

    .line 629
    :cond_1
    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 630
    const/4 v0, 0x0

    invoke-virtual {p3, v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 1483
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1484
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1486
    :try_start_0
    const-string/jumbo v0, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1487
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1488
    if-nez p2, :cond_0

    .line 1493
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1495
    :goto_0
    iget-object v0, p0, Landroid/support/v4/media/session/n;->adR:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1496
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1499
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1500
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1502
    return-void

    .line 1489
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1490
    const/4 v0, 0x0

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1499
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1500
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public sendMediaButton(Landroid/view/KeyEvent;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 645
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 646
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 649
    :try_start_0
    const-string/jumbo v4, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 650
    if-nez p1, :cond_0

    .line 655
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 657
    :goto_0
    iget-object v4, p0, Landroid/support/v4/media/session/n;->adR:Landroid/os/IBinder;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-interface {v4, v5, v2, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 658
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 659
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    .line 662
    :goto_1
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 663
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 665
    return v0

    .line 651
    :cond_0
    const/4 v4, 0x1

    :try_start_1
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 652
    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4}, Landroid/view/KeyEvent;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 662
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 663
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0

    :cond_1
    move v0, v1

    .line 659
    goto :goto_1
.end method

.method public setCaptioningEnabled(Z)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1423
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1424
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1426
    :try_start_0
    const-string/jumbo v3, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1427
    if-nez p1, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1428
    iget-object v0, p0, Landroid/support/v4/media/session/n;->adR:Landroid/os/IBinder;

    const/16 v3, 0x2e

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1429
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1432
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1433
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1435
    return-void

    .line 1427
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1432
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1433
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public setRepeatMode(I)V
    .locals 5

    .prologue
    .line 1438
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1439
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1441
    :try_start_0
    const-string/jumbo v0, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1442
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1443
    iget-object v0, p0, Landroid/support/v4/media/session/n;->adR:Landroid/os/IBinder;

    const/16 v3, 0x27

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1444
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1447
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1448
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1450
    return-void

    .line 1447
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1448
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public setShuffleMode(I)V
    .locals 5

    .prologue
    .line 1468
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1469
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1471
    :try_start_0
    const-string/jumbo v0, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1472
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1473
    iget-object v0, p0, Landroid/support/v4/media/session/n;->adR:Landroid/os/IBinder;

    const/16 v3, 0x30

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1474
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1477
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1478
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1480
    return-void

    .line 1477
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1478
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public setShuffleModeEnabledDeprecated(Z)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1453
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1454
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1456
    :try_start_0
    const-string/jumbo v3, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1457
    if-nez p1, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1458
    iget-object v0, p0, Landroid/support/v4/media/session/n;->adR:Landroid/os/IBinder;

    const/16 v3, 0x28

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1459
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1462
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1463
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1465
    return-void

    .line 1457
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1462
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1463
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public setVolumeTo(IILjava/lang/String;)V
    .locals 5

    .prologue
    .line 828
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 829
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 831
    :try_start_0
    const-string/jumbo v0, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 832
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 833
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 834
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 835
    iget-object v0, p0, Landroid/support/v4/media/session/n;->adR:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 836
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 839
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 840
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 842
    return-void

    .line 839
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 840
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public skipToQueueItem(J)V
    .locals 5

    .prologue
    .line 1288
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1289
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1291
    :try_start_0
    const-string/jumbo v0, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1292
    invoke-virtual {v1, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1293
    iget-object v0, p0, Landroid/support/v4/media/session/n;->adR:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1294
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1297
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1298
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1300
    return-void

    .line 1297
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1298
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public stop()V
    .locals 5

    .prologue
    .line 1317
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1318
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1320
    :try_start_0
    const-string/jumbo v0, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1321
    iget-object v0, p0, Landroid/support/v4/media/session/n;->adR:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1322
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1325
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1326
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1328
    return-void

    .line 1325
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1326
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public unregisterCallbackListener(Landroid/support/v4/media/session/IMediaControllerCallback;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 684
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 685
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 687
    :try_start_0
    const-string/jumbo v3, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 688
    if-nez p1, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 689
    iget-object v0, p0, Landroid/support/v4/media/session/n;->adR:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 690
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 693
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 694
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 696
    return-void

    .line 688
    :cond_0
    :try_start_1
    invoke-interface {p1}, Landroid/support/v4/media/session/IMediaControllerCallback;->asBinder()Landroid/os/IBinder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 693
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 694
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
