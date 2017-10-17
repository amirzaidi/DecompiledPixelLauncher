.class Lcom/google/android/gms/internal/ci;
.super Lcom/google/android/gms/common/api/l;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/l;-><init>()V

    return-void
.end method


# virtual methods
.method public Cc(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/a;Lcom/google/android/gms/internal/cl;Lcom/google/android/gms/common/api/g;Lcom/google/android/gms/common/api/f;)Lcom/google/android/gms/signin/internal/e;
    .locals 8

    new-instance v0, Lcom/google/android/gms/signin/internal/e;

    invoke-virtual {p4}, Lcom/google/android/gms/internal/cl;->Cd()Landroid/os/Bundle;

    move-result-object v5

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/signin/internal/e;-><init>(Landroid/content/Context;Landroid/os/Looper;ZLcom/google/android/gms/common/internal/a;Landroid/os/Bundle;Lcom/google/android/gms/common/api/g;Lcom/google/android/gms/common/api/f;)V

    return-object v0
.end method

.method public bridge synthetic ek(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/a;Ljava/lang/Object;Lcom/google/android/gms/common/api/g;Lcom/google/android/gms/common/api/f;)Lcom/google/android/gms/common/api/i;
    .locals 7

    move-object v4, p4

    check-cast v4, Lcom/google/android/gms/internal/cl;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ci;->Cc(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/a;Lcom/google/android/gms/internal/cl;Lcom/google/android/gms/common/api/g;Lcom/google/android/gms/common/api/f;)Lcom/google/android/gms/signin/internal/e;

    move-result-object v0

    return-object v0
.end method
