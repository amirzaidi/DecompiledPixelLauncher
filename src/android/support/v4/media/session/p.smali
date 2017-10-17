.class Landroid/support/v4/media/session/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final aft:Ljava/util/List;

.field private afu:Landroid/support/v4/media/session/IMediaSession;

.field private afv:Ljava/util/HashMap;


# direct methods
.method static synthetic asU(Landroid/support/v4/media/session/p;)V
    .locals 0

    .prologue
    .line 1871
    invoke-direct {p0}, Landroid/support/v4/media/session/p;->asV()V

    return-void
.end method

.method private asV()V
    .locals 5

    .prologue
    .line 2135
    iget-object v0, p0, Landroid/support/v4/media/session/p;->afu:Landroid/support/v4/media/session/IMediaSession;

    if-eqz v0, :cond_0

    .line 2138
    iget-object v1, p0, Landroid/support/v4/media/session/p;->aft:Ljava/util/List;

    monitor-enter v1

    .line 2139
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/session/p;->aft:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2150
    :goto_1
    iget-object v0, p0, Landroid/support/v4/media/session/p;->aft:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2151
    monitor-exit v1

    .line 2152
    return-void

    .line 2136
    :cond_0
    return-void

    .line 2139
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/c;

    .line 2140
    new-instance v3, Landroid/support/v4/media/session/w;

    invoke-direct {v3, v0}, Landroid/support/v4/media/session/w;-><init>(Landroid/support/v4/media/session/c;)V

    .line 2141
    iget-object v4, p0, Landroid/support/v4/media/session/p;->afv:Ljava/util/HashMap;

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2142
    const/4 v4, 0x1

    iput-boolean v4, v0, Landroid/support/v4/media/session/c;->afb:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2144
    :try_start_1
    iget-object v0, p0, Landroid/support/v4/media/session/p;->afu:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {v0, v3}, Landroid/support/v4/media/session/IMediaSession;->registerCallbackListener(Landroid/support/v4/media/session/IMediaControllerCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2145
    :catch_0
    move-exception v0

    .line 2146
    :try_start_2
    const-string/jumbo v2, "MediaControllerCompat"

    const-string/jumbo v3, "Dead object in registerCallback."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2151
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method static synthetic asW(Landroid/support/v4/media/session/p;Landroid/support/v4/media/session/IMediaSession;)Landroid/support/v4/media/session/IMediaSession;
    .locals 0

    .prologue
    .line 1871
    iput-object p1, p0, Landroid/support/v4/media/session/p;->afu:Landroid/support/v4/media/session/IMediaSession;

    return-object p1
.end method
