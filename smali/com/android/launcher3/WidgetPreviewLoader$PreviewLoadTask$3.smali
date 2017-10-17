.class final Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;


# direct methods
.method constructor <init>(Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask$3;->this$1:Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;

    .line 663
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 666
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask$3;->this$1:Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;

    iget-object v0, v0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->this$0:Lcom/android/launcher3/WidgetPreviewLoader;

    iget-object v1, v0, Lcom/android/launcher3/WidgetPreviewLoader;->mUnusedBitmaps:Ljava/util/Set;

    monitor-enter v1

    .line 667
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask$3;->this$1:Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;

    iget-object v0, v0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->this$0:Lcom/android/launcher3/WidgetPreviewLoader;

    iget-object v0, v0, Lcom/android/launcher3/WidgetPreviewLoader;->mUnusedBitmaps:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask$3;->this$1:Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;

    iget-object v2, v2, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mBitmapToRecycle:Landroid/graphics/Bitmap;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 669
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask$3;->this$1:Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mBitmapToRecycle:Landroid/graphics/Bitmap;

    .line 670
    return-void

    .line 666
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
