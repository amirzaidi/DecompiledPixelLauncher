.class final Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$1;->this$0:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$1;->this$0:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;

    iget v0, v0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mFastScrollFrameIndex:I

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$1;->this$0:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;

    iget-object v1, v1, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mFastScrollFrames:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$1;->this$0:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;

    invoke-static {v0}, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->-get0(Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;)Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$1;->this$0:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;

    iget-object v1, v1, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mFastScrollFrames:[I

    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$1;->this$0:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;

    iget v2, v2, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mFastScrollFrameIndex:I

    aget v1, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->scrollBy(II)V

    .line 64
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$1;->this$0:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;

    iget v1, v0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mFastScrollFrameIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mFastScrollFrameIndex:I

    .line 65
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$1;->this$0:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;

    invoke-static {v0}, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->-get0(Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;)Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$1;->this$0:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;

    iget-object v1, v1, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mSmoothSnapNextFrameRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 67
    :cond_0
    return-void
.end method
