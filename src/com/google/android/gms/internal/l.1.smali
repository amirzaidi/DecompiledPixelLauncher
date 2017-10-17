.class Lcom/google/android/gms/internal/l;
.super Lcom/google/android/gms/internal/q;


# instance fields
.field final synthetic oA:Lcom/google/android/gms/internal/k;

.field final synthetic ov:Ljava/lang/String;

.field final synthetic ow:I

.field final synthetic ox:[Ljava/lang/String;

.field final synthetic oy:[B

.field final synthetic oz:[I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/k;Lcom/google/android/gms/common/api/d;Ljava/lang/String;I[Ljava/lang/String;[I[B)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/l;->oA:Lcom/google/android/gms/internal/k;

    iput-object p3, p0, Lcom/google/android/gms/internal/l;->ov:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/internal/l;->ow:I

    iput-object p5, p0, Lcom/google/android/gms/internal/l;->ox:[Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/l;->oz:[I

    iput-object p7, p0, Lcom/google/android/gms/internal/l;->oy:[B

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/q;-><init>(Lcom/google/android/gms/common/api/d;)V

    return-void
.end method


# virtual methods
.method public synthetic rW(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/b;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/l;->so(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic rp(Lcom/google/android/gms/common/api/o;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/p;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/l;->sp(Lcom/google/android/gms/internal/p;)V

    return-void
.end method

.method public so(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
    .locals 0

    return-object p1
.end method

.method protected sp(Lcom/google/android/gms/internal/p;)V
    .locals 7

    new-instance v1, Lcom/google/android/gms/internal/r;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/r;-><init>(Lcom/google/android/gms/internal/l;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/p;->hY()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzzb;

    iget-object v2, p0, Lcom/google/android/gms/internal/l;->ov:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/gms/internal/l;->ow:I

    iget-object v4, p0, Lcom/google/android/gms/internal/l;->ox:[Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/l;->oz:[I

    iget-object v6, p0, Lcom/google/android/gms/internal/l;->oy:[B

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/zzzb;->zza(Lcom/google/android/gms/internal/zzza;Ljava/lang/String;I[Ljava/lang/String;[I[B)V

    return-void
.end method
