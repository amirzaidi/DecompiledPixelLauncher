.class public Lcom/android/launcher3/graphics/DragPreviewProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final blurSizeOutline:I

.field public generatedDragOutline:Landroid/graphics/Bitmap;

.field private final mTempRect:Landroid/graphics/Rect;

.field protected final mView:Landroid/view/View;

.field public final previewPadding:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/graphics/DragPreviewProvider;-><init>(Landroid/view/View;Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mTempRect:Landroid/graphics/Rect;

    .line 56
    iput-object p1, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    .line 58
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0064

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 57
    iput v0, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->blurSizeOutline:I

    .line 60
    iget-object v0, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/launcher3/Workspace;->getTextViewIcon(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 62
    invoke-static {v0}, Lcom/android/launcher3/graphics/DragPreviewProvider;->getDrawableBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v0

    .line 63
    iget v1, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->blurSizeOutline:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int v0, v1, v0

    iput v0, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->previewPadding:I

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    iget v0, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->blurSizeOutline:I

    iput v0, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->previewPadding:I

    goto :goto_0
.end method

.method private drawDragView(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 73
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 74
    iget-object v0, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/launcher3/Workspace;->getTextViewIcon(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 76
    invoke-static {v0}, Lcom/android/launcher3/graphics/DragPreviewProvider;->getDrawableBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v1

    .line 77
    iget v2, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->blurSizeOutline:I

    div-int/lit8 v2, v2, 0x2

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 78
    iget v3, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->blurSizeOutline:I

    div-int/lit8 v3, v3, 0x2

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int v1, v3, v1

    int-to-float v1, v1

    .line 77
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 79
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 103
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 104
    return-void

    .line 81
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mTempRect:Landroid/graphics/Rect;

    .line 82
    iget-object v0, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 85
    iget-object v0, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v0, :cond_2

    .line 88
    iget-object v0, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderIcon;->getTextVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 89
    iget-object v0, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/folder/FolderIcon;->setTextVisible(Z)V

    move v0, v1

    .line 93
    :goto_1
    iget-object v2, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getScrollX()I

    move-result v2

    neg-int v2, v2

    iget v4, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->blurSizeOutline:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    int-to-float v2, v2

    .line 94
    iget-object v4, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v4

    neg-int v4, v4

    iget v5, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->blurSizeOutline:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    .line 93
    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 95
    sget-object v2, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 96
    iget-object v2, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 99
    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderIcon;->setTextVisible(Z)V

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method protected static getDrawableBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 180
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 181
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 182
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-nez v1, :cond_1

    .line 183
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 187
    :goto_0
    return-object v0

    .line 185
    :cond_1
    invoke-virtual {v0, v3, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0
.end method


# virtual methods
.method public createDragBitmap(Landroid/graphics/Canvas;)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 111
    const/high16 v2, 0x3f800000    # 1.0f

    .line 112
    iget-object v0, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 113
    iget-object v0, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 115
    iget-object v3, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    instance-of v3, v3, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 116
    iget-object v0, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/launcher3/Workspace;->getTextViewIcon(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 117
    invoke-static {v0}, Lcom/android/launcher3/graphics/DragPreviewProvider;->getDrawableBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 119
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 126
    :cond_0
    :goto_0
    iget v3, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->blurSizeOutline:I

    add-int/2addr v1, v3

    iget v3, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->blurSizeOutline:I

    add-int/2addr v0, v3

    .line 127
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 126
    invoke-static {v1, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 128
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 130
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 131
    invoke-virtual {p1, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 132
    invoke-direct {p0, p1}, Lcom/android/launcher3/graphics/DragPreviewProvider;->drawDragView(Landroid/graphics/Canvas;)V

    .line 133
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 135
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 137
    return-object v0

    .line 120
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    instance-of v3, v3, Lcom/android/launcher3/LauncherAppWidgetHostView;

    if-eqz v3, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/launcher3/LauncherAppWidgetHostView;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->getScaleToFit()F

    move-result v2

    .line 122
    iget-object v0, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v1, v0

    .line 123
    iget-object v0, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0
.end method

.method public createDragOutline(Landroid/graphics/Canvas;)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    .line 153
    const/high16 v2, 0x3f800000    # 1.0f

    .line 154
    iget-object v0, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 155
    iget-object v0, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 157
    iget-object v3, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    instance-of v3, v3, Lcom/android/launcher3/LauncherAppWidgetHostView;

    if-eqz v3, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/launcher3/LauncherAppWidgetHostView;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->getScaleToFit()F

    move-result v2

    .line 159
    iget-object v0, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v1, v0

    .line 160
    iget-object v0, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 163
    :cond_0
    iget v3, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->blurSizeOutline:I

    add-int/2addr v1, v3

    iget v3, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->blurSizeOutline:I

    add-int/2addr v0, v3

    .line 164
    sget-object v3, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    .line 163
    invoke-static {v1, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 165
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 167
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 168
    invoke-virtual {p1, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 169
    invoke-direct {p0, p1}, Lcom/android/launcher3/graphics/DragPreviewProvider;->drawDragView(Landroid/graphics/Canvas;)V

    .line 170
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 172
    iget-object v1, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/graphics/HolographicOutlineHelper;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V

    .line 175
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 176
    return-object v0
.end method

.method public final generateDragOutline(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0, p1}, Lcom/android/launcher3/graphics/DragPreviewProvider;->createDragOutline(Landroid/graphics/Canvas;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->generatedDragOutline:Landroid/graphics/Bitmap;

    .line 146
    return-void
.end method

.method public getScaleAndPosition(Landroid/graphics/Bitmap;[I)F
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    .line 191
    iget-object v0, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    .line 192
    iget-object v1, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    .line 191
    invoke-virtual {v0, v1, p2}, Lcom/android/launcher3/dragndrop/DragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    move-result v1

    .line 193
    iget-object v0, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/launcher3/LauncherAppWidgetHostView;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/launcher3/LauncherAppWidgetHostView;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->getScaleToFit()F

    move-result v0

    div-float v0, v1, v0

    .line 199
    :goto_0
    aget v1, p2, v6

    int-to-float v1, v1

    .line 200
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    iget-object v4, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getScaleX()F

    move-result v4

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    .line 199
    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    aput v1, p2, v6

    .line 201
    aget v1, p2, v7

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    .line 202
    iget v2, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->previewPadding:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    .line 201
    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    aput v1, p2, v7

    .line 203
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
