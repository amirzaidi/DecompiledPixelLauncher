.class public Lcom/android/launcher3/discovery/RatingView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private final mColorGray:I

.field private final mColorHighlight:I

.field private final mStarDrawable:Landroid/graphics/drawable/Drawable;

.field private rating:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/discovery/RatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/discovery/RatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    invoke-virtual {p0}, Lcom/android/launcher3/discovery/RatingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020044

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/discovery/RatingView;->mStarDrawable:Landroid/graphics/drawable/Drawable;

    .line 55
    const/high16 v0, 0x1e000000

    iput v0, p0, Lcom/android/launcher3/discovery/RatingView;->mColorGray:I

    .line 56
    const/high16 v0, -0x76000000

    iput v0, p0, Lcom/android/launcher3/discovery/RatingView;->mColorHighlight:I

    .line 57
    return-void
.end method

.method private drawStars(Landroid/graphics/Canvas;FI)V
    .locals 10

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/android/launcher3/discovery/RatingView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 71
    div-int/lit8 v1, v0, 0x5

    .line 72
    int-to-float v0, v1

    const v2, 0x3f666666    # 0.9f

    mul-float/2addr v0, v2

    float-to-int v2, v0

    .line 73
    sub-int v3, v1, v2

    .line 74
    float-to-int v4, p2

    .line 75
    int-to-float v0, v4

    sub-float v5, p2, v0

    .line 77
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    .line 78
    mul-int v6, v0, v1

    add-int/2addr v6, v3

    .line 79
    iget-object v7, p0, Lcom/android/launcher3/discovery/RatingView;->mStarDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 80
    invoke-virtual {v7, p3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 81
    add-int v8, v6, v2

    add-int v9, v3, v2

    invoke-virtual {v7, v6, v3, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 82
    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, v5, v0

    if-lez v0, :cond_1

    .line 85
    mul-int v0, v4, v1

    add-int/2addr v0, v3

    .line 86
    new-instance v1, Landroid/graphics/drawable/ClipDrawable;

    iget-object v4, p0, Lcom/android/launcher3/discovery/RatingView;->mStarDrawable:Landroid/graphics/drawable/Drawable;

    .line 87
    const/4 v6, 0x3

    const/4 v7, 0x1

    .line 86
    invoke-direct {v1, v4, v6, v7}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 88
    invoke-virtual {v1, p3}, Landroid/graphics/drawable/ClipDrawable;->setTint(I)V

    .line 89
    const v4, 0x461c4000    # 10000.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/ClipDrawable;->setLevel(I)Z

    .line 90
    add-int v4, v0, v2

    add-int/2addr v2, v3

    invoke-virtual {v1, v0, v3, v4, v2}, Landroid/graphics/drawable/ClipDrawable;->setBounds(IIII)V

    .line 91
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/ClipDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 93
    :cond_1
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 65
    const/high16 v0, 0x40a00000    # 5.0f

    iget v1, p0, Lcom/android/launcher3/discovery/RatingView;->mColorGray:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/discovery/RatingView;->drawStars(Landroid/graphics/Canvas;FI)V

    .line 66
    iget v0, p0, Lcom/android/launcher3/discovery/RatingView;->rating:F

    iget v1, p0, Lcom/android/launcher3/discovery/RatingView;->mColorHighlight:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/discovery/RatingView;->drawStars(Landroid/graphics/Canvas;FI)V

    .line 67
    return-void
.end method

.method public setRating(F)V
    .locals 2

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/discovery/RatingView;->rating:F

    .line 61
    return-void
.end method
