.class Landroid/support/v4/media/MediaBrowserCompat$SearchResultReceiver;
.super Landroid/support/v4/os/ResultReceiver;
.source "SourceFile"


# instance fields
.field private final ags:Landroid/support/v4/media/c;

.field private final agt:Landroid/os/Bundle;

.field private final mQuery:Ljava/lang/String;


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 2210
    if-nez p2, :cond_1

    .line 2213
    :goto_0
    if-eqz p1, :cond_2

    .line 2215
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$SearchResultReceiver;->ags:Landroid/support/v4/media/c;

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$SearchResultReceiver;->mQuery:Ljava/lang/String;

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$SearchResultReceiver;->agt:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/media/c;->atb(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2216
    return-void

    .line 2211
    :cond_1
    const-class v1, Landroid/support/v4/media/e;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    goto :goto_0

    .line 2213
    :cond_2
    if-eqz p2, :cond_0

    const-string/jumbo v1, "search_results"

    .line 2214
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2218
    const-string/jumbo v1, "search_results"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v3

    .line 2221
    if-nez v3, :cond_3

    .line 2227
    :goto_1
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$SearchResultReceiver;->ags:Landroid/support/v4/media/c;

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$SearchResultReceiver;->mQuery:Ljava/lang/String;

    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$SearchResultReceiver;->agt:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3, v0}, Landroid/support/v4/media/c;->ata(Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;)V

    .line 2228
    return-void

    .line 2222
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2223
    array-length v4, v3

    :goto_2
    if-lt v2, v4, :cond_4

    move-object v0, v1

    goto :goto_1

    :cond_4
    aget-object v0, v3, v2

    .line 2224
    check-cast v0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2223
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2
.end method
