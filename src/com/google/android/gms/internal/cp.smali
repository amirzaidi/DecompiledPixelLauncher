.class final Lcom/google/android/gms/internal/cp;
.super Ljava/lang/ref/PhantomReference;


# instance fields
.field private final xd:I

.field final synthetic xe:Lcom/google/android/gms/internal/bG;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/bG;Lcom/google/android/gms/common/api/C;ILjava/lang/ref/ReferenceQueue;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/cp;->xe:Lcom/google/android/gms/internal/bG;

    invoke-direct {p0, p2, p4}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput p3, p0, Lcom/google/android/gms/internal/cp;->xd:I

    return-void
.end method

.method static synthetic Cf(Lcom/google/android/gms/internal/cp;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/cp;->xd:I

    return v0
.end method


# virtual methods
.method public Cg()V
    .locals 4

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/google/android/gms/internal/cp;->xe:Lcom/google/android/gms/internal/bG;

    invoke-static {v0}, Lcom/google/android/gms/internal/bG;->AS(Lcom/google/android/gms/internal/bG;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/cp;->xe:Lcom/google/android/gms/internal/bG;

    invoke-static {v1}, Lcom/google/android/gms/internal/bG;->AS(Lcom/google/android/gms/internal/bG;)Landroid/os/Handler;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/cp;->xd:I

    invoke-virtual {v1, v3, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
