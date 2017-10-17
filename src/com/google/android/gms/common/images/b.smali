.class final Lcom/google/android/gms/common/images/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final jv:Landroid/os/ParcelFileDescriptor;

.field final synthetic jw:Lcom/google/android/gms/common/images/h;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/images/h;Landroid/net/Uri;Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/images/b;->jw:Lcom/google/android/gms/common/images/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/common/images/b;->mUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/google/android/gms/common/images/b;->jv:Landroid/os/ParcelFileDescriptor;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v3, 0x0

    const/4 v1, 0x1

    const-string/jumbo v0, "LoadBitmapFromDiskRunnable can\'t be executed in the main thread"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->hz(Ljava/lang/String;)V

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/common/images/b;->jv:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_0

    :goto_0
    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v5, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iget-object v0, p0, Lcom/google/android/gms/common/images/b;->jw:Lcom/google/android/gms/common/images/h;

    invoke-static {v0}, Lcom/google/android/gms/common/images/h;->mO(Lcom/google/android/gms/common/images/h;)Landroid/os/Handler;

    move-result-object v6

    new-instance v0, Lcom/google/android/gms/common/images/a;

    iget-object v1, p0, Lcom/google/android/gms/common/images/b;->jw:Lcom/google/android/gms/common/images/h;

    iget-object v2, p0, Lcom/google/android/gms/common/images/b;->mUri:Landroid/net/Uri;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/images/a;-><init>(Lcom/google/android/gms/common/images/h;Landroid/net/Uri;Landroid/graphics/Bitmap;ZLjava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :try_start_0
    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/images/b;->jv:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    :goto_2
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/common/images/b;->jv:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "ImageManager"

    const-string/jumbo v5, "closed failed"

    invoke-static {v2, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v2, p0, Lcom/google/android/gms/common/images/b;->mUri:Landroid/net/Uri;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x22

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v5, "OOM while loading bitmap for uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "ImageManager"

    invoke-static {v4, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v4, v1

    goto :goto_2

    :catch_2
    move-exception v0

    iget-object v0, p0, Lcom/google/android/gms/common/images/b;->mUri:Landroid/net/Uri;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "Latch interrupted while posting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ImageManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
