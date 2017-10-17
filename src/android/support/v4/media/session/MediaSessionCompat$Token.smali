.class public final Landroid/support/v4/media/session/MediaSessionCompat$Token;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final afq:Landroid/support/v4/media/session/IMediaSession;

.field private final afr:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1562
    new-instance v0, Landroid/support/v4/media/session/n;

    invoke-direct {v0}, Landroid/support/v4/media/session/n;-><init>()V

    sput-object v0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 1456
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat$Token;-><init>(Ljava/lang/Object;Landroid/support/v4/media/session/IMediaSession;)V

    .line 1457
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Landroid/support/v4/media/session/IMediaSession;)V
    .locals 0

    .prologue
    .line 1459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1460
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->afr:Ljava/lang/Object;

    .line 1461
    iput-object p2, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->afq:Landroid/support/v4/media/session/IMediaSession;

    .line 1462
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 1502
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1524
    if-eq p0, p1, :cond_0

    .line 1527
    instance-of v2, p1, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    if-eqz v2, :cond_1

    .line 1531
    check-cast p1, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 1532
    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->afr:Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 1535
    iget-object v1, p1, Landroid/support/v4/media/session/MediaSessionCompat$Token;->afr:Ljava/lang/Object;

    if-eqz v1, :cond_4

    .line 1538
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->afr:Ljava/lang/Object;

    iget-object v1, p1, Landroid/support/v4/media/session/MediaSessionCompat$Token;->afr:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 1525
    :cond_0
    return v1

    .line 1528
    :cond_1
    return v0

    .line 1533
    :cond_2
    iget-object v2, p1, Landroid/support/v4/media/session/MediaSessionCompat$Token;->afr:Ljava/lang/Object;

    if-eqz v2, :cond_3

    :goto_0
    return v0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 1536
    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1516
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->afr:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1519
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->afr:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    .line 1517
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 1507
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 1510
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->afr:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1512
    :goto_0
    return-void

    .line 1508
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->afr:Ljava/lang/Object;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0
.end method
