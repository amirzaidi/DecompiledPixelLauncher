.class public final Landroid/support/v4/media/session/MediaSessionCompat$Token;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final aet:Landroid/support/v4/media/session/IMediaSession;

.field private final aeu:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1461
    new-instance v0, Landroid/support/v4/media/session/z;

    invoke-direct {v0}, Landroid/support/v4/media/session/z;-><init>()V

    sput-object v0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 1355
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat$Token;-><init>(Ljava/lang/Object;Landroid/support/v4/media/session/IMediaSession;)V

    .line 1356
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Landroid/support/v4/media/session/IMediaSession;)V
    .locals 0

    .prologue
    .line 1358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1359
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->aeu:Ljava/lang/Object;

    .line 1360
    iput-object p2, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->aet:Landroid/support/v4/media/session/IMediaSession;

    .line 1361
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 1401
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1423
    if-eq p0, p1, :cond_0

    .line 1426
    instance-of v2, p1, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    if-eqz v2, :cond_1

    .line 1430
    check-cast p1, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 1431
    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->aeu:Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 1434
    iget-object v1, p1, Landroid/support/v4/media/session/MediaSessionCompat$Token;->aeu:Ljava/lang/Object;

    if-eqz v1, :cond_4

    .line 1437
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->aeu:Ljava/lang/Object;

    iget-object v1, p1, Landroid/support/v4/media/session/MediaSessionCompat$Token;->aeu:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 1424
    :cond_0
    return v1

    .line 1427
    :cond_1
    return v0

    .line 1432
    :cond_2
    iget-object v2, p1, Landroid/support/v4/media/session/MediaSessionCompat$Token;->aeu:Ljava/lang/Object;

    if-eqz v2, :cond_3

    :goto_0
    return v0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 1435
    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1415
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->aeu:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1418
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->aeu:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    .line 1416
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 1406
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 1409
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->aeu:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1411
    :goto_0
    return-void

    .line 1407
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->aeu:Ljava/lang/Object;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0
.end method
