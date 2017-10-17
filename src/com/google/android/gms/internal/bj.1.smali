.class Lcom/google/android/gms/internal/bj;
.super Lcom/google/android/gms/internal/br;


# instance fields
.field final synthetic tS:Lcom/google/android/gms/internal/bk;

.field final synthetic tT:Lcom/google/android/gms/common/ConnectionResult;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bk;Lcom/google/android/gms/internal/co;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bj;->tS:Lcom/google/android/gms/internal/bk;

    iput-object p3, p0, Lcom/google/android/gms/internal/bj;->tT:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/br;-><init>(Lcom/google/android/gms/internal/co;)V

    return-void
.end method


# virtual methods
.method public yr()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bj;->tS:Lcom/google/android/gms/internal/bk;

    iget-object v0, v0, Lcom/google/android/gms/internal/bk;->tU:Lcom/google/android/gms/internal/bH;

    iget-object v1, p0, Lcom/google/android/gms/internal/bj;->tT:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/bH;->Af(Lcom/google/android/gms/internal/bH;Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
