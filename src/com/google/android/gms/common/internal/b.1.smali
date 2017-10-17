.class public Lcom/google/android/gms/common/internal/b;
.super Lcom/google/android/gms/common/internal/R;


# instance fields
.field private final hR:Lcom/google/android/gms/common/api/o;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/api/d;Lcom/google/android/gms/common/api/c;Lcom/google/android/gms/common/internal/a;Lcom/google/android/gms/common/api/o;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p6

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/R;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/a;Lcom/google/android/gms/common/api/d;Lcom/google/android/gms/common/api/c;)V

    iput-object p7, p0, Lcom/google/android/gms/common/internal/b;->hR:Lcom/google/android/gms/common/api/o;

    return-void
.end method


# virtual methods
.method protected jk()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/b;->hR:Lcom/google/android/gms/common/api/o;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/o;->hb()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected jl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/b;->hR:Lcom/google/android/gms/common/api/o;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/o;->hc()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public jm()Lcom/google/android/gms/common/api/o;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/b;->hR:Lcom/google/android/gms/common/api/o;

    return-object v0
.end method

.method protected jn(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/b;->hR:Lcom/google/android/gms/common/api/o;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/o;->hd(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v0

    return-object v0
.end method

.method protected jo(ILandroid/os/IInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/b;->hR:Lcom/google/android/gms/common/api/o;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/common/api/o;->he(ILandroid/os/IInterface;)V

    return-void
.end method
