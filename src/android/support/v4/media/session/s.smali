.class Landroid/support/v4/media/session/s;
.super Landroid/support/v4/media/session/IMediaControllerCallback$Stub;
.source "SourceFile"


# instance fields
.field private adY:Landroid/support/v4/media/session/c;


# direct methods
.method constructor <init>(Landroid/support/v4/media/session/c;)V
    .locals 0

    .prologue
    .line 2076
    invoke-direct {p0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;-><init>()V

    .line 2077
    iput-object p1, p0, Landroid/support/v4/media/session/s;->adY:Landroid/support/v4/media/session/c;

    .line 2078
    return-void
.end method

.method static synthetic arE(Landroid/support/v4/media/session/s;)Landroid/support/v4/media/session/c;
    .locals 1

    .prologue
    .line 2073
    iget-object v0, p0, Landroid/support/v4/media/session/s;->adY:Landroid/support/v4/media/session/c;

    return-object v0
.end method


# virtual methods
.method public onCaptioningEnabledChanged(Z)V
    .locals 2

    .prologue
    .line 2127
    iget-object v0, p0, Landroid/support/v4/media/session/s;->adY:Landroid/support/v4/media/session/c;

    iget-object v0, v0, Landroid/support/v4/media/session/c;->adG:Landroid/support/v4/media/session/f;

    new-instance v1, Landroid/support/v4/media/session/b;

    invoke-direct {v1, p0, p1}, Landroid/support/v4/media/session/b;-><init>(Landroid/support/v4/media/session/s;Z)V

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/f;->post(Ljava/lang/Runnable;)Z

    .line 2133
    return-void
.end method

.method public onEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 2082
    iget-object v0, p0, Landroid/support/v4/media/session/s;->adY:Landroid/support/v4/media/session/c;

    iget-object v0, v0, Landroid/support/v4/media/session/c;->adG:Landroid/support/v4/media/session/f;

    new-instance v1, Landroid/support/v4/media/session/v;

    invoke-direct {v1, p0, p1, p2}, Landroid/support/v4/media/session/v;-><init>(Landroid/support/v4/media/session/s;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/f;->post(Ljava/lang/Runnable;)Z

    .line 2088
    return-void
.end method

.method public onExtrasChanged(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 2169
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 1

    .prologue
    .line 2110
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public onPlaybackStateChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 2

    .prologue
    .line 2099
    iget-object v0, p0, Landroid/support/v4/media/session/s;->adY:Landroid/support/v4/media/session/c;

    iget-object v0, v0, Landroid/support/v4/media/session/c;->adG:Landroid/support/v4/media/session/f;

    new-instance v1, Landroid/support/v4/media/session/C;

    invoke-direct {v1, p0, p1}, Landroid/support/v4/media/session/C;-><init>(Landroid/support/v4/media/session/s;Landroid/support/v4/media/session/PlaybackStateCompat;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/f;->post(Ljava/lang/Runnable;)Z

    .line 2105
    return-void
.end method

.method public onQueueChanged(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 2116
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public onQueueTitleChanged(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 2122
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public onRepeatModeChanged(I)V
    .locals 2

    .prologue
    .line 2137
    iget-object v0, p0, Landroid/support/v4/media/session/s;->adY:Landroid/support/v4/media/session/c;

    iget-object v0, v0, Landroid/support/v4/media/session/c;->adG:Landroid/support/v4/media/session/f;

    new-instance v1, Landroid/support/v4/media/session/x;

    invoke-direct {v1, p0, p1}, Landroid/support/v4/media/session/x;-><init>(Landroid/support/v4/media/session/s;I)V

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/f;->post(Ljava/lang/Runnable;)Z

    .line 2143
    return-void
.end method

.method public onSessionDestroyed()V
    .locals 1

    .prologue
    .line 2093
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public onShuffleModeChanged(I)V
    .locals 2

    .prologue
    .line 2158
    iget-object v0, p0, Landroid/support/v4/media/session/s;->adY:Landroid/support/v4/media/session/c;

    iget-object v0, v0, Landroid/support/v4/media/session/c;->adG:Landroid/support/v4/media/session/f;

    new-instance v1, Landroid/support/v4/media/session/m;

    invoke-direct {v1, p0, p1}, Landroid/support/v4/media/session/m;-><init>(Landroid/support/v4/media/session/s;I)V

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/f;->post(Ljava/lang/Runnable;)Z

    .line 2164
    return-void
.end method

.method public onShuffleModeChangedDeprecated(Z)V
    .locals 2

    .prologue
    .line 2148
    iget-object v0, p0, Landroid/support/v4/media/session/s;->adY:Landroid/support/v4/media/session/c;

    iget-object v0, v0, Landroid/support/v4/media/session/c;->adG:Landroid/support/v4/media/session/f;

    new-instance v1, Landroid/support/v4/media/session/g;

    invoke-direct {v1, p0, p1}, Landroid/support/v4/media/session/g;-><init>(Landroid/support/v4/media/session/s;Z)V

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/f;->post(Ljava/lang/Runnable;)Z

    .line 2154
    return-void
.end method

.method public onVolumeInfoChanged(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V
    .locals 1

    .prologue
    .line 2175
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
