.class Lcom/google/android/gms/internal/cb;
.super Lcom/google/android/gms/internal/bl;


# instance fields
.field final synthetic wR:Lcom/google/android/gms/internal/be;

.field final synthetic wS:Lcom/google/android/gms/common/internal/c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/be;Lcom/google/android/gms/internal/ci;Lcom/google/android/gms/common/internal/c;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/cb;->wR:Lcom/google/android/gms/internal/be;

    iput-object p3, p0, Lcom/google/android/gms/internal/cb;->wS:Lcom/google/android/gms/common/internal/c;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/bl;-><init>(Lcom/google/android/gms/internal/ci;)V

    return-void
.end method


# virtual methods
.method public yq()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/cb;->wS:Lcom/google/android/gms/common/internal/c;

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/internal/c;->jp(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
