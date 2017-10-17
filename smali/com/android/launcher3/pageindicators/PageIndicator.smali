.class public abstract Lcom/android/launcher3/pageindicators/PageIndicator;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private mCaretDrawable:Lcom/android/launcher3/pageindicators/CaretDrawable;

.field protected mNumPages:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/pageindicators/PageIndicator;->mNumPages:I

    .line 35
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/pageindicators/PageIndicator;->setWillNotDraw(Z)V

    .line 36
    return-void
.end method


# virtual methods
.method public addMarker()V
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/android/launcher3/pageindicators/PageIndicator;->mNumPages:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher3/pageindicators/PageIndicator;->mNumPages:I

    .line 44
    invoke-virtual {p0}, Lcom/android/launcher3/pageindicators/PageIndicator;->onPageCountChanged()V

    .line 45
    return-void
.end method

.method public getCaretDrawable()Lcom/android/launcher3/pageindicators/CaretDrawable;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicator;->mCaretDrawable:Lcom/android/launcher3/pageindicators/CaretDrawable;

    return-object v0
.end method

.method protected onPageCountChanged()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public removeMarker()V
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/android/launcher3/pageindicators/PageIndicator;->mNumPages:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/launcher3/pageindicators/PageIndicator;->mNumPages:I

    .line 49
    invoke-virtual {p0}, Lcom/android/launcher3/pageindicators/PageIndicator;->onPageCountChanged()V

    .line 50
    return-void
.end method

.method public setActiveMarker(I)V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method public setCaretDrawable(Lcom/android/launcher3/pageindicators/CaretDrawable;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicator;->mCaretDrawable:Lcom/android/launcher3/pageindicators/CaretDrawable;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicator;->mCaretDrawable:Lcom/android/launcher3/pageindicators/CaretDrawable;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/pageindicators/CaretDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 66
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/pageindicators/PageIndicator;->mCaretDrawable:Lcom/android/launcher3/pageindicators/CaretDrawable;

    .line 68
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicator;->mCaretDrawable:Lcom/android/launcher3/pageindicators/CaretDrawable;

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicator;->mCaretDrawable:Lcom/android/launcher3/pageindicators/CaretDrawable;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/pageindicators/CaretDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 71
    :cond_1
    return-void
.end method

.method public setMarkersCount(I)V
    .locals 0

    .prologue
    .line 53
    iput p1, p0, Lcom/android/launcher3/pageindicators/PageIndicator;->mNumPages:I

    .line 54
    invoke-virtual {p0}, Lcom/android/launcher3/pageindicators/PageIndicator;->onPageCountChanged()V

    .line 55
    return-void
.end method

.method public setScroll(II)V
    .locals 0

    .prologue
    .line 38
    return-void
.end method

.method public setShouldAutoHide(Z)V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public updateColor(Lcom/android/launcher3/dynamicui/ExtractedColors;)V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 81
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/pageindicators/PageIndicator;->getCaretDrawable()Lcom/android/launcher3/pageindicators/CaretDrawable;

    move-result-object v1

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
