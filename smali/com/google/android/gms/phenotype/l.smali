.class Lcom/google/android/gms/phenotype/l;
.super Lcom/google/android/gms/common/api/l;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/l;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic ek(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/a;Ljava/lang/Object;Lcom/google/android/gms/common/api/g;Lcom/google/android/gms/common/api/f;)Lcom/google/android/gms/common/api/i;
    .locals 7

    move-object v4, p4

    check-cast v4, Lcom/google/android/gms/common/api/t;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/phenotype/l;->pm(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/a;Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/common/api/g;Lcom/google/android/gms/common/api/f;)Lcom/google/android/gms/internal/p;

    move-result-object v0

    return-object v0
.end method

.method public pm(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/a;Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/common/api/g;Lcom/google/android/gms/common/api/f;)Lcom/google/android/gms/internal/p;
    .locals 6

    new-instance v0, Lcom/google/android/gms/internal/p;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/p;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/a;Lcom/google/android/gms/common/api/g;Lcom/google/android/gms/common/api/f;)V

    return-object v0
.end method
