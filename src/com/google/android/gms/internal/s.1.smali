.class Lcom/google/android/gms/internal/s;
.super Lcom/google/android/gms/internal/o;


# instance fields
.field final synthetic pd:Ljava/lang/String;

.field final synthetic pe:Lcom/google/android/gms/internal/k;

.field final synthetic pf:Ljava/lang/String;

.field final synthetic pg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/k;Lcom/google/android/gms/common/api/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/s;->pe:Lcom/google/android/gms/internal/k;

    iput-object p3, p0, Lcom/google/android/gms/internal/s;->pd:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/s;->pg:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/s;->pf:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/o;-><init>(Lcom/google/android/gms/common/api/a;)V

    return-void
.end method


# virtual methods
.method public synthetic rY(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/m;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/s;->sw(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/phenotype/r;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic rr(Lcom/google/android/gms/common/api/n;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/n;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/s;->sv(Lcom/google/android/gms/internal/n;)V

    return-void
.end method

.method protected sv(Lcom/google/android/gms/internal/n;)V
    .locals 5

    new-instance v1, Lcom/google/android/gms/internal/q;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/q;-><init>(Lcom/google/android/gms/internal/s;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/n;->kM()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzzb;

    iget-object v2, p0, Lcom/google/android/gms/internal/s;->pd:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/s;->pg:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/s;->pf:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzzb;->zza(Lcom/google/android/gms/internal/zzza;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sw(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/phenotype/r;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/t;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/t;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/phenotype/Configurations;)V

    return-object v0
.end method
