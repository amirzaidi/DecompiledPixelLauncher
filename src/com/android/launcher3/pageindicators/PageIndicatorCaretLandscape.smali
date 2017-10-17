.class public Lcom/android/launcher3/pageindicators/PageIndicatorCaretLandscape;
.super Lcom/android/launcher3/pageindicators/PageIndicator;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/pageindicators/PageIndicatorCaretLandscape;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/pageindicators/PageIndicatorCaretLandscape;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/pageindicators/PageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0044

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 46
    new-instance v1, Lcom/android/launcher3/pageindicators/CaretDrawable;

    invoke-direct {v1, p1}, Lcom/android/launcher3/pageindicators/CaretDrawable;-><init>(Landroid/content/Context;)V

    .line 47
    invoke-virtual {v1, v2, v2, v0, v0}, Lcom/android/launcher3/pageindicators/CaretDrawable;->setBounds(IIII)V

    .line 48
    invoke-virtual {p0, v1}, Lcom/android/launcher3/pageindicators/PageIndicatorCaretLandscape;->setCaretDrawable(Lcom/android/launcher3/pageindicators/CaretDrawable;)V

    .line 50
    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHapticFeedbackTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/pageindicators/PageIndicatorCaretLandscape;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 52
    invoke-virtual {p0, v0}, Lcom/android/launcher3/pageindicators/PageIndicatorCaretLandscape;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mFocusHandler:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/pageindicators/PageIndicatorCaretLandscape;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 54
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/android/launcher3/pageindicators/PageIndicatorCaretLandscape;->getCaretDrawable()Lcom/android/launcher3/pageindicators/CaretDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/pageindicators/CaretDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 59
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 60
    invoke-virtual {p0}, Lcom/android/launcher3/pageindicators/PageIndicatorCaretLandscape;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    .line 61
    invoke-virtual {p0}, Lcom/android/launcher3/pageindicators/PageIndicatorCaretLandscape;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int v0, v3, v0

    int-to-float v0, v0

    .line 60
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 62
    invoke-virtual {p0}, Lcom/android/launcher3/pageindicators/PageIndicatorCaretLandscape;->getCaretDrawable()Lcom/android/launcher3/pageindicators/CaretDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/pageindicators/CaretDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 63
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 64
    return-void
.end method
