.class Landroid/support/v4/media/session/b;
.super Landroid/support/v4/media/session/IMediaControllerCallback$Stub;
.source "SourceFile"


# instance fields
.field private final aeY:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Landroid/support/v4/media/session/c;)V
    .locals 1

    .prologue
    .line 849
    invoke-direct {p0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;-><init>()V

    .line 850
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v4/media/session/b;->aeY:Ljava/lang/ref/WeakReference;

    .line 851
    return-void
.end method


# virtual methods
.method public onCaptioningEnabledChanged(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 903
    iget-object v0, p0, Landroid/support/v4/media/session/b;->aeY:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/c;

    .line 904
    if-nez v0, :cond_0

    .line 908
    :goto_0
    return-void

    .line 905
    :cond_0
    const/16 v1, 0xb

    .line 906
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 905
    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/media/session/c;->asA(ILjava/lang/Object;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 855
    iget-object v0, p0, Landroid/support/v4/media/session/b;->aeY:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/c;

    .line 856
    if-nez v0, :cond_0

    .line 859
    :goto_0
    return-void

    .line 857
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v4/media/session/c;->asA(ILjava/lang/Object;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onExtrasChanged(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 938
    iget-object v0, p0, Landroid/support/v4/media/session/b;->aeY:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/c;

    .line 939
    if-nez v0, :cond_0

    .line 942
    :goto_0
    return-void

    .line 940
    :cond_0
    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/media/session/c;->asA(ILjava/lang/Object;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 879
    iget-object v0, p0, Landroid/support/v4/media/session/b;->aeY:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/c;

    .line 880
    if-nez v0, :cond_0

    .line 883
    :goto_0
    return-void

    .line 881
    :cond_0
    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/media/session/c;->asA(ILjava/lang/Object;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onPlaybackStateChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 871
    iget-object v0, p0, Landroid/support/v4/media/session/b;->aeY:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/c;

    .line 872
    if-nez v0, :cond_0

    .line 875
    :goto_0
    return-void

    .line 873
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/media/session/c;->asA(ILjava/lang/Object;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onQueueChanged(Ljava/util/List;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 887
    iget-object v0, p0, Landroid/support/v4/media/session/b;->aeY:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/c;

    .line 888
    if-nez v0, :cond_0

    .line 891
    :goto_0
    return-void

    .line 889
    :cond_0
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/media/session/c;->asA(ILjava/lang/Object;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onQueueTitleChanged(Ljava/lang/CharSequence;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 895
    iget-object v0, p0, Landroid/support/v4/media/session/b;->aeY:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/c;

    .line 896
    if-nez v0, :cond_0

    .line 899
    :goto_0
    return-void

    .line 897
    :cond_0
    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/media/session/c;->asA(ILjava/lang/Object;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onRepeatModeChanged(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 912
    iget-object v0, p0, Landroid/support/v4/media/session/b;->aeY:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/c;

    .line 913
    if-nez v0, :cond_0

    .line 916
    :goto_0
    return-void

    .line 914
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1, v3}, Landroid/support/v4/media/session/c;->asA(ILjava/lang/Object;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onSessionDestroyed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 863
    iget-object v0, p0, Landroid/support/v4/media/session/b;->aeY:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/c;

    .line 864
    if-nez v0, :cond_0

    .line 867
    :goto_0
    return-void

    .line 865
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2, v2}, Landroid/support/v4/media/session/c;->asA(ILjava/lang/Object;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onShuffleModeChanged(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 929
    iget-object v0, p0, Landroid/support/v4/media/session/b;->aeY:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/c;

    .line 930
    if-nez v0, :cond_0

    .line 934
    :goto_0
    return-void

    .line 931
    :cond_0
    const/16 v1, 0xc

    .line 932
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 931
    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/media/session/c;->asA(ILjava/lang/Object;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onShuffleModeChangedDeprecated(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 920
    iget-object v0, p0, Landroid/support/v4/media/session/b;->aeY:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/c;

    .line 921
    if-nez v0, :cond_0

    .line 925
    :goto_0
    return-void

    .line 922
    :cond_0
    const/16 v1, 0xa

    .line 923
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 922
    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/media/session/c;->asA(ILjava/lang/Object;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onVolumeInfoChanged(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 946
    iget-object v0, p0, Landroid/support/v4/media/session/b;->aeY:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/support/v4/media/session/c;

    .line 947
    if-nez v6, :cond_0

    .line 955
    :goto_0
    return-void

    .line 949
    :cond_0
    if-nez p1, :cond_1

    move-object v0, v7

    .line 953
    :goto_1
    const/4 v1, 0x4

    invoke-virtual {v6, v1, v0, v7}, Landroid/support/v4/media/session/c;->asA(ILjava/lang/Object;Landroid/os/Bundle;)V

    goto :goto_0

    .line 950
    :cond_1
    new-instance v0, Landroid/support/v4/media/session/v;

    iget v1, p1, Landroid/support/v4/media/session/ParcelableVolumeInfo;->afI:I

    iget v2, p1, Landroid/support/v4/media/session/ParcelableVolumeInfo;->afK:I

    iget v3, p1, Landroid/support/v4/media/session/ParcelableVolumeInfo;->controlType:I

    iget v4, p1, Landroid/support/v4/media/session/ParcelableVolumeInfo;->afL:I

    iget v5, p1, Landroid/support/v4/media/session/ParcelableVolumeInfo;->afJ:I

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/media/session/v;-><init>(IIIII)V

    goto :goto_1
.end method
