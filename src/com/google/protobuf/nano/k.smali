.class Lcom/google/protobuf/nano/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private Qa:Ljava/util/List;

.field private Qb:Lcom/google/protobuf/nano/g;

.field private Qc:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/nano/k;->Qa:Ljava/util/List;

    .line 55
    return-void
.end method

.method private Xk()[B
    .locals 2

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/google/protobuf/nano/k;->computeSerializedSize()I

    move-result v0

    new-array v0, v0, [B

    .line 185
    invoke-static {v0}, Lcom/google/protobuf/nano/b;->VJ([B)Lcom/google/protobuf/nano/b;

    move-result-object v1

    .line 186
    invoke-virtual {p0, v1}, Lcom/google/protobuf/nano/k;->writeTo(Lcom/google/protobuf/nano/b;)V

    .line 187
    return-object v0
.end method


# virtual methods
.method public final clone()Lcom/google/protobuf/nano/k;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 192
    new-instance v3, Lcom/google/protobuf/nano/k;

    invoke-direct {v3}, Lcom/google/protobuf/nano/k;-><init>()V

    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/nano/k;->Qb:Lcom/google/protobuf/nano/g;

    iput-object v0, v3, Lcom/google/protobuf/nano/k;->Qb:Lcom/google/protobuf/nano/g;

    .line 195
    iget-object v0, p0, Lcom/google/protobuf/nano/k;->Qa:Ljava/util/List;

    if-nez v0, :cond_1

    .line 196
    const/4 v0, 0x0

    iput-object v0, v3, Lcom/google/protobuf/nano/k;->Qa:Ljava/util/List;

    .line 204
    :goto_0
    iget-object v0, p0, Lcom/google/protobuf/nano/k;->Qc:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 235
    :cond_0
    :goto_1
    return-object v3

    .line 198
    :cond_1
    iget-object v0, v3, Lcom/google/protobuf/nano/k;->Qa:Ljava/util/List;

    iget-object v2, p0, Lcom/google/protobuf/nano/k;->Qa:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 236
    :catch_0
    move-exception v0

    .line 237
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 206
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/google/protobuf/nano/k;->Qc:Ljava/lang/Object;

    instance-of v0, v0, Lcom/google/protobuf/nano/a;

    if-eqz v0, :cond_3

    .line 207
    iget-object v0, p0, Lcom/google/protobuf/nano/k;->Qc:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/nano/a;

    invoke-virtual {v0}, Lcom/google/protobuf/nano/a;->clone()Lcom/google/protobuf/nano/a;

    move-result-object v0

    iput-object v0, v3, Lcom/google/protobuf/nano/k;->Qc:Ljava/lang/Object;

    goto :goto_1

    .line 208
    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/nano/k;->Qc:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-eqz v0, :cond_4

    .line 209
    iget-object v0, p0, Lcom/google/protobuf/nano/k;->Qc:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v3, Lcom/google/protobuf/nano/k;->Qc:Ljava/lang/Object;

    goto :goto_1

    .line 210
    :cond_4
    iget-object v0, p0, Lcom/google/protobuf/nano/k;->Qc:Ljava/lang/Object;

    instance-of v0, v0, [[B

    if-eqz v0, :cond_5

    .line 211
    iget-object v0, p0, Lcom/google/protobuf/nano/k;->Qc:Ljava/lang/Object;

    check-cast v0, [[B

    .line 212
    array-length v2, v0

    new-array v4, v2, [[B

    .line 213
    iput-object v4, v3, Lcom/google/protobuf/nano/k;->Qc:Ljava/lang/Object;

    move v2, v1

    .line 214
    :goto_2
    array-length v1, v0

    if-ge v2, v1, :cond_0

    .line 215
    aget-object v1, v0, v2

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    aput-object v1, v4, v2

    .line 214
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    .line 217
    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/nano/k;->Qc:Ljava/lang/Object;

    instance-of v0, v0, [Z

    if-eqz v0, :cond_6

    .line 218
    iget-object v0, p0, Lcom/google/protobuf/nano/k;->Qc:Ljava/lang/Object;

    check-cast v0, [Z

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v3, Lcom/google/protobuf/nano/k;->Qc:Ljava/lang/Object;

    goto :goto_1

    .line 219
    :cond_6
    iget-object v0, p0, Lcom/google/protobuf/nano/k;->Qc:Ljava/lang/Object;

    instance-of v0, v0, [I

    if-eqz v0, :cond_7

    .line 220
    iget-object v0, p0, Lcom/google/protobuf/nano/k;->Qc:Ljava/lang/Object;

    check-cast v0, [I

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v3, Lcom/google/protobuf/nano/k;->Qc:Ljava/lang/Object;

    goto :goto_1

    .line 221
    :cond_7
    iget-object v0, p0, Lcom/google/protobuf/nano/k;->Qc:Ljava/lang/Object;

    instance-of v0, v0, [J

    if-eqz v0, :cond_8

    .line 222
    iget-object v0, p0, Lcom/google/protobuf/nano/k;->Qc:Ljava/lang/Object;

    check-cast v0, [J

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v3, Lcom/google/protobuf/nano/k;->Qc:Ljava/lang/Object;

    goto/16 :goto_1

    .line 223
    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/nano/k;->Qc:Ljava/lang/Object;

    instance-of v0, v0, [F

    if-eqz v0, :cond_9

    .line 224
    iget-object v0, p0, Lcom/google/protobuf/nano/k;->Qc:Ljava/lang/Object;

    check-cast v0, [F

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v3, Lcom/google/protobuf/nano/k;->Qc:Ljava/lang/Object;

    goto/16 :goto_1

    .line 225
    :cond_9
    iget-object v0, p0, Lcom/google/protobuf/nano/k;->Qc:Ljava/lang/Object;

    instance-of v0, v0, [D

    if-eqz v0, :cond_a

    .line 226
    iget-object v0, p0, Lcom/google/protobuf/nano/k;->Qc:Ljava/lang/Object;

    check-cast v0, [D

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v3, Lcom/google/protobuf/nano/k;->Qc:Ljava/lang/Object;

    goto/16 :goto_1

    .line 227
    :cond_a
    iget-object v0, p0, Lcom/google/protobuf/nano/k;->Qc:Ljava/lang/Object;

    instance-of v0, v0, [Lcom/google/protobuf/nano/a;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/google/protobuf/nano/k;->Qc:Ljava/lang/Object;

    check-cast v0, [Lcom/google/protobuf/nano/a;

    .line 229
    array-length v2, v0

    new-array v2, v2, [Lcom/google/protobuf/nano/a;

    .line 230
    iput-object v2, v3, Lcom/google/protobuf/nano/k;->Qc:Ljava/lang/Object;

    .line 231
    :goto_3
    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 232
    aget-object v4, v0, v1

    invoke-virtual {v4}, Lcom/google/protobuf/nano/a;->clone()Lcom/google/protobuf/nano/a;

    move-result-object v4

    aput-object v4, v2, v1
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 231
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/google/protobuf/nano/k;->clone()Lcom/google/protobuf/nano/k;

    move-result-object v0

    return-object v0
.end method

.method computeSerializedSize()I
    .locals 3

    .prologue
    .line 99
    const/4 v0, 0x0

    .line 100
    iget-object v1, p0, Lcom/google/protobuf/nano/k;->Qc:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 101
    iget-object v0, p0, Lcom/google/protobuf/nano/k;->Qb:Lcom/google/protobuf/nano/g;

    iget-object v1, p0, Lcom/google/protobuf/nano/k;->Qc:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/g;->WV(Ljava/lang/Object;)I

    move-result v1

    .line 107
    :cond_0
    return v1

    .line 103
    :cond_1
    iget-object v1, p0, Lcom/google/protobuf/nano/k;->Qa:Ljava/util/List;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/j;

    .line 104
    invoke-virtual {v0}, Lcom/google/protobuf/nano/j;->computeSerializedSize()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 122
    if-ne p1, p0, :cond_0

    .line 123
    const/4 v0, 0x1

    return v0

    .line 125
    :cond_0
    instance-of v0, p1, Lcom/google/protobuf/nano/k;

    if-nez v0, :cond_1

    .line 126
    return v2

    .line 129
    :cond_1
    check-cast p1, Lcom/google/protobuf/nano/k;

    .line 130
    iget-object v0, p0, Lcom/google/protobuf/nano/k;->Qc:Ljava/lang/Object;

    if-eqz v0, :cond_a

    iget-object v0, p1, Lcom/google/protobuf/nano/k;->Qc:Ljava/lang/Object;

    if-eqz v0, :cond_a

    .line 134
    iget-object v0, p0, Lcom/google/protobuf/nano/k;->Qb:Lcom/google/protobuf/nano/g;

    iget-object v1, p1, Lcom/google/protobuf/nano/k;->Qb:Lcom/google/protobuf/nano/g;

    if-eq v0, v1, :cond_2

    .line 135
    return v2

    .line 137
    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/nano/k;->Qb:Lcom/google/protobuf/nano/g;

    iget-object v0, v0, Lcom/google/protobuf/nano/g;->PT:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_3

    .line 139
    iget-object v0, p0, Lcom/google/protobuf/nano/k;->Qc:Ljava/lang/Object;

    iget-object v1, p1, Lcom/google/protobuf/nano/k;->Qc:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 141
    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/nano/k;->Qc:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-eqz v0, :cond_4

    .line 142
    iget-object v0, p0, Lcom/google/protobuf/nano/k;->Qc:Ljava/lang/Object;

    check-cast v0, [B

    iget-object v1, p1, Lcom/google/protobuf/nano/k;->Qc:Ljava/lang/Object;

    check-cast v1, [B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0

    .line 143
    :cond_4
    iget-object v0, p0, Lcom/google/protobuf/nano/k;->Qc:Ljava/lang/Object;

    instance-of v0, v0, [I

    if-eqz v0, :cond_5

    .line 144
    iget-object v0, p0, Lcom/google/protobuf/nano/k;->Qc:Ljava/lang/Object;

    check-cast v0, [I

    iget-object v1, p1, Lcom/google/protobuf/nano/k;->Qc:Ljava/lang/Object;

    check-cast v1, [I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    return v0

    .line 145
    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/nano/k;->Qc:Ljava/lang/Object;

    instance-of v0, v0, [J

    if-eqz v0, :cond_6

    .line 146
    iget-object v0, p0, Lcom/google/protobuf/nano/k;->Qc:Ljava/lang/Object;

    check-cast v0, [J

    iget-object v1, p1, Lcom/google/protobuf/nano/k;->Qc:Ljava/lang/Object;

    check-cast v1, [J

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    return v0

    .line 147
    :cond_6
    iget-object v0, p0, Lcom/google/protobuf/nano/k;->Qc:Ljava/lang/Object;

    instance-of v0, v0, [F

    if-eqz v0, :cond_7

    .line 148
    iget-object v0, p0, Lcom/google/protobuf/nano/k;->Qc:Ljava/lang/Object;

    check-cast v0, [F

    iget-object v1, p1, Lcom/google/protobuf/nano/k;->Qc:Ljava/lang/Object;

    check-cast v1, [F

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    return v0

    .line 149
    :cond_7
    iget-object v0, p0, Lcom/google/protobuf/nano/k;->Qc:Ljava/lang/Object;

    instance-of v0, v0, [D

    if-eqz v0, :cond_8

    .line 150
    iget-object v0, p0, Lcom/google/protobuf/nano/k;->Qc:Ljava/lang/Object;

    check-cast v0, [D

    iget-object v1, p1, Lcom/google/protobuf/nano/k;->Qc:Ljava/lang/Object;

    check-cast v1, [D

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v0

    return v0

    .line 151
    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/nano/k;->Qc:Ljava/lang/Object;

    instance-of v0, v0, [Z

    if-eqz v0, :cond_9

    .line 152
    iget-object v0, p0, Lcom/google/protobuf/nano/k;->Qc:Ljava/lang/Object;

    check-cast v0, [Z

    iget-object v1, p1, Lcom/google/protobuf/nano/k;->Qc:Ljava/lang/Object;

    check-cast v1, [Z

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v0

    return v0

    .line 154
    :cond_9
    iget-object v0, p0, Lcom/google/protobuf/nano/k;->Qc:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iget-object v1, p1, Lcom/google/protobuf/nano/k;->Qc:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 157
    :cond_a
    iget-object v0, p0, Lcom/google/protobuf/nano/k;->Qa:Ljava/util/List;

    if-eqz v0, :cond_b

    iget-object v0, p1, Lcom/google/protobuf/nano/k;->Qa:Ljava/util/List;

    if-eqz v0, :cond_b

    .line 159
    iget-object v0, p0, Lcom/google/protobuf/nano/k;->Qa:Ljava/util/List;

    iget-object v1, p1, Lcom/google/protobuf/nano/k;->Qa:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 163
    :cond_b
    :try_start_0
    invoke-direct {p0}, Lcom/google/protobuf/nano/k;->Xk()[B

    move-result-object v0

    invoke-direct {p1}, Lcom/google/protobuf/nano/k;->Xk()[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 164
    :catch_0
    move-exception v0

    .line 166
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 175
    :try_start_0
    invoke-direct {p0}, Lcom/google/protobuf/nano/k;->Xk()[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 180
    return v0

    .line 176
    :catch_0
    move-exception v0

    .line 178
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method writeTo(Lcom/google/protobuf/nano/b;)V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/protobuf/nano/k;->Qc:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/google/protobuf/nano/k;->Qb:Lcom/google/protobuf/nano/g;

    iget-object v1, p0, Lcom/google/protobuf/nano/k;->Qc:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/google/protobuf/nano/g;->WS(Ljava/lang/Object;Lcom/google/protobuf/nano/b;)V

    .line 118
    :cond_0
    return-void

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/nano/k;->Qa:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/j;

    .line 115
    invoke-virtual {v0, p1}, Lcom/google/protobuf/nano/j;->writeTo(Lcom/google/protobuf/nano/b;)V

    goto :goto_0
.end method
