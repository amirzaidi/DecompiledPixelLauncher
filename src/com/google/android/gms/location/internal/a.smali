.class public Lcom/google/android/gms/location/internal/a;
.super Lcom/google/android/gms/location/internal/i;


# instance fields
.field private final Ap:Lcom/google/android/gms/location/internal/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/g;Lcom/google/android/gms/common/api/f;Ljava/lang/String;Lcom/google/android/gms/common/internal/a;)V
    .locals 2

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/location/internal/i;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/g;Lcom/google/android/gms/common/api/f;Ljava/lang/String;Lcom/google/android/gms/common/internal/a;)V

    new-instance v0, Lcom/google/android/gms/location/internal/h;

    iget-object v1, p0, Lcom/google/android/gms/location/internal/a;->AK:Lcom/google/android/gms/location/internal/r;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/location/internal/h;-><init>(Landroid/content/Context;Lcom/google/android/gms/location/internal/r;)V

    iput-object v0, p0, Lcom/google/android/gms/location/internal/a;->Ap:Lcom/google/android/gms/location/internal/h;

    return-void
.end method


# virtual methods
.method public ER()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/internal/a;->Ap:Lcom/google/android/gms/location/internal/h;

    invoke-virtual {v0}, Lcom/google/android/gms/location/internal/h;->Fi()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public ec()V
    .locals 4

    iget-object v1, p0, Lcom/google/android/gms/location/internal/a;->Ap:Lcom/google/android/gms/location/internal/h;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/location/internal/a;->eg()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    invoke-super {p0}, Lcom/google/android/gms/location/internal/i;->ec()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/location/internal/a;->Ap:Lcom/google/android/gms/location/internal/h;

    invoke-virtual {v0}, Lcom/google/android/gms/location/internal/h;->Fk()V

    iget-object v0, p0, Lcom/google/android/gms/location/internal/a;->Ap:Lcom/google/android/gms/location/internal/h;

    invoke-virtual {v0}, Lcom/google/android/gms/location/internal/h;->Fj()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v2, "LocationClientImpl"

    const-string/jumbo v3, "Client disconnected before listeners could be cleaned up"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
