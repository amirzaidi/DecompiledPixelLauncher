.class Landroid/support/v4/media/MediaBrowserCompat$SearchResultReceiver;
.super Landroid/support/v4/os/ResultReceiver;
.source "SourceFile"


# instance fields
.field private final afq:Landroid/support/v4/media/c;

.field private final afr:Landroid/os/Bundle;

.field private final mQuery:Ljava/lang/String;


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 2202
    if-nez p2, :cond_1

    .line 2205
    :goto_0
    if-eqz p1, :cond_2

    .line 2207
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$SearchResultReceiver;->afq:Landroid/support/v4/media/c;

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$SearchResultReceiver;->mQuery:Ljava/lang/String;

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$SearchResultReceiver;->afr:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/media/c;->ase(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2208
    return-void

    .line 2203
    :cond_1
    const-class v1, Landroid/support/v4/media/e;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    goto :goto_0

    .line 2205
    :cond_2
    if-eqz p2, :cond_0

    const-string/jumbo v1, "search_results"

    .line 2206
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2210
    const-string/jumbo v1, "search_results"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v3

    .line 2213
    if-nez v3, :cond_3

    .line 2219
    :goto_1
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$SearchResultReceiver;->afq:Landroid/support/v4/media/c;

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$SearchResultReceiver;->mQuery:Ljava/lang/String;

    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$SearchResultReceiver;->afr:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3, v0}, Landroid/support/v4/media/c;->asd(Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;)V

    .line 2220
    return-void

    .line 2214
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2215
    array-length v4, v3

    :goto_2
    if-lt v2, v4, :cond_4

    move-object v0, v1

    goto :goto_1

    :cond_4
    aget-object v0, v3, v2

    .line 2216
    check-cast v0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2215
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2
.end method
