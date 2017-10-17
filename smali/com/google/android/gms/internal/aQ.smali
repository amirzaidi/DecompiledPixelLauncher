.class Lcom/google/android/gms/internal/aQ;
.super Lcom/google/android/gms/internal/i;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/i;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected synthetic sl(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/aQ;->vz(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected vz(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3

    invoke-static {}, Lcom/google/android/gms/internal/i;->sk()Lcom/google/android/gms/internal/aZ;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/aQ;->oo:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/aQ;->os:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/aZ;->xq(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
