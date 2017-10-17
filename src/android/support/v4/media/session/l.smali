.class Landroid/support/v4/media/session/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/media/session/q;


# instance fields
.field final synthetic adO:Landroid/support/v4/media/session/c;


# direct methods
.method constructor <init>(Landroid/support/v4/media/session/c;)V
    .locals 0

    .prologue
    .line 738
    iput-object p1, p0, Landroid/support/v4/media/session/l;->adO:Landroid/support/v4/media/session/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 739
    return-void
.end method


# virtual methods
.method public arB(IIIII)V
    .locals 7

    .prologue
    .line 788
    iget-object v6, p0, Landroid/support/v4/media/session/l;->adO:Landroid/support/v4/media/session/c;

    new-instance v0, Landroid/support/v4/media/session/r;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/media/session/r;-><init>(IIIII)V

    invoke-virtual {v6, v0}, Landroid/support/v4/media/session/c;->aru(Landroid/support/v4/media/session/r;)V

    .line 790
    return-void
.end method

.method public arC(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 757
    iget-object v0, p0, Landroid/support/v4/media/session/l;->adO:Landroid/support/v4/media/session/c;

    iget-boolean v0, v0, Landroid/support/v4/media/session/c;->adJ:Z

    if-nez v0, :cond_0

    .line 760
    iget-object v0, p0, Landroid/support/v4/media/session/l;->adO:Landroid/support/v4/media/session/c;

    .line 761
    invoke-static {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->arW(Ljava/lang/Object;)Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v1

    .line 760
    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/c;->onPlaybackStateChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    .line 763
    :cond_0
    return-void
.end method

.method public arD(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 767
    iget-object v0, p0, Landroid/support/v4/media/session/l;->adO:Landroid/support/v4/media/session/c;

    invoke-static {p1}, Landroid/support/v4/media/MediaMetadataCompat;->asD(Ljava/lang/Object;)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/c;->onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 768
    return-void
.end method

.method public onExtrasChanged(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 782
    iget-object v0, p0, Landroid/support/v4/media/session/l;->adO:Landroid/support/v4/media/session/c;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/c;->onExtrasChanged(Landroid/os/Bundle;)V

    .line 783
    return-void
.end method

.method public onQueueChanged(Ljava/util/List;)V
    .locals 2

    .prologue
    .line 772
    iget-object v0, p0, Landroid/support/v4/media/session/l;->adO:Landroid/support/v4/media/session/c;

    invoke-static {p1}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->arF(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/c;->onQueueChanged(Ljava/util/List;)V

    .line 773
    return-void
.end method

.method public onQueueTitleChanged(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 777
    iget-object v0, p0, Landroid/support/v4/media/session/l;->adO:Landroid/support/v4/media/session/c;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/c;->onQueueTitleChanged(Ljava/lang/CharSequence;)V

    .line 778
    return-void
.end method

.method public onSessionDestroyed()V
    .locals 1

    .prologue
    .line 743
    iget-object v0, p0, Landroid/support/v4/media/session/l;->adO:Landroid/support/v4/media/session/c;

    invoke-virtual {v0}, Landroid/support/v4/media/session/c;->onSessionDestroyed()V

    .line 744
    return-void
.end method

.method public onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 748
    iget-object v0, p0, Landroid/support/v4/media/session/l;->adO:Landroid/support/v4/media/session/c;

    iget-boolean v0, v0, Landroid/support/v4/media/session/c;->adJ:Z

    if-nez v0, :cond_1

    .line 751
    :goto_0
    iget-object v0, p0, Landroid/support/v4/media/session/l;->adO:Landroid/support/v4/media/session/c;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/session/c;->onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 753
    :cond_0
    return-void

    .line 748
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    goto :goto_0
.end method
