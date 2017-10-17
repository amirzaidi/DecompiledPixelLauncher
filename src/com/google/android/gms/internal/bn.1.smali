.class Lcom/google/android/gms/internal/bn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic um:Lcom/google/android/gms/common/api/m;

.field final synthetic un:Lcom/google/android/gms/internal/d;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/d;Lcom/google/android/gms/common/api/m;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bn;->un:Lcom/google/android/gms/internal/d;

    iput-object p2, p0, Lcom/google/android/gms/internal/bn;->um:Lcom/google/android/gms/common/api/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/f;->oc:Ljava/lang/ThreadLocal;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bn;->un:Lcom/google/android/gms/internal/d;

    invoke-static {v0}, Lcom/google/android/gms/internal/d;->rz(Lcom/google/android/gms/internal/d;)Lcom/google/android/gms/common/api/u;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/bn;->um:Lcom/google/android/gms/common/api/m;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/u;->hi(Lcom/google/android/gms/common/api/m;)Lcom/google/android/gms/common/api/f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/bn;->un:Lcom/google/android/gms/internal/d;

    invoke-static {v1}, Lcom/google/android/gms/internal/d;->rF(Lcom/google/android/gms/internal/d;)Lcom/google/android/gms/internal/cv;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/bn;->un:Lcom/google/android/gms/internal/d;

    invoke-static {v2}, Lcom/google/android/gms/internal/d;->rF(Lcom/google/android/gms/internal/d;)Lcom/google/android/gms/internal/cv;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/cv;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/cv;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/google/android/gms/internal/f;->oc:Ljava/lang/ThreadLocal;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bn;->un:Lcom/google/android/gms/internal/d;

    iget-object v1, p0, Lcom/google/android/gms/internal/bn;->um:Lcom/google/android/gms/common/api/m;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/d;->rA(Lcom/google/android/gms/internal/d;Lcom/google/android/gms/common/api/m;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bn;->un:Lcom/google/android/gms/internal/d;

    invoke-static {v0}, Lcom/google/android/gms/internal/d;->rK(Lcom/google/android/gms/internal/d;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/a;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/bn;->un:Lcom/google/android/gms/internal/d;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/a;->gm(Lcom/google/android/gms/internal/d;)V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/bn;->un:Lcom/google/android/gms/internal/d;

    invoke-static {v1}, Lcom/google/android/gms/internal/d;->rF(Lcom/google/android/gms/internal/d;)Lcom/google/android/gms/internal/cv;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/bn;->un:Lcom/google/android/gms/internal/d;

    invoke-static {v2}, Lcom/google/android/gms/internal/d;->rF(Lcom/google/android/gms/internal/d;)Lcom/google/android/gms/internal/cv;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/cv;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/cv;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object v0, Lcom/google/android/gms/internal/f;->oc:Ljava/lang/ThreadLocal;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bn;->un:Lcom/google/android/gms/internal/d;

    iget-object v1, p0, Lcom/google/android/gms/internal/bn;->um:Lcom/google/android/gms/common/api/m;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/d;->rA(Lcom/google/android/gms/internal/d;Lcom/google/android/gms/common/api/m;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bn;->un:Lcom/google/android/gms/internal/d;

    invoke-static {v0}, Lcom/google/android/gms/internal/d;->rK(Lcom/google/android/gms/internal/d;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/bn;->un:Lcom/google/android/gms/internal/d;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/a;->gm(Lcom/google/android/gms/internal/d;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    sget-object v0, Lcom/google/android/gms/internal/f;->oc:Ljava/lang/ThreadLocal;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bn;->un:Lcom/google/android/gms/internal/d;

    iget-object v2, p0, Lcom/google/android/gms/internal/bn;->um:Lcom/google/android/gms/common/api/m;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/d;->rA(Lcom/google/android/gms/internal/d;Lcom/google/android/gms/common/api/m;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bn;->un:Lcom/google/android/gms/internal/d;

    invoke-static {v0}, Lcom/google/android/gms/internal/d;->rK(Lcom/google/android/gms/internal/d;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/a;

    if-nez v0, :cond_2

    :goto_1
    throw v1

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/bn;->un:Lcom/google/android/gms/internal/d;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/a;->gm(Lcom/google/android/gms/internal/d;)V

    goto :goto_1
.end method
