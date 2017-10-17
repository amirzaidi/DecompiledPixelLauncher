.class Lcom/google/android/gms/internal/ct;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/g;


# instance fields
.field final synthetic wU:Lcom/google/android/gms/internal/bW;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bW;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ct;->wU:Lcom/google/android/gms/internal/bW;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rZ(Lcom/google/android/gms/internal/b;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ct;->wU:Lcom/google/android/gms/internal/bW;

    iget-object v0, v0, Lcom/google/android/gms/internal/bW;->wa:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/google/android/gms/internal/b;->rQ()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ct;->wU:Lcom/google/android/gms/internal/bW;

    invoke-static {v0}, Lcom/google/android/gms/internal/bW;->Bz(Lcom/google/android/gms/internal/bW;)Lcom/google/android/gms/internal/cx;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ct;->wU:Lcom/google/android/gms/internal/bW;

    invoke-static {v0}, Lcom/google/android/gms/internal/bW;->BD(Lcom/google/android/gms/internal/bW;)Lcom/google/android/gms/common/api/k;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ct;->wU:Lcom/google/android/gms/internal/bW;

    invoke-static {v0}, Lcom/google/android/gms/internal/bW;->BD(Lcom/google/android/gms/internal/bW;)Lcom/google/android/gms/common/api/k;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/b;->rQ()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/k;->ej(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ct;->wU:Lcom/google/android/gms/internal/bW;

    iget-object v0, v0, Lcom/google/android/gms/internal/bW;->wa:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ct;->wU:Lcom/google/android/gms/internal/bW;

    invoke-static {v0}, Lcom/google/android/gms/internal/bW;->Bz(Lcom/google/android/gms/internal/bW;)Lcom/google/android/gms/internal/cx;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/cx;->Ci()V

    goto :goto_1
.end method
