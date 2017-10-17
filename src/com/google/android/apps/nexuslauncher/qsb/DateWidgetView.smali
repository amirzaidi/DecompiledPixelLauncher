.class public Lcom/google/android/apps/nexuslauncher/qsb/DateWidgetView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private F:Ljava/lang/String;

.field private G:F

.field private H:Lcom/google/android/apps/nexuslauncher/qsb/DoubleShadowTextClock;

.field private I:Lcom/google/android/apps/nexuslauncher/qsb/DoubleShadowTextClock;

.field private J:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/DateWidgetView;->F:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/DateWidgetView;->J:I

    .line 39
    return-void
.end method

.method private H()V
    .locals 1

    .prologue
    .line 114
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/DateWidgetView;->F:Ljava/lang/String;

    .line 115
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/qsb/DateWidgetView;->I()V

    .line 116
    return-void
.end method

.method private I()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 119
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/DateWidgetView;->J:I

    if-gtz v0, :cond_0

    .line 120
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/DateWidgetView;->H:Lcom/google/android/apps/nexuslauncher/qsb/DoubleShadowTextClock;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/qsb/DoubleShadowTextClock;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 124
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/DateWidgetView;->F:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    return-void

    .line 127
    :cond_1
    iput-object v3, p0, Lcom/google/android/apps/nexuslauncher/qsb/DateWidgetView;->F:Ljava/lang/String;

    .line 128
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 129
    return-void

    .line 132
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/DateWidgetView;->H:Lcom/google/android/apps/nexuslauncher/qsb/DoubleShadowTextClock;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/qsb/DoubleShadowTextClock;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    .line 133
    invoke-virtual {v4}, Landroid/text/TextPaint;->getTextSize()F

    move-result v5

    .line 136
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/DateWidgetView;->G:F

    move v2, v0

    move v0, v1

    .line 137
    :goto_0
    const/16 v6, 0xa

    if-ge v0, v6, :cond_3

    .line 138
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 139
    invoke-virtual {v4, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 140
    iget v7, p0, Lcom/google/android/apps/nexuslauncher/qsb/DateWidgetView;->J:I

    int-to-float v7, v7

    cmpg-float v7, v6, v7

    if-gtz v7, :cond_4

    .line 146
    :cond_3
    invoke-static {v2, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_5

    .line 148
    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 153
    :goto_1
    return-void

    .line 143
    :cond_4
    iget v7, p0, Lcom/google/android/apps/nexuslauncher/qsb/DateWidgetView;->J:I

    int-to-float v7, v7

    mul-float/2addr v2, v7

    div-float/2addr v2, v6

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/DateWidgetView;->H:Lcom/google/android/apps/nexuslauncher/qsb/DoubleShadowTextClock;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/nexuslauncher/qsb/DoubleShadowTextClock;->setTextSize(IF)V

    .line 151
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/qsb/DateWidgetView;->K()V

    goto :goto_1
.end method

.method private J(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 96
    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 99
    invoke-virtual {v0}, Landroid/widget/LinearLayout$LayoutParams;->getLayoutDirection()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->resolveLayoutDirection(I)V

    .line 100
    return-void
.end method

.method private K()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 58
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/DateWidgetView;->H:Lcom/google/android/apps/nexuslauncher/qsb/DoubleShadowTextClock;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/qsb/DoubleShadowTextClock;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 64
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 65
    const-string/jumbo v2, "x"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v4, v3, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 66
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 67
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    .line 73
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/DateWidgetView;->I:Lcom/google/android/apps/nexuslauncher/qsb/DoubleShadowTextClock;

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v2, v4, v4, v4, v0}, Lcom/google/android/apps/nexuslauncher/qsb/DoubleShadowTextClock;->setPadding(IIII)V

    .line 75
    :cond_0
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/qsb/DateWidgetView;->I()V

    .line 111
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    .line 43
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 45
    const v0, 0x7f0e0038

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/qsb/DateWidgetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/qsb/DoubleShadowTextClock;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/DateWidgetView;->H:Lcom/google/android/apps/nexuslauncher/qsb/DoubleShadowTextClock;

    .line 46
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/DateWidgetView;->H:Lcom/google/android/apps/nexuslauncher/qsb/DoubleShadowTextClock;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/qsb/DoubleShadowTextClock;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/DateWidgetView;->G:F

    .line 47
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/DateWidgetView;->H:Lcom/google/android/apps/nexuslauncher/qsb/DoubleShadowTextClock;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/nexuslauncher/qsb/DoubleShadowTextClock;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 48
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/DateWidgetView;->H:Lcom/google/android/apps/nexuslauncher/qsb/DoubleShadowTextClock;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string/jumbo v2, "MMMMd"

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/nexuslauncher/qsb/DoubleShadowTextClock;->F(Ljava/lang/CharSequence;)V

    .line 50
    const v0, 0x7f0e0039

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/qsb/DateWidgetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/qsb/DoubleShadowTextClock;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/DateWidgetView;->I:Lcom/google/android/apps/nexuslauncher/qsb/DoubleShadowTextClock;

    .line 51
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/DateWidgetView;->I:Lcom/google/android/apps/nexuslauncher/qsb/DoubleShadowTextClock;

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/DateWidgetView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "EEEE"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "yyyy"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const v3, 0x7f0c0097

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/nexuslauncher/qsb/DoubleShadowTextClock;->F(Ljava/lang/CharSequence;)V

    .line 53
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/qsb/DateWidgetView;->K()V

    .line 54
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/DateWidgetView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 80
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 81
    iget-object v2, v0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    div-int/2addr v1, v2

    .line 82
    iget v2, v0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    sub-int v2, v1, v2

    div-int/lit8 v2, v2, 0x2

    .line 85
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/DateWidgetView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b009a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    int-to-float v4, v1

    div-float/2addr v3, v4

    float-to-double v4, v3

    .line 84
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    const/4 v4, 0x1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 86
    iget-object v0, v0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    sub-int/2addr v0, v3

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/DateWidgetView;->J:I

    .line 87
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/qsb/DateWidgetView;->H()V

    .line 89
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/DateWidgetView;->H:Lcom/google/android/apps/nexuslauncher/qsb/DoubleShadowTextClock;

    invoke-direct {p0, v0, v2}, Lcom/google/android/apps/nexuslauncher/qsb/DateWidgetView;->J(Landroid/view/View;I)V

    .line 90
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/DateWidgetView;->I:Lcom/google/android/apps/nexuslauncher/qsb/DoubleShadowTextClock;

    invoke-direct {p0, v0, v2}, Lcom/google/android/apps/nexuslauncher/qsb/DateWidgetView;->J(Landroid/view/View;I)V

    .line 91
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 92
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 106
    return-void
.end method
