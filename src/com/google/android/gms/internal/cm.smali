.class Lcom/google/android/gms/internal/cm;
.super Lcom/google/android/gms/signin/internal/zzb;


# instance fields
.field private final wP:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bH;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/signin/internal/zzb;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/cm;->wP:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public zzb(Lcom/google/android/gms/signin/internal/SignInResponse;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/cm;->wP:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bH;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/bH;->Aj(Lcom/google/android/gms/internal/bH;)Lcom/google/android/gms/internal/cf;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/bU;

    invoke-direct {v2, p0, v0, v0, p1}, Lcom/google/android/gms/internal/bU;-><init>(Lcom/google/android/gms/internal/cm;Lcom/google/android/gms/internal/co;Lcom/google/android/gms/internal/bH;Lcom/google/android/gms/signin/internal/SignInResponse;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/cf;->BR(Lcom/google/android/gms/internal/br;)V

    return-void

    :cond_0
    return-void
.end method
