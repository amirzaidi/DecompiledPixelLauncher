.class Lcom/google/android/gms/internal/bJ;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic vk:Lcom/google/android/gms/internal/bH;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bH;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bJ;->vk:Lcom/google/android/gms/internal/bH;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bJ;->vk:Lcom/google/android/gms/internal/bH;

    invoke-static {v0}, Lcom/google/android/gms/internal/bH;->Aa(Lcom/google/android/gms/internal/bH;)Lcom/google/android/gms/common/f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/bJ;->vk:Lcom/google/android/gms/internal/bH;

    invoke-static {v1}, Lcom/google/android/gms/internal/bH;->Av(Lcom/google/android/gms/internal/bH;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/f;->nU(Landroid/content/Context;)V

    return-void
.end method
