.class public Lcom/google/android/gms/common/data/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field protected final jQ:Lcom/google/android/gms/common/data/a;

.field protected jR:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/l;->ht(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/data/a;

    iput-object v0, p0, Lcom/google/android/gms/common/data/c;->jQ:Lcom/google/android/gms/common/data/a;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/common/data/c;->jR:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/common/data/c;->jR:I

    iget-object v1, p0, Lcom/google/android/gms/common/data/c;->jQ:Lcom/google/android/gms/common/data/a;

    invoke-interface {v1}, Lcom/google/android/gms/common/data/a;->mW()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/common/data/c;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/data/c;->jQ:Lcom/google/android/gms/common/data/a;

    iget v1, p0, Lcom/google/android/gms/common/data/c;->jR:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/common/data/c;->jR:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/data/a;->mX(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    iget v1, p0, Lcom/google/android/gms/common/data/c;->jR:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2e

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Cannot advance the iterator beyond "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Cannot remove elements from a DataBufferIterator"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
