.class public Lcom/android/launcher3/util/LongArrayMap;
.super Landroid/util/LongSparseArray;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/util/LongSparseArray;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Landroid/util/LongSparseArray;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/android/launcher3/util/LongArrayMap;->clone()Lcom/android/launcher3/util/LongArrayMap;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/android/launcher3/util/LongArrayMap;
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Landroid/util/LongSparseArray;->clone()Landroid/util/LongSparseArray;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/LongArrayMap;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/android/launcher3/util/LongArrayMap;->clone()Lcom/android/launcher3/util/LongArrayMap;

    move-result-object v0

    return-object v0
.end method

.method public containsKey(J)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/util/LongArrayMap;->indexOfKey(J)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/android/launcher3/util/LongArrayMap$ValueIterator;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/LongArrayMap$ValueIterator;-><init>(Lcom/android/launcher3/util/LongArrayMap;)V

    return-object v0
.end method
