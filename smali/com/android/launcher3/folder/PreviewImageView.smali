.class public Lcom/android/launcher3/folder/PreviewImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCanvas:Landroid/graphics/Canvas;

.field private final mParent:Lcom/android/launcher3/dragndrop/DragLayer;

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/dragndrop/DragLayer;)V
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/PreviewImageView;->mTempRect:Landroid/graphics/Rect;

    .line 45
    iput-object p1, p0, Lcom/android/launcher3/folder/PreviewImageView;->mParent:Lcom/android/launcher3/dragndrop/DragLayer;

    .line 46
    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/android/launcher3/folder/PreviewImageView;
    .locals 3

    .prologue
    const v2, 0x7f0e0005

    .line 90
    invoke-static {p0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v1

    .line 91
    invoke-virtual {v1, v2}, Lcom/android/launcher3/dragndrop/DragLayer;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/PreviewImageView;

    .line 92
    if-nez v0, :cond_0

    .line 93
    new-instance v0, Lcom/android/launcher3/folder/PreviewImageView;

    invoke-direct {v0, v1}, Lcom/android/launcher3/folder/PreviewImageView;-><init>(Lcom/android/launcher3/dragndrop/DragLayer;)V

    .line 94
    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/dragndrop/DragLayer;->setTag(ILjava/lang/Object;)V

    .line 96
    :cond_0
    return-object v0
.end method


# virtual methods
.method public copy(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 52
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 53
    :cond_0
    :goto_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/PreviewImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 54
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/android/launcher3/folder/PreviewImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/launcher3/folder/PreviewImageView;->mCanvas:Landroid/graphics/Canvas;

    .line 58
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;

    if-eqz v0, :cond_3

    .line 59
    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;

    .line 66
    :goto_1
    iget-object v3, p0, Lcom/android/launcher3/folder/PreviewImageView;->mParent:Lcom/android/launcher3/dragndrop/DragLayer;

    iget-object v4, p0, Lcom/android/launcher3/folder/PreviewImageView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, p1, v4}, Lcom/android/launcher3/dragndrop/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    move-result v3

    .line 67
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;->customPosition:Z

    .line 68
    iget-object v4, p0, Lcom/android/launcher3/folder/PreviewImageView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iput v4, v0, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;->x:I

    .line 69
    iget-object v4, p0, Lcom/android/launcher3/folder/PreviewImageView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iput v4, v0, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;->y:I

    .line 70
    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v0, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;->width:I

    .line 71
    int-to-float v1, v2

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v0, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;->height:I

    .line 73
    iget-object v1, p0, Lcom/android/launcher3/folder/PreviewImageView;->mCanvas:Landroid/graphics/Canvas;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 74
    iget-object v1, p0, Lcom/android/launcher3/folder/PreviewImageView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 75
    iget-object v1, p0, Lcom/android/launcher3/folder/PreviewImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/PreviewImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 79
    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewImageView;->removeFromParent()V

    .line 80
    iget-object v1, p0, Lcom/android/launcher3/folder/PreviewImageView;->mParent:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v1, p0, v0}, Lcom/android/launcher3/dragndrop/DragLayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    return-void

    .line 52
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 61
    :cond_3
    new-instance v0, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;-><init>(II)V

    goto :goto_1
.end method

.method public removeFromParent()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewImageView;->mParent:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragLayer;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewImageView;->mParent:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragLayer;->removeView(Landroid/view/View;)V

    .line 87
    :cond_0
    return-void
.end method
