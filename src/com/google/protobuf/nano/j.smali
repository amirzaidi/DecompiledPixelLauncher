.class final Lcom/google/protobuf/nano/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final PY:I

.field final PZ:[B


# virtual methods
.method computeSerializedSize()I
    .locals 2

    .prologue
    .line 58
    iget v0, p0, Lcom/google/protobuf/nano/j;->PY:I

    invoke-static {v0}, Lcom/google/protobuf/nano/b;->VN(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 59
    iget-object v1, p0, Lcom/google/protobuf/nano/j;->PZ:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 60
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 70
    if-ne p1, p0, :cond_0

    .line 71
    const/4 v0, 0x1

    return v0

    .line 73
    :cond_0
    instance-of v1, p1, Lcom/google/protobuf/nano/j;

    if-nez v1, :cond_1

    .line 74
    return v0

    .line 77
    :cond_1
    check-cast p1, Lcom/google/protobuf/nano/j;

    .line 78
    iget v1, p0, Lcom/google/protobuf/nano/j;->PY:I

    iget v2, p1, Lcom/google/protobuf/nano/j;->PY:I

    if-ne v1, v2, :cond_2

    iget-object v0, p0, Lcom/google/protobuf/nano/j;->PZ:[B

    iget-object v1, p1, Lcom/google/protobuf/nano/j;->PZ:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 84
    iget v0, p0, Lcom/google/protobuf/nano/j;->PY:I

    add-int/lit16 v0, v0, 0x20f

    .line 85
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/protobuf/nano/j;->PZ:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    .line 86
    return v0
.end method

.method writeTo(Lcom/google/protobuf/nano/b;)V
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/google/protobuf/nano/j;->PY:I

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/b;->VU(I)V

    .line 65
    iget-object v0, p0, Lcom/google/protobuf/nano/j;->PZ:[B

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/b;->Vm([B)V

    .line 66
    return-void
.end method
