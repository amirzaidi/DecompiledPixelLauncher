.class final Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;
.super Landroid/os/ResultReceiver;


# instance fields
.field final synthetic jC:Lcom/google/android/gms/common/images/h;

.field private final jD:Ljava/util/ArrayList;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method static synthetic mH(Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->jD:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public onReceiveResult(ILandroid/os/Bundle;)V
    .locals 5

    const-string/jumbo v0, "com.google.android.gms.extra.fileDescriptor"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    iget-object v1, p0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->jC:Lcom/google/android/gms/common/images/h;

    invoke-static {v1}, Lcom/google/android/gms/common/images/h;->mR(Lcom/google/android/gms/common/images/h;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/common/images/b;

    iget-object v3, p0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->jC:Lcom/google/android/gms/common/images/h;

    iget-object v4, p0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->mUri:Landroid/net/Uri;

    invoke-direct {v2, v3, v4, v0}, Lcom/google/android/gms/common/images/b;-><init>(Lcom/google/android/gms/common/images/h;Landroid/net/Uri;Landroid/os/ParcelFileDescriptor;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
