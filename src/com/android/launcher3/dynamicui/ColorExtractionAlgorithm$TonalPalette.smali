.class Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final h:[F

.field final l:[F

.field final maxHue:F

.field final minHue:F

.field final s:[F


# direct methods
.method constructor <init>([F[F[F)V
    .locals 5

    .prologue
    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_0

    array-length v0, p2

    array-length v1, p3

    if-eq v0, v1, :cond_1

    .line 300
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "All arrays should have the same size. h: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 301
    invoke-static {p1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    .line 300
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 301
    const-string/jumbo v2, " s: "

    .line 300
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 301
    invoke-static {p2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    .line 300
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 301
    const-string/jumbo v2, " l: "

    .line 300
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 302
    invoke-static {p3}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    .line 300
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_1
    iput-object p1, p0, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;->h:[F

    .line 306
    iput-object p2, p0, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;->s:[F

    .line 307
    iput-object p3, p0, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;->l:[F

    .line 309
    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 310
    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    .line 312
    const/4 v0, 0x0

    array-length v3, p1

    :goto_0
    if-ge v0, v3, :cond_2

    aget v4, p1, v0

    .line 313
    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 314
    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 312
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 317
    :cond_2
    iput v2, p0, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;->minHue:F

    .line 318
    iput v1, p0, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;->maxHue:F

    .line 319
    return-void
.end method
