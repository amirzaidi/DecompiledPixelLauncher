.class Lcom/google/android/gms/internal/bO;
.super Lcom/google/android/gms/internal/bl;


# instance fields
.field final synthetic vZ:Lcom/google/android/gms/internal/bB;

.field final synthetic wa:Lcom/google/android/gms/signin/internal/SignInResponse;

.field final synthetic wb:Lcom/google/android/gms/internal/cg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cg;Lcom/google/android/gms/internal/ci;Lcom/google/android/gms/internal/bB;Lcom/google/android/gms/signin/internal/SignInResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bO;->wb:Lcom/google/android/gms/internal/cg;

    iput-object p3, p0, Lcom/google/android/gms/internal/bO;->vZ:Lcom/google/android/gms/internal/bB;

    iput-object p4, p0, Lcom/google/android/gms/internal/bO;->wa:Lcom/google/android/gms/signin/internal/SignInResponse;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/bl;-><init>(Lcom/google/android/gms/internal/ci;)V

    return-void
.end method


# virtual methods
.method public yq()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bO;->vZ:Lcom/google/android/gms/internal/bB;

    iget-object v1, p0, Lcom/google/android/gms/internal/bO;->wa:Lcom/google/android/gms/signin/internal/SignInResponse;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/bB;->Aj(Lcom/google/android/gms/internal/bB;Lcom/google/android/gms/signin/internal/SignInResponse;)V

    return-void
.end method
