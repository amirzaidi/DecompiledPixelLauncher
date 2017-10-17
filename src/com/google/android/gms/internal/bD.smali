.class Lcom/google/android/gms/internal/bD;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic vq:Lcom/google/android/gms/internal/bB;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bB;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bD;->vq:Lcom/google/android/gms/internal/bB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bD;->vq:Lcom/google/android/gms/internal/bB;

    invoke-static {v0}, Lcom/google/android/gms/internal/bB;->zZ(Lcom/google/android/gms/internal/bB;)Lcom/google/android/gms/common/f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/bD;->vq:Lcom/google/android/gms/internal/bB;

    invoke-static {v1}, Lcom/google/android/gms/internal/bB;->Au(Lcom/google/android/gms/internal/bB;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/f;->qG(Landroid/content/Context;)V

    return-void
.end method
