.class public Lcom/android/launcher3/util/ViewOnDrawExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;
.implements Landroid/view/ViewTreeObserver$OnDrawListener;
.implements Ljava/lang/Runnable;
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field private mAttachedView:Landroid/view/View;

.field private mCompleted:Z

.field private mFirstDrawCompleted:Z

.field private final mHandler:Lcom/android/launcher3/DeferredHandler;

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mLoadAnimationCompleted:Z

.field private final mTasks:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/DeferredHandler;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/util/ViewOnDrawExecutor;->mTasks:Ljava/util/ArrayList;

    .line 47
    iput-object p1, p0, Lcom/android/launcher3/util/ViewOnDrawExecutor;->mHandler:Lcom/android/launcher3/DeferredHandler;

    .line 48
    return-void
.end method

.method private attachObserver()V
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/launcher3/util/ViewOnDrawExecutor;->mCompleted:Z

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/android/launcher3/util/ViewOnDrawExecutor;->mAttachedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 62
    :cond_0
    return-void
.end method


# virtual methods
.method public attachTo(Lcom/android/launcher3/Launcher;)V
    .locals 1

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/launcher3/util/ViewOnDrawExecutor;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 52
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/util/ViewOnDrawExecutor;->mAttachedView:Landroid/view/View;

    .line 53
    iget-object v0, p0, Lcom/android/launcher3/util/ViewOnDrawExecutor;->mAttachedView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 55
    invoke-direct {p0}, Lcom/android/launcher3/util/ViewOnDrawExecutor;->attachObserver()V

    .line 56
    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/launcher3/util/ViewOnDrawExecutor;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    return-void
.end method

.method public markCompleted()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/launcher3/util/ViewOnDrawExecutor;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/util/ViewOnDrawExecutor;->mCompleted:Z

    .line 104
    iget-object v0, p0, Lcom/android/launcher3/util/ViewOnDrawExecutor;->mAttachedView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/launcher3/util/ViewOnDrawExecutor;->mAttachedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 106
    iget-object v0, p0, Lcom/android/launcher3/util/ViewOnDrawExecutor;->mAttachedView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/util/ViewOnDrawExecutor;->mLauncher:Lcom/android/launcher3/Launcher;

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/android/launcher3/util/ViewOnDrawExecutor;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/Launcher;->clearPendingExecutor(Lcom/android/launcher3/util/ViewOnDrawExecutor;)V

    .line 111
    :cond_1
    return-void
.end method

.method public onDraw()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/util/ViewOnDrawExecutor;->mFirstDrawCompleted:Z

    .line 80
    iget-object v0, p0, Lcom/android/launcher3/util/ViewOnDrawExecutor;->mAttachedView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 81
    return-void
.end method

.method public onLoadAnimationCompleted()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/util/ViewOnDrawExecutor;->mLoadAnimationCompleted:Z

    .line 85
    iget-object v0, p0, Lcom/android/launcher3/util/ViewOnDrawExecutor;->mAttachedView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/launcher3/util/ViewOnDrawExecutor;->mAttachedView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 88
    :cond_0
    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/launcher3/util/ViewOnDrawExecutor;->attachObserver()V

    .line 72
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/launcher3/util/ViewOnDrawExecutor;->mLoadAnimationCompleted:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher3/util/ViewOnDrawExecutor;->mFirstDrawCompleted:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher3/util/ViewOnDrawExecutor;->mCompleted:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/android/launcher3/util/ViewOnDrawExecutor;->mTasks:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 95
    iget-object v2, p0, Lcom/android/launcher3/util/ViewOnDrawExecutor;->mHandler:Lcom/android/launcher3/DeferredHandler;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/util/ViewOnDrawExecutor;->markCompleted()V

    .line 99
    :cond_1
    return-void
.end method
