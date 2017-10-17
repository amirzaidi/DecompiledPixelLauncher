.class final Lcom/android/launcher3/folder/Folder$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public compare(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/ItemInfo;)I
    .locals 2

    .prologue
    .line 1509
    iget v0, p1, Lcom/android/launcher3/ItemInfo;->rank:I

    iget v1, p2, Lcom/android/launcher3/ItemInfo;->rank:I

    if-eq v0, v1, :cond_0

    .line 1510
    iget v0, p1, Lcom/android/launcher3/ItemInfo;->rank:I

    iget v1, p2, Lcom/android/launcher3/ItemInfo;->rank:I

    sub-int/2addr v0, v1

    return v0

    .line 1511
    :cond_0
    iget v0, p1, Lcom/android/launcher3/ItemInfo;->cellY:I

    iget v1, p2, Lcom/android/launcher3/ItemInfo;->cellY:I

    if-eq v0, v1, :cond_1

    .line 1512
    iget v0, p1, Lcom/android/launcher3/ItemInfo;->cellY:I

    iget v1, p2, Lcom/android/launcher3/ItemInfo;->cellY:I

    sub-int/2addr v0, v1

    return v0

    .line 1514
    :cond_1
    iget v0, p1, Lcom/android/launcher3/ItemInfo;->cellX:I

    iget v1, p2, Lcom/android/launcher3/ItemInfo;->cellX:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1507
    check-cast p1, Lcom/android/launcher3/ItemInfo;

    check-cast p2, Lcom/android/launcher3/ItemInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/folder/Folder$3;->compare(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/ItemInfo;)I

    move-result v0

    return v0
.end method
