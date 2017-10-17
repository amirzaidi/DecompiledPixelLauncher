.class Lcom/google/android/gms/internal/s;
.super Lcom/google/android/gms/internal/q;


# instance fields
.field final synthetic oK:Ljava/lang/String;

.field final synthetic oL:I

.field final synthetic oM:[Ljava/lang/String;

.field final synthetic oN:[B

.field final synthetic oO:Lcom/google/android/gms/internal/k;

.field final synthetic oP:Ljava/lang/String;

.field final synthetic oQ:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/k;Lcom/google/android/gms/common/api/d;Ljava/lang/String;I[Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/s;->oO:Lcom/google/android/gms/internal/k;

    iput-object p3, p0, Lcom/google/android/gms/internal/s;->oK:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/internal/s;->oL:I

    iput-object p5, p0, Lcom/google/android/gms/internal/s;->oM:[Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/s;->oN:[B

    iput-object p7, p0, Lcom/google/android/gms/internal/s;->oQ:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/internal/s;->oP:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/q;-><init>(Lcom/google/android/gms/common/api/d;)V

    return-void
.end method


# virtual methods
.method public synthetic rW(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/b;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/s;->sw(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/phenotype/b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic rp(Lcom/google/android/gms/common/api/o;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/p;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/s;->sv(Lcom/google/android/gms/internal/p;)V

    return-void
.end method

.method protected sv(Lcom/google/android/gms/internal/p;)V
    .locals 8

    new-instance v1, Lcom/google/android/gms/internal/u;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/u;-><init>(Lcom/google/android/gms/internal/s;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/p;->hY()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzzb;

    iget-object v2, p0, Lcom/google/android/gms/internal/s;->oK:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/gms/internal/s;->oL:I

    iget-object v4, p0, Lcom/google/android/gms/internal/s;->oM:[Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/s;->oN:[B

    iget-object v6, p0, Lcom/google/android/gms/internal/s;->oQ:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/internal/s;->oP:Ljava/lang/String;

    invoke-interface/range {v0 .. v7}, Lcom/google/android/gms/internal/zzzb;->zza(Lcom/google/android/gms/internal/zzza;Ljava/lang/String;I[Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sw(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/phenotype/b;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/z;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/z;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/phenotype/Configurations;)V

    return-object v0
.end method
