.class public Lcom/android/launcher3/DropTarget$DragObject;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public accessibleDrag:Z

.field public cancelled:Z

.field public deferDragViewCleanupPostAnimation:Z

.field public dragComplete:Z

.field public dragInfo:Lcom/android/launcher3/ItemInfo;

.field public dragSource:Lcom/android/launcher3/DragSource;

.field public dragView:Lcom/android/launcher3/dragndrop/DragView;

.field public originalDragInfo:Lcom/android/launcher3/ItemInfo;

.field public postAnimationRunnable:Ljava/lang/Runnable;

.field public stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

.field public x:I

.field public xOffset:I

.field public y:I

.field public yOffset:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput v1, p0, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    .line 32
    iput v1, p0, Lcom/android/launcher3/DropTarget$DragObject;->y:I

    .line 35
    iput v1, p0, Lcom/android/launcher3/DropTarget$DragObject;->xOffset:I

    .line 38
    iput v1, p0, Lcom/android/launcher3/DropTarget$DragObject;->yOffset:I

    .line 44
    iput-boolean v2, p0, Lcom/android/launcher3/DropTarget$DragObject;->dragComplete:Z

    .line 47
    iput-object v0, p0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    .line 50
    iput-object v0, p0, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    .line 53
    iput-object v0, p0, Lcom/android/launcher3/DropTarget$DragObject;->originalDragInfo:Lcom/android/launcher3/ItemInfo;

    .line 56
    iput-object v0, p0, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    .line 62
    iput-object v0, p0, Lcom/android/launcher3/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    .line 65
    iput-boolean v2, p0, Lcom/android/launcher3/DropTarget$DragObject;->cancelled:Z

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 73
    return-void
.end method


# virtual methods
.method public final getVisualCenter([F)[F
    .locals 3

    .prologue
    .line 82
    if-nez p1, :cond_0

    const/4 v0, 0x2

    new-array p1, v0, [F

    .line 88
    :cond_0
    iget v0, p0, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    iget v1, p0, Lcom/android/launcher3/DropTarget$DragObject;->xOffset:I

    sub-int/2addr v0, v1

    .line 89
    iget v1, p0, Lcom/android/launcher3/DropTarget$DragObject;->y:I

    iget v2, p0, Lcom/android/launcher3/DropTarget$DragObject;->yOffset:I

    sub-int/2addr v1, v2

    .line 92
    iget-object v2, p0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v2}, Lcom/android/launcher3/dragndrop/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    int-to-float v0, v0

    const/4 v2, 0x0

    aput v0, p1, v2

    .line 93
    iget-object v0, p0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/4 v1, 0x1

    aput v0, p1, v1

    .line 95
    return-object p1
.end method
