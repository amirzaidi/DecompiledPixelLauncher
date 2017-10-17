.class public Lcom/google/android/gms/internal/bF;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/g;
.implements Lcom/google/android/gms/common/api/f;


# instance fields
.field public final uL:Lcom/google/android/gms/common/api/h;

.field private final uM:I

.field private uN:Lcom/google/android/gms/internal/cf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/h;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/bF;->uL:Lcom/google/android/gms/common/api/h;

    iput p2, p0, Lcom/google/android/gms/internal/bF;->uM:I

    return-void
.end method

.method private zT()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bF;->uN:Lcom/google/android/gms/internal/cf;

    const-string/jumbo v1, "Callbacks must be attached to a GoogleApiClient instance before connecting the client."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/l;->ho(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public dQ(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/bF;->zT()V

    iget-object v0, p0, Lcom/google/android/gms/internal/bF;->uN:Lcom/google/android/gms/internal/cf;

    iget-object v1, p0, Lcom/google/android/gms/internal/bF;->uL:Lcom/google/android/gms/common/api/h;

    iget v2, p0, Lcom/google/android/gms/internal/bF;->uM:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/internal/cf;->Ca(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/h;I)V

    return-void
.end method

.method public dR(I)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/bF;->zT()V

    iget-object v0, p0, Lcom/google/android/gms/internal/bF;->uN:Lcom/google/android/gms/internal/cf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cf;->BY(I)V

    return-void
.end method

.method public dS(Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/bF;->zT()V

    iget-object v0, p0, Lcom/google/android/gms/internal/bF;->uN:Lcom/google/android/gms/internal/cf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cf;->BT(Landroid/os/Bundle;)V

    return-void
.end method

.method public zS(Lcom/google/android/gms/internal/cf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bF;->uN:Lcom/google/android/gms/internal/cf;

    return-void
.end method
