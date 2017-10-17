.class Lcom/google/android/gms/internal/y;
.super Lcom/google/android/gms/internal/q;


# instance fields
.field final synthetic oW:Ljava/lang/String;

.field final synthetic oX:Lcom/google/android/gms/internal/k;

.field final synthetic oY:Ljava/lang/String;

.field final synthetic oZ:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/k;Lcom/google/android/gms/common/api/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/y;->oX:Lcom/google/android/gms/internal/k;

    iput-object p3, p0, Lcom/google/android/gms/internal/y;->oW:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/y;->oZ:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/y;->oY:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/q;-><init>(Lcom/google/android/gms/common/api/d;)V

    return-void
.end method


# virtual methods
.method public synthetic rW(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/b;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/y;->sy(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/phenotype/b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic rp(Lcom/google/android/gms/common/api/o;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/p;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/y;->sx(Lcom/google/android/gms/internal/p;)V

    return-void
.end method

.method protected sx(Lcom/google/android/gms/internal/p;)V
    .locals 5

    new-instance v1, Lcom/google/android/gms/internal/v;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/v;-><init>(Lcom/google/android/gms/internal/y;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/p;->hY()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzzb;

    iget-object v2, p0, Lcom/google/android/gms/internal/y;->oW:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/y;->oZ:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/y;->oY:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzzb;->zza(Lcom/google/android/gms/internal/zzza;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sy(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/phenotype/b;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/z;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/z;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/phenotype/Configurations;)V

    return-object v0
.end method
