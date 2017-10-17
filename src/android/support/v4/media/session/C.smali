.class public abstract Landroid/support/v4/media/session/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field aeZ:Landroid/support/v4/media/session/h;

.field private final afa:Ljava/lang/Object;

.field afb:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 612
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 613
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 616
    new-instance v0, Landroid/support/v4/media/session/b;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/b;-><init>(Landroid/support/v4/media/session/c;)V

    iput-object v0, p0, Landroid/support/v4/media/session/c;->afa:Ljava/lang/Object;

    .line 618
    :goto_0
    return-void

    .line 614
    :cond_0
    new-instance v0, Landroid/support/v4/media/session/o;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/o;-><init>(Landroid/support/v4/media/session/c;)V

    invoke-static {v0}, Landroid/support/v4/media/session/r;->asX(Landroid/support/v4/media/session/u;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/c;->afa:Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method asA(ILjava/lang/Object;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 756
    iget-object v0, p0, Landroid/support/v4/media/session/c;->aeZ:Landroid/support/v4/media/session/h;

    if-nez v0, :cond_0

    .line 761
    :goto_0
    return-void

    .line 757
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/c;->aeZ:Landroid/support/v4/media/session/h;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/session/h;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 758
    invoke-virtual {v0, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 759
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public asy(Landroid/support/v4/media/session/v;)V
    .locals 0

    .prologue
    .line 691
    return-void
.end method

.method public asz(Z)V
    .locals 0

    .prologue
    .line 721
    return-void
.end method

.method public binderDied()V
    .locals 0

    .prologue
    .line 736
    invoke-virtual {p0}, Landroid/support/v4/media/session/c;->onSessionDestroyed()V

    .line 737
    return-void
.end method

.method public onCaptioningEnabledChanged(Z)V
    .locals 0

    .prologue
    .line 699
    return-void
.end method

.method public onExtrasChanged(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 683
    return-void
.end method

.method public onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 0

    .prologue
    .line 653
    return-void
.end method

.method public onPlaybackStateChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 0

    .prologue
    .line 644
    return-void
.end method

.method public onQueueChanged(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 664
    return-void
.end method

.method public onQueueTitleChanged(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 674
    return-void
.end method

.method public onRepeatModeChanged(I)V
    .locals 0

    .prologue
    .line 711
    return-void
.end method

.method public onSessionDestroyed()V
    .locals 0

    .prologue
    .line 625
    return-void
.end method

.method public onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 636
    return-void
.end method

.method public onShuffleModeChanged(I)V
    .locals 0

    .prologue
    .line 732
    return-void
.end method
