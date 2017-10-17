.class Lcom/google/research/reflection/layers/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/research/reflection/layers/c;


# instance fields
.field final synthetic MR:Lcom/google/research/reflection/layers/b;

.field final synthetic MS:Lcom/google/research/reflection/layers/b;


# direct methods
.method constructor <init>(Lcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/google/research/reflection/layers/i;->MS:Lcom/google/research/reflection/layers/b;

    iput-object p2, p0, Lcom/google/research/reflection/layers/i;->MR:Lcom/google/research/reflection/layers/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Vo(I)Ljava/lang/Boolean;
    .locals 6

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/research/reflection/layers/i;->MR:Lcom/google/research/reflection/layers/b;

    iget-object v0, v0, Lcom/google/research/reflection/layers/b;->Mr:[D

    aget-wide v0, v0, p1

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/google/research/reflection/layers/i;->MS:Lcom/google/research/reflection/layers/b;

    iget-object v0, v0, Lcom/google/research/reflection/layers/b;->Mr:[D

    aget-wide v2, v0, p1

    iget-object v1, p0, Lcom/google/research/reflection/layers/i;->MR:Lcom/google/research/reflection/layers/b;

    iget-object v1, v1, Lcom/google/research/reflection/layers/b;->Mr:[D

    aget-wide v4, v1, p1

    add-double/2addr v2, v4

    aput-wide v2, v0, p1

    .line 241
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
