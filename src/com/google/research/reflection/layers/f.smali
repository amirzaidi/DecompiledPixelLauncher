.class Lcom/google/research/reflection/layers/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/research/reflection/layers/c;


# instance fields
.field final synthetic NA:Lcom/google/research/reflection/layers/b;

.field final synthetic NB:Lcom/google/research/reflection/layers/b;

.field final synthetic NC:[Ljava/util/ArrayList;

.field final synthetic Ny:Lcom/google/research/reflection/layers/s;

.field final synthetic Nz:Lcom/google/research/reflection/layers/b;


# direct methods
.method constructor <init>(Lcom/google/research/reflection/layers/s;[Ljava/util/ArrayList;Lcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/google/research/reflection/layers/f;->Ny:Lcom/google/research/reflection/layers/s;

    iput-object p2, p0, Lcom/google/research/reflection/layers/f;->NC:[Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/google/research/reflection/layers/f;->NB:Lcom/google/research/reflection/layers/b;

    iput-object p4, p0, Lcom/google/research/reflection/layers/f;->Nz:Lcom/google/research/reflection/layers/b;

    iput-object p5, p0, Lcom/google/research/reflection/layers/f;->NA:Lcom/google/research/reflection/layers/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Ub(I)Ljava/lang/Boolean;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 110
    new-instance v7, Lcom/google/research/reflection/layers/b;

    iget-object v0, p0, Lcom/google/research/reflection/layers/f;->Ny:Lcom/google/research/reflection/layers/s;

    iget v0, v0, Lcom/google/research/reflection/layers/s;->Pa:I

    iget-object v2, p0, Lcom/google/research/reflection/layers/f;->Ny:Lcom/google/research/reflection/layers/s;

    iget v2, v2, Lcom/google/research/reflection/layers/s;->OO:I

    invoke-direct {v7, v0, v2}, Lcom/google/research/reflection/layers/b;-><init>(II)V

    .line 111
    iget-object v0, p0, Lcom/google/research/reflection/layers/f;->Ny:Lcom/google/research/reflection/layers/s;

    iget-object v0, v0, Lcom/google/research/reflection/layers/s;->ON:[Lcom/google/research/reflection/layers/i;

    aget-object v0, v0, p1

    iget-object v2, p0, Lcom/google/research/reflection/layers/f;->NC:[Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/research/reflection/layers/f;->NB:Lcom/google/research/reflection/layers/b;

    iget-object v4, p0, Lcom/google/research/reflection/layers/f;->Nz:Lcom/google/research/reflection/layers/b;

    invoke-virtual {v0, v2, v3, v4, v7}, Lcom/google/research/reflection/layers/i;->Uk([Ljava/util/ArrayList;Lcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;)V

    .line 112
    iget-object v0, p0, Lcom/google/research/reflection/layers/f;->Ny:Lcom/google/research/reflection/layers/s;

    iget v0, v0, Lcom/google/research/reflection/layers/s;->OO:I

    mul-int v8, p1, v0

    move v2, v1

    .line 113
    :goto_0
    iget-object v0, p0, Lcom/google/research/reflection/layers/f;->Ny:Lcom/google/research/reflection/layers/s;

    iget v0, v0, Lcom/google/research/reflection/layers/s;->Pa:I

    if-lt v2, v0, :cond_0

    .line 118
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    move v6, v1

    .line 114
    :goto_1
    iget-object v0, p0, Lcom/google/research/reflection/layers/f;->Ny:Lcom/google/research/reflection/layers/s;

    iget v0, v0, Lcom/google/research/reflection/layers/s;->OO:I

    if-lt v6, v0, :cond_1

    .line 113
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/google/research/reflection/layers/f;->NA:Lcom/google/research/reflection/layers/b;

    add-int v3, v8, v6

    invoke-virtual {v7, v1, v2, v6}, Lcom/google/research/reflection/layers/b;->TP(ZII)D

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/google/research/reflection/layers/b;->TQ(ZIID)V

    .line 114
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1
.end method
