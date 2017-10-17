.class Lcom/google/android/gms/internal/bU;
.super Lcom/google/android/gms/internal/br;


# instance fields
.field final synthetic vT:Lcom/google/android/gms/internal/bH;

.field final synthetic vU:Lcom/google/android/gms/signin/internal/SignInResponse;

.field final synthetic vV:Lcom/google/android/gms/internal/cm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cm;Lcom/google/android/gms/internal/co;Lcom/google/android/gms/internal/bH;Lcom/google/android/gms/signin/internal/SignInResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bU;->vV:Lcom/google/android/gms/internal/cm;

    iput-object p3, p0, Lcom/google/android/gms/internal/bU;->vT:Lcom/google/android/gms/internal/bH;

    iput-object p4, p0, Lcom/google/android/gms/internal/bU;->vU:Lcom/google/android/gms/signin/internal/SignInResponse;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/br;-><init>(Lcom/google/android/gms/internal/co;)V

    return-void
.end method


# virtual methods
.method public yr()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bU;->vT:Lcom/google/android/gms/internal/bH;

    iget-object v1, p0, Lcom/google/android/gms/internal/bU;->vU:Lcom/google/android/gms/signin/internal/SignInResponse;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/bH;->Ak(Lcom/google/android/gms/internal/bH;Lcom/google/android/gms/signin/internal/SignInResponse;)V

    return-void
.end method
