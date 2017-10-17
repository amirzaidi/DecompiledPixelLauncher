.class Lcom/android/launcher3/util/LongArrayMap$ValueIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private mNextIndex:I

.field final synthetic this$0:Lcom/android/launcher3/util/LongArrayMap;


# direct methods
.method constructor <init>(Lcom/android/launcher3/util/LongArrayMap;)V
    .locals 1

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/launcher3/util/LongArrayMap$ValueIterator;->this$0:Lcom/android/launcher3/util/LongArrayMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/util/LongArrayMap$ValueIterator;->mNextIndex:I

    .line 46
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 52
    iget v0, p0, Lcom/android/launcher3/util/LongArrayMap$ValueIterator;->mNextIndex:I

    iget-object v1, p0, Lcom/android/launcher3/util/LongArrayMap$ValueIterator;->this$0:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v1}, Lcom/android/launcher3/util/LongArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/launcher3/util/LongArrayMap$ValueIterator;->this$0:Lcom/android/launcher3/util/LongArrayMap;

    iget v1, p0, Lcom/android/launcher3/util/LongArrayMap$ValueIterator;->mNextIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/launcher3/util/LongArrayMap$ValueIterator;->mNextIndex:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LongArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
