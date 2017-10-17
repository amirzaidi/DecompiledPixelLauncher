.class public abstract Lcom/android/launcher3/OverviewButtonClickListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private mControlType:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/android/launcher3/OverviewButtonClickListener;->mControlType:I

    .line 18
    return-void
.end method

.method private handleViewClick(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/android/launcher3/OverviewButtonClickListener;->handleViewClick(Landroid/view/View;)V

    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v0

    .line 47
    iget v1, p0, Lcom/android/launcher3/OverviewButtonClickListener;->mControlType:I

    .line 46
    invoke-virtual {v0, p2, v1}, Lcom/android/launcher3/logging/UserEventDispatcher;->logActionOnControl(II)V

    .line 48
    return-void
.end method

.method private shouldPerformClick(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isSwitchingState()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public attachTo(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 21
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 23
    return-void
.end method

.method public abstract handleViewClick(Landroid/view/View;)V
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/launcher3/OverviewButtonClickListener;->shouldPerformClick(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/OverviewButtonClickListener;->handleViewClick(Landroid/view/View;I)V

    .line 30
    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 34
    invoke-direct {p0, p1}, Lcom/android/launcher3/OverviewButtonClickListener;->shouldPerformClick(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    invoke-direct {p0, p1, v1}, Lcom/android/launcher3/OverviewButtonClickListener;->handleViewClick(Landroid/view/View;I)V

    .line 37
    :cond_0
    return v1
.end method
