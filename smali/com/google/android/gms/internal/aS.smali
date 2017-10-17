.class Lcom/google/android/gms/internal/aS;
.super Lcom/google/android/gms/internal/i;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/i;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected synthetic sl(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/aS;->vJ(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected vJ(Ljava/lang/String;)Ljava/lang/Long;
    .locals 3

    invoke-static {}, Lcom/google/android/gms/internal/i;->sk()Lcom/google/android/gms/internal/aZ;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/aS;->oo:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/aS;->os:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/aZ;->xp(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
