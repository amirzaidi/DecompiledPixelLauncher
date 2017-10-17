.class Lcom/android/launcher3/badge/BadgeRenderer$IconDrawer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mCircleClipBitmap:Landroid/graphics/Bitmap;

.field private final mPadding:I

.field private final mPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/android/launcher3/badge/BadgeRenderer;


# direct methods
.method static synthetic -get0(Lcom/android/launcher3/badge/BadgeRenderer$IconDrawer;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/badge/BadgeRenderer$IconDrawer;->mPadding:I

    return v0
.end method

.method public constructor <init>(Lcom/android/launcher3/badge/BadgeRenderer;I)V
    .locals 5

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/launcher3/badge/BadgeRenderer$IconDrawer;->this$0:Lcom/android/launcher3/badge/BadgeRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/badge/BadgeRenderer$IconDrawer;->mPaint:Landroid/graphics/Paint;

    .line 168
    iput p2, p0, Lcom/android/launcher3/badge/BadgeRenderer$IconDrawer;->mPadding:I

    .line 169
    invoke-static {p1}, Lcom/android/launcher3/badge/BadgeRenderer;->-get0(Lcom/android/launcher3/badge/BadgeRenderer;)I

    move-result v0

    invoke-static {p1}, Lcom/android/launcher3/badge/BadgeRenderer;->-get0(Lcom/android/launcher3/badge/BadgeRenderer;)I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/badge/BadgeRenderer$IconDrawer;->mCircleClipBitmap:Landroid/graphics/Bitmap;

    .line 170
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .line 171
    iget-object v1, p0, Lcom/android/launcher3/badge/BadgeRenderer$IconDrawer;->mCircleClipBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 172
    invoke-static {p1}, Lcom/android/launcher3/badge/BadgeRenderer;->-get0(Lcom/android/launcher3/badge/BadgeRenderer;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-static {p1}, Lcom/android/launcher3/badge/BadgeRenderer;->-get0(Lcom/android/launcher3/badge/BadgeRenderer;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-static {p1}, Lcom/android/launcher3/badge/BadgeRenderer;->-get0(Lcom/android/launcher3/badge/BadgeRenderer;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v3, p2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/launcher3/badge/BadgeRenderer$IconDrawer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 173
    return-void
.end method


# virtual methods
.method public drawIcon(Landroid/graphics/Shader;Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/launcher3/badge/BadgeRenderer$IconDrawer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 177
    iget-object v0, p0, Lcom/android/launcher3/badge/BadgeRenderer$IconDrawer;->mCircleClipBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/launcher3/badge/BadgeRenderer$IconDrawer;->this$0:Lcom/android/launcher3/badge/BadgeRenderer;

    invoke-static {v1}, Lcom/android/launcher3/badge/BadgeRenderer;->-get0(Lcom/android/launcher3/badge/BadgeRenderer;)I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/launcher3/badge/BadgeRenderer$IconDrawer;->this$0:Lcom/android/launcher3/badge/BadgeRenderer;

    invoke-static {v2}, Lcom/android/launcher3/badge/BadgeRenderer;->-get0(Lcom/android/launcher3/badge/BadgeRenderer;)I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/launcher3/badge/BadgeRenderer$IconDrawer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 178
    iget-object v0, p0, Lcom/android/launcher3/badge/BadgeRenderer$IconDrawer;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 179
    return-void
.end method
