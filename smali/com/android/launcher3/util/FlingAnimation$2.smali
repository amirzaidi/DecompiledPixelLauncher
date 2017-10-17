.class final Lcom/android/launcher3/util/FlingAnimation$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/util/FlingAnimation;


# direct methods
.method constructor <init>(Lcom/android/launcher3/util/FlingAnimation;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/util/FlingAnimation$2;->this$0:Lcom/android/launcher3/util/FlingAnimation;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/launcher3/util/FlingAnimation$2;->this$0:Lcom/android/launcher3/util/FlingAnimation;

    invoke-static {v0}, Lcom/android/launcher3/util/FlingAnimation;->-get1(Lcom/android/launcher3/util/FlingAnimation;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->exitSpringLoadedDragMode()V

    .line 99
    iget-object v0, p0, Lcom/android/launcher3/util/FlingAnimation$2;->this$0:Lcom/android/launcher3/util/FlingAnimation;

    invoke-static {v0}, Lcom/android/launcher3/util/FlingAnimation;->-get0(Lcom/android/launcher3/util/FlingAnimation;)Lcom/android/launcher3/ButtonDropTarget;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/util/FlingAnimation$2;->this$0:Lcom/android/launcher3/util/FlingAnimation;

    iget-object v1, v1, Lcom/android/launcher3/util/FlingAnimation;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/ButtonDropTarget;->completeDrop(Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 100
    return-void
.end method
