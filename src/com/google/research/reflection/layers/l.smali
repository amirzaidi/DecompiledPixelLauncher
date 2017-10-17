.class Lcom/google/research/reflection/layers/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/research/reflection/layers/c;


# instance fields
.field final synthetic Nu:Lcom/google/research/reflection/layers/o;


# direct methods
.method constructor <init>(Lcom/google/research/reflection/layers/o;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/google/research/reflection/layers/l;->Nu:Lcom/google/research/reflection/layers/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Vo(I)Ljava/lang/Boolean;
    .locals 12

    .prologue
    const/4 v6, 0x0

    move v2, v6

    .line 194
    :goto_0
    iget-object v0, p0, Lcom/google/research/reflection/layers/l;->Nu:Lcom/google/research/reflection/layers/o;

    iget v0, v0, Lcom/google/research/reflection/layers/o;->Ok:I

    if-lt v2, v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/google/research/reflection/layers/l;->Nu:Lcom/google/research/reflection/layers/o;

    iget-boolean v0, v0, Lcom/google/research/reflection/layers/o;->Oc:Z

    if-nez v0, :cond_2

    .line 206
    :goto_1
    iget-object v0, p0, Lcom/google/research/reflection/layers/l;->Nu:Lcom/google/research/reflection/layers/o;

    invoke-static {v0}, Lcom/google/research/reflection/layers/o;->VV(Lcom/google/research/reflection/layers/o;)Lcom/google/research/reflection/layers/b;

    move-result-object v0

    iget-object v0, v0, Lcom/google/research/reflection/layers/b;->Mr:[D

    aget-wide v0, v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_3

    .line 209
    iget-object v0, p0, Lcom/google/research/reflection/layers/l;->Nu:Lcom/google/research/reflection/layers/o;

    invoke-static {v0}, Lcom/google/research/reflection/layers/o;->VZ(Lcom/google/research/reflection/layers/o;)Lcom/google/research/reflection/layers/b;

    move-result-object v0

    iget-object v0, v0, Lcom/google/research/reflection/layers/b;->Mr:[D

    aget-wide v2, v0, p1

    invoke-static {}, Lcom/google/research/reflection/layers/v;->Wj()D

    move-result-wide v4

    iget-object v1, p0, Lcom/google/research/reflection/layers/l;->Nu:Lcom/google/research/reflection/layers/o;

    .line 210
    invoke-static {v1}, Lcom/google/research/reflection/layers/o;->VV(Lcom/google/research/reflection/layers/o;)Lcom/google/research/reflection/layers/b;

    move-result-object v1

    iget-object v1, v1, Lcom/google/research/reflection/layers/b;->Mr:[D

    aget-wide v6, v1, p1

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    aput-wide v2, v0, p1

    .line 211
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/google/research/reflection/layers/l;->Nu:Lcom/google/research/reflection/layers/o;

    iget v0, v0, Lcom/google/research/reflection/layers/o;->Ol:I

    mul-int v3, v2, v0

    .line 196
    iget-object v0, p0, Lcom/google/research/reflection/layers/l;->Nu:Lcom/google/research/reflection/layers/o;

    invoke-static {v0}, Lcom/google/research/reflection/layers/o;->VX(Lcom/google/research/reflection/layers/o;)Lcom/google/research/reflection/layers/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/research/reflection/layers/l;->Nu:Lcom/google/research/reflection/layers/o;

    invoke-static {v1}, Lcom/google/research/reflection/layers/o;->VT(Lcom/google/research/reflection/layers/o;)Z

    move-result v1

    .line 197
    invoke-static {}, Lcom/google/research/reflection/layers/v;->Wj()D

    move-result-wide v4

    neg-double v4, v4

    iget-object v7, p0, Lcom/google/research/reflection/layers/l;->Nu:Lcom/google/research/reflection/layers/o;

    invoke-static {v7}, Lcom/google/research/reflection/layers/o;->Wa(Lcom/google/research/reflection/layers/o;)Lcom/google/research/reflection/layers/b;

    move-result-object v7

    iget-object v7, v7, Lcom/google/research/reflection/layers/b;->Mr:[D

    add-int/2addr v3, p1

    aget-wide v8, v7, v3

    mul-double/2addr v4, v8

    move v3, p1

    .line 196
    invoke-virtual/range {v0 .. v5}, Lcom/google/research/reflection/layers/b;->Vk(ZIID)V

    .line 194
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/google/research/reflection/layers/l;->Nu:Lcom/google/research/reflection/layers/o;

    iget v0, v0, Lcom/google/research/reflection/layers/o;->Ol:I

    mul-int/2addr v0, v6

    .line 202
    iget-object v1, p0, Lcom/google/research/reflection/layers/l;->Nu:Lcom/google/research/reflection/layers/o;

    invoke-static {v1}, Lcom/google/research/reflection/layers/o;->VY(Lcom/google/research/reflection/layers/o;)Lcom/google/research/reflection/layers/b;

    move-result-object v1

    iget-object v1, v1, Lcom/google/research/reflection/layers/b;->Mr:[D

    add-int v2, v0, p1

    aget-wide v4, v1, v2

    .line 203
    invoke-static {}, Lcom/google/research/reflection/layers/v;->Wj()D

    move-result-wide v8

    iget-object v3, p0, Lcom/google/research/reflection/layers/l;->Nu:Lcom/google/research/reflection/layers/o;

    invoke-static {v3}, Lcom/google/research/reflection/layers/o;->VW(Lcom/google/research/reflection/layers/o;)Lcom/google/research/reflection/layers/b;

    move-result-object v3

    iget-object v3, v3, Lcom/google/research/reflection/layers/b;->Mr:[D

    add-int/2addr v0, p1

    aget-wide v10, v3, v0

    mul-double/2addr v8, v10

    sub-double/2addr v4, v8

    aput-wide v4, v1, v2

    .line 200
    add-int/lit8 v6, v6, 0x1

    :cond_2
    iget-object v0, p0, Lcom/google/research/reflection/layers/l;->Nu:Lcom/google/research/reflection/layers/o;

    iget v0, v0, Lcom/google/research/reflection/layers/o;->Ol:I

    if-lt v6, v0, :cond_1

    goto/16 :goto_1

    .line 207
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "NaN in bias gradients..."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
