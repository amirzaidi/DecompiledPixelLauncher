.class Lcom/google/research/reflection/layers/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/research/reflection/layers/c;


# instance fields
.field final synthetic Nn:Lcom/google/research/reflection/layers/b;

.field final synthetic No:Lcom/google/research/reflection/layers/m;

.field final synthetic Np:I

.field final synthetic Nq:Lcom/google/research/reflection/layers/b;

.field final synthetic Nr:Lcom/google/research/reflection/layers/b;


# direct methods
.method constructor <init>(Lcom/google/research/reflection/layers/m;ILcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/research/reflection/layers/d;->No:Lcom/google/research/reflection/layers/m;

    iput p2, p0, Lcom/google/research/reflection/layers/d;->Np:I

    iput-object p3, p0, Lcom/google/research/reflection/layers/d;->Nr:Lcom/google/research/reflection/layers/b;

    iput-object p4, p0, Lcom/google/research/reflection/layers/d;->Nn:Lcom/google/research/reflection/layers/b;

    iput-object p5, p0, Lcom/google/research/reflection/layers/d;->Nq:Lcom/google/research/reflection/layers/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Ub(I)Ljava/lang/Boolean;
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 41
    iget v0, p0, Lcom/google/research/reflection/layers/d;->Np:I

    if-eqz v0, :cond_0

    .line 49
    iget v0, p0, Lcom/google/research/reflection/layers/d;->Np:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    .line 52
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "unsupported activation function for the output layer"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/google/research/reflection/layers/d;->No:Lcom/google/research/reflection/layers/m;

    invoke-static {v0}, Lcom/google/research/reflection/layers/m;->Uy(Lcom/google/research/reflection/layers/m;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/google/research/reflection/layers/d;->No:Lcom/google/research/reflection/layers/m;

    invoke-static {v0}, Lcom/google/research/reflection/layers/m;->Uy(Lcom/google/research/reflection/layers/m;)I

    move-result v0

    if-eq v0, v8, :cond_2

    .line 54
    :goto_0
    iget-object v0, p0, Lcom/google/research/reflection/layers/d;->Nq:Lcom/google/research/reflection/layers/b;

    if-nez v0, :cond_4

    .line 57
    :goto_1
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/google/research/reflection/layers/d;->Nr:Lcom/google/research/reflection/layers/b;

    iget-object v0, v0, Lcom/google/research/reflection/layers/b;->Nl:[D

    iget-object v1, p0, Lcom/google/research/reflection/layers/d;->Nn:Lcom/google/research/reflection/layers/b;

    iget-object v1, v1, Lcom/google/research/reflection/layers/b;->Nl:[D

    aget-wide v2, v1, p1

    iget-object v1, p0, Lcom/google/research/reflection/layers/d;->Nn:Lcom/google/research/reflection/layers/b;

    iget-object v1, v1, Lcom/google/research/reflection/layers/b;->Nl:[D

    aget-wide v4, v1, p1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v4, v6, v4

    mul-double/2addr v2, v4

    iget-object v1, p0, Lcom/google/research/reflection/layers/d;->Nn:Lcom/google/research/reflection/layers/b;

    iget-object v1, v1, Lcom/google/research/reflection/layers/b;->Nl:[D

    aget-wide v4, v1, p1

    iget-object v1, p0, Lcom/google/research/reflection/layers/d;->Nr:Lcom/google/research/reflection/layers/b;

    iget-object v1, v1, Lcom/google/research/reflection/layers/b;->Nl:[D

    aget-wide v6, v1, p1

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    aput-wide v2, v0, p1

    goto :goto_0

    .line 47
    :cond_2
    iget-object v0, p0, Lcom/google/research/reflection/layers/d;->Nr:Lcom/google/research/reflection/layers/b;

    iget-object v0, v0, Lcom/google/research/reflection/layers/b;->Nl:[D

    iget-object v1, p0, Lcom/google/research/reflection/layers/d;->Nn:Lcom/google/research/reflection/layers/b;

    iget-object v1, v1, Lcom/google/research/reflection/layers/b;->Nl:[D

    aget-wide v2, v1, p1

    iget-object v1, p0, Lcom/google/research/reflection/layers/d;->Nr:Lcom/google/research/reflection/layers/b;

    iget-object v1, v1, Lcom/google/research/reflection/layers/b;->Nl:[D

    aget-wide v4, v1, p1

    sub-double/2addr v2, v4

    aput-wide v2, v0, p1

    goto :goto_0

    .line 50
    :cond_3
    iget-object v0, p0, Lcom/google/research/reflection/layers/d;->Nr:Lcom/google/research/reflection/layers/b;

    iget-object v0, v0, Lcom/google/research/reflection/layers/b;->Nl:[D

    iget-object v1, p0, Lcom/google/research/reflection/layers/d;->Nn:Lcom/google/research/reflection/layers/b;

    iget-object v1, v1, Lcom/google/research/reflection/layers/b;->Nl:[D

    aget-wide v2, v1, p1

    iget-object v1, p0, Lcom/google/research/reflection/layers/d;->Nr:Lcom/google/research/reflection/layers/b;

    iget-object v1, v1, Lcom/google/research/reflection/layers/b;->Nl:[D

    aget-wide v4, v1, p1

    sub-double/2addr v2, v4

    aput-wide v2, v0, p1

    goto :goto_0

    .line 55
    :cond_4
    iget-object v0, p0, Lcom/google/research/reflection/layers/d;->Nr:Lcom/google/research/reflection/layers/b;

    iget-object v0, v0, Lcom/google/research/reflection/layers/b;->Nl:[D

    aget-wide v2, v0, p1

    iget-object v1, p0, Lcom/google/research/reflection/layers/d;->Nq:Lcom/google/research/reflection/layers/b;

    iget-object v1, v1, Lcom/google/research/reflection/layers/b;->Nl:[D

    aget-wide v4, v1, p1

    mul-double/2addr v2, v4

    aput-wide v2, v0, p1

    goto :goto_1
.end method
