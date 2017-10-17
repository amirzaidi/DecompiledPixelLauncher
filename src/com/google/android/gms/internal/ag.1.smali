.class Lcom/google/android/gms/internal/ag;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic rH:Lcom/google/android/gms/common/api/d;

.field final synthetic rI:Lcom/google/android/gms/internal/ay;

.field final synthetic rJ:Lcom/google/android/gms/internal/az;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/az;Lcom/google/android/gms/common/api/d;Lcom/google/android/gms/internal/ay;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ag;->rJ:Lcom/google/android/gms/internal/az;

    iput-object p2, p0, Lcom/google/android/gms/internal/ag;->rH:Lcom/google/android/gms/common/api/d;

    iput-object p3, p0, Lcom/google/android/gms/internal/ag;->rI:Lcom/google/android/gms/internal/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ag;->rH:Lcom/google/android/gms/common/api/d;

    iget-object v1, p0, Lcom/google/android/gms/internal/ag;->rI:Lcom/google/android/gms/internal/ay;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/d;->dy(Lcom/google/android/gms/internal/b;)Lcom/google/android/gms/internal/b;

    return-void
.end method
