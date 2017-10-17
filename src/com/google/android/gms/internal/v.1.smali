.class Lcom/google/android/gms/internal/v;
.super Lcom/google/android/gms/internal/j;


# instance fields
.field final synthetic oT:Lcom/google/android/gms/internal/y;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/y;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/v;->oT:Lcom/google/android/gms/internal/y;

    invoke-direct {p0}, Lcom/google/android/gms/internal/j;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/phenotype/Configurations;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->oT:Lcom/google/android/gms/internal/y;

    new-instance v1, Lcom/google/android/gms/internal/z;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/z;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/phenotype/Configurations;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/y;->rT(Lcom/google/android/gms/common/api/b;)V

    return-void
.end method
