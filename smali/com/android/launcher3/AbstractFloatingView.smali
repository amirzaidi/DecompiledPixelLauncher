.class public abstract Lcom/android/launcher3/AbstractFloatingView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field protected mIsOpen:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public static closeAllOpenViews(Lcom/android/launcher3/Launcher;)V
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/Launcher;Z)V

    .line 138
    return-void
.end method

.method public static closeAllOpenViews(Lcom/android/launcher3/Launcher;Z)V
    .locals 4

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v2

    .line 128
    invoke-virtual {v2}, Lcom/android/launcher3/dragndrop/DragLayer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 129
    invoke-virtual {v2, v1}, Lcom/android/launcher3/dragndrop/DragLayer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 130
    instance-of v3, v0, Lcom/android/launcher3/AbstractFloatingView;

    if-eqz v3, :cond_0

    .line 131
    check-cast v0, Lcom/android/launcher3/AbstractFloatingView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    .line 128
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 134
    :cond_1
    return-void
.end method

.method public static closeOpenContainer(Lcom/android/launcher3/Launcher;I)V
    .locals 2

    .prologue
    .line 118
    invoke-static {p0, p1}, Lcom/android/launcher3/AbstractFloatingView;->getOpenView(Lcom/android/launcher3/Launcher;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_0

    .line 120
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    .line 122
    :cond_0
    return-void
.end method

.method protected static getOpenView(Lcom/android/launcher3/Launcher;I)Lcom/android/launcher3/AbstractFloatingView;
    .locals 4

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v2

    .line 105
    invoke-virtual {v2}, Lcom/android/launcher3/dragndrop/DragLayer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 106
    invoke-virtual {v2, v1}, Lcom/android/launcher3/dragndrop/DragLayer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 107
    instance-of v3, v0, Lcom/android/launcher3/AbstractFloatingView;

    if-eqz v3, :cond_0

    .line 108
    check-cast v0, Lcom/android/launcher3/AbstractFloatingView;

    .line 109
    invoke-virtual {v0, p1}, Lcom/android/launcher3/AbstractFloatingView;->isOfType(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/AbstractFloatingView;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 110
    return-object v0

    .line 105
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 114
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getTopOpenView(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/AbstractFloatingView;
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x7

    invoke-static {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->getOpenView(Lcom/android/launcher3/Launcher;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final close(Z)V
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/android/launcher3/AbstractFloatingView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isPowerSaverOn(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    and-int/2addr v0, p1

    .line 69
    invoke-virtual {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->handleClose(Z)V

    .line 70
    invoke-virtual {p0}, Lcom/android/launcher3/AbstractFloatingView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/UserEventDispatcher;->resetElapsedContainerMillis()V

    .line 71
    return-void
.end method

.method public getActiveTextView()Lcom/android/launcher3/ExtendedEditText;
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExtendedTouchView()Landroid/view/View;
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getLogContainerType()I
.end method

.method protected abstract handleClose(Z)V
.end method

.method protected abstract isOfType(I)Z
.end method

.method public final isOpen()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method protected onWidgetsBound()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method
