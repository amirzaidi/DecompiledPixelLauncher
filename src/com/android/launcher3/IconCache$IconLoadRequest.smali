.class public Lcom/android/launcher3/IconCache$IconLoadRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 703
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 704
    iput-object p1, p0, Lcom/android/launcher3/IconCache$IconLoadRequest;->mRunnable:Ljava/lang/Runnable;

    .line 705
    iput-object p2, p0, Lcom/android/launcher3/IconCache$IconLoadRequest;->mHandler:Landroid/os/Handler;

    .line 706
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 709
    iget-object v0, p0, Lcom/android/launcher3/IconCache$IconLoadRequest;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher3/IconCache$IconLoadRequest;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 710
    return-void
.end method
