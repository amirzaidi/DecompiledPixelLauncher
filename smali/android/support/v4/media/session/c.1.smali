.class public abstract Landroid/support/v4/media/session/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field adG:Landroid/support/v4/media/session/f;

.field adH:Z

.field private final adI:Ljava/lang/Object;

.field adJ:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 603
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 601
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/media/session/c;->adH:Z

    .line 604
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 607
    new-instance v0, Landroid/support/v4/media/session/a;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/a;-><init>(Landroid/support/v4/media/session/c;)V

    iput-object v0, p0, Landroid/support/v4/media/session/c;->adI:Ljava/lang/Object;

    .line 609
    :goto_0
    return-void

    .line 605
    :cond_0
    new-instance v0, Landroid/support/v4/media/session/l;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/l;-><init>(Landroid/support/v4/media/session/c;)V

    invoke-static {v0}, Landroid/support/v4/media/session/B;->asa(Landroid/support/v4/media/session/q;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/c;->adI:Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public aru(Landroid/support/v4/media/session/r;)V
    .locals 0

    .prologue
    .line 682
    return-void
.end method

.method public arv(Z)V
    .locals 0

    .prologue
    .line 712
    return-void
.end method

.method public binderDied()V
    .locals 0

    .prologue
    .line 727
    invoke-virtual {p0}, Landroid/support/v4/media/session/c;->onSessionDestroyed()V

    .line 728
    return-void
.end method

.method public onCaptioningEnabledChanged(Z)V
    .locals 0

    .prologue
    .line 690
    return-void
.end method

.method public onExtrasChanged(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 674
    return-void
.end method

.method public onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 0

    .prologue
    .line 644
    return-void
.end method

.method public onPlaybackStateChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 0

    .prologue
    .line 635
    return-void
.end method

.method public onQueueChanged(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 655
    return-void
.end method

.method public onQueueTitleChanged(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 665
    return-void
.end method

.method public onRepeatModeChanged(I)V
    .locals 0

    .prologue
    .line 702
    return-void
.end method

.method public onSessionDestroyed()V
    .locals 0

    .prologue
    .line 616
    return-void
.end method

.method public onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 627
    return-void
.end method

.method public onShuffleModeChanged(I)V
    .locals 0

    .prologue
    .line 723
    return-void
.end method
