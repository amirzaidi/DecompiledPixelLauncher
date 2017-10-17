.class public Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# instance fields
.field private final mActivity:Lcom/android/launcher3/BaseActivity;

.field private final mAnimatePreviewIn:Z

.field mBitmapToRecycle:Landroid/graphics/Bitmap;

.field private final mCaller:Lcom/android/launcher3/widget/WidgetCell;

.field private final mInfo:Lcom/android/launcher3/model/WidgetItem;

.field final mKey:Lcom/android/launcher3/WidgetPreviewLoader$WidgetCacheKey;

.field private final mPreviewHeight:I

.field private final mPreviewWidth:I

.field mVersions:[J

.field final synthetic this$0:Lcom/android/launcher3/WidgetPreviewLoader;


# direct methods
.method constructor <init>(Lcom/android/launcher3/WidgetPreviewLoader;Lcom/android/launcher3/WidgetPreviewLoader$WidgetCacheKey;Lcom/android/launcher3/model/WidgetItem;IILcom/android/launcher3/widget/WidgetCell;Z)V
    .locals 1

    .prologue
    .line 535
    iput-object p1, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->this$0:Lcom/android/launcher3/WidgetPreviewLoader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 537
    iput-object p2, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mKey:Lcom/android/launcher3/WidgetPreviewLoader$WidgetCacheKey;

    .line 538
    iput-object p3, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mInfo:Lcom/android/launcher3/model/WidgetItem;

    .line 539
    iput p5, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mPreviewHeight:I

    .line 540
    iput p4, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mPreviewWidth:I

    .line 541
    iput-object p6, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mCaller:Lcom/android/launcher3/widget/WidgetCell;

    .line 542
    iput-boolean p7, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mAnimatePreviewIn:Z

    .line 543
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mCaller:Lcom/android/launcher3/widget/WidgetCell;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetCell;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mActivity:Lcom/android/launcher3/BaseActivity;

    .line 548
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 555
    invoke-virtual {p0}, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 556
    return-object v1

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->this$0:Lcom/android/launcher3/WidgetPreviewLoader;

    iget-object v2, v0, Lcom/android/launcher3/WidgetPreviewLoader;->mUnusedBitmaps:Ljava/util/Set;

    monitor-enter v2

    .line 560
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->this$0:Lcom/android/launcher3/WidgetPreviewLoader;

    iget-object v0, v0, Lcom/android/launcher3/WidgetPreviewLoader;->mUnusedBitmaps:Ljava/util/Set;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 561
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 562
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mPreviewWidth:I

    if-ne v4, v5, :cond_1

    .line 563
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mPreviewHeight:I

    if-ne v4, v5, :cond_1

    .line 565
    iget-object v3, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->this$0:Lcom/android/launcher3/WidgetPreviewLoader;

    iget-object v3, v3, Lcom/android/launcher3/WidgetPreviewLoader;->mUnusedBitmaps:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    .line 572
    if-nez v0, :cond_6

    .line 573
    iget v0, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mPreviewWidth:I

    iget v2, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mPreviewHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 576
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 577
    return-object v3

    .line 558
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 579
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->this$0:Lcom/android/launcher3/WidgetPreviewLoader;

    iget-object v2, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mKey:Lcom/android/launcher3/WidgetPreviewLoader$WidgetCacheKey;

    invoke-virtual {v0, v2, v3, p0}, Lcom/android/launcher3/WidgetPreviewLoader;->readFromDb(Lcom/android/launcher3/WidgetPreviewLoader$WidgetCacheKey;Landroid/graphics/Bitmap;Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 581
    invoke-virtual {p0}, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_4

    if-nez v0, :cond_4

    .line 585
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mInfo:Lcom/android/launcher3/model/WidgetItem;

    iget-object v0, v0, Lcom/android/launcher3/model/WidgetItem;->activityInfo:Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;

    if-eqz v0, :cond_5

    .line 586
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mInfo:Lcom/android/launcher3/model/WidgetItem;

    iget-object v0, v0, Lcom/android/launcher3/model/WidgetItem;->activityInfo:Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;->isPersistable()Z

    move-result v0

    .line 587
    :goto_2
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->this$0:Lcom/android/launcher3/WidgetPreviewLoader;

    iget-object v1, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mKey:Lcom/android/launcher3/WidgetPreviewLoader$WidgetCacheKey;

    iget-object v1, v1, Lcom/android/launcher3/WidgetPreviewLoader$WidgetCacheKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/WidgetPreviewLoader;->getPackageVersion(Ljava/lang/String;)[J

    move-result-object v1

    :cond_3
    iput-object v1, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mVersions:[J

    .line 591
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->this$0:Lcom/android/launcher3/WidgetPreviewLoader;

    iget-object v1, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mActivity:Lcom/android/launcher3/BaseActivity;

    iget-object v2, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mInfo:Lcom/android/launcher3/model/WidgetItem;

    iget v4, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mPreviewWidth:I

    iget v5, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mPreviewHeight:I

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/WidgetPreviewLoader;->-wrap0(Lcom/android/launcher3/WidgetPreviewLoader;Lcom/android/launcher3/BaseActivity;Lcom/android/launcher3/model/WidgetItem;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 593
    :cond_4
    return-object v0

    .line 585
    :cond_5
    const/4 v0, 0x1

    goto :goto_2

    :cond_6
    move-object v3, v0

    goto :goto_1

    :cond_7
    move-object v0, v1

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 550
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public onCancel()V
    .locals 2

    .prologue
    .line 645
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->cancel(Z)Z

    .line 652
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mBitmapToRecycle:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 653
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->this$0:Lcom/android/launcher3/WidgetPreviewLoader;

    iget-object v0, v0, Lcom/android/launcher3/WidgetPreviewLoader;->mWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask$3;

    invoke-direct {v1, p0}, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask$3;-><init>(Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 663
    :cond_0
    return-void
.end method

.method protected onCancelled(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 631
    if-eqz p1, :cond_0

    .line 632
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->this$0:Lcom/android/launcher3/WidgetPreviewLoader;

    iget-object v0, v0, Lcom/android/launcher3/WidgetPreviewLoader;->mWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask$2;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask$2;-><init>(Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 641
    :cond_0
    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 626
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->onCancelled(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 598
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mCaller:Lcom/android/launcher3/widget/WidgetCell;

    iget-boolean v1, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mAnimatePreviewIn:Z

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/widget/WidgetCell;->applyPreview(Landroid/graphics/Bitmap;Z)V

    .line 601
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mVersions:[J

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->this$0:Lcom/android/launcher3/WidgetPreviewLoader;

    iget-object v0, v0, Lcom/android/launcher3/WidgetPreviewLoader;->mWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask$1;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask$1;-><init>(Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 624
    :goto_0
    return-void

    .line 622
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mBitmapToRecycle:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 596
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
