.class Lcom/google/research/reflection/layers/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field Oq:I

.field Or:Lcom/google/research/reflection/layers/c;

.field private Os:I

.field Ot:I


# direct methods
.method public constructor <init>(IIILcom/google/research/reflection/layers/c;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Lcom/google/research/reflection/layers/n;->Os:I

    .line 51
    iput p2, p0, Lcom/google/research/reflection/layers/n;->Oq:I

    .line 52
    iput p3, p0, Lcom/google/research/reflection/layers/n;->Ot:I

    .line 53
    iput-object p4, p0, Lcom/google/research/reflection/layers/n;->Or:Lcom/google/research/reflection/layers/c;

    .line 54
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 58
    iget v0, p0, Lcom/google/research/reflection/layers/n;->Oq:I

    iget v1, p0, Lcom/google/research/reflection/layers/n;->Os:I

    mul-int/2addr v0, v1

    .line 59
    iget v1, p0, Lcom/google/research/reflection/layers/n;->Ot:I

    iget v2, p0, Lcom/google/research/reflection/layers/n;->Os:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/google/research/reflection/layers/n;->Oq:I

    mul-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 60
    :goto_0
    if-lt v0, v1, :cond_0

    .line 63
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 61
    :cond_0
    iget-object v2, p0, Lcom/google/research/reflection/layers/n;->Or:Lcom/google/research/reflection/layers/c;

    invoke-interface {v2, v0}, Lcom/google/research/reflection/layers/c;->Ub(I)Ljava/lang/Boolean;

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/google/research/reflection/layers/n;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
