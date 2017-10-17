.class public abstract Lcom/google/protobuf/nano/e;
.super Lcom/google/protobuf/nano/a;
.source "SourceFile"


# instance fields
.field protected Lb:Lcom/google/protobuf/nano/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/protobuf/nano/a;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/google/protobuf/nano/a;
    .locals 1

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/google/protobuf/nano/e;->clone()Lcom/google/protobuf/nano/e;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protobuf/nano/e;
    .locals 1

    .prologue
    .line 165
    invoke-super {p0}, Lcom/google/protobuf/nano/a;->clone()Lcom/google/protobuf/nano/a;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/e;

    .line 166
    invoke-static {p0, v0}, Lcom/google/protobuf/nano/d;->SR(Lcom/google/protobuf/nano/e;Lcom/google/protobuf/nano/e;)V

    .line 167
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/google/protobuf/nano/e;->clone()Lcom/google/protobuf/nano/e;

    move-result-object v0

    return-object v0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 50
    iget-object v1, p0, Lcom/google/protobuf/nano/e;->Lb:Lcom/google/protobuf/nano/h;

    if-eqz v1, :cond_0

    move v1, v0

    .line 51
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/nano/e;->Lb:Lcom/google/protobuf/nano/h;

    invoke-virtual {v2}, Lcom/google/protobuf/nano/h;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 52
    iget-object v2, p0, Lcom/google/protobuf/nano/e;->Lb:Lcom/google/protobuf/nano/h;

    invoke-virtual {v2, v0}, Lcom/google/protobuf/nano/h;->Tg(I)Lcom/google/protobuf/nano/k;

    move-result-object v2

    .line 53
    invoke-virtual {v2}, Lcom/google/protobuf/nano/k;->computeSerializedSize()I

    move-result v2

    add-int/2addr v1, v2

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 56
    :cond_1
    return v1
.end method

.method public writeTo(Lcom/google/protobuf/nano/b;)V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/protobuf/nano/e;->Lb:Lcom/google/protobuf/nano/h;

    if-nez v0, :cond_0

    .line 62
    return-void

    .line 64
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/nano/e;->Lb:Lcom/google/protobuf/nano/h;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/h;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 65
    iget-object v1, p0, Lcom/google/protobuf/nano/e;->Lb:Lcom/google/protobuf/nano/h;

    invoke-virtual {v1, v0}, Lcom/google/protobuf/nano/h;->Tg(I)Lcom/google/protobuf/nano/k;

    move-result-object v1

    .line 66
    invoke-virtual {v1, p1}, Lcom/google/protobuf/nano/k;->writeTo(Lcom/google/protobuf/nano/b;)V

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_1
    return-void
.end method
