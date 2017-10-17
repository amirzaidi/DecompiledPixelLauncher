.class public Lcom/google/research/reflection/common/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public Mb:I

.field public Mc:F


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/google/research/reflection/common/d;->Mb:I

    .line 12
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/research/reflection/common/d;->Mc:F

    .line 13
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/google/research/reflection/common/d;->Mb:I

    .line 17
    iput p2, p0, Lcom/google/research/reflection/common/d;->Mc:F

    .line 18
    return-void
.end method


# virtual methods
.method public Uw(Lcom/google/research/reflection/common/d;)I
    .locals 2

    .prologue
    .line 44
    iget v0, p0, Lcom/google/research/reflection/common/d;->Mc:F

    iget v1, p1, Lcom/google/research/reflection/common/d;->Mc:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    return v0
.end method

.method public clone()Lcom/google/research/reflection/common/d;
    .locals 3

    .prologue
    .line 38
    new-instance v0, Lcom/google/research/reflection/common/d;

    iget v1, p0, Lcom/google/research/reflection/common/d;->Mb:I

    iget v2, p0, Lcom/google/research/reflection/common/d;->Mc:F

    invoke-direct {v0, v1, v2}, Lcom/google/research/reflection/common/d;-><init>(IF)V

    .line 39
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 6
    invoke-virtual {p0}, Lcom/google/research/reflection/common/d;->clone()Lcom/google/research/reflection/common/d;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 6
    check-cast p1, Lcom/google/research/reflection/common/d;

    invoke-virtual {p0, p1}, Lcom/google/research/reflection/common/d;->Uw(Lcom/google/research/reflection/common/d;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 27
    instance-of v0, p1, Lcom/google/research/reflection/common/d;

    if-eqz v0, :cond_1

    .line 30
    iget v1, p0, Lcom/google/research/reflection/common/d;->Mb:I

    move-object v0, p1

    check-cast v0, Lcom/google/research/reflection/common/d;

    iget v0, v0, Lcom/google/research/reflection/common/d;->Mb:I

    if-eq v1, v0, :cond_2

    .line 33
    :cond_0
    return v2

    .line 28
    :cond_1
    return v2

    .line 30
    :cond_2
    iget v0, p0, Lcom/google/research/reflection/common/d;->Mc:F

    check-cast p1, Lcom/google/research/reflection/common/d;

    iget v1, p1, Lcom/google/research/reflection/common/d;->Mc:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 22
    iget v0, p0, Lcom/google/research/reflection/common/d;->Mb:I

    mul-int/lit8 v0, v0, 0x1f

    add-int/lit8 v0, v0, 0x11

    iget v1, p0, Lcom/google/research/reflection/common/d;->Mc:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 49
    iget v0, p0, Lcom/google/research/reflection/common/d;->Mb:I

    iget v1, p0, Lcom/google/research/reflection/common/d;->Mc:F

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x1b

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
