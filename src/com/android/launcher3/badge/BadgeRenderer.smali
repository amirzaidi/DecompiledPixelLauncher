.class public Lcom/android/launcher3/badge/BadgeRenderer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mBackgroundPaint:Landroid/graphics/Paint;

.field private final mBackgroundsWithShadow:Landroid/util/SparseArray;

.field private final mCharSize:I

.field private final mContext:Landroid/content/Context;

.field private final mIconPalette:Lcom/android/launcher3/graphics/IconPalette;

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

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mTextPaint:Landroid/graphics/Paint;

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 69
    iput-object p1, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mContext:Landroid/content/Context;

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 71
    int-to-float v1, p2

    const v2, 0x3ec28f5c    # 0.38f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mSize:I

    .line 72
    int-to-float v1, p2

    const v2, 0x3df5c28f    # 0.12f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mCharSize:I

    .line 73
    int-to-float v1, p2

    const v2, 0x3ca3d70a    # 0.02f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mOffset:I

    .line 74
    int-to-float v1, p2

    const v2, 0x3d4ccccd    # 0.05f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mStackOffsetX:I

    .line 75
    int-to-float v1, p2

    const v2, 0x3d75c28f    # 0.06f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mStackOffsetY:I

    .line 76
    iget-object v1, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mTextPaint:Landroid/graphics/Paint;

    int-to-float v2, p2

    const v3, 0x3e851eb8    # 0.26f

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 77
    iget-object v1, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 78
    new-instance v1, Lcom/android/launcher3/badge/BadgeRenderer$IconDrawer;

    const v2, 0x7f0b0083

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v1, p0, v2}, Lcom/android/launcher3/badge/BadgeRenderer$IconDrawer;-><init>(Lcom/android/launcher3/badge/BadgeRenderer;I)V

    iput-object v1, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mLargeIconDrawer:Lcom/android/launcher3/badge/BadgeRenderer$IconDrawer;

    .line 79
    new-instance v1, Lcom/android/launcher3/badge/BadgeRenderer$IconDrawer;

    const v2, 0x7f0b0084

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/badge/BadgeRenderer$IconDrawer;-><init>(Lcom/android/launcher3/badge/BadgeRenderer;I)V

    iput-object v1, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mSmallIconDrawer:Lcom/android/launcher3/badge/BadgeRenderer$IconDrawer;

    .line 81
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 82
    iget-object v1, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mTextPaint:Landroid/graphics/Paint;

    const-string/jumbo v2, "0"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 83
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mTextHeight:I

    .line 85
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v5}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mBackgroundsWithShadow:Landroid/util/SparseArray;

    .line 87
    const v0, 0x7f0a0023

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/launcher3/graphics/IconPalette;->fromDominantColor(I)Lcom/android/launcher3/graphics/IconPalette;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mIconPalette:Lcom/android/launcher3/graphics/IconPalette;

    .line 88
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lcom/android/launcher3/badge/BadgeInfo;Landroid/graphics/Rect;FLandroid/graphics/Point;)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 100
    iget-object v0, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mIconPalette:Lcom/android/launcher3/graphics/IconPalette;

    iget v1, v1, Lcom/android/launcher3/graphics/IconPalette;->textColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/android/launcher3/badge/BadgeInfo;->isIconLarge()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mLargeIconDrawer:Lcom/android/launcher3/badge/BadgeRenderer$IconDrawer;

    .line 103
    :goto_0
    if-nez p2, :cond_2

    .line 105
    :goto_1
    if-nez p2, :cond_3

    const-string/jumbo v0, "0"

    .line 107
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 108
    iget v2, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mSize:I

    .line 110
    iget-object v0, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mBackgroundsWithShadow:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 111
    if-nez v0, :cond_0

    .line 112
    iget v0, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mSize:I

    const/4 v3, -0x1

    invoke-static {v3, v2, v0}, Lcom/android/launcher3/graphics/ShadowGenerator;->createPillWithShadow(III)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 113
    iget-object v3, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mBackgroundsWithShadow:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 115
    :cond_0
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->save(I)I

    .line 117
    iget v1, p3, Landroid/graphics/Rect;->right:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 118
    iget v2, p3, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mSize:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 123
    const v3, 0x3f19999a    # 0.6f

    mul-float/2addr p4, v3

    .line 125
    iget v3, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mOffset:I

    iget v4, p5, Landroid/graphics/Point;->x:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 126
    iget v4, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mOffset:I

    iget v5, p5, Landroid/graphics/Point;->y:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 127
    add-int/2addr v1, v3

    int-to-float v1, v1

    sub-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 128
    invoke-virtual {p1, p4, p4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 130
    iget-object v1, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mBackgroundPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mIconPalette:Lcom/android/launcher3/graphics/IconPalette;

    iget-object v2, v2, Lcom/android/launcher3/graphics/IconPalette;->backgroundColorMatrixFilter:Landroid/graphics/ColorMatrixColorFilter;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 131
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 152
    iget-object v2, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mBackgroundPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mIconPalette:Lcom/android/launcher3/graphics/IconPalette;

    iget-object v3, v3, Lcom/android/launcher3/graphics/IconPalette;->saturatedBackgroundColorMatrixFilter:Landroid/graphics/ColorMatrixColorFilter;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 153
    neg-int v2, v1

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    .line 154
    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v3, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 153
    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 156
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 157
    return-void

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mSmallIconDrawer:Lcom/android/launcher3/badge/BadgeRenderer$IconDrawer;

    goto :goto_0

    .line 104
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mIconPalette:Lcom/android/launcher3/graphics/IconPalette;

    iget v2, v2, Lcom/android/launcher3/graphics/IconPalette;->backgroundColor:I

    iget v3, p0, Lcom/android/launcher3/badge/BadgeRenderer;->mSize:I

    invoke-static {v0}, Lcom/android/launcher3/badge/BadgeRenderer$IconDrawer;->-get0(Lcom/android/launcher3/badge/BadgeRenderer$IconDrawer;)I

    move-result v0

    .line 103
    invoke-virtual {p2, v1, v2, v3, v0}, Lcom/android/launcher3/badge/BadgeInfo;->getNotificationIconForBadge(Landroid/content/Context;III)Landroid/graphics/Shader;

    goto/16 :goto_1

    .line 106
    :cond_3
    invoke-virtual {p2}, Lcom/android/launcher3/badge/BadgeInfo;->getNotificationCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2
.end method
