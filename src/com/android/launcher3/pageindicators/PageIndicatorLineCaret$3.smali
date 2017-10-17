.class final Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret$3;
.super Landroid/util/Property;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1
    return-void
.end method


# virtual methods
.method public get(Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 98
    invoke-static {p1}, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->-get3(Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 96
    check-cast p1, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret$3;->get(Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public set(Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;Ljava/lang/Integer;)V
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->-set1(Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;I)I

    .line 104
    invoke-virtual {p1}, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->invalidate()V

    .line 105
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 101
    check-cast p1, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret$3;->set(Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;Ljava/lang/Integer;)V

    return-void
.end method
