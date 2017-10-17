.class Lcom/google/research/reflection/layers/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/research/reflection/layers/c;


# instance fields
.field final synthetic NY:Lcom/google/research/reflection/layers/b;

.field final synthetic NZ:Lcom/google/research/reflection/layers/b;

.field final synthetic Oa:Lcom/google/research/reflection/layers/o;

.field final synthetic Ob:[Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/google/research/reflection/layers/o;[Ljava/util/ArrayList;Lcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/google/research/reflection/layers/u;->Oa:Lcom/google/research/reflection/layers/o;

    iput-object p2, p0, Lcom/google/research/reflection/layers/u;->Ob:[Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/google/research/reflection/layers/u;->NZ:Lcom/google/research/reflection/layers/b;

    iput-object p4, p0, Lcom/google/research/reflection/layers/u;->NY:Lcom/google/research/reflection/layers/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Vo(I)Ljava/lang/Boolean;
    .locals 14

    .prologue
    const/4 v1, 0x0

    .line 140
    iget-object v0, p0, Lcom/google/research/reflection/layers/u;->Oa:Lcom/google/research/reflection/layers/o;

    iget v0, v0, Lcom/google/research/reflection/layers/o;->Ol:I

    div-int v2, p1, v0

    .line 141
    iget-object v0, p0, Lcom/google/research/reflection/layers/u;->Oa:Lcom/google/research/reflection/layers/o;

    iget v0, v0, Lcom/google/research/reflection/layers/o;->Ol:I

    rem-int v3, p1, v0

    .line 142
    iget-object v0, p0, Lcom/google/research/reflection/layers/u;->Oa:Lcom/google/research/reflection/layers/o;

    iget-object v0, v0, Lcom/google/research/reflection/layers/o;->On:Lcom/google/research/reflection/layers/b;

    iget-object v0, v0, Lcom/google/research/reflection/layers/b;->Mr:[D

    iget-object v4, p0, Lcom/google/research/reflection/layers/u;->Oa:Lcom/google/research/reflection/layers/o;

    iget v4, v4, Lcom/google/research/reflection/layers/o;->Ol:I

    mul-int/2addr v4, v2

    add-int/2addr v4, v3

    aget-wide v4, v0, v4

    .line 144
    iget-object v0, p0, Lcom/google/research/reflection/layers/u;->Oa:Lcom/google/research/reflection/layers/o;

    iget-boolean v0, v0, Lcom/google/research/reflection/layers/o;->Oj:Z

    if-nez v0, :cond_2

    move v0, v1

    .line 150
    :goto_0
    iget-object v6, p0, Lcom/google/research/reflection/layers/u;->Oa:Lcom/google/research/reflection/layers/o;

    iget v6, v6, Lcom/google/research/reflection/layers/o;->Ok:I

    if-lt v0, v6, :cond_3

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/google/research/reflection/layers/u;->Oa:Lcom/google/research/reflection/layers/o;

    iget-boolean v0, v0, Lcom/google/research/reflection/layers/o;->Oc:Z

    if-nez v0, :cond_4

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/google/research/reflection/layers/u;->Oa:Lcom/google/research/reflection/layers/o;

    invoke-static {v0}, Lcom/google/research/reflection/layers/o;->VV(Lcom/google/research/reflection/layers/o;)Lcom/google/research/reflection/layers/b;

    move-result-object v0

    iget-object v0, v0, Lcom/google/research/reflection/layers/b;->Mr:[D

    aget-wide v6, v0, v3

    add-double/2addr v4, v6

    aput-wide v4, v0, v3

    .line 163
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 145
    :cond_2
    iget-object v0, p0, Lcom/google/research/reflection/layers/u;->Ob:[Ljava/util/ArrayList;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/reflection/common/d;

    .line 146
    iget-object v7, p0, Lcom/google/research/reflection/layers/u;->Oa:Lcom/google/research/reflection/layers/o;

    invoke-static {v7}, Lcom/google/research/reflection/layers/o;->Wa(Lcom/google/research/reflection/layers/o;)Lcom/google/research/reflection/layers/b;

    move-result-object v7

    iget-object v7, v7, Lcom/google/research/reflection/layers/b;->Mr:[D

    iget v8, v0, Lcom/google/research/reflection/common/d;->Mb:I

    iget-object v9, p0, Lcom/google/research/reflection/layers/u;->Oa:Lcom/google/research/reflection/layers/o;

    iget v9, v9, Lcom/google/research/reflection/layers/o;->Ol:I

    mul-int/2addr v8, v9

    add-int/2addr v8, v3

    aget-wide v10, v7, v8

    iget v0, v0, Lcom/google/research/reflection/common/d;->Mc:F

    float-to-double v12, v0

    mul-double/2addr v12, v4

    add-double/2addr v10, v12

    aput-wide v10, v7, v8

    goto :goto_1

    .line 151
    :cond_3
    iget-object v6, p0, Lcom/google/research/reflection/layers/u;->Oa:Lcom/google/research/reflection/layers/o;

    invoke-static {v6}, Lcom/google/research/reflection/layers/o;->Wa(Lcom/google/research/reflection/layers/o;)Lcom/google/research/reflection/layers/b;

    move-result-object v6

    iget-object v6, v6, Lcom/google/research/reflection/layers/b;->Mr:[D

    iget-object v7, p0, Lcom/google/research/reflection/layers/u;->Oa:Lcom/google/research/reflection/layers/o;

    iget v7, v7, Lcom/google/research/reflection/layers/o;->Ol:I

    mul-int/2addr v7, v0

    add-int/2addr v7, v3

    aget-wide v8, v6, v7

    iget-object v10, p0, Lcom/google/research/reflection/layers/u;->NZ:Lcom/google/research/reflection/layers/b;

    iget-object v10, v10, Lcom/google/research/reflection/layers/b;->Mr:[D

    iget-object v11, p0, Lcom/google/research/reflection/layers/u;->Oa:Lcom/google/research/reflection/layers/o;

    iget v11, v11, Lcom/google/research/reflection/layers/o;->Ok:I

    mul-int/2addr v11, v2

    add-int/2addr v11, v0

    aget-wide v10, v10, v11

    mul-double/2addr v10, v4

    add-double/2addr v8, v10

    aput-wide v8, v6, v7

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    :cond_4
    iget-object v0, p0, Lcom/google/research/reflection/layers/u;->NY:Lcom/google/research/reflection/layers/b;

    if-eqz v0, :cond_1

    .line 157
    :goto_2
    iget-object v0, p0, Lcom/google/research/reflection/layers/u;->Oa:Lcom/google/research/reflection/layers/o;

    iget v0, v0, Lcom/google/research/reflection/layers/o;->Ol:I

    if-ge v1, v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/google/research/reflection/layers/u;->Oa:Lcom/google/research/reflection/layers/o;

    invoke-static {v0}, Lcom/google/research/reflection/layers/o;->VW(Lcom/google/research/reflection/layers/o;)Lcom/google/research/reflection/layers/b;

    move-result-object v0

    iget-object v0, v0, Lcom/google/research/reflection/layers/b;->Mr:[D

    iget-object v6, p0, Lcom/google/research/reflection/layers/u;->Oa:Lcom/google/research/reflection/layers/o;

    iget v6, v6, Lcom/google/research/reflection/layers/o;->Ol:I

    mul-int/2addr v6, v1

    add-int/2addr v6, v3

    aget-wide v8, v0, v6

    iget-object v7, p0, Lcom/google/research/reflection/layers/u;->NY:Lcom/google/research/reflection/layers/b;

    iget-object v7, v7, Lcom/google/research/reflection/layers/b;->Mr:[D

    iget-object v10, p0, Lcom/google/research/reflection/layers/u;->Oa:Lcom/google/research/reflection/layers/o;

    iget v10, v10, Lcom/google/research/reflection/layers/o;->Ol:I

    mul-int/2addr v10, v2

    add-int/2addr v10, v1

    aget-wide v10, v7, v10

    mul-double/2addr v10, v4

    add-double/2addr v8, v10

    aput-wide v8, v0, v6

    .line 157
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method
