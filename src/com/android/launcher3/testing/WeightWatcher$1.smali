.class final Lcom/android/launcher3/testing/WeightWatcher$1;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/testing/WeightWatcher;


# direct methods
.method constructor <init>(Lcom/android/launcher3/testing/WeightWatcher;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/testing/WeightWatcher$1;->this$0:Lcom/android/launcher3/testing/WeightWatcher;

    .line 58
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x3

    .line 61
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 84
    :goto_0
    return-void

    .line 63
    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher3/testing/WeightWatcher$1;->this$0:Lcom/android/launcher3/testing/WeightWatcher;

    iget-object v0, v0, Lcom/android/launcher3/testing/WeightWatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 66
    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher3/testing/WeightWatcher$1;->this$0:Lcom/android/launcher3/testing/WeightWatcher;

    iget-object v0, v0, Lcom/android/launcher3/testing/WeightWatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 69
    :pswitch_2
    iget-object v1, p0, Lcom/android/launcher3/testing/WeightWatcher$1;->this$0:Lcom/android/launcher3/testing/WeightWatcher;

    iget-object v1, v1, Lcom/android/launcher3/testing/WeightWatcher;->mMemoryService:Lcom/android/launcher3/testing/MemoryTracker;

    invoke-virtual {v1}, Lcom/android/launcher3/testing/MemoryTracker;->getTrackedProcesses()[I

    move-result-object v2

    .line 71
    iget-object v1, p0, Lcom/android/launcher3/testing/WeightWatcher$1;->this$0:Lcom/android/launcher3/testing/WeightWatcher;

    invoke-virtual {v1}, Lcom/android/launcher3/testing/WeightWatcher;->getChildCount()I

    move-result v3

    .line 72
    array-length v1, v2

    if-eq v1, v3, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/testing/WeightWatcher$1;->this$0:Lcom/android/launcher3/testing/WeightWatcher;

    invoke-virtual {v0}, Lcom/android/launcher3/testing/WeightWatcher;->initViews()V

    .line 81
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/launcher3/testing/WeightWatcher$1;->this$0:Lcom/android/launcher3/testing/WeightWatcher;

    iget-object v0, v0, Lcom/android/launcher3/testing/WeightWatcher;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    move v1, v0

    .line 73
    :goto_2
    if-ge v1, v3, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/launcher3/testing/WeightWatcher$1;->this$0:Lcom/android/launcher3/testing/WeightWatcher;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/testing/WeightWatcher;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/testing/WeightWatcher$ProcessWatcher;

    .line 75
    invoke-virtual {v0}, Lcom/android/launcher3/testing/WeightWatcher$ProcessWatcher;->getPid()I

    move-result v4

    invoke-static {v2, v4}, Lcom/android/launcher3/testing/WeightWatcher;->indexOf([II)I

    move-result v4

    if-gez v4, :cond_2

    .line 76
    iget-object v0, p0, Lcom/android/launcher3/testing/WeightWatcher$1;->this$0:Lcom/android/launcher3/testing/WeightWatcher;

    invoke-virtual {v0}, Lcom/android/launcher3/testing/WeightWatcher;->initViews()V

    goto :goto_1

    .line 79
    :cond_2
    invoke-virtual {v0}, Lcom/android/launcher3/testing/WeightWatcher$ProcessWatcher;->update()V

    .line 73
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 61
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
