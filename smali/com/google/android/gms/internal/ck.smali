.class Lcom/google/android/gms/internal/ck;
.super Lcom/google/android/gms/internal/by;


# instance fields
.field private wO:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cA;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/by;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ck;->wO:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public zq()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ck;->wO:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cA;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/cA;->Co(Lcom/google/android/gms/internal/cA;)V

    return-void

    :cond_0
    return-void
.end method
