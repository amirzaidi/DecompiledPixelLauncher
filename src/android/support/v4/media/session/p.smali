.class Landroid/support/v4/media/session/p;
.super Landroid/media/session/MediaController$Callback;
.source "SourceFile"


# instance fields
.field protected final adS:Landroid/support/v4/media/session/q;


# direct methods
.method public constructor <init>(Landroid/support/v4/media/session/q;)V
    .locals 0

    .prologue
    .line 276
    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    .line 277
    iput-object p1, p0, Landroid/support/v4/media/session/p;->adS:Landroid/support/v4/media/session/q;

    .line 278
    return-void
.end method


# virtual methods
.method public onAudioInfoChanged(Landroid/media/session/MediaController$PlaybackInfo;)V
    .locals 6

    .prologue
    .line 317
    iget-object v0, p0, Landroid/support/v4/media/session/p;->adS:Landroid/support/v4/media/session/q;

    invoke-virtual {p1}, Landroid/media/session/MediaController$PlaybackInfo;->getPlaybackType()I

    move-result v1

    .line 318
    invoke-static {p1}, Landroid/support/v4/media/session/j;->ary(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p1}, Landroid/media/session/MediaController$PlaybackInfo;->getVolumeControl()I

    move-result v3

    .line 319
    invoke-virtual {p1}, Landroid/media/session/MediaController$PlaybackInfo;->getMaxVolume()I

    move-result v4

    invoke-virtual {p1}, Landroid/media/session/MediaController$PlaybackInfo;->getCurrentVolume()I

    move-result v5

    .line 317
    invoke-interface/range {v0 .. v5}, Landroid/support/v4/media/session/q;->arB(IIIII)V

    .line 320
    return-void
.end method

.method public onExtrasChanged(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Landroid/support/v4/media/session/p;->adS:Landroid/support/v4/media/session/q;

    invoke-interface {v0, p1}, Landroid/support/v4/media/session/q;->onExtrasChanged(Landroid/os/Bundle;)V

    .line 313
    return-void
.end method

.method public onMetadataChanged(Landroid/media/MediaMetadata;)V
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Landroid/support/v4/media/session/p;->adS:Landroid/support/v4/media/session/q;

    invoke-interface {v0, p1}, Landroid/support/v4/media/session/q;->arD(Ljava/lang/Object;)V

    .line 298
    return-void
.end method

.method public onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Landroid/support/v4/media/session/p;->adS:Landroid/support/v4/media/session/q;

    invoke-interface {v0, p1}, Landroid/support/v4/media/session/q;->arC(Ljava/lang/Object;)V

    .line 293
    return-void
.end method

.method public onQueueChanged(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Landroid/support/v4/media/session/p;->adS:Landroid/support/v4/media/session/q;

    invoke-interface {v0, p1}, Landroid/support/v4/media/session/q;->onQueueChanged(Ljava/util/List;)V

    .line 303
    return-void
.end method

.method public onQueueTitleChanged(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Landroid/support/v4/media/session/p;->adS:Landroid/support/v4/media/session/q;

    invoke-interface {v0, p1}, Landroid/support/v4/media/session/q;->onQueueTitleChanged(Ljava/lang/CharSequence;)V

    .line 308
    return-void
.end method

.method public onSessionDestroyed()V
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Landroid/support/v4/media/session/p;->adS:Landroid/support/v4/media/session/q;

    invoke-interface {v0}, Landroid/support/v4/media/session/q;->onSessionDestroyed()V

    .line 283
    return-void
.end method

.method public onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Landroid/support/v4/media/session/p;->adS:Landroid/support/v4/media/session/q;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/media/session/q;->onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 288
    return-void
.end method
