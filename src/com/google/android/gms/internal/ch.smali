.class Lcom/google/android/gms/internal/ch;
.super Lcom/google/android/gms/internal/br;


# instance fields
.field final synthetic wL:Lcom/google/android/gms/internal/bk;

.field final synthetic wM:Lcom/google/android/gms/common/internal/c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bk;Lcom/google/android/gms/internal/co;Lcom/google/android/gms/common/internal/c;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ch;->wL:Lcom/google/android/gms/internal/bk;

    iput-object p3, p0, Lcom/google/android/gms/internal/ch;->wM:Lcom/google/android/gms/common/internal/c;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/br;-><init>(Lcom/google/android/gms/internal/co;)V

    return-void
.end method


# virtual methods
.method public yr()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ch;->wM:Lcom/google/android/gms/common/internal/c;

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/internal/c;->gB(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
