.class Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$ColorRange;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mHue:Landroid/util/Range;

.field private mLightness:Landroid/util/Range;

.field private mSaturation:Landroid/util/Range;


# direct methods
.method constructor <init>(Landroid/util/Range;Landroid/util/Range;Landroid/util/Range;)V
    .locals 0

    .prologue
    .line 758
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 759
    iput-object p1, p0, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$ColorRange;->mHue:Landroid/util/Range;

    .line 760
    iput-object p2, p0, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$ColorRange;->mSaturation:Landroid/util/Range;

    .line 761
    iput-object p3, p0, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$ColorRange;->mLightness:Landroid/util/Range;

    .line 762
    return-void
.end method


# virtual methods
.method containsColor(FFF)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 765
    iget-object v0, p0, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$ColorRange;->mHue:Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 766
    return v2

    .line 767
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$ColorRange;->mSaturation:Landroid/util/Range;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 768
    return v2

    .line 769
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$ColorRange;->mLightness:Landroid/util/Range;

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 770
    return v2

    .line 772
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 785
    const-string/jumbo v0, "H: %s, S: %s, L %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$ColorRange;->mHue:Landroid/util/Range;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$ColorRange;->mSaturation:Landroid/util/Range;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$ColorRange;->mLightness:Landroid/util/Range;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
