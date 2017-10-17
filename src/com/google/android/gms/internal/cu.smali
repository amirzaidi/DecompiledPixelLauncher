.class final Lcom/google/android/gms/internal/cu;
.super Ljava/lang/ref/PhantomReference;


# instance fields
.field private final wV:I

.field final synthetic wW:Lcom/google/android/gms/internal/bM;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/bM;Lcom/google/android/gms/common/api/C;ILjava/lang/ref/ReferenceQueue;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/cu;->wW:Lcom/google/android/gms/internal/bM;

    invoke-direct {p0, p2, p4}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput p3, p0, Lcom/google/android/gms/internal/cu;->wV:I

    return-void
.end method

.method static synthetic Cg(Lcom/google/android/gms/internal/cu;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/cu;->wV:I

    return v0
.end method


# virtual methods
.method public Ch()V
    .locals 4

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->wW:Lcom/google/android/gms/internal/bM;

    invoke-static {v0}, Lcom/google/android/gms/internal/bM;->AT(Lcom/google/android/gms/internal/bM;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/cu;->wW:Lcom/google/android/gms/internal/bM;

    invoke-static {v1}, Lcom/google/android/gms/internal/bM;->AT(Lcom/google/android/gms/internal/bM;)Landroid/os/Handler;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/cu;->wV:I

    invoke-virtual {v1, v3, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
