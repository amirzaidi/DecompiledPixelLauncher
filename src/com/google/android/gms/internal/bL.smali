.class Lcom/google/android/gms/internal/bL;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;
.implements Lcom/google/android/gms/internal/g;


# instance fields
.field private final vo:Ljava/lang/ref/WeakReference;

.field private final vp:Ljava/lang/ref/WeakReference;

.field private final vq:Ljava/lang/ref/WeakReference;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/b;Lcom/google/android/gms/common/api/k;Landroid/os/IBinder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/bL;->vq:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/bL;->vo:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/bL;->vp:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/b;Lcom/google/android/gms/common/api/k;Landroid/os/IBinder;Lcom/google/android/gms/internal/ct;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/bL;-><init>(Lcom/google/android/gms/internal/b;Lcom/google/android/gms/common/api/k;Landroid/os/IBinder;)V

    return-void
.end method

.method private AO()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bL;->vo:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/b;

    iget-object v1, p0, Lcom/google/android/gms/internal/bL;->vq:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/k;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bL;->vp:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    iget-object v1, p0, Lcom/google/android/gms/internal/bL;->vp:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_2

    :goto_1
    return-void

    :cond_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/b;->rQ()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/k;->ej(I)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto :goto_1
.end method


# virtual methods
.method public binderDied()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/bL;->AO()V

    return-void
.end method

.method public rZ(Lcom/google/android/gms/internal/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/bL;->AO()V

    return-void
.end method
