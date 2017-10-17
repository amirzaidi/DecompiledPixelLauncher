.class Lcom/google/android/gms/internal/q;
.super Lcom/google/android/gms/internal/j;


# instance fields
.field final synthetic pb:Lcom/google/android/gms/internal/s;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/s;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/q;->pb:Lcom/google/android/gms/internal/s;

    invoke-direct {p0}, Lcom/google/android/gms/internal/j;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/phenotype/Configurations;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/q;->pb:Lcom/google/android/gms/internal/s;

    new-instance v1, Lcom/google/android/gms/internal/t;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/t;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/phenotype/Configurations;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/s;->rV(Lcom/google/android/gms/common/api/m;)V

    return-void
.end method
