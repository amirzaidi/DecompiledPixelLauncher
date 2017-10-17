.class public Lcom/android/launcher3/testing/MemoryTracker$MemoryTrackerInterface;
.super Landroid/os/Binder;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/testing/MemoryTracker;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/testing/MemoryTracker;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/android/launcher3/testing/MemoryTracker$MemoryTrackerInterface;->this$0:Lcom/android/launcher3/testing/MemoryTracker;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method getService()Lcom/android/launcher3/testing/MemoryTracker;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/launcher3/testing/MemoryTracker$MemoryTrackerInterface;->this$0:Lcom/android/launcher3/testing/MemoryTracker;

    return-object v0
.end method
