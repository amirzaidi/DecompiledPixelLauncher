.class public Lcom/google/research/reflection/b/d;
.super Lcom/google/research/reflection/b/b;
.source "SourceFile"


# instance fields
.field protected Mg:J

.field protected Mh:[Z

.field protected Mi:I

.field protected Mj:Ljava/util/HashMap;

.field protected Mk:I

.field protected Ml:Ljava/util/HashMap;

.field protected Mm:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/research/reflection/b/b;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/research/reflection/b/d;->Ml:Ljava/util/HashMap;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/research/reflection/b/d;->Mj:Ljava/util/HashMap;

    .line 37
    const/16 v0, 0xc8

    iput v0, p0, Lcom/google/research/reflection/b/d;->Mk:I

    .line 39
    const-wide/32 v0, 0x927c0

    iput-wide v0, p0, Lcom/google/research/reflection/b/d;->Mg:J

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/research/reflection/b/d;->Mm:J

    .line 43
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/research/reflection/b/d;->Mi:I

    .line 46
    iget v0, p0, Lcom/google/research/reflection/b/d;->Mk:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/google/research/reflection/b/d;->Mh:[Z

    .line 47
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/research/reflection/b/b;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/research/reflection/b/d;->Ml:Ljava/util/HashMap;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/research/reflection/b/d;->Mj:Ljava/util/HashMap;

    .line 37
    const/16 v0, 0xc8

    iput v0, p0, Lcom/google/research/reflection/b/d;->Mk:I

    .line 39
    const-wide/32 v0, 0x927c0

    iput-wide v0, p0, Lcom/google/research/reflection/b/d;->Mg:J

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/research/reflection/b/d;->Mm:J

    .line 43
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/research/reflection/b/d;->Mi:I

    .line 50
    iput p1, p0, Lcom/google/research/reflection/b/d;->Mk:I

    .line 51
    iget v0, p0, Lcom/google/research/reflection/b/d;->Mk:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/google/research/reflection/b/d;->Mh:[Z

    .line 52
    return-void
.end method

.method public constructor <init>(IJJI)V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/google/research/reflection/b/b;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/research/reflection/b/d;->Ml:Ljava/util/HashMap;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/research/reflection/b/d;->Mj:Ljava/util/HashMap;

    .line 37
    const/16 v0, 0xc8

    iput v0, p0, Lcom/google/research/reflection/b/d;->Mk:I

    .line 39
    const-wide/32 v0, 0x927c0

    iput-wide v0, p0, Lcom/google/research/reflection/b/d;->Mg:J

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/research/reflection/b/d;->Mm:J

    .line 43
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/research/reflection/b/d;->Mi:I

    .line 56
    iput p6, p0, Lcom/google/research/reflection/b/d;->Mi:I

    .line 57
    iput-wide p2, p0, Lcom/google/research/reflection/b/d;->Mg:J

    .line 58
    iput-wide p4, p0, Lcom/google/research/reflection/b/d;->Mm:J

    .line 59
    iput p1, p0, Lcom/google/research/reflection/b/d;->Mk:I

    .line 60
    iget v0, p0, Lcom/google/research/reflection/b/d;->Mk:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/google/research/reflection/b/d;->Mh:[Z

    .line 61
    return-void
.end method

.method private UP()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 87
    const-wide v2, 0x7fffffffffffffffL

    .line 88
    const/4 v0, 0x0

    .line 89
    iget-object v1, p0, Lcom/google/research/reflection/b/d;->Ml:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-wide v4, v2

    move-object v2, v0

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    return-object v2

    .line 89
    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 90
    iget-object v1, p0, Lcom/google/research/reflection/b/d;->Mj:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 91
    cmp-long v1, v6, v4

    if-ltz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_2

    .line 93
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-wide v2, v6

    :goto_2
    move-wide v4, v2

    move-object v2, v0

    .line 95
    goto :goto_0

    :cond_1
    move v1, v8

    .line 91
    goto :goto_1

    :cond_2
    move-object v0, v2

    move-wide v2, v4

    goto :goto_2
.end method


# virtual methods
.method public UF()I
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lcom/google/research/reflection/b/d;->Mk:I

    return v0
.end method

.method public UG(Lcom/google/research/reflection/common/a;Lcom/google/research/reflection/a/b;)Lcom/google/research/reflection/layers/b;
    .locals 9

    .prologue
    .line 250
    iget-wide v4, p0, Lcom/google/research/reflection/b/d;->Mg:J

    iget-wide v6, p0, Lcom/google/research/reflection/b/d;->Mm:J

    iget v8, p0, Lcom/google/research/reflection/b/d;->Mi:I

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 251
    invoke-virtual/range {v1 .. v8}, Lcom/google/research/reflection/b/d;->UN(Lcom/google/research/reflection/common/a;Lcom/google/research/reflection/a/b;JJI)Ljava/util/ArrayList;

    move-result-object v0

    .line 252
    new-instance v1, Lcom/google/research/reflection/layers/b;

    iget v2, p0, Lcom/google/research/reflection/b/d;->Mk:I

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Lcom/google/research/reflection/layers/b;-><init>(II)V

    .line 253
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 261
    return-object v1

    .line 253
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/reflection/common/d;

    .line 254
    iget v3, v0, Lcom/google/research/reflection/common/d;->Mc:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 255
    iget v3, v0, Lcom/google/research/reflection/common/d;->Mb:I

    iget v4, p0, Lcom/google/research/reflection/b/d;->Mk:I

    if-ge v3, v4, :cond_2

    .line 258
    iget-object v3, v1, Lcom/google/research/reflection/layers/b;->Mr:[D

    iget v0, v0, Lcom/google/research/reflection/common/d;->Mb:I

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    aput-wide v4, v3, v0

    goto :goto_0

    .line 256
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    iget v0, v0, Lcom/google/research/reflection/common/d;->Mb:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x1a

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "invalid index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public UH(Ljava/util/List;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 132
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 134
    iget-object v1, p0, Lcom/google/research/reflection/b/d;->Ml:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 135
    if-eqz v0, :cond_0

    .line 136
    iget-object v1, p0, Lcom/google/research/reflection/b/d;->Mj:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v1, p0, Lcom/google/research/reflection/b/d;->Mh:[Z

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput-boolean v3, v1, v2

    .line 138
    invoke-virtual {p0, v0}, Lcom/google/research/reflection/b/d;->UK(Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public UI(Ljava/io/DataInputStream;)V
    .locals 4

    .prologue
    .line 226
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/research/reflection/b/d;->Mk:I

    .line 227
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/research/reflection/b/d;->Mi:I

    .line 228
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/research/reflection/b/d;->Mg:J

    .line 229
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/research/reflection/b/d;->Mm:J

    .line 230
    const-class v0, Ljava/lang/String;

    const-class v1, Ljava/lang/Integer;

    invoke-static {p1, v0, v1}, Lcom/google/research/reflection/common/c;->Uv(Ljava/io/DataInputStream;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/research/reflection/b/d;->Ml:Ljava/util/HashMap;

    .line 231
    const-class v0, Ljava/lang/Integer;

    const-class v1, Ljava/lang/Long;

    invoke-static {p1, v0, v1}, Lcom/google/research/reflection/common/c;->Uv(Ljava/io/DataInputStream;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/research/reflection/b/d;->Mj:Ljava/util/HashMap;

    .line 232
    iget v0, p0, Lcom/google/research/reflection/b/d;->Mk:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/google/research/reflection/b/d;->Mh:[Z

    .line 233
    iget-object v0, p0, Lcom/google/research/reflection/b/d;->Ml:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    return-void

    .line 233
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 234
    iget-object v2, p0, Lcom/google/research/reflection/b/d;->Mh:[Z

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x1

    aput-boolean v3, v2, v0

    goto :goto_0
.end method

.method public UJ(Ljava/io/DataOutputStream;)V
    .locals 2

    .prologue
    .line 240
    iget v0, p0, Lcom/google/research/reflection/b/d;->Mk:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 241
    iget v0, p0, Lcom/google/research/reflection/b/d;->Mi:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 242
    iget-wide v0, p0, Lcom/google/research/reflection/b/d;->Mg:J

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 243
    iget-wide v0, p0, Lcom/google/research/reflection/b/d;->Mm:J

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 244
    iget-object v0, p0, Lcom/google/research/reflection/b/d;->Ml:Ljava/util/HashMap;

    invoke-static {p1, v0}, Lcom/google/research/reflection/common/c;->Uu(Ljava/io/DataOutputStream;Ljava/util/Map;)V

    .line 245
    iget-object v0, p0, Lcom/google/research/reflection/b/d;->Mj:Ljava/util/HashMap;

    invoke-static {p1, v0}, Lcom/google/research/reflection/common/c;->Uu(Ljava/io/DataOutputStream;Ljava/util/Map;)V

    .line 246
    return-void
.end method

.method protected UN(Lcom/google/research/reflection/common/a;Lcom/google/research/reflection/a/b;JJI)Ljava/util/ArrayList;
    .locals 13

    .prologue
    .line 183
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 184
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 185
    invoke-virtual {p1}, Lcom/google/research/reflection/common/a;->Ui()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v6, v2

    :goto_0
    if-gez v6, :cond_1

    .line 215
    :cond_0
    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 216
    return-object v7

    .line 186
    :cond_1
    invoke-virtual {p1, v6}, Lcom/google/research/reflection/common/a;->Ug(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/research/reflection/a/b;

    .line 187
    invoke-interface {v2}, Lcom/google/research/reflection/a/b;->aD()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_3

    .line 192
    :cond_2
    :try_start_0
    invoke-static {v2, p2}, Lcom/google/research/reflection/common/e;->UA(Lcom/google/research/reflection/a/b;Lcom/google/research/reflection/a/b;)J
    :try_end_0
    .catch Lcom/google/research/reflection/common/UncertaintyException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 196
    :goto_1
    invoke-interface {v2}, Lcom/google/research/reflection/a/b;->aB()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sub-long/2addr v4, v10

    .line 197
    cmp-long v3, v4, p3

    if-gez v3, :cond_4

    const/4 v3, 0x1

    :goto_2
    if-eqz v3, :cond_0

    .line 200
    cmp-long v3, v4, p5

    if-ltz v3, :cond_5

    const/4 v3, 0x1

    :goto_3
    if-nez v3, :cond_6

    .line 185
    :goto_4
    add-int/lit8 v2, v6, -0x1

    move v6, v2

    goto :goto_0

    .line 188
    :cond_3
    invoke-interface {v2}, Lcom/google/research/reflection/a/b;->aD()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_2

    .line 189
    invoke-interface {v2}, Lcom/google/research/reflection/a/b;->aD()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "GEL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_4

    .line 193
    :catch_0
    move-exception v3

    .line 194
    const-wide v4, 0x7fffffffffffffffL

    goto :goto_1

    .line 197
    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    .line 200
    :cond_5
    const/4 v3, 0x0

    goto :goto_3

    .line 203
    :cond_6
    invoke-interface {v2}, Lcom/google/research/reflection/a/b;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Lcom/google/research/reflection/a/b;->ax()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v2, v4, v5}, Lcom/google/research/reflection/b/d;->UO(Ljava/lang/String;J)I

    move-result v3

    .line 204
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/research/reflection/common/d;

    .line 205
    if-eqz v2, :cond_7

    .line 212
    :goto_5
    iget v3, v2, Lcom/google/research/reflection/common/d;->Mc:F

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    iput v3, v2, Lcom/google/research/reflection/common/d;->Mc:F

    goto :goto_4

    .line 206
    :cond_7
    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v2

    move/from16 v0, p7

    if-ge v2, v0, :cond_0

    .line 209
    new-instance v2, Lcom/google/research/reflection/common/d;

    invoke-direct {v2, v3}, Lcom/google/research/reflection/common/d;-><init>(I)V

    .line 210
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5
.end method

.method protected UO(Ljava/lang/String;J)I
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 108
    iget-object v0, p0, Lcom/google/research/reflection/b/d;->Ml:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 109
    if-eqz v0, :cond_0

    .line 126
    :goto_0
    iget-object v1, p0, Lcom/google/research/reflection/b/d;->Mj:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 110
    :cond_0
    iget-object v2, p0, Lcom/google/research/reflection/b/d;->Ml:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    iget v3, p0, Lcom/google/research/reflection/b/d;->Mk:I

    if-eq v2, v3, :cond_1

    .line 116
    :goto_1
    iget-object v2, p0, Lcom/google/research/reflection/b/d;->Mh:[Z

    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 124
    :goto_2
    iget-object v1, p0, Lcom/google/research/reflection/b/d;->Ml:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 111
    :cond_1
    invoke-direct {p0}, Lcom/google/research/reflection/b/d;->UP()Ljava/lang/String;

    move-result-object v2

    .line 112
    iget-object v0, p0, Lcom/google/research/reflection/b/d;->Ml:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 113
    new-array v3, v4, [Ljava/lang/String;

    aput-object v2, v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/research/reflection/b/d;->UH(Ljava/util/List;)V

    .line 114
    iget-object v1, p0, Lcom/google/research/reflection/b/d;->Mh:[Z

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput-boolean v4, v1, v2

    goto :goto_2

    .line 117
    :cond_2
    iget-object v2, p0, Lcom/google/research/reflection/b/d;->Mh:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_3

    .line 116
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 118
    :cond_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 119
    iget-object v2, p0, Lcom/google/research/reflection/b/d;->Mh:[Z

    aput-boolean v4, v2, v1

    goto :goto_2
.end method

.method public bridge synthetic clone()Lcom/google/research/reflection/b/b;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/google/research/reflection/b/d;->clone()Lcom/google/research/reflection/b/d;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/research/reflection/b/d;
    .locals 7

    .prologue
    .line 70
    new-instance v0, Lcom/google/research/reflection/b/d;

    iget v1, p0, Lcom/google/research/reflection/b/d;->Mk:I

    iget-wide v2, p0, Lcom/google/research/reflection/b/d;->Mg:J

    iget-wide v4, p0, Lcom/google/research/reflection/b/d;->Mm:J

    iget v6, p0, Lcom/google/research/reflection/b/d;->Mi:I

    invoke-direct/range {v0 .. v6}, Lcom/google/research/reflection/b/d;-><init>(IJJI)V

    .line 72
    iget-object v1, p0, Lcom/google/research/reflection/b/d;->Ml:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/google/research/reflection/b/d;->Mj:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 78
    iget-object v1, p0, Lcom/google/research/reflection/b/d;->Mh:[Z

    iget-object v2, p0, Lcom/google/research/reflection/b/d;->Mh:[Z

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v1

    iput-object v1, v0, Lcom/google/research/reflection/b/d;->Mh:[Z

    .line 79
    iget-object v1, p0, Lcom/google/research/reflection/b/d;->Md:Lcom/google/research/reflection/b/a;

    invoke-virtual {v0, v1}, Lcom/google/research/reflection/b/d;->UD(Lcom/google/research/reflection/b/a;)V

    .line 80
    return-object v0

    .line 72
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 73
    iget-object v4, v0, Lcom/google/research/reflection/b/d;->Ml:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v4, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 75
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 76
    iget-object v4, v0, Lcom/google/research/reflection/b/d;->Mj:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v4, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/google/research/reflection/b/d;->clone()Lcom/google/research/reflection/b/d;

    move-result-object v0

    return-object v0
.end method
