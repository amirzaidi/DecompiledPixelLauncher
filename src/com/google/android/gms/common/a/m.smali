.class public final Lcom/google/android/gms/common/a/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/a/a;


# static fields
.field private static hB:Lcom/google/android/gms/common/a/m;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized jR()Lcom/google/android/gms/common/a/a;
    .locals 2

    const-class v1, Lcom/google/android/gms/common/a/m;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/common/a/m;->hB:Lcom/google/android/gms/common/a/m;

    if-eqz v0, :cond_0

    :goto_0
    sget-object v0, Lcom/google/android/gms/common/a/m;->hB:Lcom/google/android/gms/common/a/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/android/gms/common/a/m;

    invoke-direct {v0}, Lcom/google/android/gms/common/a/m;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/a/m;->hB:Lcom/google/android/gms/common/a/m;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public js()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public jt()J
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method
