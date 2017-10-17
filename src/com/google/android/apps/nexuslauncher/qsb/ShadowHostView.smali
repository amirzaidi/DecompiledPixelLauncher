.class public Lcom/google/android/apps/nexuslauncher/qsb/ShadowHostView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field private static final e:I

.field private static final f:I


# instance fields
.field private g:Landroid/graphics/Bitmap;

.field private final h:Landroid/graphics/BlurMaskFilter;

.field private final i:I

.field private j:[J

.field private final k:I

.field private final mCanvas:Landroid/graphics/Canvas;

.field private final mPaint:Landroid/graphics/Paint;

.field private mShadowBitmap:Landroid/graphics/Bitmap;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const v0, 0x42b28000    # 89.25f

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sput v0, Lcom/google/android/apps/nexuslauncher/qsb/ShadowHostView;->f:I

    .line 33
    const/high16 v0, 0x42190000    # 38.25f

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sput v0, Lcom/google/android/apps/nexuslauncher/qsb/ShadowHostView;->e:I

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/nexuslauncher/qsb/ShadowHostView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/nexuslauncher/qsb/ShadowHostView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/ShadowHostView;->mCanvas:Landroid/graphics/Canvas;

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/ShadowHostView;->mPaint:Landroid/graphics/Paint;

    .line 60
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/ShadowHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b009d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/ShadowHostView;->k:I

    .line 61
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/ShadowHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b009e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/ShadowHostView;->i:I

    .line 63
    new-instance v0, Landroid/graphics/BlurMaskFilter;

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/ShadowHostView;->k:I

    int-to-float v1, v1

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, v1, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/ShadowHostView;->h:Landroid/graphics/BlurMaskFilter;

    .line 64
    return-void
.end method

.method private c(Lcom/google/android/apps/nexuslauncher/qsb/a;)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 68
    const/4 v0, 0x3

    new-array v1, v0, [J

    iget-wide v2, p1, Lcom/google/android/apps/nexuslauncher/qsb/a;->a:J

    aput-wide v2, v1, v5

    iget v0, p1, Lcom/google/android/apps/nexuslauncher/qsb/a;->b:I

    int-to-long v2, v0

    aput-wide v2, v1, v4

    iget-object v0, p1, Lcom/google/android/apps/nexuslauncher/qsb/a;->d:Landroid/widget/RemoteViews;

    invoke-virtual {v0}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v0

    int-to-long v2, v0

    const/4 v0, 0x2

    aput-wide v2, v1, v0

    .line 69
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/ShadowHostView;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/ShadowHostView;->j:[J

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    :try_start_0
    iget-object v0, p1, Lcom/google/android/apps/nexuslauncher/qsb/a;->d:Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/ShadowHostView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/qsb/ShadowHostView;->mView:Landroid/view/View;

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    return v4

    .line 75
    :catch_0
    move-exception v0

    .line 76
    const-string/jumbo v2, "ShadowHostView"

    const-string/jumbo v3, "View reapply failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/ShadowHostView;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/qsb/ShadowHostView;->removeView(Landroid/view/View;)V

    .line 80
    iput-object v6, p0, Lcom/google/android/apps/nexuslauncher/qsb/ShadowHostView;->mView:Landroid/view/View;

    .line 85
    :cond_1
    :try_start_1
    iget-object v0, p1, Lcom/google/android/apps/nexuslauncher/qsb/a;->d:Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/ShadowHostView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, p0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/ShadowHostView;->mView:Landroid/view/View;

    .line 86
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/ShadowHostView;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/google/android/apps/nexuslauncher/qsb/ShadowHostView;->d(Landroid/view/View;)V

    .line 87
    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/ShadowHostView;->j:[J

    .line 88
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/ShadowHostView;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/qsb/ShadowHostView;->addView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 89
    return v4

    .line 90
    :catch_1
    move-exception v0

    .line 91
    const-string/jumbo v1, "ShadowHostView"

    const-string/jumbo v2, "View apply failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    return v5
.end method

.method private d(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 102
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 103
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v1, v1, v1, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 110
    :cond_0
    return-void

    .line 104
    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 105
    check-cast p1, Landroid/view/ViewGroup;

    .line 106
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 107
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/apps/nexuslauncher/qsb/ShadowHostView;->d(Landroid/view/View;)V

    .line 106
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public static e(Lcom/google/android/apps/nexuslauncher/qsb/a;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 164
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->d:Landroid/widget/RemoteViews;

    if-nez v0, :cond_1

    .line 165
    :cond_0
    return-object v1

    .line 167
    :cond_1
    instance-of v0, p2, Lcom/google/android/apps/nexuslauncher/qsb/ShadowHostView;

    if-eqz v0, :cond_2

    move-object v0, p2

    :goto_0
    check-cast v0, Lcom/google/android/apps/nexuslauncher/qsb/ShadowHostView;

    .line 170
    invoke-direct {v0, p0}, Lcom/google/android/apps/nexuslauncher/qsb/ShadowHostView;->c(Lcom/google/android/apps/nexuslauncher/qsb/a;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    return-object v0

    .line 168
    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 169
    const v2, 0x7f04002a

    const/4 v3, 0x0

    .line 168
    invoke-virtual {v0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 170
    goto :goto_1
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/high16 v3, -0x1000000

    const/4 v5, 0x0

    .line 114
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/ShadowHostView;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/ShadowHostView;->getHeight()I

    move-result v0

    if-gtz v0, :cond_1

    .line 115
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 116
    return-void

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/ShadowHostView;->g:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/ShadowHostView;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/ShadowHostView;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_6

    .line 121
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/ShadowHostView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/ShadowHostView;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/ShadowHostView;->g:Landroid/graphics/Bitmap;

    .line 129
    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/ShadowHostView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/ShadowHostView;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 130
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/ShadowHostView;->mCanvas:Landroid/graphics/Canvas;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 131
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/ShadowHostView;->mCanvas:Landroid/graphics/Canvas;

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 134
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/ShadowHostView;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/ShadowHostView;->k:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/ShadowHostView;->k:I

    add-int/2addr v0, v1

    .line 135
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/ShadowHostView;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/ShadowHostView;->k:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/ShadowHostView;->k:I

    add-int/2addr v1, v2

    .line 136
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/ShadowHostView;->mShadowBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/ShadowHostView;->mShadowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-eq v2, v0, :cond_7

    .line 138
    :cond_4
    :goto_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/ShadowHostView;->mShadowBitmap:Landroid/graphics/Bitmap;

    .line 142
    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/ShadowHostView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/ShadowHostView;->mShadowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 143
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/ShadowHostView;->mCanvas:Landroid/graphics/Canvas;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 144
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/ShadowHostView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/ShadowHostView;->h:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 145
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/ShadowHostView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 146
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/ShadowHostView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/ShadowHostView;->g:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/ShadowHostView;->k:I

    int-to-float v2, v2

    iget v3, p0, Lcom/google/android/apps/nexuslauncher/qsb/ShadowHostView;->k:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/qsb/ShadowHostView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 147
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/ShadowHostView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 148
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/ShadowHostView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 150
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/ShadowHostView;->k:I

    neg-int v0, v0

    int-to-float v0, v0

    .line 151
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/ShadowHostView;->k:I

    neg-int v1, v1

    int-to-float v1, v1

    .line 153
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/ShadowHostView;->mPaint:Landroid/graphics/Paint;

    sget v3, Lcom/google/android/apps/nexuslauncher/qsb/ShadowHostView;->e:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 154
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/ShadowHostView;->mShadowBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/qsb/ShadowHostView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 157
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/ShadowHostView;->mPaint:Landroid/graphics/Paint;

    sget v3, Lcom/google/android/apps/nexuslauncher/qsb/ShadowHostView;->f:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 158
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/ShadowHostView;->mShadowBitmap:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/google/android/apps/nexuslauncher/qsb/ShadowHostView;->i:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/qsb/ShadowHostView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 160
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 161
    return-void

    .line 120
    :cond_6
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/ShadowHostView;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/ShadowHostView;->getWidth()I

    move-result v1

    if-eq v0, v1, :cond_3

    goto/16 :goto_0

    .line 137
    :cond_7
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/ShadowHostView;->mShadowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-eq v2, v1, :cond_5

    goto :goto_1
.end method
