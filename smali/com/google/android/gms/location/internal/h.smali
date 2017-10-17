.class public Lcom/google/android/gms/location/internal/h;
.super Ljava/lang/Object;


# instance fields
.field private AE:Landroid/content/ContentProviderClient;

.field private AF:Z

.field private AG:Ljava/util/Map;

.field private AH:Ljava/util/Map;

.field private final AI:Lcom/google/android/gms/location/internal/r;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/location/internal/r;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/location/internal/h;->AE:Landroid/content/ContentProviderClient;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/location/internal/h;->AF:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/location/internal/h;->AG:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/location/internal/h;->AH:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/android/gms/location/internal/h;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/location/internal/h;->AI:Lcom/google/android/gms/location/internal/r;

    return-void
.end method


# virtual methods
.method public Fi()Landroid/location/Location;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/location/internal/h;->AI:Lcom/google/android/gms/location/internal/r;

    invoke-interface {v0}, Lcom/google/android/gms/location/internal/r;->FM()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/location/internal/h;->AI:Lcom/google/android/gms/location/internal/r;

    invoke-interface {v0}, Lcom/google/android/gms/location/internal/r;->FN()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/internal/zzi;

    iget-object v1, p0, Lcom/google/android/gms/location/internal/h;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/location/internal/zzi;->zzkh(Ljava/lang/String;)Landroid/location/Location;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public Fj()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/location/internal/h;->AF:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/location/internal/h;->zzcf(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public Fk()V
    .locals 5

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/location/internal/h;->AG:Ljava/util/Map;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/location/internal/h;->AG:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/location/internal/h;->AG:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Lcom/google/android/gms/location/internal/h;->AH:Ljava/util/Map;

    monitor-enter v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/location/internal/h;->AH:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/location/internal/h;->AH:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    :cond_2
    :try_start_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/internal/k;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/location/internal/h;->AI:Lcom/google/android/gms/location/internal/r;

    invoke-interface {v1}, Lcom/google/android/gms/location/internal/r;->FN()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/location/internal/zzi;

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/google/android/gms/location/internal/LocationRequestUpdateData;->EV(Lcom/google/android/gms/location/zzf;Lcom/google/android/gms/location/internal/zzg;)Lcom/google/android/gms/location/internal/LocationRequestUpdateData;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/location/internal/zzi;->zza(Lcom/google/android/gms/location/internal/LocationRequestUpdateData;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    :try_start_6
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/internal/d;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/location/internal/h;->AI:Lcom/google/android/gms/location/internal/r;

    invoke-interface {v1}, Lcom/google/android/gms/location/internal/r;->FN()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/location/internal/zzi;

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/google/android/gms/location/internal/LocationRequestUpdateData;->EY(Lcom/google/android/gms/location/zze;Lcom/google/android/gms/location/internal/zzg;)Lcom/google/android/gms/location/internal/LocationRequestUpdateData;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/location/internal/zzi;->zza(Lcom/google/android/gms/location/internal/LocationRequestUpdateData;)V

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
.end method

.method public zzcf(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/internal/h;->AI:Lcom/google/android/gms/location/internal/r;

    invoke-interface {v0}, Lcom/google/android/gms/location/internal/r;->FM()V

    iget-object v0, p0, Lcom/google/android/gms/location/internal/h;->AI:Lcom/google/android/gms/location/internal/r;

    invoke-interface {v0}, Lcom/google/android/gms/location/internal/r;->FN()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/internal/zzi;

    invoke-interface {v0, p1}, Lcom/google/android/gms/location/internal/zzi;->zzcf(Z)V

    iput-boolean p1, p0, Lcom/google/android/gms/location/internal/h;->AF:Z

    return-void
.end method
