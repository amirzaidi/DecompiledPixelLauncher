.class public interface abstract Lcom/android/launcher3/DragSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/logging/UserEventDispatcher$LogContainerProvider;


# virtual methods
.method public abstract getIntrinsicIconScaleFactor()F
.end method

.method public abstract onDropCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;ZZ)V
.end method

.method public abstract supportsAppInfoDropTarget()Z
.end method

.method public abstract supportsDeleteDropTarget()Z
.end method
