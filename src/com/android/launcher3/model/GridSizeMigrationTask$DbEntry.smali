.class Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;
.super Lcom/android/launcher3/ItemInfo;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public weight:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 822
    invoke-direct {p0}, Lcom/android/launcher3/ItemInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public addToContentValues(Landroid/content/ContentValues;)V
    .locals 4

    .prologue
    .line 859
    const-string/jumbo v0, "screen"

    iget-wide v2, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->screenId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 860
    const-string/jumbo v0, "cellX"

    iget v1, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 861
    const-string/jumbo v0, "cellY"

    iget v1, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 862
    const-string/jumbo v0, "spanX"

    iget v1, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 863
    const-string/jumbo v0, "spanY"

    iget v1, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 864
    return-void
.end method

.method public columnsSame(Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 854
    iget v1, p1, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellX:I

    iget v2, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellX:I

    if-ne v1, v2, :cond_0

    iget v1, p1, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellY:I

    iget v2, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellY:I

    if-ne v1, v2, :cond_0

    iget v1, p1, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanX:I

    iget v2, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanX:I

    if-ne v1, v2, :cond_0

    .line 855
    iget v1, p1, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanY:I

    iget v2, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanY:I

    if-ne v1, v2, :cond_0

    iget-wide v2, p1, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->screenId:J

    iget-wide v4, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->screenId:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 854
    :cond_0
    return v0
.end method

.method public compareTo(Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;)I
    .locals 3

    .prologue
    const/4 v1, 0x4

    .line 839
    iget v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->itemType:I

    if-ne v0, v1, :cond_1

    .line 840
    iget v0, p1, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->itemType:I

    if-ne v0, v1, :cond_0

    .line 841
    iget v0, p1, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanY:I

    iget v1, p1, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanX:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanX:I

    iget v2, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanY:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0

    .line 843
    :cond_0
    const/4 v0, -0x1

    return v0

    .line 845
    :cond_1
    iget v0, p1, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->itemType:I

    if-ne v0, v1, :cond_2

    .line 846
    const/4 v0, 0x1

    return v0

    .line 849
    :cond_2
    iget v0, p1, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->weight:F

    iget v1, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->weight:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 833
    check-cast p1, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->compareTo(Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;)I

    move-result v0

    return v0
.end method

.method public copy()Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;
    .locals 2

    .prologue
    .line 825
    new-instance v0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;

    invoke-direct {v0}, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;-><init>()V

    .line 826
    invoke-virtual {v0, p0}, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->copyFrom(Lcom/android/launcher3/ItemInfo;)V

    .line 827
    iget v1, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->weight:F

    iput v1, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->weight:F

    .line 828
    iget v1, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->minSpanX:I

    iput v1, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->minSpanX:I

    .line 829
    iget v1, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->minSpanY:I

    iput v1, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->minSpanY:I

    .line 830
    return-object v0
.end method
