.class Landroid/support/v4/media/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 639
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/support/v4/media/MediaMetadataCompat;
    .locals 1

    .prologue
    .line 642
    new-instance v0, Landroid/support/v4/media/MediaMetadataCompat;

    invoke-direct {v0, p1}, Landroid/support/v4/media/MediaMetadataCompat;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 639
    invoke-virtual {p0, p1}, Landroid/support/v4/media/p;->createFromParcel(Landroid/os/Parcel;)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/support/v4/media/MediaMetadataCompat;
    .locals 1

    .prologue
    .line 647
    new-array v0, p1, [Landroid/support/v4/media/MediaMetadataCompat;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 639
    invoke-virtual {p0, p1}, Landroid/support/v4/media/p;->newArray(I)[Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    return-object v0
.end method
