.class Landroid/support/v4/media/j;
.super Landroid/media/browse/MediaBrowser$ItemCallback;
.source "SourceFile"


# instance fields
.field protected final aeO:Landroid/support/v4/media/r;


# direct methods
.method public constructor <init>(Landroid/support/v4/media/r;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/media/browse/MediaBrowser$ItemCallback;-><init>()V

    .line 44
    iput-object p1, p0, Landroid/support/v4/media/j;->aeO:Landroid/support/v4/media/r;

    .line 45
    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Landroid/support/v4/media/j;->aeO:Landroid/support/v4/media/r;

    invoke-interface {v0, p1}, Landroid/support/v4/media/r;->onError(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public onItemLoaded(Landroid/media/browse/MediaBrowser$MediaItem;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    if-eqz p1, :cond_0

    .line 52
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 53
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/media/browse/MediaBrowser$MediaItem;->writeToParcel(Landroid/os/Parcel;I)V

    .line 54
    iget-object v1, p0, Landroid/support/v4/media/j;->aeO:Landroid/support/v4/media/r;

    invoke-interface {v1, v0}, Landroid/support/v4/media/r;->asN(Landroid/os/Parcel;)V

    .line 56
    :goto_0
    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/j;->aeO:Landroid/support/v4/media/r;

    invoke-interface {v0, v1}, Landroid/support/v4/media/r;->asN(Landroid/os/Parcel;)V

    goto :goto_0
.end method
