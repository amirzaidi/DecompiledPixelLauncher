.class public Lcom/google/android/gms/internal/bz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/d;
.implements Lcom/google/android/gms/common/api/c;


# instance fields
.field public final uR:Lcom/google/android/gms/common/api/e;

.field private final uS:I

.field private uT:Lcom/google/android/gms/internal/bZ;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/e;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/bz;->uR:Lcom/google/android/gms/common/api/e;

    iput p2, p0, Lcom/google/android/gms/internal/bz;->uS:I

    return-void
.end method

.method private zS()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bz;->uT:Lcom/google/android/gms/internal/bZ;

    const-string/jumbo v1, "Callbacks must be attached to a GoogleApiClient instance before connecting the client."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/l;->kc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public gw(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/bz;->zS()V

    iget-object v0, p0, Lcom/google/android/gms/internal/bz;->uT:Lcom/google/android/gms/internal/bZ;

    iget-object v1, p0, Lcom/google/android/gms/internal/bz;->uR:Lcom/google/android/gms/common/api/e;

    iget v2, p0, Lcom/google/android/gms/internal/bz;->uS:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/internal/bZ;->BZ(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/e;I)V

    return-void
.end method

.method public gx(I)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/bz;->zS()V

    iget-object v0, p0, Lcom/google/android/gms/internal/bz;->uT:Lcom/google/android/gms/internal/bZ;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/bZ;->BX(I)V

    return-void
.end method

.method public gy(Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/bz;->zS()V

    iget-object v0, p0, Lcom/google/android/gms/internal/bz;->uT:Lcom/google/android/gms/internal/bZ;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/bZ;->BS(Landroid/os/Bundle;)V

    return-void
.end method

.method public zR(Lcom/google/android/gms/internal/bZ;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bz;->uT:Lcom/google/android/gms/internal/bZ;

    return-void
.end method
