.class Lcom/google/android/gms/location/internal/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/location/internal/r;


# instance fields
.field final synthetic CN:Lcom/google/android/gms/location/internal/i;


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/internal/i;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/internal/q;->CN:Lcom/google/android/gms/location/internal/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public GE()Lcom/google/android/gms/location/internal/zzi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/internal/q;->CN:Lcom/google/android/gms/location/internal/i;

    invoke-virtual {v0}, Lcom/google/android/gms/location/internal/i;->kM()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/internal/zzi;

    return-object v0
.end method

.method public GF()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/internal/q;->CN:Lcom/google/android/gms/location/internal/i;

    invoke-static {v0}, Lcom/google/android/gms/location/internal/i;->Ge(Lcom/google/android/gms/location/internal/i;)V

    return-void
.end method

.method public synthetic GG()Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/location/internal/q;->GE()Lcom/google/android/gms/location/internal/zzi;

    move-result-object v0

    return-object v0
.end method
