.class public Lcom/android/launcher3/badge/BadgeRenderer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mBackgroundPaint:Landroid/graphics/Paint;

.field private final mBackgroundsWithShadow:Landroid/util/SparseArray;

.field private final mCharSize:I

.field private final mContext:Landroid/content/Context;

.field private final mLargeIconDrawer:Lcom/android/launcher3/badge/BadgeRenderer$IconDrawer;

.field private final mOffset:I

.field private final mSize:I

.field private final mSmallIconDrawer:Lcom/android/launcher3/badge/BadgeRenderer$IconDrawer;

.field private final mStackOffsetX:I

.field private final mStackOffsetY:I

.field private final mTextHeight:I

.field private final mTextPaint:Landroid/graphics/Paint;


# direct methods
.method static synthetic -get0(Lcom/android/launcher3/badge/BadgeRenderer;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mSize:I

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mTextPaint:Landroid/graphics/Paint;

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 68
    iput-object p1, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mContext:Landroid/content/Context;

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 70
    int-to-float v1, p2

    const v2, 0x3ec28f5c    # 0.38f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mSize:I

    .line 71
    int-to-float v1, p2

    const v2, 0x3df5c28f    # 0.12f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mCharSize:I

    .line 72
    int-to-float v1, p2

    const v2, 0x3ca3d70a    # 0.02f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mOffset:I

    .line 73
    int-to-float v1, p2

    const v2, 0x3d4ccccd    # 0.05f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mStackOffsetX:I

    .line 74
    int-to-float v1, p2

    const v2, 0x3d75c28f    # 0.06f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mStackOffsetY:I

    .line 75
    iget-object v1, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mTextPaint:Landroid/graphics/Paint;

    int-to-float v2, p2

    const v3, 0x3e851eb8    # 0.26f

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 76
    iget-object v1, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 77
    new-instance v1, Lcom/android/launcher3/badge/BadgeRenderer$IconDrawer;

    const v2, 0x7f0b008d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v1, p0, v2}, Lcom/android/launcher3/badge/BadgeRenderer$IconDrawer;-><init>(Lcom/android/launcher3/badge/BadgeRenderer;I)V

    iput-object v1, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mLargeIconDrawer:Lcom/android/launcher3/badge/BadgeRenderer$IconDrawer;

    .line 78
    new-instance v1, Lcom/android/launcher3/badge/BadgeRenderer$IconDrawer;

    const v2, 0x7f0b008e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/badge/BadgeRenderer$IconDrawer;-><init>(Lcom/android/launcher3/badge/BadgeRenderer;I)V

    iput-object v1, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mSmallIconDrawer:Lcom/android/launcher3/badge/BadgeRenderer$IconDrawer;

    .line 80
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 81
    iget-object v1, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mTextPaint:Landroid/graphics/Paint;

    const-string/jumbo v2, "0"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 82
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mTextHeight:I

    .line 84
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v5}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mBackgroundsWithShadow:Landroid/util/SparseArray;

    .line 85
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lcom/android/launcher3/graphics/IconPalette;Lcom/android/launcher3/badge/BadgeInfo;Landroid/graphics/Rect;FLandroid/graphics/Point;)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 98
    iget-object v0, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p2, Lcom/android/launcher3/graphics/IconPalette;->textColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/android/launcher3/badge/BadgeInfo;->isIconLarge()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mLargeIconDrawer:Lcom/android/launcher3/badge/BadgeRenderer$IconDrawer;

    .line 101
    :goto_0
    if-nez p3, :cond_2

    .line 103
    :goto_1
    if-nez p3, :cond_3

    const-string/jumbo v0, "0"

    .line 105
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 106
    iget v2, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mSize:I

    .line 108
    iget-object v0, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mBackgroundsWithShadow:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 109
    if-nez v0, :cond_0

    .line 110
    new-instance v0, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;

    const/4 v3, -0x1

    invoke-direct {v0, v3}, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;-><init>(I)V

    .line 111
    iget v3, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mSize:I

    .line 110
    invoke-virtual {v0, v3}, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->setupBlurForSize(I)Lcom/android/launcher3/graphics/ShadowGenerator$Builder;

    move-result-object v0

    .line 111
    iget v3, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mSize:I

    .line 110
    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->createPill(II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 112
    iget-object v3, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mBackgroundsWithShadow:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 114
    :cond_0
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->save(I)I

    .line 116
    iget v1, p4, Landroid/graphics/Rect;->right:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 117
    iget v2, p4, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mSize:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 122
    const v3, 0x3f19999a    # 0.6f

    mul-float/2addr p5, v3

    .line 124
    iget v3, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mOffset:I

    iget v4, p6, Landroid/graphics/Point;->x:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 125
    iget v4, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mOffset:I

    iget v5, p6, Landroid/graphics/Point;->y:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 126
    add-int/2addr v1, v3

    int-to-float v1, v1

    sub-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 127
    invoke-virtual {p1, p5, p5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 129
    iget-object v1, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mBackgroundPaint:Landroid/graphics/Paint;

    iget-object v2, p2, Lcom/android/launcher3/graphics/IconPalette;->backgroundColorMatrixFilter:Landroid/graphics/ColorMatrixColorFilter;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 130
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 151
    iget-object v2, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mBackgroundPaint:Landroid/graphics/Paint;

    iget-object v3, p2, Lcom/android/launcher3/graphics/IconPalette;->saturatedBackgroundColorMatrixFilter:Landroid/graphics/ColorMatrixColorFilter;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 152
    neg-int v2, v1

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    .line 153
    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v3, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 152
    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 155
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 156
    return-void

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mSmallIconDrawer:Lcom/android/launcher3/badge/BadgeRenderer$IconDrawer;

    goto :goto_0

    .line 102
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mContext:Landroid/content/Context;

    iget v2, p2, Lcom/android/launcher3/graphics/IconPalette;->backgroundColor:I

    iget v3, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mSize:I

    invoke-static {v0}, Lcom/android/launcher3/badge/BadgeRenderer$IconDrawer;->-get0(Lcom/android/launcher3/badge/BadgeRenderer$IconDrawer;)I

    move-result v0

    .line 101
    invoke-virtual {p3, v1, v2, v3, v0}, Lcom/android/launcher3/badge/BadgeInfo;->getNotificationIconForBadge(Landroid/content/Context;III)Landroid/graphics/Shader;

    goto/16 :goto_1

    .line 104
    :cond_3
    invoke-virtual {p3}, Lcom/android/launcher3/badge/BadgeInfo;->getNotificationCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2
.end method
