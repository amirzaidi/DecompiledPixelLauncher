.class Lcom/google/android/gms/internal/aU;
.super Lcom/google/android/gms/internal/i;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/i;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected synthetic sl(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/aU;->vK(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected vK(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3

    invoke-static {}, Lcom/google/android/gms/internal/i;->sk()Lcom/google/android/gms/internal/aZ;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/aU;->oo:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/aU;->os:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/aZ;->xs(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
