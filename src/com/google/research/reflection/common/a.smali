.class public Lcom/google/research/reflection/common/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private LW:Ljava/util/LinkedList;

.field private LX:I

.field private LY:I

.field private LZ:I

.field private Ma:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(IZ)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput v1, p0, Lcom/google/research/reflection/common/a;->LX:I

    .line 10
    iput v0, p0, Lcom/google/research/reflection/common/a;->LY:I

    .line 14
    iput v1, p0, Lcom/google/research/reflection/common/a;->LZ:I

    .line 17
    if-lez p1, :cond_0

    .line 20
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/research/reflection/common/a;->Ma:[Ljava/lang/Object;

    .line 21
    if-nez p2, :cond_1

    .line 24
    :goto_0
    return-void

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 22
    :cond_1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/research/reflection/common/a;->LW:Ljava/util/LinkedList;

    goto :goto_0
.end method

.method private Um()Z
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/research/reflection/common/a;->LW:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/research/reflection/common/a;->LW:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/research/reflection/common/a;->Ma:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public Uf()Ljava/lang/Object;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    iget-object v0, p0, Lcom/google/research/reflection/common/a;->LW:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    .line 32
    :cond_0
    return-object v1

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/google/research/reflection/common/a;->LW:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/google/research/reflection/common/a;->LW:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public Ug(I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 62
    if-gez p1, :cond_1

    .line 63
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 62
    :cond_1
    iget v0, p0, Lcom/google/research/reflection/common/a;->LY:I

    if-ge p1, v0, :cond_0

    .line 65
    iget v0, p0, Lcom/google/research/reflection/common/a;->LY:I

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 66
    iget v1, p0, Lcom/google/research/reflection/common/a;->LX:I

    sub-int v0, v1, v0

    .line 67
    if-ltz v0, :cond_2

    .line 70
    :goto_0
    iget-object v1, p0, Lcom/google/research/reflection/common/a;->Ma:[Ljava/lang/Object;

    aget-object v0, v1, v0

    return-object v0

    .line 68
    :cond_2
    iget-object v1, p0, Lcom/google/research/reflection/common/a;->Ma:[Ljava/lang/Object;

    array-length v1, v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public Uh()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 78
    iget v0, p0, Lcom/google/research/reflection/common/a;->LY:I

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/google/research/reflection/common/a;->Ma:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/research/reflection/common/a;->LX:I

    aget-object v0, v0, v1

    return-object v0

    .line 79
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public Ui()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/google/research/reflection/common/a;->LY:I

    return v0
.end method

.method public Uj()V
    .locals 3

    .prologue
    .line 107
    iget v0, p0, Lcom/google/research/reflection/common/a;->LY:I

    if-eqz v0, :cond_0

    .line 110
    iget v0, p0, Lcom/google/research/reflection/common/a;->LY:I

    add-int/lit8 v0, v0, -0x1

    .line 111
    iget v1, p0, Lcom/google/research/reflection/common/a;->LX:I

    sub-int v0, v1, v0

    .line 112
    if-ltz v0, :cond_1

    .line 115
    :goto_0
    invoke-direct {p0}, Lcom/google/research/reflection/common/a;->Um()Z

    move-result v1

    if-nez v1, :cond_2

    .line 118
    :goto_1
    iget-object v1, p0, Lcom/google/research/reflection/common/a;->Ma:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 119
    iget v0, p0, Lcom/google/research/reflection/common/a;->LY:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/research/reflection/common/a;->LY:I

    .line 120
    iget v0, p0, Lcom/google/research/reflection/common/a;->LZ:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/research/reflection/common/a;->LZ:I

    .line 121
    return-void

    .line 108
    :cond_0
    return-void

    .line 113
    :cond_1
    iget-object v1, p0, Lcom/google/research/reflection/common/a;->Ma:[Ljava/lang/Object;

    array-length v1, v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 116
    :cond_2
    iget-object v1, p0, Lcom/google/research/reflection/common/a;->LW:Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/google/research/reflection/common/a;->Ma:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public Uk()I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/research/reflection/common/a;->Ma:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public Ul()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/google/research/reflection/common/a;->LZ:I

    return v0
.end method

.method public add(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 42
    iget v0, p0, Lcom/google/research/reflection/common/a;->LX:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/research/reflection/common/a;->LX:I

    .line 43
    iget v0, p0, Lcom/google/research/reflection/common/a;->LX:I

    iget-object v1, p0, Lcom/google/research/reflection/common/a;->Ma:[Ljava/lang/Object;

    array-length v1, v1

    if-eq v0, v1, :cond_1

    .line 46
    :goto_0
    iget-object v0, p0, Lcom/google/research/reflection/common/a;->Ma:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/research/reflection/common/a;->LX:I

    aget-object v0, v0, v1

    if-nez v0, :cond_2

    .line 49
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/google/research/reflection/common/a;->Ma:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/research/reflection/common/a;->LX:I

    aput-object p1, v0, v1

    .line 50
    iget v0, p0, Lcom/google/research/reflection/common/a;->LY:I

    iget-object v1, p0, Lcom/google/research/reflection/common/a;->Ma:[Ljava/lang/Object;

    array-length v1, v1

    if-lt v0, v1, :cond_3

    .line 53
    :goto_2
    iget v0, p0, Lcom/google/research/reflection/common/a;->LZ:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/research/reflection/common/a;->LZ:I

    .line 54
    return-object p1

    .line 44
    :cond_1
    iput v2, p0, Lcom/google/research/reflection/common/a;->LX:I

    goto :goto_0

    .line 46
    :cond_2
    invoke-direct {p0}, Lcom/google/research/reflection/common/a;->Um()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/google/research/reflection/common/a;->LW:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/google/research/reflection/common/a;->Ma:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/research/reflection/common/a;->LX:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 51
    :cond_3
    iget v0, p0, Lcom/google/research/reflection/common/a;->LY:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/research/reflection/common/a;->LY:I

    goto :goto_2
.end method

.method public clear()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 85
    iput v0, p0, Lcom/google/research/reflection/common/a;->LX:I

    .line 86
    iput v0, p0, Lcom/google/research/reflection/common/a;->LZ:I

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/research/reflection/common/a;->LY:I

    .line 88
    return-void
.end method
