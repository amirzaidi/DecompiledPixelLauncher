.class Lcom/google/research/reflection/layers/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/research/reflection/layers/c;


# instance fields
.field final synthetic NP:Lcom/google/research/reflection/layers/b;

.field final synthetic NQ:D


# direct methods
.method constructor <init>(Lcom/google/research/reflection/layers/b;D)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/google/research/reflection/layers/q;->NP:Lcom/google/research/reflection/layers/b;

    iput-wide p2, p0, Lcom/google/research/reflection/layers/q;->NQ:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Vo(I)Ljava/lang/Boolean;
    .locals 6

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/research/reflection/layers/q;->NP:Lcom/google/research/reflection/layers/b;

    iget-object v0, v0, Lcom/google/research/reflection/layers/b;->Mr:[D

    aget-wide v0, v0, p1

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/google/research/reflection/layers/q;->NP:Lcom/google/research/reflection/layers/b;

    iget-object v0, v0, Lcom/google/research/reflection/layers/b;->Mr:[D

    aget-wide v2, v0, p1

    iget-wide v4, p0, Lcom/google/research/reflection/layers/q;->NQ:D

    mul-double/2addr v2, v4

    aput-wide v2, v0, p1

    .line 223
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
