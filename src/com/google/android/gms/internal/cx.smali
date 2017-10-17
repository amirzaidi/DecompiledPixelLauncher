.class Lcom/google/android/gms/internal/cx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/cr;


# instance fields
.field final synthetic xL:I

.field final synthetic xM:Lcom/google/android/gms/internal/bw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bw;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/cx;->xM:Lcom/google/android/gms/internal/bw;

    iput p2, p0, Lcom/google/android/gms/internal/cx;->xL:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Ch()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/cx;->xM:Lcom/google/android/gms/internal/bw;

    invoke-static {v0}, Lcom/google/android/gms/internal/bw;->zO(Lcom/google/android/gms/internal/bw;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cx;->xM:Lcom/google/android/gms/internal/bw;

    iget v1, p0, Lcom/google/android/gms/internal/cx;->xL:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/bw;->zB(IZ)V

    goto :goto_0
.end method
