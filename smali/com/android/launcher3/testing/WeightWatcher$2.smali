.class final Lcom/android/launcher3/testing/WeightWatcher$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/testing/WeightWatcher;


# direct methods
.method constructor <init>(Lcom/android/launcher3/testing/WeightWatcher;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/testing/WeightWatcher$2;->this$0:Lcom/android/launcher3/testing/WeightWatcher;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/launcher3/testing/WeightWatcher$2;->this$0:Lcom/android/launcher3/testing/WeightWatcher;

    check-cast p2, Lcom/android/launcher3/testing/MemoryTracker$MemoryTrackerInterface;

    invoke-virtual {p2}, Lcom/android/launcher3/testing/MemoryTracker$MemoryTrackerInterface;->getService()Lcom/android/launcher3/testing/MemoryTracker;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/testing/WeightWatcher;->mMemoryService:Lcom/android/launcher3/testing/MemoryTracker;

    .line 94
    iget-object v0, p0, Lcom/android/launcher3/testing/WeightWatcher$2;->this$0:Lcom/android/launcher3/testing/WeightWatcher;

    invoke-virtual {v0}, Lcom/android/launcher3/testing/WeightWatcher;->initViews()V

    .line 95
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/launcher3/testing/WeightWatcher$2;->this$0:Lcom/android/launcher3/testing/WeightWatcher;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/launcher3/testing/WeightWatcher;->mMemoryService:Lcom/android/launcher3/testing/MemoryTracker;

    .line 99
    return-void
.end method
