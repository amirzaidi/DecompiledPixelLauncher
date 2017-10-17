.class public Lcom/android/launcher3/testing/WeightWatcher;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field mHandler:Landroid/os/Handler;

.field mMemoryService:Lcom/android/launcher3/testing/MemoryTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 89
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    new-instance v0, Lcom/android/launcher3/testing/WeightWatcher$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/testing/WeightWatcher$1;-><init>(Lcom/android/launcher3/testing/WeightWatcher;)V

    iput-object v0, p0, Lcom/android/launcher3/testing/WeightWatcher;->mHandler:Landroid/os/Handler;

    .line 91
    new-instance v0, Lcom/android/launcher3/testing/WeightWatcher$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/testing/WeightWatcher$2;-><init>(Lcom/android/launcher3/testing/WeightWatcher;)V

    .line 101
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/launcher3/testing/MemoryTracker;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v1, v0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 104
    invoke-virtual {p0, v3}, Lcom/android/launcher3/testing/WeightWatcher;->setOrientation(I)V

    .line 106
    const/high16 v0, -0x40000000    # -2.0f

    invoke-virtual {p0, v0}, Lcom/android/launcher3/testing/WeightWatcher;->setBackgroundColor(I)V

    .line 107
    return-void
.end method

.method static indexOf([II)I
    .locals 2

    .prologue
    .line 52
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 53
    aget v1, p0, v0

    if-ne v1, p1, :cond_0

    return v0

    .line 52
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    :cond_1
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public initViews()V
    .locals 4

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/android/launcher3/testing/WeightWatcher;->removeAllViews()V

    .line 111
    iget-object v0, p0, Lcom/android/launcher3/testing/WeightWatcher;->mMemoryService:Lcom/android/launcher3/testing/MemoryTracker;

    invoke-virtual {v0}, Lcom/android/launcher3/testing/MemoryTracker;->getTrackedProcesses()[I

    move-result-object v1

    .line 112
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 113
    new-instance v2, Lcom/android/launcher3/testing/WeightWatcher$ProcessWatcher;

    invoke-virtual {p0}, Lcom/android/launcher3/testing/WeightWatcher;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/launcher3/testing/WeightWatcher$ProcessWatcher;-><init>(Lcom/android/launcher3/testing/WeightWatcher;Landroid/content/Context;)V

    .line 114
    aget v3, v1, v0

    invoke-virtual {v2, v3}, Lcom/android/launcher3/testing/WeightWatcher$ProcessWatcher;->setPid(I)V

    .line 115
    invoke-virtual {p0, v2}, Lcom/android/launcher3/testing/WeightWatcher;->addView(Landroid/view/View;)V

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 121
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 122
    iget-object v0, p0, Lcom/android/launcher3/testing/WeightWatcher;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 123
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 127
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 128
    iget-object v0, p0, Lcom/android/launcher3/testing/WeightWatcher;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 129
    return-void
.end method
