.class Lcom/google/android/gms/internal/aa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic rN:Lcom/google/android/gms/common/api/a;

.field final synthetic rO:Lcom/google/android/gms/internal/as;

.field final synthetic rP:Lcom/google/android/gms/internal/at;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/at;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/internal/as;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/aa;->rP:Lcom/google/android/gms/internal/at;

    iput-object p2, p0, Lcom/google/android/gms/internal/aa;->rN:Lcom/google/android/gms/common/api/a;

    iput-object p3, p0, Lcom/google/android/gms/internal/aa;->rO:Lcom/google/android/gms/internal/as;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/aa;->rN:Lcom/google/android/gms/common/api/a;

    iget-object v1, p0, Lcom/google/android/gms/internal/aa;->rO:Lcom/google/android/gms/internal/as;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/a;->gj(Lcom/google/android/gms/internal/b;)Lcom/google/android/gms/internal/b;

    return-void
.end method
