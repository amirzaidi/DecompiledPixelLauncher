.class Lcom/google/research/reflection/layers/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/research/reflection/layers/c;


# instance fields
.field final synthetic MM:Lcom/google/research/reflection/layers/b;

.field final synthetic MN:Lcom/google/research/reflection/layers/b;

.field final synthetic MO:Z

.field final synthetic MP:Z

.field final synthetic MQ:Lcom/google/research/reflection/layers/b;


# direct methods
.method constructor <init>(ZLcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;Z)V
    .locals 0

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/google/research/reflection/layers/h;->MO:Z

    iput-object p2, p0, Lcom/google/research/reflection/layers/h;->MQ:Lcom/google/research/reflection/layers/b;

    iput-object p3, p0, Lcom/google/research/reflection/layers/h;->MN:Lcom/google/research/reflection/layers/b;

    iput-object p4, p0, Lcom/google/research/reflection/layers/h;->MM:Lcom/google/research/reflection/layers/b;

    iput-boolean p5, p0, Lcom/google/research/reflection/layers/h;->MP:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private Vs(II)D
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 85
    iget-object v0, p0, Lcom/google/research/reflection/layers/h;->MN:Lcom/google/research/reflection/layers/b;

    invoke-virtual {v0, v1}, Lcom/google/research/reflection/layers/b;->Vh(Z)I

    move-result v4

    .line 86
    const-wide/16 v2, 0x0

    move v0, v1

    .line 87
    :goto_0
    if-lt v0, v4, :cond_0

    .line 92
    return-wide v2

    .line 88
    :cond_0
    iget-object v5, p0, Lcom/google/research/reflection/layers/h;->MN:Lcom/google/research/reflection/layers/b;

    invoke-virtual {v5, v1, p1, v0}, Lcom/google/research/reflection/layers/b;->Vc(ZII)D

    move-result-wide v6

    .line 89
    iget-object v5, p0, Lcom/google/research/reflection/layers/h;->MM:Lcom/google/research/reflection/layers/b;

    iget-boolean v8, p0, Lcom/google/research/reflection/layers/h;->MP:Z

    invoke-virtual {v5, v8, v0, p2}, Lcom/google/research/reflection/layers/b;->Vc(ZII)D

    move-result-wide v8

    .line 90
    mul-double/2addr v6, v8

    add-double/2addr v2, v6

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public Vo(I)Ljava/lang/Boolean;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 74
    iget-boolean v0, p0, Lcom/google/research/reflection/layers/h;->MO:Z

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/google/research/reflection/layers/h;->MQ:Lcom/google/research/reflection/layers/b;

    iget-object v0, v0, Lcom/google/research/reflection/layers/b;->Mr:[D

    iget-object v1, p0, Lcom/google/research/reflection/layers/h;->MQ:Lcom/google/research/reflection/layers/b;

    invoke-virtual {v1, v5}, Lcom/google/research/reflection/layers/b;->Vh(Z)I

    move-result v1

    div-int v1, p1, v1

    iget-object v2, p0, Lcom/google/research/reflection/layers/h;->MQ:Lcom/google/research/reflection/layers/b;

    .line 79
    invoke-virtual {v2, v5}, Lcom/google/research/reflection/layers/b;->Vh(Z)I

    move-result v2

    rem-int v2, p1, v2

    .line 78
    invoke-direct {p0, v1, v2}, Lcom/google/research/reflection/layers/h;->Vs(II)D

    move-result-wide v2

    aput-wide v2, v0, p1

    .line 81
    :goto_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/google/research/reflection/layers/h;->MQ:Lcom/google/research/reflection/layers/b;

    iget-object v0, v0, Lcom/google/research/reflection/layers/b;->Mr:[D

    aget-wide v2, v0, p1

    iget-object v1, p0, Lcom/google/research/reflection/layers/h;->MQ:Lcom/google/research/reflection/layers/b;

    invoke-virtual {v1, v5}, Lcom/google/research/reflection/layers/b;->Vh(Z)I

    move-result v1

    div-int v1, p1, v1

    iget-object v4, p0, Lcom/google/research/reflection/layers/h;->MQ:Lcom/google/research/reflection/layers/b;

    .line 76
    invoke-virtual {v4, v5}, Lcom/google/research/reflection/layers/b;->Vh(Z)I

    move-result v4

    rem-int v4, p1, v4

    .line 75
    invoke-direct {p0, v1, v4}, Lcom/google/research/reflection/layers/h;->Vs(II)D

    move-result-wide v4

    add-double/2addr v2, v4

    aput-wide v2, v0, p1

    goto :goto_0
.end method
