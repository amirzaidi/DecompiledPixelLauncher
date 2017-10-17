.class Lcom/google/research/reflection/layers/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/research/reflection/layers/c;


# instance fields
.field final synthetic OP:I

.field final synthetic OQ:Lcom/google/research/reflection/layers/b;

.field final synthetic OR:Lcom/google/research/reflection/layers/b;


# direct methods
.method constructor <init>(Lcom/google/research/reflection/layers/o;ILcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;)V
    .locals 0

    .prologue
    .line 171
    iput p2, p0, Lcom/google/research/reflection/layers/t;->OP:I

    iput-object p3, p0, Lcom/google/research/reflection/layers/t;->OQ:Lcom/google/research/reflection/layers/b;

    iput-object p4, p0, Lcom/google/research/reflection/layers/t;->OR:Lcom/google/research/reflection/layers/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Ub(I)Ljava/lang/Boolean;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const-wide/16 v2, 0x0

    .line 174
    iget v0, p0, Lcom/google/research/reflection/layers/t;->OP:I

    if-eq v0, v8, :cond_0

    .line 178
    iget v0, p0, Lcom/google/research/reflection/layers/t;->OP:I

    if-eqz v0, :cond_2

    .line 182
    new-instance v0, Ljava/lang/RuntimeException;

    iget v1, p0, Lcom/google/research/reflection/layers/t;->OP:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Unsupported activation function: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/google/research/reflection/layers/t;->OQ:Lcom/google/research/reflection/layers/b;

    iget-object v0, v0, Lcom/google/research/reflection/layers/b;->Nl:[D

    aget-wide v0, v0, p1

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/google/research/reflection/layers/t;->OR:Lcom/google/research/reflection/layers/b;

    iget-object v0, v0, Lcom/google/research/reflection/layers/b;->Nl:[D

    aput-wide v2, v0, p1

    .line 184
    :cond_1
    :goto_0
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 179
    :cond_2
    iget-object v0, p0, Lcom/google/research/reflection/layers/t;->OR:Lcom/google/research/reflection/layers/b;

    iget-object v0, v0, Lcom/google/research/reflection/layers/b;->Nl:[D

    iget-object v1, p0, Lcom/google/research/reflection/layers/t;->OQ:Lcom/google/research/reflection/layers/b;

    iget-object v1, v1, Lcom/google/research/reflection/layers/b;->Nl:[D

    aget-wide v2, v1, p1

    iget-object v1, p0, Lcom/google/research/reflection/layers/t;->OQ:Lcom/google/research/reflection/layers/b;

    iget-object v1, v1, Lcom/google/research/reflection/layers/b;->Nl:[D

    aget-wide v4, v1, p1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v4, v6, v4

    mul-double/2addr v2, v4

    iget-object v1, p0, Lcom/google/research/reflection/layers/t;->OR:Lcom/google/research/reflection/layers/b;

    iget-object v1, v1, Lcom/google/research/reflection/layers/b;->Nl:[D

    aget-wide v4, v1, p1

    mul-double/2addr v2, v4

    aput-wide v2, v0, p1

    goto :goto_0
.end method
