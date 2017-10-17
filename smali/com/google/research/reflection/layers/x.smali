.class Lcom/google/research/reflection/layers/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/research/reflection/layers/c;


# instance fields
.field final synthetic Ot:Lcom/google/research/reflection/layers/b;

.field final synthetic Ou:Lcom/google/research/reflection/layers/b;

.field final synthetic Ov:Lcom/google/research/reflection/layers/a;

.field final synthetic Ow:Lcom/google/research/reflection/layers/b;

.field final synthetic Ox:Lcom/google/research/reflection/layers/o;

.field final synthetic Oy:[Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/google/research/reflection/layers/o;Lcom/google/research/reflection/layers/a;[Ljava/util/ArrayList;Lcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/google/research/reflection/layers/x;->Ox:Lcom/google/research/reflection/layers/o;

    iput-object p2, p0, Lcom/google/research/reflection/layers/x;->Ov:Lcom/google/research/reflection/layers/a;

    iput-object p3, p0, Lcom/google/research/reflection/layers/x;->Oy:[Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/google/research/reflection/layers/x;->Ou:Lcom/google/research/reflection/layers/b;

    iput-object p5, p0, Lcom/google/research/reflection/layers/x;->Ot:Lcom/google/research/reflection/layers/b;

    iput-object p6, p0, Lcom/google/research/reflection/layers/x;->Ow:Lcom/google/research/reflection/layers/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Vo(I)Ljava/lang/Boolean;
    .locals 14

    .prologue
    const/4 v4, 0x0

    .line 258
    iget-object v0, p0, Lcom/google/research/reflection/layers/x;->Ox:Lcom/google/research/reflection/layers/o;

    iget v0, v0, Lcom/google/research/reflection/layers/o;->Ol:I

    div-int v5, p1, v0

    .line 259
    iget-object v0, p0, Lcom/google/research/reflection/layers/x;->Ox:Lcom/google/research/reflection/layers/o;

    iget v0, v0, Lcom/google/research/reflection/layers/o;->Ol:I

    rem-int v6, p1, v0

    .line 260
    iget-object v0, p0, Lcom/google/research/reflection/layers/x;->Ox:Lcom/google/research/reflection/layers/o;

    iget-object v1, p0, Lcom/google/research/reflection/layers/x;->Ov:Lcom/google/research/reflection/layers/a;

    invoke-virtual {v0, v1}, Lcom/google/research/reflection/layers/o;->VS(Lcom/google/research/reflection/layers/a;)Lcom/google/research/reflection/layers/b;

    move-result-object v7

    .line 261
    iget-object v0, p0, Lcom/google/research/reflection/layers/x;->Ox:Lcom/google/research/reflection/layers/o;

    iget v0, v0, Lcom/google/research/reflection/layers/o;->Ol:I

    mul-int v8, v5, v0

    .line 262
    iget-object v0, p0, Lcom/google/research/reflection/layers/x;->Ox:Lcom/google/research/reflection/layers/o;

    invoke-static {v0}, Lcom/google/research/reflection/layers/o;->VZ(Lcom/google/research/reflection/layers/o;)Lcom/google/research/reflection/layers/b;

    move-result-object v0

    iget-object v0, v0, Lcom/google/research/reflection/layers/b;->Mr:[D

    aget-wide v0, v0, v6

    .line 263
    iget-object v2, p0, Lcom/google/research/reflection/layers/x;->Ox:Lcom/google/research/reflection/layers/o;

    iget-boolean v2, v2, Lcom/google/research/reflection/layers/o;->Oj:Z

    if-nez v2, :cond_2

    move-wide v2, v0

    move v0, v4

    .line 268
    :goto_0
    iget-object v1, p0, Lcom/google/research/reflection/layers/x;->Ox:Lcom/google/research/reflection/layers/o;

    iget v1, v1, Lcom/google/research/reflection/layers/o;->Ok:I

    if-lt v0, v1, :cond_3

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/google/research/reflection/layers/x;->Ox:Lcom/google/research/reflection/layers/o;

    iget-boolean v0, v0, Lcom/google/research/reflection/layers/o;->Oc:Z

    if-nez v0, :cond_4

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/google/research/reflection/layers/x;->Ow:Lcom/google/research/reflection/layers/b;

    iget-object v0, v0, Lcom/google/research/reflection/layers/b;->Mr:[D

    add-int v1, v8, v6

    aput-wide v2, v0, v1

    .line 280
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 264
    :cond_2
    iget-object v2, p0, Lcom/google/research/reflection/layers/x;->Oy:[Ljava/util/ArrayList;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-wide v2, v0

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/reflection/common/d;

    .line 265
    iget v1, v0, Lcom/google/research/reflection/common/d;->Mc:F

    float-to-double v10, v1

    iget-object v1, p0, Lcom/google/research/reflection/layers/x;->Ox:Lcom/google/research/reflection/layers/o;

    invoke-static {v1}, Lcom/google/research/reflection/layers/o;->VT(Lcom/google/research/reflection/layers/o;)Z

    move-result v1

    iget v0, v0, Lcom/google/research/reflection/common/d;->Mb:I

    invoke-virtual {v7, v1, v0, v6}, Lcom/google/research/reflection/layers/b;->Vc(ZII)D

    move-result-wide v0

    mul-double/2addr v0, v10

    add-double/2addr v0, v2

    move-wide v2, v0

    .line 266
    goto :goto_1

    .line 269
    :cond_3
    iget-object v1, p0, Lcom/google/research/reflection/layers/x;->Ou:Lcom/google/research/reflection/layers/b;

    invoke-virtual {v1, v4, v5, v0}, Lcom/google/research/reflection/layers/b;->Vc(ZII)D

    move-result-wide v10

    iget-object v1, p0, Lcom/google/research/reflection/layers/x;->Ox:Lcom/google/research/reflection/layers/o;

    .line 270
    invoke-static {v1}, Lcom/google/research/reflection/layers/o;->VT(Lcom/google/research/reflection/layers/o;)Z

    move-result v1

    invoke-virtual {v7, v1, v0, v6}, Lcom/google/research/reflection/layers/b;->Vc(ZII)D

    move-result-wide v12

    mul-double/2addr v10, v12

    add-double/2addr v2, v10

    .line 268
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 273
    :cond_4
    iget-object v0, p0, Lcom/google/research/reflection/layers/x;->Ot:Lcom/google/research/reflection/layers/b;

    if-eqz v0, :cond_1

    move v0, v4

    .line 274
    :goto_2
    iget-object v1, p0, Lcom/google/research/reflection/layers/x;->Ox:Lcom/google/research/reflection/layers/o;

    iget v1, v1, Lcom/google/research/reflection/layers/o;->Ol:I

    if-ge v0, v1, :cond_1

    .line 275
    iget-object v1, p0, Lcom/google/research/reflection/layers/x;->Ot:Lcom/google/research/reflection/layers/b;

    invoke-virtual {v1, v4, v5, v0}, Lcom/google/research/reflection/layers/b;->Vc(ZII)D

    move-result-wide v10

    iget-object v1, p0, Lcom/google/research/reflection/layers/x;->Ox:Lcom/google/research/reflection/layers/o;

    .line 276
    invoke-static {v1}, Lcom/google/research/reflection/layers/o;->VY(Lcom/google/research/reflection/layers/o;)Lcom/google/research/reflection/layers/b;

    move-result-object v1

    invoke-virtual {v1, v4, v0, v6}, Lcom/google/research/reflection/layers/b;->Vc(ZII)D

    move-result-wide v12

    mul-double/2addr v10, v12

    add-double/2addr v2, v10

    .line 274
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method
