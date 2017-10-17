.class public Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;
.super Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;
.source "SourceFile"


# instance fields
.field public customPosition:Z

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 487
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;-><init>(II)V

    .line 480
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;->customPosition:Z

    .line 488
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 483
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 480
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;->customPosition:Z

    .line 484
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 491
    invoke-direct {p0, p1}, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 480
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;->customPosition:Z

    .line 492
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 507
    iget v0, p0, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 499
    iget v0, p0, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;->width:I

    return v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 515
    iget v0, p0, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 523
    iget v0, p0, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;->y:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0

    .prologue
    .line 503
    iput p1, p0, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;->height:I

    .line 504
    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .prologue
    .line 495
    iput p1, p0, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;->width:I

    .line 496
    return-void
.end method

.method public setX(I)V
    .locals 0

    .prologue
    .line 511
    iput p1, p0, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;->x:I

    .line 512
    return-void
.end method

.method public setY(I)V
    .locals 0

    .prologue
    .line 519
    iput p1, p0, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;->y:I

    .line 520
    return-void
.end method
