.class Lcom/google/android/gms/internal/cg;
.super Lcom/google/android/gms/signin/internal/zzb;


# instance fields
.field private final wV:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bB;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/signin/internal/zzb;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/cg;->wV:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public zzb(Lcom/google/android/gms/signin/internal/SignInResponse;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->wV:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bB;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/bB;->Ai(Lcom/google/android/gms/internal/bB;)Lcom/google/android/gms/internal/bZ;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/bO;

    invoke-direct {v2, p0, v0, v0, p1}, Lcom/google/android/gms/internal/bO;-><init>(Lcom/google/android/gms/internal/cg;Lcom/google/android/gms/internal/ci;Lcom/google/android/gms/internal/bB;Lcom/google/android/gms/signin/internal/SignInResponse;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/bZ;->BQ(Lcom/google/android/gms/internal/bl;)V

    return-void

    :cond_0
    return-void
.end method
