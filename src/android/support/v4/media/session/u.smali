.class Landroid/support/v4/media/session/u;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static arL(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 246
    check-cast p0, Landroid/media/session/MediaSession$QueueItem;

    invoke-virtual {p0}, Landroid/media/session/MediaSession$QueueItem;->getDescription()Landroid/media/MediaDescription;

    move-result-object v0

    return-object v0
.end method

.method public static arM(Ljava/lang/Object;)J
    .locals 2

    .prologue
    .line 250
    check-cast p0, Landroid/media/session/MediaSession$QueueItem;

    invoke-virtual {p0}, Landroid/media/session/MediaSession$QueueItem;->getQueueId()J

    move-result-wide v0

    return-wide v0
.end method
