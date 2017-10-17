.class public Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private basePreviewOffsetX:I

.field private basePreviewOffsetY:I

.field public delegateCellX:I

.field public delegateCellY:I

.field public isClipping:Z

.field private final mClipPorterDuffXfermode:Landroid/graphics/PorterDuffXfermode;

.field private final mClipShader:Landroid/graphics/RadialGradient;

.field private mColorMultiplier:F

.field private mDrawingDelegate:Lcom/android/launcher3/CellLayout;

.field private mInvalidateDelegate:Landroid/view/View;

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPath:Landroid/graphics/Path;

.field private mScale:F

.field mScaleAnimator:Landroid/animation/ValueAnimator;

.field private final mShaderMatrix:Landroid/graphics/Matrix;

.field private final mShadowPorterDuffXfermode:Landroid/graphics/PorterDuffXfermode;

.field private mShadowShader:Landroid/graphics/RadialGradient;

.field private mStrokeWidth:F

.field public previewSize:I


# direct methods
.method static synthetic -get0(Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->basePreviewOffsetX:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->basePreviewOffsetY:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;)F
    .locals 1

    iget v0, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mScale:F

    return v0
.end method

.method static synthetic -set0(Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;F)F
    .locals 0

    iput p1, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mColorMultiplier:F

    return p1
.end method

.method static synthetic -set1(Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;F)F
    .locals 0

    iput p1, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mScale:F

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->drawingDelegated()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->clearDrawingDelegate()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;Landroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->clipCanvasHardware(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;Landroid/graphics/Canvas;Landroid/graphics/Region$Op;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->clipCanvasSoftware(Landroid/graphics/Canvas;Landroid/graphics/Region$Op;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;Lcom/android/launcher3/CellLayout;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->delegateDrawing(Lcom/android/launcher3/CellLayout;II)V

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/high16 v4, -0x1000000

    const/4 v1, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 521
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 520
    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mClipPorterDuffXfermode:Landroid/graphics/PorterDuffXfermode;

    .line 525
    new-instance v0, Landroid/graphics/RadialGradient;

    .line 526
    const/4 v2, 0x0

    filled-new-array {v4, v4, v2}, [I

    move-result-object v4

    .line 527
    const/4 v2, 0x3

    new-array v5, v2, [F

    fill-array-data v5, :array_0

    .line 528
    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    .line 525
    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mClipShader:Landroid/graphics/RadialGradient;

    .line 531
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 530
    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mShadowPorterDuffXfermode:Landroid/graphics/PorterDuffXfermode;

    .line 532
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mShadowShader:Landroid/graphics/RadialGradient;

    .line 534
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 535
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mPath:Landroid/graphics/Path;

    .line 537
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mPaint:Landroid/graphics/Paint;

    .line 539
    iput v3, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mScale:F

    .line 540
    iput v3, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mColorMultiplier:F

    .line 554
    iput-boolean v7, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->isClipping:Z

    .line 518
    return-void

    .line 527
    nop

    :array_0
    .array-data 4
        0x0
        0x3f7fbe77    # 0.999f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private animateScale(FFLjava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 7

    .prologue
    .line 750
    iget v3, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mScale:F

    .line 753
    iget v5, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mColorMultiplier:F

    .line 756
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mScaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 757
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 760
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/launcher3/LauncherAnimUtils;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mScaleAnimator:Landroid/animation/ValueAnimator;

    .line 762
    iget-object v6, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground$1;

    move-object v1, p0

    move v2, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground$1;-><init>(Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;FFFF)V

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 771
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground$2;

    invoke-direct {v1, p0, p3, p4}, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground$2;-><init>(Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 788
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mScaleAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 789
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 790
    return-void

    .line 760
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private clearDrawingDelegate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 736
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mDrawingDelegate:Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_0

    .line 737
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mDrawingDelegate:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/CellLayout;->removeFolderBackground(Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;)V

    .line 740
    :cond_0
    iput-object v1, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mDrawingDelegate:Lcom/android/launcher3/CellLayout;

    .line 741
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->invalidate()V

    .line 742
    return-void
.end method

.method private clipCanvasHardware(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 710
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 711
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mClipPorterDuffXfermode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 713
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->getScaledRadius()I

    move-result v0

    int-to-float v0, v0

    .line 714
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 715
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->getOffsetX()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->getOffsetY()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v0, v3

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 716
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mClipShader:Landroid/graphics/RadialGradient;

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/RadialGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 717
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mClipShader:Landroid/graphics/RadialGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 718
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 719
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 720
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 721
    return-void
.end method

.method private clipCanvasSoftware(Landroid/graphics/Canvas;Landroid/graphics/Region$Op;)V
    .locals 5

    .prologue
    .line 702
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 703
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->getScaledRadius()I

    move-result v0

    int-to-float v0, v0

    .line 704
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->getOffsetX()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->getOffsetY()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v0

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 705
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 706
    return-void
.end method

.method private delegateDrawing(Lcom/android/launcher3/CellLayout;II)V
    .locals 1

    .prologue
    .line 724
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mDrawingDelegate:Lcom/android/launcher3/CellLayout;

    if-eq v0, p1, :cond_0

    .line 725
    invoke-virtual {p1, p0}, Lcom/android/launcher3/CellLayout;->addFolderBackground(Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;)V

    .line 728
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mDrawingDelegate:Lcom/android/launcher3/CellLayout;

    .line 729
    iput p2, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->delegateCellX:I

    .line 730
    iput p3, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->delegateCellY:I

    .line 732
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->invalidate()V

    .line 733
    return-void
.end method

.method private drawCircle(Landroid/graphics/Canvas;F)V
    .locals 4

    .prologue
    .line 695
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->getScaledRadius()I

    move-result v0

    int-to-float v0, v0

    .line 696
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->getOffsetX()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->getOffsetY()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    .line 697
    sub-float/2addr v0, p2

    iget-object v3, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mPaint:Landroid/graphics/Paint;

    .line 696
    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 698
    return-void
.end method

.method private drawingDelegated()Z
    .locals 1

    .prologue
    .line 745
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mDrawingDelegate:Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public animateToAccept(Lcom/android/launcher3/CellLayout;II)V
    .locals 4

    .prologue
    .line 793
    new-instance v0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground$3;-><init>(Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;Lcom/android/launcher3/CellLayout;II)V

    .line 799
    const/high16 v1, 0x3fa00000    # 1.25f

    const/high16 v2, 0x3fc00000    # 1.5f

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->animateScale(FFLjava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 800
    return-void
.end method

.method public animateToRest()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 806
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mDrawingDelegate:Lcom/android/launcher3/CellLayout;

    .line 807
    iget v1, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->delegateCellX:I

    .line 808
    iget v2, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->delegateCellY:I

    .line 810
    new-instance v3, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground$4;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground$4;-><init>(Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;Lcom/android/launcher3/CellLayout;II)V

    .line 816
    new-instance v0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground$5;

    invoke-direct {v0, p0}, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground$5;-><init>(Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;)V

    .line 822
    invoke-direct {p0, v4, v4, v3, v0}, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->animateScale(FFLjava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 823
    return-void
.end method

.method public drawBackground(Landroid/graphics/Canvas;)V
    .locals 11

    .prologue
    const/16 v3, 0xf5

    const/4 v5, 0x0

    .line 634
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 635
    const/high16 v0, 0x43610000    # 225.0f

    iget v1, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mColorMultiplier:F

    const/high16 v2, 0x43200000    # 160.0f

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    .line 636
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mPaint:Landroid/graphics/Paint;

    invoke-static {v0, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 638
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->drawCircle(Landroid/graphics/Canvas;F)V

    .line 641
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mShadowShader:Landroid/graphics/RadialGradient;

    if-nez v0, :cond_0

    .line 642
    return-void

    .line 644
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->getScaledRadius()I

    move-result v0

    int-to-float v7, v0

    .line 645
    iget v0, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mStrokeWidth:F

    add-float v8, v7, v0

    .line 646
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 647
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->getOffsetX()I

    move-result v9

    .line 648
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->getOffsetY()I

    move-result v10

    .line 650
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 651
    int-to-float v0, v9

    iget v1, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mStrokeWidth:F

    sub-float v1, v0, v1

    int-to-float v2, v10

    .line 652
    int-to-float v0, v9

    add-float/2addr v0, v7

    add-float v3, v0, v8

    int-to-float v0, v10

    add-float/2addr v0, v8

    add-float v4, v0, v8

    .line 653
    const/16 v6, 0x14

    move-object v0, p1

    .line 651
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v0

    .line 660
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v8, v8}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 661
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mShaderMatrix:Landroid/graphics/Matrix;

    int-to-float v2, v9

    add-float/2addr v2, v7

    int-to-float v3, v10

    add-float/2addr v3, v8

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 662
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mShadowShader:Landroid/graphics/RadialGradient;

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/RadialGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 663
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mShadowShader:Landroid/graphics/RadialGradient;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 664
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 665
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 667
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 668
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mShadowPorterDuffXfermode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 669
    int-to-float v1, v9

    add-float/2addr v1, v7

    int-to-float v2, v10

    add-float/2addr v2, v7

    iget-object v3, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v7, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 670
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 673
    :cond_1
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 674
    return-void

    .line 656
    :cond_2
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    move-result v0

    .line 657
    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-direct {p0, p1, v1}, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->clipCanvasSoftware(Landroid/graphics/Canvas;Landroid/graphics/Region$Op;)V

    goto :goto_0
.end method

.method public drawBackgroundStroke(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    const/16 v2, 0xf5

    .line 677
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 678
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 679
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mStrokeWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 680
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->drawCircle(Landroid/graphics/Canvas;F)V

    .line 681
    return-void
.end method

.method public drawLeaveBehind(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    const/16 v3, 0xf5

    .line 684
    iget v0, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mScale:F

    .line 685
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mScale:F

    .line 687
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 688
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mPaint:Landroid/graphics/Paint;

    const/16 v2, 0xa0

    invoke-static {v2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 689
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->drawCircle(Landroid/graphics/Canvas;F)V

    .line 691
    iput v0, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mScale:F

    .line 692
    return-void
.end method

.method getOffsetX()I
    .locals 3

    .prologue
    .line 603
    iget v0, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->basePreviewOffsetX:I

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->getScaledRadius()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->getRadius()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method getOffsetY()I
    .locals 3

    .prologue
    .line 607
    iget v0, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->basePreviewOffsetY:I

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->getScaledRadius()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->getRadius()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method getRadius()I
    .locals 1

    .prologue
    .line 595
    iget v0, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->previewSize:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method getScaleProgress()F
    .locals 2

    .prologue
    .line 615
    iget v0, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    const/high16 v1, 0x3e800000    # 0.25f

    div-float/2addr v0, v1

    return v0
.end method

.method getScaledRadius()I
    .locals 2

    .prologue
    .line 599
    iget v0, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mScale:F

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->getRadius()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method invalidate()V
    .locals 1

    .prologue
    .line 619
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mInvalidateDelegate:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mInvalidateDelegate:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 623
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mDrawingDelegate:Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_1

    .line 624
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mDrawingDelegate:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->invalidate()V

    .line 626
    :cond_1
    return-void
.end method

.method setInvalidateDelegate(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 629
    iput-object p1, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mInvalidateDelegate:Landroid/view/View;

    .line 630
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->invalidate()V

    .line 631
    return-void
.end method

.method public setup(Landroid/util/DisplayMetrics;Lcom/android/launcher3/DeviceProfile;Landroid/view/View;II)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 570
    iput-object p3, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mInvalidateDelegate:Landroid/view/View;

    .line 572
    iget v0, p2, Lcom/android/launcher3/DeviceProfile;->folderIconSizePx:I

    .line 573
    iget v2, p2, Lcom/android/launcher3/DeviceProfile;->folderIconPreviewPadding:I

    .line 575
    mul-int/lit8 v4, v2, 0x2

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->previewSize:I

    .line 577
    iget v0, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->previewSize:I

    sub-int v0, p4, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->basePreviewOffsetX:I

    .line 578
    iget v0, p2, Lcom/android/launcher3/DeviceProfile;->folderBackgroundOffset:I

    add-int/2addr v0, v2

    add-int/2addr v0, p5

    iput v0, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->basePreviewOffsetY:I

    .line 581
    iget v0, p1, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mStrokeWidth:F

    .line 583
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->getScaledRadius()I

    move-result v0

    int-to-float v2, v0

    .line 584
    iget v0, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mStrokeWidth:F

    add-float v6, v2, v0

    .line 585
    const/16 v0, 0x28

    invoke-static {v0, v7, v7, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    .line 586
    new-instance v0, Landroid/graphics/RadialGradient;

    .line 587
    new-array v4, v8, [I

    aput v5, v4, v7

    aput v7, v4, v9

    .line 588
    new-array v5, v8, [F

    div-float/2addr v2, v6

    aput v2, v5, v7

    aput v3, v5, v9

    .line 589
    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    .line 586
    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mShadowShader:Landroid/graphics/RadialGradient;

    .line 591
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->invalidate()V

    .line 592
    return-void
.end method
