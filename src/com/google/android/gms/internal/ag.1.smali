.class Lcom/google/android/gms/internal/ag;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic rV:Lcom/google/android/gms/internal/at;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/at;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ag;->rV:Lcom/google/android/gms/internal/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ag;->rV:Lcom/google/android/gms/internal/at;

    invoke-static {v0}, Lcom/google/android/gms/internal/at;->ux(Lcom/google/android/gms/internal/at;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ag;->rV:Lcom/google/android/gms/internal/at;

    invoke-static {v0}, Lcom/google/android/gms/internal/at;->uA(Lcom/google/android/gms/internal/at;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ag;->rV:Lcom/google/android/gms/internal/at;

    invoke-static {v0}, Lcom/google/android/gms/internal/at;->ut(Lcom/google/android/gms/internal/at;)Lcom/google/android/gms/common/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/a/a;->mh()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ag;->rV:Lcom/google/android/gms/internal/at;

    invoke-static {v0}, Lcom/google/android/gms/internal/at;->uu(Lcom/google/android/gms/internal/at;)Lcom/google/android/gms/common/api/a;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    :goto_1
    monitor-exit v1

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "ClearcutLoggerApiImpl"

    const-string/jumbo v2, "disconnect managed GoogleApiClient"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/ag;->rV:Lcom/google/android/gms/internal/at;

    invoke-static {v0}, Lcom/google/android/gms/internal/at;->uu(Lcom/google/android/gms/internal/at;)Lcom/google/android/gms/common/api/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/a;->gi()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ag;->rV:Lcom/google/android/gms/internal/at;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/at;->up(Lcom/google/android/gms/internal/at;Lcom/google/android/gms/common/api/a;)Lcom/google/android/gms/common/api/a;

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
