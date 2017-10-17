.class Landroid/support/v4/media/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/media/r;


# instance fields
.field final synthetic afl:Landroid/support/v4/media/h;


# direct methods
.method constructor <init>(Landroid/support/v4/media/h;)V
    .locals 0

    .prologue
    .line 851
    iput-object p1, p0, Landroid/support/v4/media/n;->afl:Landroid/support/v4/media/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 852
    return-void
.end method


# virtual methods
.method public asN(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 856
    if-eqz p1, :cond_0

    .line 859
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 860
    sget-object v0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 861
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    .line 862
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 863
    iget-object v1, p0, Landroid/support/v4/media/n;->afl:Landroid/support/v4/media/h;

    invoke-virtual {v1, v0}, Landroid/support/v4/media/h;->ass(Landroid/support/v4/media/MediaBrowserCompat$MediaItem;)V

    .line 865
    :goto_0
    return-void

    .line 857
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/n;->afl:Landroid/support/v4/media/h;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/h;->ass(Landroid/support/v4/media/MediaBrowserCompat$MediaItem;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 869
    iget-object v0, p0, Landroid/support/v4/media/n;->afl:Landroid/support/v4/media/h;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/h;->onError(Ljava/lang/String;)V

    .line 870
    return-void
.end method
