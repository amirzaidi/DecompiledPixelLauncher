.class Landroid/support/v4/media/session/A;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final aev:Ljava/util/List;

.field private aew:Landroid/support/v4/media/session/IMediaSession;

.field private aex:Ljava/util/HashMap;


# direct methods
.method static synthetic arX(Landroid/support/v4/media/session/A;Landroid/support/v4/media/session/IMediaSession;)Landroid/support/v4/media/session/IMediaSession;
    .locals 0

    .prologue
    .line 1767
    iput-object p1, p0, Landroid/support/v4/media/session/A;->aew:Landroid/support/v4/media/session/IMediaSession;

    return-object p1
.end method

.method private arY()V
    .locals 5

    .prologue
    .line 2033
    iget-object v0, p0, Landroid/support/v4/media/session/A;->aew:Landroid/support/v4/media/session/IMediaSession;

    if-eqz v0, :cond_0

    .line 2036
    iget-object v1, p0, Landroid/support/v4/media/session/A;->aev:Ljava/util/List;

    monitor-enter v1

    .line 2037
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/session/A;->aev:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2048
    :goto_1
    iget-object v0, p0, Landroid/support/v4/media/session/A;->aev:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2049
    monitor-exit v1

    .line 2050
    return-void

    .line 2034
    :cond_0
    return-void

    .line 2037
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/c;

    .line 2038
    new-instance v3, Landroid/support/v4/media/session/s;

    invoke-direct {v3, v0}, Landroid/support/v4/media/session/s;-><init>(Landroid/support/v4/media/session/c;)V

    .line 2039
    iget-object v4, p0, Landroid/support/v4/media/session/A;->aex:Ljava/util/HashMap;

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2040
    const/4 v4, 0x1

    iput-boolean v4, v0, Landroid/support/v4/media/session/c;->adJ:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2042
    :try_start_1
    iget-object v0, p0, Landroid/support/v4/media/session/A;->aew:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {v0, v3}, Landroid/support/v4/media/session/IMediaSession;->registerCallbackListener(Landroid/support/v4/media/session/IMediaControllerCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2043
    :catch_0
    move-exception v0

    .line 2044
    :try_start_2
    const-string/jumbo v2, "MediaControllerCompat"

    const-string/jumbo v3, "Dead object in registerCallback."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2049
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method static synthetic arZ(Landroid/support/v4/media/session/A;)V
    .locals 0

    .prologue
    .line 1767
    invoke-direct {p0}, Landroid/support/v4/media/session/A;->arY()V

    return-void
.end method
