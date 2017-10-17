.class public Lcom/google/research/reflection/layers/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field Nh:Ljava/util/List;

.field Ni:Lcom/google/research/reflection/common/a;

.field Nj:Lcom/google/research/reflection/common/a;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/research/reflection/layers/a;->Nh:Ljava/util/List;

    .line 29
    new-instance v0, Lcom/google/research/reflection/common/a;

    invoke-direct {v0, p1, v1}, Lcom/google/research/reflection/common/a;-><init>(IZ)V

    iput-object v0, p0, Lcom/google/research/reflection/layers/a;->Nj:Lcom/google/research/reflection/common/a;

    .line 30
    new-instance v0, Lcom/google/research/reflection/common/a;

    invoke-direct {v0, p1, v1}, Lcom/google/research/reflection/common/a;-><init>(IZ)V

    iput-object v0, p0, Lcom/google/research/reflection/layers/a;->Ni:Lcom/google/research/reflection/common/a;

    .line 31
    return-void
.end method

.method private TG()V
    .locals 2

    .prologue
    .line 136
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/research/reflection/layers/a;->Nh:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 139
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/google/research/reflection/layers/a;->Nh:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/reflection/layers/v;

    invoke-virtual {v0}, Lcom/google/research/reflection/layers/v;->UC()V

    .line 136
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public TE()V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/google/research/reflection/layers/a;->Nj:Lcom/google/research/reflection/common/a;

    invoke-virtual {v0}, Lcom/google/research/reflection/common/a;->clear()V

    .line 215
    iget-object v0, p0, Lcom/google/research/reflection/layers/a;->Ni:Lcom/google/research/reflection/common/a;

    invoke-virtual {v0}, Lcom/google/research/reflection/common/a;->clear()V

    .line 216
    iget-object v0, p0, Lcom/google/research/reflection/layers/a;->Nh:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    return-void

    .line 216
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/reflection/layers/v;

    .line 217
    invoke-virtual {v0}, Lcom/google/research/reflection/layers/v;->UO()V

    goto :goto_0
.end method

.method public TF()Ljava/util/List;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/research/reflection/layers/a;->Nh:Ljava/util/List;

    return-object v0
.end method

.method public TH(Lcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;IZ)V
    .locals 9

    .prologue
    const/4 v3, 0x1

    .line 88
    if-nez p4, :cond_2

    .line 92
    :cond_0
    if-eqz p1, :cond_3

    .line 99
    iget-object v0, p0, Lcom/google/research/reflection/layers/a;->Nj:Lcom/google/research/reflection/common/a;

    invoke-virtual {v0, p1}, Lcom/google/research/reflection/common/a;->add(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lcom/google/research/reflection/layers/a;->Ni:Lcom/google/research/reflection/common/a;

    invoke-virtual {v0, p2}, Lcom/google/research/reflection/common/a;->add(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lcom/google/research/reflection/layers/a;->Nj:Lcom/google/research/reflection/common/a;

    invoke-virtual {v0}, Lcom/google/research/reflection/common/a;->SY()I

    move-result v2

    .line 102
    invoke-direct {p0}, Lcom/google/research/reflection/layers/a;->TG()V

    .line 103
    iget-object v0, p0, Lcom/google/research/reflection/layers/a;->Nj:Lcom/google/research/reflection/common/a;

    invoke-virtual {v0}, Lcom/google/research/reflection/common/a;->SV()I

    move-result v7

    .line 104
    iget-object v0, p0, Lcom/google/research/reflection/layers/a;->Nh:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    .line 106
    add-int/lit8 v0, v8, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_4

    .line 122
    add-int/lit8 v2, v7, -0x1

    .line 123
    :goto_1
    if-gez v2, :cond_8

    .line 133
    :cond_1
    return-void

    .line 88
    :cond_2
    iget-object v0, p0, Lcom/google/research/reflection/layers/a;->Nh:Ljava/util/List;

    iget-object v1, p0, Lcom/google/research/reflection/layers/a;->Nh:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/google/research/reflection/layers/m;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Lacks outputlayer"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_3
    new-instance v0, Lcom/google/research/reflection/layers/b;

    invoke-virtual {p0}, Lcom/google/research/reflection/layers/a;->TN()Lcom/google/research/reflection/layers/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/research/reflection/layers/v;->UX()I

    move-result v1

    invoke-direct {v0, v3, v1}, Lcom/google/research/reflection/layers/b;-><init>(II)V

    .line 94
    new-instance v1, Lcom/google/research/reflection/layers/b;

    invoke-virtual {p0}, Lcom/google/research/reflection/layers/a;->TN()Lcom/google/research/reflection/layers/v;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/research/reflection/layers/v;->UX()I

    move-result v2

    invoke-direct {v1, v3, v2}, Lcom/google/research/reflection/layers/b;-><init>(II)V

    .line 95
    iget-object v2, p0, Lcom/google/research/reflection/layers/a;->Nj:Lcom/google/research/reflection/common/a;

    invoke-virtual {v2, v0}, Lcom/google/research/reflection/common/a;->add(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Lcom/google/research/reflection/layers/a;->Ni:Lcom/google/research/reflection/common/a;

    invoke-virtual {v0, v1}, Lcom/google/research/reflection/common/a;->add(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    return-void

    .line 107
    :cond_4
    iget-object v0, p0, Lcom/google/research/reflection/layers/a;->Nh:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/reflection/layers/v;

    .line 108
    iget-boolean v3, v0, Lcom/google/research/reflection/layers/v;->Pd:Z

    if-nez v3, :cond_6

    .line 114
    iget-object v3, v0, Lcom/google/research/reflection/layers/v;->Pb:Lcom/google/research/reflection/common/a;

    invoke-virtual {v3}, Lcom/google/research/reflection/common/a;->SY()I

    move-result v3

    if-ne v3, v2, :cond_7

    .line 106
    :cond_5
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 109
    :cond_6
    iget-object v0, v0, Lcom/google/research/reflection/layers/v;->Pc:Lcom/google/research/reflection/common/a;

    invoke-virtual {v0}, Lcom/google/research/reflection/common/a;->SY()I

    move-result v0

    if-eq v0, v2, :cond_5

    .line 110
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "backward: sparse input vector has a different frame index from the target frame index"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_7
    new-instance v1, Ljava/lang/RuntimeException;

    iget-object v0, v0, Lcom/google/research/reflection/layers/v;->Pb:Lcom/google/research/reflection/common/a;

    .line 117
    invoke-virtual {v0}, Lcom/google/research/reflection/common/a;->SY()I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x6e

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "backward: dense input vector has a different frame index from the target frame index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "!="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 123
    :cond_8
    add-int/lit8 v0, v7, -0x1

    sub-int/2addr v0, v2

    if-ge v0, p3, :cond_1

    .line 124
    iget-object v0, p0, Lcom/google/research/reflection/layers/a;->Nj:Lcom/google/research/reflection/common/a;

    invoke-virtual {v0, v2}, Lcom/google/research/reflection/common/a;->ST(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/reflection/layers/b;

    .line 125
    iget-object v1, p0, Lcom/google/research/reflection/layers/a;->Ni:Lcom/google/research/reflection/common/a;

    invoke-virtual {v1, v2}, Lcom/google/research/reflection/common/a;->ST(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/research/reflection/layers/b;

    .line 126
    add-int/lit8 v1, v8, -0x1

    move v6, v1

    move-object v3, v0

    :goto_2
    if-gez v6, :cond_9

    .line 123
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_1

    .line 127
    :cond_9
    iget-object v0, p0, Lcom/google/research/reflection/layers/a;->Nh:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/reflection/layers/v;

    .line 128
    invoke-virtual {v0}, Lcom/google/research/reflection/layers/v;->UU()Lcom/google/research/reflection/layers/b;

    move-result-object v4

    move-object v1, p0

    .line 129
    invoke-virtual/range {v0 .. v5}, Lcom/google/research/reflection/layers/v;->UD(Lcom/google/research/reflection/layers/a;ILcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;)V

    .line 130
    invoke-virtual {v0}, Lcom/google/research/reflection/layers/v;->UY()Lcom/google/research/reflection/layers/b;

    move-result-object v3

    .line 126
    add-int/lit8 v0, v6, -0x1

    move v6, v0

    goto :goto_2
.end method

.method public TI()I
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/research/reflection/layers/a;->Nh:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/reflection/layers/v;

    invoke-virtual {v0}, Lcom/google/research/reflection/layers/v;->UT()I

    move-result v0

    return v0
.end method

.method public TJ(Z[Ljava/util/ArrayList;Lcom/google/research/reflection/layers/b;Z)Lcom/google/research/reflection/layers/b;
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 69
    if-nez p4, :cond_1

    :cond_0
    move v1, v0

    move-object v0, v2

    .line 73
    :goto_0
    iget-object v3, p0, Lcom/google/research/reflection/layers/a;->Nh:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_2

    .line 78
    return-object v0

    .line 69
    :cond_1
    iget-object v1, p0, Lcom/google/research/reflection/layers/a;->Nh:Ljava/util/List;

    iget-object v3, p0, Lcom/google/research/reflection/layers/a;->Nh:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/google/research/reflection/layers/m;

    if-nez v1, :cond_0

    .line 70
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Lacks outputlayer"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_2
    iget-object v0, p0, Lcom/google/research/reflection/layers/a;->Nh:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/reflection/layers/v;

    invoke-virtual {v0, p1, p0, p2, p3}, Lcom/google/research/reflection/layers/v;->UB(ZLcom/google/research/reflection/layers/a;[Ljava/util/ArrayList;Lcom/google/research/reflection/layers/b;)Lcom/google/research/reflection/layers/b;

    move-result-object v3

    .line 73
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object p3, v3

    move-object p2, v2

    move-object v0, v3

    goto :goto_0
.end method

.method public TK(Lcom/google/research/reflection/layers/v;)V
    .locals 5

    .prologue
    .line 47
    invoke-virtual {p1}, Lcom/google/research/reflection/layers/v;->US()I

    move-result v0

    iget-object v1, p0, Lcom/google/research/reflection/layers/a;->Nj:Lcom/google/research/reflection/common/a;

    invoke-virtual {v1}, Lcom/google/research/reflection/common/a;->SX()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 51
    instance-of v0, p1, Lcom/google/research/reflection/layers/o;

    if-nez v0, :cond_2

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/google/research/reflection/layers/a;->Nh:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    return-void

    .line 48
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    iget-object v1, p0, Lcom/google/research/reflection/layers/a;->Nj:Lcom/google/research/reflection/common/a;

    .line 49
    invoke-virtual {v1}, Lcom/google/research/reflection/common/a;->SX()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/research/reflection/layers/v;->US()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x66

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "Inconsistent framebuffer size with the added layer: targetsize="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " layerbuffersize="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move-object v0, p1

    .line 52
    check-cast v0, Lcom/google/research/reflection/layers/o;

    .line 53
    invoke-virtual {v0}, Lcom/google/research/reflection/layers/o;->UA()I

    move-result v0

    iget-object v1, p0, Lcom/google/research/reflection/layers/a;->Nh:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 54
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public TL(Ljava/io/DataOutputStream;)V
    .locals 3

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/research/reflection/layers/a;->Nh:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 165
    iget-object v0, p0, Lcom/google/research/reflection/layers/a;->Nh:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    const-string/jumbo v0, "NeuralNet"

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 170
    return-void

    .line 165
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/reflection/layers/v;

    .line 166
    invoke-virtual {v0}, Lcom/google/research/reflection/layers/v;->Uu()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v0, p1}, Lcom/google/research/reflection/layers/v;->Uv(Ljava/io/DataOutputStream;)V

    goto :goto_0
.end method

.method public TM(Ljava/io/DataInputStream;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 173
    iget-object v1, p0, Lcom/google/research/reflection/layers/a;->Nh:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 174
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    move v1, v0

    .line 175
    :goto_0
    if-lt v1, v2, :cond_0

    .line 190
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 191
    const-string/jumbo v1, "NeuralNet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 194
    return-void

    .line 176
    :cond_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 178
    const-string/jumbo v3, "LinearLayer"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 180
    const-string/jumbo v3, "OutputLayer"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 182
    const-string/jumbo v3, "LSTMLayer"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 185
    new-instance v1, Ljava/io/IOException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const-string/jumbo v3, "Unsupported layer type: "

    if-nez v2, :cond_4

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 179
    :cond_1
    new-instance v0, Lcom/google/research/reflection/layers/o;

    invoke-direct {v0}, Lcom/google/research/reflection/layers/o;-><init>()V

    .line 187
    :goto_2
    invoke-virtual {v0, p1}, Lcom/google/research/reflection/layers/v;->Uw(Ljava/io/DataInputStream;)V

    .line 188
    iget-object v3, p0, Lcom/google/research/reflection/layers/a;->Nh:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 181
    :cond_2
    new-instance v0, Lcom/google/research/reflection/layers/m;

    invoke-direct {v0}, Lcom/google/research/reflection/layers/m;-><init>()V

    goto :goto_2

    .line 183
    :cond_3
    new-instance v0, Lcom/google/research/reflection/layers/s;

    invoke-direct {v0}, Lcom/google/research/reflection/layers/s;-><init>()V

    goto :goto_2

    .line 185
    :cond_4
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 192
    :cond_5
    new-instance v1, Ljava/io/IOException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "Inconsistent ending: ["

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "] expected: [NeuralNet]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public TN()Lcom/google/research/reflection/layers/v;
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/research/reflection/layers/a;->Nh:Ljava/util/List;

    iget-object v1, p0, Lcom/google/research/reflection/layers/a;->Nh:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/reflection/layers/v;

    return-object v0
.end method

.method public clone()Lcom/google/research/reflection/layers/a;
    .locals 4

    .prologue
    .line 39
    new-instance v1, Lcom/google/research/reflection/layers/a;

    iget-object v0, p0, Lcom/google/research/reflection/layers/a;->Nj:Lcom/google/research/reflection/common/a;

    invoke-virtual {v0}, Lcom/google/research/reflection/common/a;->SX()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/google/research/reflection/layers/a;-><init>(I)V

    .line 40
    iget-object v0, p0, Lcom/google/research/reflection/layers/a;->Nh:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    return-object v1

    .line 40
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/reflection/layers/v;

    .line 41
    iget-object v3, v1, Lcom/google/research/reflection/layers/a;->Nh:Ljava/util/List;

    invoke-virtual {v0}, Lcom/google/research/reflection/layers/v;->clone()Lcom/google/research/reflection/layers/v;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/research/reflection/layers/a;->clone()Lcom/google/research/reflection/layers/a;

    move-result-object v0

    return-object v0
.end method

.method public update()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/research/reflection/layers/a;->Nh:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 143
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_0

    .line 147
    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/google/research/reflection/layers/a;->Nh:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/reflection/layers/v;

    .line 145
    invoke-virtual {v0}, Lcom/google/research/reflection/layers/v;->update()V

    .line 143
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method
