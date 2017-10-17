.class Landroid/support/v4/media/MediaBrowserCompat$ItemReceiver;
.super Landroid/support/v4/os/ResultReceiver;
.source "SourceFile"


# instance fields
.field private final afo:Ljava/lang/String;

.field private final afp:Landroid/support/v4/media/h;


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 2170
    if-nez p2, :cond_1

    .line 2173
    :goto_0
    if-eqz p1, :cond_2

    .line 2175
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$ItemReceiver;->afp:Landroid/support/v4/media/h;

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$ItemReceiver;->afo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/h;->onError(Ljava/lang/String;)V

    .line 2176
    return-void

    .line 2171
    :cond_1
    const-class v0, Landroid/support/v4/media/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    goto :goto_0

    .line 2173
    :cond_2
    if-eqz p2, :cond_0

    const-string/jumbo v0, "media_item"

    .line 2174
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2178
    const-string/jumbo v0, "media_item"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 2179
    if-nez v0, :cond_4

    .line 2180
    :cond_3
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$ItemReceiver;->afp:Landroid/support/v4/media/h;

    check-cast v0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    invoke-virtual {v1, v0}, Landroid/support/v4/media/h;->ass(Landroid/support/v4/media/MediaBrowserCompat$MediaItem;)V

    .line 2184
    :goto_1
    return-void

    .line 2179
    :cond_4
    instance-of v1, v0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    if-nez v1, :cond_3

    .line 2182
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$ItemReceiver;->afp:Landroid/support/v4/media/h;

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$ItemReceiver;->afo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/h;->onError(Ljava/lang/String;)V

    goto :goto_1
.end method
