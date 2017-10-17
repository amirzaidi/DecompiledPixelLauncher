.class Lcom/google/android/gms/internal/o;
.super Lcom/google/android/gms/internal/q;


# instance fields
.field final synthetic oH:Ljava/lang/String;

.field final synthetic oI:Lcom/google/android/gms/internal/k;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/k;Lcom/google/android/gms/common/api/d;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/o;->oI:Lcom/google/android/gms/internal/k;

    iput-object p3, p0, Lcom/google/android/gms/internal/o;->oH:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/q;-><init>(Lcom/google/android/gms/common/api/d;)V

    return-void
.end method


# virtual methods
.method public synthetic rW(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/b;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/o;->ss(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic rp(Lcom/google/android/gms/common/api/o;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/p;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/o;->st(Lcom/google/android/gms/internal/p;)V

    return-void
.end method

.method public ss(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
    .locals 0

    return-object p1
.end method

.method protected st(Lcom/google/android/gms/internal/p;)V
    .locals 3

    new-instance v1, Lcom/google/android/gms/internal/w;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/w;-><init>(Lcom/google/android/gms/internal/o;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/p;->hY()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzzb;

    iget-object v2, p0, Lcom/google/android/gms/internal/o;->oH:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzzb;->zzb(Lcom/google/android/gms/internal/zzza;Ljava/lang/String;)V

    return-void
.end method
