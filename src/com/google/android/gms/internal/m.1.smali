.class Lcom/google/android/gms/internal/m;
.super Lcom/google/android/gms/internal/o;


# instance fields
.field final synthetic oY:Ljava/lang/String;

.field final synthetic oZ:Lcom/google/android/gms/internal/k;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/k;Lcom/google/android/gms/common/api/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/m;->oZ:Lcom/google/android/gms/internal/k;

    iput-object p3, p0, Lcom/google/android/gms/internal/m;->oY:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/o;-><init>(Lcom/google/android/gms/common/api/a;)V

    return-void
.end method


# virtual methods
.method public synthetic rY(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/m;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/m;->ss(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic rr(Lcom/google/android/gms/common/api/n;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/n;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/m;->st(Lcom/google/android/gms/internal/n;)V

    return-void
.end method

.method public ss(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
    .locals 0

    return-object p1
.end method

.method protected st(Lcom/google/android/gms/internal/n;)V
    .locals 3

    new-instance v1, Lcom/google/android/gms/internal/r;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/r;-><init>(Lcom/google/android/gms/internal/m;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/n;->kM()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzzb;

    iget-object v2, p0, Lcom/google/android/gms/internal/m;->oY:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzzb;->zzb(Lcom/google/android/gms/internal/zzza;Ljava/lang/String;)V

    return-void
.end method
