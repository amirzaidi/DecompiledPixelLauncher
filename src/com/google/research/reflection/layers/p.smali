.class Lcom/google/research/reflection/layers/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/research/reflection/layers/c;


# instance fields
.field final synthetic OF:Lcom/google/research/reflection/layers/b;

.field final synthetic OG:Lcom/google/research/reflection/layers/b;

.field final synthetic OH:Z

.field final synthetic OI:Lcom/google/research/reflection/layers/b;


# direct methods
.method constructor <init>(ZLcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;)V
    .locals 0

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/google/research/reflection/layers/p;->OH:Z

    iput-object p2, p0, Lcom/google/research/reflection/layers/p;->OI:Lcom/google/research/reflection/layers/b;

    iput-object p3, p0, Lcom/google/research/reflection/layers/p;->OG:Lcom/google/research/reflection/layers/b;

    iput-object p4, p0, Lcom/google/research/reflection/layers/p;->OF:Lcom/google/research/reflection/layers/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Ub(I)Ljava/lang/Boolean;
    .locals 8

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/google/research/reflection/layers/p;->OH:Z

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/google/research/reflection/layers/p;->OI:Lcom/google/research/reflection/layers/b;

    iget-object v0, v0, Lcom/google/research/reflection/layers/b;->Nl:[D

    iget-object v1, p0, Lcom/google/research/reflection/layers/p;->OG:Lcom/google/research/reflection/layers/b;

    iget-object v1, v1, Lcom/google/research/reflection/layers/b;->Nl:[D

    aget-wide v2, v1, p1

    iget-object v1, p0, Lcom/google/research/reflection/layers/p;->OF:Lcom/google/research/reflection/layers/b;

    iget-object v1, v1, Lcom/google/research/reflection/layers/b;->Nl:[D

    aget-wide v4, v1, p1

    add-double/2addr v2, v4

    aput-wide v2, v0, p1

    .line 55
    :goto_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/google/research/reflection/layers/p;->OI:Lcom/google/research/reflection/layers/b;

    iget-object v0, v0, Lcom/google/research/reflection/layers/b;->Nl:[D

    aget-wide v2, v0, p1

    iget-object v1, p0, Lcom/google/research/reflection/layers/p;->OG:Lcom/google/research/reflection/layers/b;

    iget-object v1, v1, Lcom/google/research/reflection/layers/b;->Nl:[D

    aget-wide v4, v1, p1

    iget-object v1, p0, Lcom/google/research/reflection/layers/p;->OF:Lcom/google/research/reflection/layers/b;

    iget-object v1, v1, Lcom/google/research/reflection/layers/b;->Nl:[D

    aget-wide v6, v1, p1

    add-double/2addr v4, v6

    add-double/2addr v2, v4

    aput-wide v2, v0, p1

    goto :goto_0
.end method
