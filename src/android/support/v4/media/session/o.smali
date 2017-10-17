.class Landroid/support/v4/media/session/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/media/session/u;


# instance fields
.field private final afs:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Landroid/support/v4/media/session/c;)V
    .locals 1

    .prologue
    .line 766
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 767
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v4/media/session/o;->afs:Ljava/lang/ref/WeakReference;

    .line 768
    return-void
.end method


# virtual methods
.method public asR(IIIII)V
    .locals 7

    .prologue
    .line 838
    iget-object v0, p0, Landroid/support/v4/media/session/o;->afs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/support/v4/media/session/c;

    .line 839
    if-nez v6, :cond_0

    .line 843
    :goto_0
    return-void

    .line 840
    :cond_0
    new-instance v0, Landroid/support/v4/media/session/v;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/media/session/v;-><init>(IIIII)V

    invoke-virtual {v6, v0}, Landroid/support/v4/media/session/c;->asy(Landroid/support/v4/media/session/v;)V

    goto :goto_0
.end method

.method public asS(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 792
    iget-object v0, p0, Landroid/support/v4/media/session/o;->afs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/c;

    .line 793
    if-nez v0, :cond_1

    .line 801
    :cond_0
    :goto_0
    return-void

    .line 794
    :cond_1
    iget-boolean v1, v0, Landroid/support/v4/media/session/c;->afb:Z

    if-nez v1, :cond_0

    .line 798
    invoke-static {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->asM(Ljava/lang/Object;)Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v1

    .line 797
    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/c;->onPlaybackStateChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    goto :goto_0
.end method

.method public asT(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 805
    iget-object v0, p0, Landroid/support/v4/media/session/o;->afs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/c;

    .line 806
    if-nez v0, :cond_0

    .line 809
    :goto_0
    return-void

    .line 807
    :cond_0
    invoke-static {p1}, Landroid/support/v4/media/MediaMetadataCompat;->atA(Ljava/lang/Object;)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/c;->onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V

    goto :goto_0
.end method

.method public onExtrasChanged(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 829
    iget-object v0, p0, Landroid/support/v4/media/session/o;->afs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/c;

    .line 830
    if-nez v0, :cond_0

    .line 833
    :goto_0
    return-void

    .line 831
    :cond_0
    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/c;->onExtrasChanged(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onQueueChanged(Ljava/util/List;)V
    .locals 2

    .prologue
    .line 813
    iget-object v0, p0, Landroid/support/v4/media/session/o;->afs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/c;

    .line 814
    if-nez v0, :cond_0

    .line 817
    :goto_0
    return-void

    .line 815
    :cond_0
    invoke-static {p1}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->ass(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/c;->onQueueChanged(Ljava/util/List;)V

    goto :goto_0
.end method

.method public onQueueTitleChanged(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 821
    iget-object v0, p0, Landroid/support/v4/media/session/o;->afs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/c;

    .line 822
    if-nez v0, :cond_0

    .line 825
    :goto_0
    return-void

    .line 823
    :cond_0
    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/c;->onQueueTitleChanged(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onSessionDestroyed()V
    .locals 1

    .prologue
    .line 772
    iget-object v0, p0, Landroid/support/v4/media/session/o;->afs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/c;

    .line 773
    if-nez v0, :cond_0

    .line 776
    :goto_0
    return-void

    .line 774
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/media/session/c;->onSessionDestroyed()V

    goto :goto_0
.end method

.method public onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 780
    iget-object v0, p0, Landroid/support/v4/media/session/o;->afs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/c;

    .line 781
    if-nez v0, :cond_1

    .line 788
    :cond_0
    :goto_0
    return-void

    .line 782
    :cond_1
    iget-boolean v1, v0, Landroid/support/v4/media/session/c;->afb:Z

    if-nez v1, :cond_2

    .line 785
    :goto_1
    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/session/c;->onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 782
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    goto :goto_1
.end method
