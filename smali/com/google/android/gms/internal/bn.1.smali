.class Lcom/google/android/gms/internal/bn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/g;
.implements Lcom/google/android/gms/common/api/f;


# instance fields
.field final synthetic tX:Lcom/google/android/gms/internal/bH;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/bH;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bn;->tX:Lcom/google/android/gms/internal/bH;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/bH;Lcom/google/android/gms/internal/bJ;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/bn;-><init>(Lcom/google/android/gms/internal/bH;)V

    return-void
.end method


# virtual methods
.method public dQ(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bn;->tX:Lcom/google/android/gms/internal/bH;

    invoke-static {v0}, Lcom/google/android/gms/internal/bH;->Aw(Lcom/google/android/gms/internal/bH;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bn;->tX:Lcom/google/android/gms/internal/bH;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/bH;->zZ(Lcom/google/android/gms/internal/bH;Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bn;->tX:Lcom/google/android/gms/internal/bH;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/bH;->Af(Lcom/google/android/gms/internal/bH;Lcom/google/android/gms/common/ConnectionResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bn;->tX:Lcom/google/android/gms/internal/bH;

    invoke-static {v0}, Lcom/google/android/gms/internal/bH;->Aw(Lcom/google/android/gms/internal/bH;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/bn;->tX:Lcom/google/android/gms/internal/bH;

    invoke-static {v0}, Lcom/google/android/gms/internal/bH;->Aq(Lcom/google/android/gms/internal/bH;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bn;->tX:Lcom/google/android/gms/internal/bH;

    invoke-static {v0}, Lcom/google/android/gms/internal/bH;->AJ(Lcom/google/android/gms/internal/bH;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/bn;->tX:Lcom/google/android/gms/internal/bH;

    invoke-static {v1}, Lcom/google/android/gms/internal/bH;->Aw(Lcom/google/android/gms/internal/bH;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public dR(I)V
    .locals 0

    return-void
.end method

.method public dS(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/bn;->tX:Lcom/google/android/gms/internal/bH;

    invoke-static {v0}, Lcom/google/android/gms/internal/bH;->Ab(Lcom/google/android/gms/internal/bH;)Lcom/google/android/gms/internal/bm;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/cm;

    iget-object v2, p0, Lcom/google/android/gms/internal/bn;->tX:Lcom/google/android/gms/internal/bH;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/cm;-><init>(Lcom/google/android/gms/internal/bH;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/bm;->yx(Lcom/google/android/gms/signin/internal/zzd;)V

    return-void
.end method
