.class final Lcom/google/android/gms/common/images/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private js:Z

.field final synthetic jt:Lcom/google/android/gms/common/images/h;

.field private final ju:Ljava/util/concurrent/CountDownLatch;

.field private final mBitmap:Landroid/graphics/Bitmap;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/images/h;Landroid/net/Uri;Landroid/graphics/Bitmap;ZLjava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/images/a;->jt:Lcom/google/android/gms/common/images/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/common/images/a;->mUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/google/android/gms/common/images/a;->mBitmap:Landroid/graphics/Bitmap;

    iput-boolean p4, p0, Lcom/google/android/gms/common/images/a;->js:Z

    iput-object p5, p0, Lcom/google/android/gms/common/images/a;->ju:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method private mw(Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;Z)V
    .locals 10

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->mH(Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v2

    :goto_0
    if-lt v1, v4, :cond_0

    return-void

    :cond_0
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/images/i;

    if-nez p2, :cond_1

    iget-object v5, p0, Lcom/google/android/gms/common/images/a;->jt:Lcom/google/android/gms/common/images/h;

    invoke-static {v5}, Lcom/google/android/gms/common/images/h;->mQ(Lcom/google/android/gms/common/images/h;)Ljava/util/Map;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/common/images/a;->mUri:Landroid/net/Uri;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/gms/common/images/a;->jt:Lcom/google/android/gms/common/images/h;

    invoke-static {v5}, Lcom/google/android/gms/common/images/h;->mL(Lcom/google/android/gms/common/images/h;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/common/images/a;->jt:Lcom/google/android/gms/common/images/h;

    invoke-static {v6}, Lcom/google/android/gms/common/images/h;->mN(Lcom/google/android/gms/common/images/h;)Lcom/google/android/gms/internal/cE;

    move-result-object v6

    invoke-virtual {v0, v5, v6, v2}, Lcom/google/android/gms/common/images/i;->mT(Landroid/content/Context;Lcom/google/android/gms/internal/cE;Z)V

    :goto_1
    instance-of v5, v0, Lcom/google/android/gms/common/images/g;

    if-eqz v5, :cond_2

    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/google/android/gms/common/images/a;->jt:Lcom/google/android/gms/common/images/h;

    invoke-static {v5}, Lcom/google/android/gms/common/images/h;->mL(Lcom/google/android/gms/common/images/h;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/common/images/a;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v5, v6, v2}, Lcom/google/android/gms/common/images/i;->mV(Landroid/content/Context;Landroid/graphics/Bitmap;Z)V

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/google/android/gms/common/images/a;->jt:Lcom/google/android/gms/common/images/h;

    invoke-static {v5}, Lcom/google/android/gms/common/images/h;->mK(Lcom/google/android/gms/common/images/h;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    const-string/jumbo v1, "OnBitmapLoadedRunnable must be executed in the main thread"

    invoke-static {v1}, Lcom/google/android/gms/common/internal/m;->hy(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/common/images/a;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/common/images/a;->jt:Lcom/google/android/gms/common/images/h;

    invoke-static {v2}, Lcom/google/android/gms/common/images/h;->mM(Lcom/google/android/gms/common/images/h;)Lcom/google/android/gms/common/images/d;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/common/images/a;->jt:Lcom/google/android/gms/common/images/h;

    invoke-static {v0}, Lcom/google/android/gms/common/images/h;->mJ(Lcom/google/android/gms/common/images/h;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/common/images/a;->mUri:Landroid/net/Uri;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;

    if-nez v0, :cond_4

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/common/images/a;->ju:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    invoke-static {}, Lcom/google/android/gms/common/images/h;->mS()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/images/h;->mP()Ljava/util/HashSet;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/common/images/a;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Lcom/google/android/gms/common/images/a;->js:Z

    if-nez v2, :cond_3

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/images/a;->jt:Lcom/google/android/gms/common/images/h;

    invoke-static {v0}, Lcom/google/android/gms/common/images/h;->mM(Lcom/google/android/gms/common/images/h;)Lcom/google/android/gms/common/images/d;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/common/images/f;

    iget-object v3, p0, Lcom/google/android/gms/common/images/a;->mUri:Landroid/net/Uri;

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/images/f;-><init>(Landroid/net/Uri;)V

    iget-object v3, p0, Lcom/google/android/gms/common/images/a;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/common/images/d;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/common/images/a;->jt:Lcom/google/android/gms/common/images/h;

    invoke-static {v1}, Lcom/google/android/gms/common/images/h;->mM(Lcom/google/android/gms/common/images/h;)Lcom/google/android/gms/common/images/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/images/d;->agX()V

    invoke-static {}, Ljava/lang/System;->gc()V

    iput-boolean v0, p0, Lcom/google/android/gms/common/images/a;->js:Z

    iget-object v0, p0, Lcom/google/android/gms/common/images/a;->jt:Lcom/google/android/gms/common/images/h;

    invoke-static {v0}, Lcom/google/android/gms/common/images/h;->mO(Lcom/google/android/gms/common/images/h;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_4
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/common/images/a;->mw(Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;Z)V

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
