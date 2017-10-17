.class Lcom/google/research/reflection/layers/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/research/reflection/layers/c;


# instance fields
.field final synthetic NR:Lcom/google/research/reflection/layers/b;

.field final synthetic NS:Lcom/google/research/reflection/layers/b;


# direct methods
.method constructor <init>(Lcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;)V
    .locals 0

    .prologue
    .line 321
    iput-object p1, p0, Lcom/google/research/reflection/layers/r;->NR:Lcom/google/research/reflection/layers/b;

    iput-object p2, p0, Lcom/google/research/reflection/layers/r;->NS:Lcom/google/research/reflection/layers/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Vo(I)Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/google/research/reflection/layers/r;->NR:Lcom/google/research/reflection/layers/b;

    iget-object v1, p0, Lcom/google/research/reflection/layers/r;->NS:Lcom/google/research/reflection/layers/b;

    invoke-static {v0, p1, v1}, Lcom/google/research/reflection/layers/k;->VF(Lcom/google/research/reflection/layers/b;ILcom/google/research/reflection/layers/b;)V

    .line 325
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
