.class final Lcom/google/android/gms/common/internal/h;
.super Lcom/google/android/gms/common/internal/C;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private final fv:Lcom/google/android/gms/common/stats/b;

.field private final fw:Ljava/util/HashMap;

.field private final fx:Landroid/content/Context;

.field private final fy:J

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/C;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/h;->fw:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/h;->fx:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/h;->mHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/google/android/gms/common/stats/b;->mc()Lcom/google/android/gms/common/stats/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/h;->fv:Lcom/google/android/gms/common/stats/b;

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/google/android/gms/common/internal/h;->fy:J

    return-void
.end method

.method static synthetic gY(Lcom/google/android/gms/common/internal/h;)Lcom/google/android/gms/common/stats/b;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/h;->fv:Lcom/google/android/gms/common/stats/b;

    return-object v0
.end method

.method static synthetic ha(Lcom/google/android/gms/common/internal/h;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/h;->fw:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic hb(Lcom/google/android/gms/common/internal/h;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/h;->fx:Landroid/content/Context;

    return-object v0
.end method

.method private hc(Lcom/google/android/gms/common/internal/v;Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .locals 6

    const-string/jumbo v0, "ServiceConnection must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/l;->ho(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/h;->fw:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/h;->fw:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/internal/f;->gV(Landroid/content/ServiceConnection;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/common/internal/f;->gP(Landroid/content/ServiceConnection;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/f;->gO()Z

    move-result v2

    if-nez v2, :cond_2

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x32

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "Nonexistent connection status for service config: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x4c

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "Trying to unbind a GmsServiceConnection  that was not bound before.  config="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/common/internal/h;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/common/internal/h;->mHandler:Landroid/os/Handler;

    iget-wide v4, p0, Lcom/google/android/gms/common/internal/h;->fy:J

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private he(Lcom/google/android/gms/common/internal/v;Landroid/content/ServiceConnection;Ljava/lang/String;)Z
    .locals 5

    const-string/jumbo v0, "ServiceConnection must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/l;->ho(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/h;->fw:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/h;->fw:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/f;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/common/internal/h;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/internal/f;->gV(Landroid/content/ServiceConnection;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/common/internal/f;->gN(Landroid/content/ServiceConnection;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/f;->getState()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/f;->isBound()Z

    move-result v0

    monitor-exit v1

    return v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/common/internal/f;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/internal/f;-><init>(Lcom/google/android/gms/common/internal/h;Lcom/google/android/gms/common/internal/v;)V

    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/common/internal/f;->gN(Landroid/content/ServiceConnection;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/google/android/gms/common/internal/f;->gQ(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/common/internal/h;->fw:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x51

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "Trying to bind a GmsServiceConnection that was already connected before.  config="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/f;->gU()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/f;->gM()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0, p3}, Lcom/google/android/gms/common/internal/f;->gQ(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public gZ(Ljava/lang/String;Ljava/lang/String;Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/internal/v;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/common/internal/v;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, p3, p4}, Lcom/google/android/gms/common/internal/h;->hc(Lcom/google/android/gms/common/internal/v;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    const/4 v1, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/internal/f;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/h;->fw:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/f;->gO()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    monitor-exit v1

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/f;->isBound()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/common/internal/h;->fw:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/f;->gX(Lcom/google/android/gms/common/internal/f;)Lcom/google/android/gms/common/internal/v;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    const-string/jumbo v2, "GmsClientSupervisor"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/internal/f;->gS(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public hd(Ljava/lang/String;Ljava/lang/String;Landroid/content/ServiceConnection;Ljava/lang/String;)Z
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/internal/v;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/common/internal/v;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, p3, p4}, Lcom/google/android/gms/common/internal/h;->he(Lcom/google/android/gms/common/internal/v;Landroid/content/ServiceConnection;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
