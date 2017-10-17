.class Lcom/google/android/gms/internal/aL;
.super Lcom/google/android/gms/internal/i;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/i;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected synthetic sl(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/aL;->vf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected vf(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/google/android/gms/internal/i;->sk()Lcom/google/android/gms/internal/aZ;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/aL;->oo:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/aL;->os:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/aZ;->xr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
