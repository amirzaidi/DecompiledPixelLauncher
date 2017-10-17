.class final Lcom/android/launcher3/testing/MemoryTracker$1;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/testing/MemoryTracker;


# direct methods
.method constructor <init>(Lcom/android/launcher3/testing/MemoryTracker;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/testing/MemoryTracker$1;->this$0:Lcom/android/launcher3/testing/MemoryTracker;

    .line 70
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/4 v1, 0x3

    .line 73
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 87
    :goto_0
    return-void

    .line 75
    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher3/testing/MemoryTracker$1;->this$0:Lcom/android/launcher3/testing/MemoryTracker;

    iget-object v0, v0, Lcom/android/launcher3/testing/MemoryTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 76
    iget-object v0, p0, Lcom/android/launcher3/testing/MemoryTracker$1;->this$0:Lcom/android/launcher3/testing/MemoryTracker;

    iget-object v0, v0, Lcom/android/launcher3/testing/MemoryTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 79
    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher3/testing/MemoryTracker$1;->this$0:Lcom/android/launcher3/testing/MemoryTracker;

    iget-object v0, v0, Lcom/android/launcher3/testing/MemoryTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 82
    :pswitch_2
    iget-object v0, p0, Lcom/android/launcher3/testing/MemoryTracker$1;->this$0:Lcom/android/launcher3/testing/MemoryTracker;

    invoke-virtual {v0}, Lcom/android/launcher3/testing/MemoryTracker;->update()V

    .line 83
    iget-object v0, p0, Lcom/android/launcher3/testing/MemoryTracker$1;->this$0:Lcom/android/launcher3/testing/MemoryTracker;

    iget-object v0, v0, Lcom/android/launcher3/testing/MemoryTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 84
    iget-object v0, p0, Lcom/android/launcher3/testing/MemoryTracker$1;->this$0:Lcom/android/launcher3/testing/MemoryTracker;

    iget-object v0, v0, Lcom/android/launcher3/testing/MemoryTracker;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 73
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
