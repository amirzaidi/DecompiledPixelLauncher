.class public final Lcom/google/android/gms/common/internal/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private final Jm:I

.field final synthetic ia:Lcom/google/android/gms/common/internal/x;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/x;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/e;->ia:Lcom/google/android/gms/common/internal/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/common/internal/e;->Jm:I

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    const-string/jumbo v0, "Expecting a valid IBinder"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/l;->kc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/e;->ia:Lcom/google/android/gms/common/internal/x;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/x;->kW(Lcom/google/android/gms/common/internal/x;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/e;->ia:Lcom/google/android/gms/common/internal/x;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzu$zza;->zzha(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/zzu;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/x;->kF(Lcom/google/android/gms/common/internal/x;Lcom/google/android/gms/common/internal/zzu;)Lcom/google/android/gms/common/internal/zzu;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/e;->ia:Lcom/google/android/gms/common/internal/x;

    iget v1, p0, Lcom/google/android/gms/common/internal/e;->Jm:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2, v1}, Lcom/google/android/gms/common/internal/x;->kG(ILandroid/os/Bundle;I)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/common/internal/e;->ia:Lcom/google/android/gms/common/internal/x;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/x;->kW(Lcom/google/android/gms/common/internal/x;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/e;->ia:Lcom/google/android/gms/common/internal/x;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/x;->kF(Lcom/google/android/gms/common/internal/x;Lcom/google/android/gms/common/internal/zzu;)Lcom/google/android/gms/common/internal/zzu;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/e;->ia:Lcom/google/android/gms/common/internal/x;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/x;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/e;->ia:Lcom/google/android/gms/common/internal/x;

    iget-object v1, v1, Lcom/google/android/gms/common/internal/x;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/google/android/gms/common/internal/e;->Jm:I

    const/4 v3, 0x4

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v2, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
