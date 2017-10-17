.class public Lcom/google/android/apps/nexuslauncher/qsb/DoubleShadowTextClock;
.super Landroid/widget/TextClock;
.source "SourceFile"


# instance fields
.field private final A:I

.field private final B:F

.field private final C:I

.field private final D:F

.field private final z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/nexuslauncher/qsb/DoubleShadowTextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/nexuslauncher/qsb/DoubleShadowTextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    sget-object v0, Lcom/android/launcher3/R$styleable;->DoubleShadowTextClock:[I

    .line 34
    invoke-virtual {p1, p2, v0, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 36
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/DoubleShadowTextClock;->z:F

    .line 37
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/DoubleShadowTextClock;->B:F

    .line 38
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/DoubleShadowTextClock;->D:F

    .line 40
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/DoubleShadowTextClock;->A:I

    .line 41
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/DoubleShadowTextClock;->C:I

    .line 42
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 45
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/DoubleShadowTextClock;->B:F

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/DoubleShadowTextClock;->D:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/DoubleShadowTextClock;->z:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 46
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/DoubleShadowTextClock;->C:I

    .line 45
    invoke-virtual {p0, v0, v2, v2, v1}, Lcom/google/android/apps/nexuslauncher/qsb/DoubleShadowTextClock;->setShadowLayer(FFFI)V

    .line 47
    return-void
.end method


# virtual methods
.method public F(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/DoubleShadowTextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    .line 59
    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/DoubleShadowTextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 60
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 51
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/DoubleShadowTextClock;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/DoubleShadowTextClock;->B:F

    iget v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/DoubleShadowTextClock;->D:F

    iget v3, p0, Lcom/google/android/apps/nexuslauncher/qsb/DoubleShadowTextClock;->C:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 52
    invoke-super {p0, p1}, Landroid/widget/TextClock;->onDraw(Landroid/graphics/Canvas;)V

    .line 53
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/DoubleShadowTextClock;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/DoubleShadowTextClock;->z:F

    iget v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/DoubleShadowTextClock;->A:I

    invoke-virtual {v0, v1, v4, v4, v2}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 54
    invoke-super {p0, p1}, Landroid/widget/TextClock;->onDraw(Landroid/graphics/Canvas;)V

    .line 55
    return-void
.end method
