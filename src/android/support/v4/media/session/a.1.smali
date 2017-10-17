.class Landroid/support/v4/media/session/a;
.super Landroid/support/v4/media/session/IMediaControllerCallback$Stub;
.source "SourceFile"


# instance fields
.field final synthetic adD:Landroid/support/v4/media/session/c;


# direct methods
.method constructor <init>(Landroid/support/v4/media/session/c;)V
    .locals 0

    .prologue
    .line 795
    iput-object p1, p0, Landroid/support/v4/media/session/a;->adD:Landroid/support/v4/media/session/c;

    invoke-direct {p0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;-><init>()V

    .line 796
    return-void
.end method


# virtual methods
.method public onCaptioningEnabledChanged(Z)V
    .locals 4

    .prologue
    .line 830
    iget-object v0, p0, Landroid/support/v4/media/session/a;->adD:Landroid/support/v4/media/session/c;

    iget-object v0, v0, Landroid/support/v4/media/session/c;->adG:Landroid/support/v4/media/session/f;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0xb

    invoke-virtual {v0, v3, v1, v2}, Landroid/support/v4/media/session/f;->arw(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 831
    return-void
.end method

.method public onEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 800
    iget-object v0, p0, Landroid/support/v4/media/session/a;->adD:Landroid/support/v4/media/session/c;

    iget-object v0, v0, Landroid/support/v4/media/session/c;->adG:Landroid/support/v4/media/session/f;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v4/media/session/f;->arw(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 801
    return-void
.end method

.method public onExtrasChanged(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 850
    iget-object v0, p0, Landroid/support/v4/media/session/a;->adD:Landroid/support/v4/media/session/c;

    iget-object v0, v0, Landroid/support/v4/media/session/c;->adG:Landroid/support/v4/media/session/f;

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-virtual {v0, v2, p1, v1}, Landroid/support/v4/media/session/f;->arw(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 851
    return-void
.end method

.method public onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 3

    .prologue
    .line 815
    iget-object v0, p0, Landroid/support/v4/media/session/a;->adD:Landroid/support/v4/media/session/c;

    iget-object v0, v0, Landroid/support/v4/media/session/c;->adG:Landroid/support/v4/media/session/f;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v2, p1, v1}, Landroid/support/v4/media/session/f;->arw(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 816
    return-void
.end method

.method public onPlaybackStateChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 3

    .prologue
    .line 810
    iget-object v0, p0, Landroid/support/v4/media/session/a;->adD:Landroid/support/v4/media/session/c;

    iget-object v0, v0, Landroid/support/v4/media/session/c;->adG:Landroid/support/v4/media/session/f;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v2, p1, v1}, Landroid/support/v4/media/session/f;->arw(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 811
    return-void
.end method

.method public onQueueChanged(Ljava/util/List;)V
    .locals 3

    .prologue
    .line 820
    iget-object v0, p0, Landroid/support/v4/media/session/a;->adD:Landroid/support/v4/media/session/c;

    iget-object v0, v0, Landroid/support/v4/media/session/c;->adG:Landroid/support/v4/media/session/f;

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-virtual {v0, v2, p1, v1}, Landroid/support/v4/media/session/f;->arw(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 821
    return-void
.end method

.method public onQueueTitleChanged(Ljava/lang/CharSequence;)V
    .locals 3

    .prologue
    .line 825
    iget-object v0, p0, Landroid/support/v4/media/session/a;->adD:Landroid/support/v4/media/session/c;

    iget-object v0, v0, Landroid/support/v4/media/session/c;->adG:Landroid/support/v4/media/session/f;

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-virtual {v0, v2, p1, v1}, Landroid/support/v4/media/session/f;->arw(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 826
    return-void
.end method

.method public onRepeatModeChanged(I)V
    .locals 4

    .prologue
    .line 835
    iget-object v0, p0, Landroid/support/v4/media/session/a;->adD:Landroid/support/v4/media/session/c;

    iget-object v0, v0, Landroid/support/v4/media/session/c;->adG:Landroid/support/v4/media/session/f;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x9

    invoke-virtual {v0, v3, v1, v2}, Landroid/support/v4/media/session/f;->arw(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 836
    return-void
.end method

.method public onSessionDestroyed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 805
    iget-object v0, p0, Landroid/support/v4/media/session/a;->adD:Landroid/support/v4/media/session/c;

    iget-object v0, v0, Landroid/support/v4/media/session/c;->adG:Landroid/support/v4/media/session/f;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2, v2}, Landroid/support/v4/media/session/f;->arw(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 806
    return-void
.end method

.method public onShuffleModeChanged(I)V
    .locals 4

    .prologue
    .line 845
    iget-object v0, p0, Landroid/support/v4/media/session/a;->adD:Landroid/support/v4/media/session/c;

    iget-object v0, v0, Landroid/support/v4/media/session/c;->adG:Landroid/support/v4/media/session/f;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0xc

    invoke-virtual {v0, v3, v1, v2}, Landroid/support/v4/media/session/f;->arw(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 846
    return-void
.end method

.method public onShuffleModeChangedDeprecated(Z)V
    .locals 4

    .prologue
    .line 840
    iget-object v0, p0, Landroid/support/v4/media/session/a;->adD:Landroid/support/v4/media/session/c;

    iget-object v0, v0, Landroid/support/v4/media/session/c;->adG:Landroid/support/v4/media/session/f;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-virtual {v0, v3, v1, v2}, Landroid/support/v4/media/session/f;->arw(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 841
    return-void
.end method

.method public onVolumeInfoChanged(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 856
    if-nez p1, :cond_0

    move-object v0, v6

    .line 860
    :goto_0
    iget-object v1, p0, Landroid/support/v4/media/session/a;->adD:Landroid/support/v4/media/session/c;

    iget-object v1, v1, Landroid/support/v4/media/session/c;->adG:Landroid/support/v4/media/session/f;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0, v6}, Landroid/support/v4/media/session/f;->arw(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 861
    return-void

    .line 857
    :cond_0
    new-instance v0, Landroid/support/v4/media/session/r;

    iget v1, p1, Landroid/support/v4/media/session/ParcelableVolumeInfo;->aeG:I

    iget v2, p1, Landroid/support/v4/media/session/ParcelableVolumeInfo;->aeI:I

    iget v3, p1, Landroid/support/v4/media/session/ParcelableVolumeInfo;->controlType:I

    iget v4, p1, Landroid/support/v4/media/session/ParcelableVolumeInfo;->aeJ:I

    iget v5, p1, Landroid/support/v4/media/session/ParcelableVolumeInfo;->aeH:I

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/media/session/r;-><init>(IIIII)V

    goto :goto_0
.end method
