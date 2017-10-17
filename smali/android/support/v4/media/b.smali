.class Landroid/support/v4/media/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/support/v4/media/MediaBrowserCompat$MediaItem;
    .locals 1

    .prologue
    .line 547
    new-instance v0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    invoke-direct {v0, p1}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 544
    invoke-virtual {p0, p1}, Landroid/support/v4/media/b;->createFromParcel(Landroid/os/Parcel;)Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/support/v4/media/MediaBrowserCompat$MediaItem;
    .locals 1

    .prologue
    .line 552
    new-array v0, p1, [Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 544
    invoke-virtual {p0, p1}, Landroid/support/v4/media/b;->newArray(I)[Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    move-result-object v0

    return-object v0
.end method
