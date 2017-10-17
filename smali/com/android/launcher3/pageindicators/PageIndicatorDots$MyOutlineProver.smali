.class Lcom/android/launcher3/pageindicators/PageIndicatorDots$MyOutlineProver;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/pageindicators/PageIndicatorDots;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/pageindicators/PageIndicatorDots;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots$MyOutlineProver;->this$0:Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/pageindicators/PageIndicatorDots;Lcom/android/launcher3/pageindicators/PageIndicatorDots$MyOutlineProver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/pageindicators/PageIndicatorDots$MyOutlineProver;-><init>(Lcom/android/launcher3/pageindicators/PageIndicatorDots;)V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots$MyOutlineProver;->this$0:Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    invoke-static {v0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->-get2(Lcom/android/launcher3/pageindicators/PageIndicatorDots;)[F

    move-result-object v0

    if-nez v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots$MyOutlineProver;->this$0:Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    invoke-static {v0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->-wrap0(Lcom/android/launcher3/pageindicators/PageIndicatorDots;)Landroid/graphics/RectF;

    move-result-object v0

    .line 308
    iget v1, v0, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    .line 309
    iget v2, v0, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    .line 310
    iget v3, v0, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    .line 311
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v0

    .line 312
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots$MyOutlineProver;->this$0:Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    invoke-static {v0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->-get1(Lcom/android/launcher3/pageindicators/PageIndicatorDots;)F

    move-result v5

    move-object v0, p2

    .line 307
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 315
    :cond_0
    return-void
.end method
