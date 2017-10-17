.class public Lcom/google/research/reflection/b/c;
.super Lcom/google/research/reflection/b/b;
.source "SourceFile"

# interfaces
.implements Lcom/google/research/reflection/b/a;


# instance fields
.field private Me:Ljava/util/List;

.field private Mf:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/research/reflection/b/b;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/research/reflection/b/c;->Me:Ljava/util/List;

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/research/reflection/b/c;->Mf:I

    return-void
.end method

.method private UL(Lcom/google/research/reflection/b/b;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 124
    iget-object v1, p0, Lcom/google/research/reflection/b/c;->Me:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 130
    :cond_0
    return v1

    .line 124
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/reflection/b/b;

    .line 125
    if-eq v0, p1, :cond_0

    .line 128
    invoke-virtual {v0}, Lcom/google/research/reflection/b/b;->UF()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 129
    goto :goto_0
.end method


# virtual methods
.method public UF()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/google/research/reflection/b/c;->Mf:I

    return v0
.end method

.method public UG(Lcom/google/research/reflection/common/a;Lcom/google/research/reflection/a/b;)Lcom/google/research/reflection/layers/b;
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 71
    new-instance v4, Lcom/google/research/reflection/layers/b;

    iget v0, p0, Lcom/google/research/reflection/b/c;->Mf:I

    const/4 v1, 0x1

    invoke-direct {v4, v1, v0}, Lcom/google/research/reflection/layers/b;-><init>(II)V

    .line 73
    iget-object v0, p0, Lcom/google/research/reflection/b/c;->Me:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    return-object v4

    .line 73
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/reflection/b/b;

    .line 74
    invoke-virtual {v0, p1, p2}, Lcom/google/research/reflection/b/b;->UG(Lcom/google/research/reflection/common/a;Lcom/google/research/reflection/a/b;)Lcom/google/research/reflection/layers/b;

    move-result-object v3

    iget-object v6, v3, Lcom/google/research/reflection/layers/b;->Mr:[D

    move v3, v2

    .line 75
    :goto_1
    array-length v7, v6

    if-lt v3, v7, :cond_1

    .line 78
    invoke-virtual {v0}, Lcom/google/research/reflection/b/b;->UF()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 79
    goto :goto_0

    .line 76
    :cond_1
    iget-object v7, v4, Lcom/google/research/reflection/layers/b;->Mr:[D

    add-int v8, v3, v1

    aget-wide v10, v6, v3

    aput-wide v10, v7, v8

    .line 75
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public UH(Ljava/util/List;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 135
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 145
    :cond_0
    return-void

    .line 136
    :cond_1
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 137
    iget-object v0, p0, Lcom/google/research/reflection/b/c;->Me:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/reflection/b/b;

    .line 138
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 139
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 140
    const/4 v3, 0x1

    .line 141
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {p1, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    .line 140
    invoke-virtual {v0, v3}, Lcom/google/research/reflection/b/b;->UH(Ljava/util/List;)V

    goto :goto_0
.end method

.method public UI(Ljava/io/DataInputStream;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 99
    iget-object v1, p0, Lcom/google/research/reflection/b/c;->Me:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 100
    iput v0, p0, Lcom/google/research/reflection/b/c;->Mf:I

    .line 101
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 102
    :goto_0
    if-lt v0, v1, :cond_0

    .line 111
    return-void

    .line 103
    :cond_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    .line 104
    invoke-static {v2}, Lcom/google/research/reflection/b/b;->UC(Ljava/lang/String;)Lcom/google/research/reflection/b/b;

    move-result-object v3

    .line 105
    if-eqz v3, :cond_1

    .line 108
    invoke-virtual {v3, p1}, Lcom/google/research/reflection/b/b;->UI(Ljava/io/DataInputStream;)V

    .line 109
    invoke-virtual {p0, v3}, Lcom/google/research/reflection/b/c;->UM(Lcom/google/research/reflection/b/b;)V

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    :cond_1
    new-instance v1, Ljava/io/IOException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const-string/jumbo v3, "Cannot find extractor with "

    if-nez v2, :cond_2

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public UJ(Ljava/io/DataOutputStream;)V
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/research/reflection/b/c;->Me:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 116
    iget-object v0, p0, Lcom/google/research/reflection/b/c;->Me:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    return-void

    .line 116
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/reflection/b/b;

    .line 117
    invoke-static {v0}, Lcom/google/research/reflection/b/b;->UE(Lcom/google/research/reflection/b/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v0, p1}, Lcom/google/research/reflection/b/b;->UJ(Ljava/io/DataOutputStream;)V

    goto :goto_0
.end method

.method public UM(Lcom/google/research/reflection/b/b;)V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/research/reflection/b/c;->Me:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-virtual {p1, p0}, Lcom/google/research/reflection/b/b;->UD(Lcom/google/research/reflection/b/a;)V

    .line 66
    iget v0, p0, Lcom/google/research/reflection/b/c;->Mf:I

    invoke-virtual {p1}, Lcom/google/research/reflection/b/b;->UF()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/research/reflection/b/c;->Mf:I

    .line 67
    return-void
.end method

.method public Ue(Lcom/google/research/reflection/b/b;I)V
    .locals 2

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/google/research/reflection/b/c;->UL(Lcom/google/research/reflection/b/b;)I

    move-result v0

    add-int/2addr v0, p2

    .line 91
    iget-object v1, p0, Lcom/google/research/reflection/b/c;->Md:Lcom/google/research/reflection/b/a;

    if-nez v1, :cond_0

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/google/research/reflection/b/c;->Md:Lcom/google/research/reflection/b/a;

    invoke-interface {v1, p0, v0}, Lcom/google/research/reflection/b/a;->Ue(Lcom/google/research/reflection/b/b;I)V

    goto :goto_0
.end method

.method public bridge synthetic clone()Lcom/google/research/reflection/b/b;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/google/research/reflection/b/c;->clone()Lcom/google/research/reflection/b/c;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/research/reflection/b/c;
    .locals 3

    .prologue
    .line 33
    new-instance v1, Lcom/google/research/reflection/b/c;

    invoke-direct {v1}, Lcom/google/research/reflection/b/c;-><init>()V

    .line 34
    iget-object v0, p0, Lcom/google/research/reflection/b/c;->Me:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    return-object v1

    .line 34
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/reflection/b/b;

    .line 35
    invoke-virtual {v0}, Lcom/google/research/reflection/b/b;->clone()Lcom/google/research/reflection/b/b;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/research/reflection/b/c;->UM(Lcom/google/research/reflection/b/b;)V

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/google/research/reflection/b/c;->clone()Lcom/google/research/reflection/b/c;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/research/reflection/b/c;->Me:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/google/research/reflection/b/c;->Me:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/reflection/b/b;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
