.class Lcom/google/android/gms/internal/ce;
.super Lcom/google/android/gms/internal/bs;


# instance fields
.field private wU:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cu;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/bs;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ce;->wU:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public zp()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ce;->wU:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cu;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/cu;->Cn(Lcom/google/android/gms/internal/cu;)V

    return-void

    :cond_0
    return-void
.end method
