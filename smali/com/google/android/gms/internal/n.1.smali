.class Lcom/google/android/gms/internal/n;
.super Lcom/google/android/gms/internal/q;


# instance fields
.field final synthetic oC:Ljava/lang/String;

.field final synthetic oD:I

.field final synthetic oE:[Ljava/lang/String;

.field final synthetic oF:[B

.field final synthetic oG:Lcom/google/android/gms/internal/k;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/k;Lcom/google/android/gms/common/api/d;Ljava/lang/String;I[Ljava/lang/String;[B)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/n;->oG:Lcom/google/android/gms/internal/k;

    iput-object p3, p0, Lcom/google/android/gms/internal/n;->oC:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/internal/n;->oD:I

    iput-object p5, p0, Lcom/google/android/gms/internal/n;->oE:[Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/n;->oF:[B

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/q;-><init>(Lcom/google/android/gms/common/api/d;)V

    return-void
.end method


# virtual methods
.method public synthetic rW(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/b;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/n;->sq(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic rp(Lcom/google/android/gms/common/api/o;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/p;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/n;->sr(Lcom/google/android/gms/internal/p;)V

    return-void
.end method

.method public sq(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
    .locals 0

    return-object p1
.end method

.method protected sr(Lcom/google/android/gms/internal/p;)V
    .locals 6

    new-instance v1, Lcom/google/android/gms/internal/x;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/x;-><init>(Lcom/google/android/gms/internal/n;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/p;->hY()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzzb;

    iget-object v2, p0, Lcom/google/android/gms/internal/n;->oC:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/gms/internal/n;->oD:I

    iget-object v4, p0, Lcom/google/android/gms/internal/n;->oE:[Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/n;->oF:[B

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/zzzb;->zza(Lcom/google/android/gms/internal/zzza;Ljava/lang/String;I[Ljava/lang/String;[B)V

    return-void
.end method
