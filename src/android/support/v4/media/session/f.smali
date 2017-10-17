.class Landroid/support/v4/media/session/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method

.method public static asD(Ljava/lang/Object;)J
    .locals 2

    .prologue
    .line 32
    check-cast p0, Landroid/media/session/PlaybackState;

    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public static asE(Ljava/lang/Object;)F
    .locals 1

    .prologue
    .line 40
    check-cast p0, Landroid/media/session/PlaybackState;

    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getPlaybackSpeed()F

    move-result v0

    return v0
.end method

.method public static asF(Ljava/lang/Object;)J
    .locals 2

    .prologue
    .line 36
    check-cast p0, Landroid/media/session/PlaybackState;

    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getBufferedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public static asG(Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    .prologue
    .line 56
    check-cast p0, Landroid/media/session/PlaybackState;

    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getCustomActions()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static asH(Ljava/lang/Object;)J
    .locals 2

    .prologue
    .line 52
    check-cast p0, Landroid/media/session/PlaybackState;

    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getLastPositionUpdateTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static asI(Ljava/lang/Object;)J
    .locals 2

    .prologue
    .line 60
    check-cast p0, Landroid/media/session/PlaybackState;

    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getActiveQueueItemId()J

    move-result-wide v0

    return-wide v0
.end method

.method public static asJ(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 48
    check-cast p0, Landroid/media/session/PlaybackState;

    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getErrorMessage()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static asK(Ljava/lang/Object;)J
    .locals 2

    .prologue
    .line 44
    check-cast p0, Landroid/media/session/PlaybackState;

    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v0

    return-wide v0
.end method

.method public static asL(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 28
    check-cast p0, Landroid/media/session/PlaybackState;

    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    return v0
.end method
