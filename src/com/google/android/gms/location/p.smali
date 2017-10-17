.class Lcom/google/android/gms/location/p;
.super Lcom/google/android/gms/common/api/j;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/j;-><init>()V

    return-void
.end method


# virtual methods
.method public IP(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/a;Lcom/google/android/gms/common/api/s;Lcom/google/android/gms/common/api/d;Lcom/google/android/gms/common/api/c;)Lcom/google/android/gms/location/internal/a;
    .locals 7

    new-instance v0, Lcom/google/android/gms/location/internal/a;

    const-string/jumbo v5, "locationServices"

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move-object v4, p6

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/location/internal/a;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/d;Lcom/google/android/gms/common/api/c;Ljava/lang/String;Lcom/google/android/gms/common/internal/a;)V

    return-object v0
.end method

.method public synthetic gR(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/a;Ljava/lang/Object;Lcom/google/android/gms/common/api/d;Lcom/google/android/gms/common/api/c;)Lcom/google/android/gms/common/api/g;
    .locals 7

    move-object v4, p4

    check-cast v4, Lcom/google/android/gms/common/api/s;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/location/p;->IP(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/a;Lcom/google/android/gms/common/api/s;Lcom/google/android/gms/common/api/d;Lcom/google/android/gms/common/api/c;)Lcom/google/android/gms/location/internal/a;

    move-result-object v0

    return-object v0
.end method
