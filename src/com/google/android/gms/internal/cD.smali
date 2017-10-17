.class Lcom/google/android/gms/internal/cD;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/cx;


# instance fields
.field final synthetic xF:I

.field final synthetic xG:Lcom/google/android/gms/internal/bC;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bC;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/cD;->xG:Lcom/google/android/gms/internal/bC;

    iput p2, p0, Lcom/google/android/gms/internal/cD;->xF:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Ci()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/cD;->xG:Lcom/google/android/gms/internal/bC;

    invoke-static {v0}, Lcom/google/android/gms/internal/bC;->zP(Lcom/google/android/gms/internal/bC;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cD;->xG:Lcom/google/android/gms/internal/bC;

    iget v1, p0, Lcom/google/android/gms/internal/cD;->xF:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/bC;->zC(IZ)V

    goto :goto_0
.end method
