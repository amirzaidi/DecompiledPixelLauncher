.class Lcom/google/research/reflection/layers/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/research/reflection/layers/c;


# instance fields
.field final synthetic ND:I

.field final synthetic NE:Lcom/google/research/reflection/layers/b;

.field final synthetic NF:Lcom/google/research/reflection/layers/b;


# direct methods
.method constructor <init>(ILcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;)V
    .locals 0

    .prologue
    .line 307
    iput p1, p0, Lcom/google/research/reflection/layers/g;->ND:I

    iput-object p2, p0, Lcom/google/research/reflection/layers/g;->NF:Lcom/google/research/reflection/layers/b;

    iput-object p3, p0, Lcom/google/research/reflection/layers/g;->NE:Lcom/google/research/reflection/layers/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Ub(I)Ljava/lang/Boolean;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 310
    iget v0, p0, Lcom/google/research/reflection/layers/g;->ND:I

    if-eq v0, v4, :cond_0

    .line 314
    iget-object v0, p0, Lcom/google/research/reflection/layers/g;->NF:Lcom/google/research/reflection/layers/b;

    iget-object v0, v0, Lcom/google/research/reflection/layers/b;->Nl:[D

    iget-object v1, p0, Lcom/google/research/reflection/layers/g;->NE:Lcom/google/research/reflection/layers/b;

    iget-object v1, v1, Lcom/google/research/reflection/layers/b;->Nl:[D

    aget-wide v2, v1, p1

    .line 315
    invoke-static {v2, v3}, Lcom/google/research/reflection/layers/k;->Ut(D)D

    move-result-wide v2

    aput-wide v2, v0, p1

    .line 317
    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/google/research/reflection/layers/g;->NF:Lcom/google/research/reflection/layers/b;

    iget-object v0, v0, Lcom/google/research/reflection/layers/b;->Nl:[D

    iget-object v1, p0, Lcom/google/research/reflection/layers/g;->NE:Lcom/google/research/reflection/layers/b;

    iget-object v1, v1, Lcom/google/research/reflection/layers/b;->Nl:[D

    aget-wide v2, v1, p1

    .line 312
    invoke-static {v2, v3}, Lcom/google/research/reflection/layers/k;->Uq(D)D

    move-result-wide v2

    aput-wide v2, v0, p1

    goto :goto_0
.end method
