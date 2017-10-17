.class public Lcom/google/android/gms/common/internal/b;
.super Lcom/google/android/gms/common/internal/R;


# instance fields
.field private final eY:Lcom/google/android/gms/common/api/p;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/api/g;Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/common/internal/a;Lcom/google/android/gms/common/api/p;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p6

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/R;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/a;Lcom/google/android/gms/common/api/g;Lcom/google/android/gms/common/api/f;)V

    iput-object p7, p0, Lcom/google/android/gms/common/internal/b;->eY:Lcom/google/android/gms/common/api/p;

    return-void
.end method


# virtual methods
.method protected gA(ILandroid/os/IInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/b;->eY:Lcom/google/android/gms/common/api/p;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/common/api/p;->er(ILandroid/os/IInterface;)V

    return-void
.end method

.method protected gw()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/b;->eY:Lcom/google/android/gms/common/api/p;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/p;->eo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected gx()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/b;->eY:Lcom/google/android/gms/common/api/p;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/p;->ep()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public gy()Lcom/google/android/gms/common/api/p;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/b;->eY:Lcom/google/android/gms/common/api/p;

    return-object v0
.end method

.method protected gz(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/b;->eY:Lcom/google/android/gms/common/api/p;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/p;->eq(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v0

    return-object v0
.end method
