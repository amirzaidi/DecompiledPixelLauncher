.class public Lcom/google/research/reflection/layers/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field Mq:I

.field public Mr:[D

.field Ms:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/google/research/reflection/layers/b;->Mq:I

    .line 20
    iput p2, p0, Lcom/google/research/reflection/layers/b;->Ms:I

    .line 21
    mul-int v0, p1, p2

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/google/research/reflection/layers/b;->Mr:[D

    .line 22
    return-void
.end method

.method public static Vb(Lcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;ZLcom/google/research/reflection/layers/b;Z)Lcom/google/research/reflection/layers/b;
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 63
    invoke-virtual {p0, v6}, Lcom/google/research/reflection/layers/b;->Vh(Z)I

    move-result v0

    invoke-virtual {p1, p2}, Lcom/google/research/reflection/layers/b;->Vj(Z)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 66
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0, v6}, Lcom/google/research/reflection/layers/b;->Vj(Z)I

    move-result v1

    invoke-virtual {p0, v6}, Lcom/google/research/reflection/layers/b;->Vh(Z)I

    move-result v2

    .line 67
    invoke-virtual {p1, p2}, Lcom/google/research/reflection/layers/b;->Vj(Z)I

    move-result v3

    invoke-virtual {p1, p2}, Lcom/google/research/reflection/layers/b;->Vh(Z)I

    move-result v4

    .line 68
    invoke-virtual {p3, v6}, Lcom/google/research/reflection/layers/b;->Vj(Z)I

    move-result v5

    invoke-virtual {p3, v6}, Lcom/google/research/reflection/layers/b;->Vh(Z)I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v8, 0x47

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v7, "x"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_1
    invoke-virtual {p3, v6}, Lcom/google/research/reflection/layers/b;->Vj(Z)I

    move-result v0

    invoke-virtual {p0, v6}, Lcom/google/research/reflection/layers/b;->Vj(Z)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 65
    invoke-virtual {p3, v6}, Lcom/google/research/reflection/layers/b;->Vh(Z)I

    move-result v0

    invoke-virtual {p1, p2}, Lcom/google/research/reflection/layers/b;->Vh(Z)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 71
    invoke-static {}, Lcom/google/research/reflection/layers/e;->Vq()Lcom/google/research/reflection/layers/e;

    move-result-object v6

    iget-object v0, p3, Lcom/google/research/reflection/layers/b;->Mr:[D

    array-length v7, v0

    new-instance v0, Lcom/google/research/reflection/layers/h;

    move v1, p4

    move-object v2, p3

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/research/reflection/layers/h;-><init>(ZLcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;Z)V

    invoke-virtual {v6, v7, v0}, Lcom/google/research/reflection/layers/e;->Vp(ILcom/google/research/reflection/layers/c;)V

    .line 95
    return-object p3
.end method

.method public static Vg(Lcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;Z)Lcom/google/research/reflection/layers/b;
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 38
    invoke-virtual {p0, v6}, Lcom/google/research/reflection/layers/b;->Vh(Z)I

    move-result v0

    invoke-virtual {p1, v6}, Lcom/google/research/reflection/layers/b;->Vh(Z)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 42
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0, v6}, Lcom/google/research/reflection/layers/b;->Vj(Z)I

    move-result v1

    invoke-virtual {p0, v6}, Lcom/google/research/reflection/layers/b;->Vh(Z)I

    move-result v2

    .line 43
    invoke-virtual {p1, v6}, Lcom/google/research/reflection/layers/b;->Vj(Z)I

    move-result v3

    invoke-virtual {p1, v6}, Lcom/google/research/reflection/layers/b;->Vh(Z)I

    move-result v4

    .line 44
    invoke-virtual {p2, v6}, Lcom/google/research/reflection/layers/b;->Vj(Z)I

    move-result v5

    invoke-virtual {p2, v6}, Lcom/google/research/reflection/layers/b;->Vh(Z)I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v8, 0x47

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v7, "x"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_1
    invoke-virtual {p0, v6}, Lcom/google/research/reflection/layers/b;->Vj(Z)I

    move-result v0

    invoke-virtual {p1, v6}, Lcom/google/research/reflection/layers/b;->Vj(Z)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 40
    invoke-virtual {p2, v6}, Lcom/google/research/reflection/layers/b;->Vh(Z)I

    move-result v0

    invoke-virtual {p1, v6}, Lcom/google/research/reflection/layers/b;->Vh(Z)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 41
    invoke-virtual {p2, v6}, Lcom/google/research/reflection/layers/b;->Vj(Z)I

    move-result v0

    invoke-virtual {p1, v6}, Lcom/google/research/reflection/layers/b;->Vj(Z)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 47
    invoke-static {}, Lcom/google/research/reflection/layers/e;->Vq()Lcom/google/research/reflection/layers/e;

    move-result-object v0

    iget-object v1, p2, Lcom/google/research/reflection/layers/b;->Mr:[D

    array-length v1, v1

    new-instance v2, Lcom/google/research/reflection/layers/p;

    invoke-direct {v2, p3, p2, p0, p1}, Lcom/google/research/reflection/layers/p;-><init>(ZLcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/research/reflection/layers/e;->Vp(ILcom/google/research/reflection/layers/c;)V

    .line 58
    return-object p2
.end method

.method public static Vi(Lcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;)Lcom/google/research/reflection/layers/b;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 188
    invoke-virtual {p0, v1}, Lcom/google/research/reflection/layers/b;->Vj(Z)I

    move-result v0

    invoke-virtual {p1, v1}, Lcom/google/research/reflection/layers/b;->Vj(Z)I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 191
    new-instance v0, Lcom/google/research/reflection/layers/b;

    invoke-virtual {p0, v1}, Lcom/google/research/reflection/layers/b;->Vj(Z)I

    move-result v2

    .line 192
    invoke-virtual {p0, v1}, Lcom/google/research/reflection/layers/b;->Vh(Z)I

    move-result v3

    invoke-virtual {p1, v1}, Lcom/google/research/reflection/layers/b;->Vh(Z)I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v0, v2, v3}, Lcom/google/research/reflection/layers/b;-><init>(II)V

    move v2, v1

    .line 193
    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/research/reflection/layers/b;->Vj(Z)I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 203
    return-object v0

    .line 189
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    move v3, v1

    .line 194
    :goto_1
    invoke-virtual {v0, v1}, Lcom/google/research/reflection/layers/b;->Vh(Z)I

    move-result v4

    if-lt v3, v4, :cond_2

    .line 193
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 195
    :cond_2
    invoke-virtual {p0, v1}, Lcom/google/research/reflection/layers/b;->Vh(Z)I

    move-result v4

    if-lt v3, v4, :cond_3

    .line 199
    invoke-virtual {p0, v1}, Lcom/google/research/reflection/layers/b;->Vh(Z)I

    move-result v4

    sub-int v4, v3, v4

    invoke-virtual {p1, v1, v2, v4}, Lcom/google/research/reflection/layers/b;->Vc(ZII)D

    move-result-wide v4

    .line 198
    invoke-virtual/range {v0 .. v5}, Lcom/google/research/reflection/layers/b;->Vd(ZIID)V

    .line 194
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 196
    :cond_3
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/research/reflection/layers/b;->Vc(ZII)D

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/google/research/reflection/layers/b;->Vd(ZIID)V

    goto :goto_2
.end method


# virtual methods
.method public Vc(ZII)D
    .locals 4

    .prologue
    const/16 v3, 0x29

    .line 119
    invoke-virtual {p0, p1}, Lcom/google/research/reflection/layers/b;->Vj(Z)I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 122
    invoke-virtual {p0, p1}, Lcom/google/research/reflection/layers/b;->Vh(Z)I

    move-result v0

    if-ge p3, v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/google/research/reflection/layers/b;->Mr:[D

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/research/reflection/layers/b;->Vf(ZII)I

    move-result v1

    aget-wide v0, v0, v1

    return-wide v0

    .line 120
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0, p1}, Lcom/google/research/reflection/layers/b;->Vj(Z)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "requested row: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " >= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0, p1}, Lcom/google/research/reflection/layers/b;->Vh(Z)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "requested col: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " >= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public Vd(ZIID)V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/research/reflection/layers/b;->Mr:[D

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/research/reflection/layers/b;->Vf(ZII)I

    move-result v1

    aput-wide p4, v0, v1

    .line 134
    return-void
.end method

.method public Ve(Lcom/google/research/reflection/layers/b;)Lcom/google/research/reflection/layers/b;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 230
    invoke-virtual {p0, v4}, Lcom/google/research/reflection/layers/b;->Vh(Z)I

    move-result v0

    invoke-virtual {p1, v4}, Lcom/google/research/reflection/layers/b;->Vh(Z)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 232
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0, v4}, Lcom/google/research/reflection/layers/b;->Vj(Z)I

    move-result v1

    invoke-virtual {p0, v4}, Lcom/google/research/reflection/layers/b;->Vh(Z)I

    move-result v2

    .line 233
    invoke-virtual {p1, v4}, Lcom/google/research/reflection/layers/b;->Vj(Z)I

    move-result v3

    invoke-virtual {p1, v4}, Lcom/google/research/reflection/layers/b;->Vh(Z)I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x2f

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, "x"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_1
    invoke-virtual {p0, v4}, Lcom/google/research/reflection/layers/b;->Vj(Z)I

    move-result v0

    invoke-virtual {p1, v4}, Lcom/google/research/reflection/layers/b;->Vj(Z)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 235
    invoke-static {}, Lcom/google/research/reflection/layers/e;->Vq()Lcom/google/research/reflection/layers/e;

    move-result-object v0

    iget-object v1, p0, Lcom/google/research/reflection/layers/b;->Mr:[D

    array-length v1, v1

    new-instance v2, Lcom/google/research/reflection/layers/i;

    invoke-direct {v2, p0, p1}, Lcom/google/research/reflection/layers/i;-><init>(Lcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/research/reflection/layers/e;->Vp(ILcom/google/research/reflection/layers/c;)V

    .line 244
    return-object p0
.end method

.method public Vf(ZII)I
    .locals 1

    .prologue
    .line 111
    if-nez p1, :cond_0

    .line 114
    iget v0, p0, Lcom/google/research/reflection/layers/b;->Ms:I

    mul-int/2addr v0, p2

    add-int/2addr v0, p3

    return v0

    .line 112
    :cond_0
    iget v0, p0, Lcom/google/research/reflection/layers/b;->Ms:I

    mul-int/2addr v0, p3

    add-int/2addr v0, p2

    return v0
.end method

.method public Vh(Z)I
    .locals 1

    .prologue
    .line 162
    if-nez p1, :cond_0

    .line 165
    iget v0, p0, Lcom/google/research/reflection/layers/b;->Ms:I

    return v0

    .line 163
    :cond_0
    iget v0, p0, Lcom/google/research/reflection/layers/b;->Mq:I

    return v0
.end method

.method public Vj(Z)I
    .locals 1

    .prologue
    .line 154
    if-nez p1, :cond_0

    .line 157
    iget v0, p0, Lcom/google/research/reflection/layers/b;->Mq:I

    return v0

    .line 155
    :cond_0
    iget v0, p0, Lcom/google/research/reflection/layers/b;->Ms:I

    return v0
.end method

.method public Vk(ZIID)V
    .locals 4

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/research/reflection/layers/b;->Mr:[D

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/research/reflection/layers/b;->Vf(ZII)I

    move-result v1

    aget-wide v2, v0, v1

    add-double/2addr v2, p4

    aput-wide v2, v0, v1

    .line 130
    return-void
.end method

.method public Vl(Ljava/io/DataOutputStream;)V
    .locals 4

    .prologue
    .line 137
    iget v0, p0, Lcom/google/research/reflection/layers/b;->Mq:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 138
    iget v0, p0, Lcom/google/research/reflection/layers/b;->Ms:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 139
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/research/reflection/layers/b;->Mr:[D

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 142
    return-void

    .line 140
    :cond_0
    iget-object v1, p0, Lcom/google/research/reflection/layers/b;->Mr:[D

    aget-wide v2, v1, v0

    invoke-virtual {p1, v2, v3}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public Vm(Ljava/io/DataInputStream;)V
    .locals 4

    .prologue
    .line 145
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/research/reflection/layers/b;->Mq:I

    .line 146
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/research/reflection/layers/b;->Ms:I

    .line 147
    iget v0, p0, Lcom/google/research/reflection/layers/b;->Mq:I

    iget v1, p0, Lcom/google/research/reflection/layers/b;->Ms:I

    mul-int/2addr v0, v1

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/google/research/reflection/layers/b;->Mr:[D

    .line 148
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/research/reflection/layers/b;->Mr:[D

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 151
    return-void

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/google/research/reflection/layers/b;->Mr:[D

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public Vn(D)Lcom/google/research/reflection/layers/b;
    .locals 3

    .prologue
    .line 217
    invoke-static {}, Lcom/google/research/reflection/layers/e;->Vq()Lcom/google/research/reflection/layers/e;

    move-result-object v0

    iget-object v1, p0, Lcom/google/research/reflection/layers/b;->Mr:[D

    array-length v1, v1

    new-instance v2, Lcom/google/research/reflection/layers/q;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/research/reflection/layers/q;-><init>(Lcom/google/research/reflection/layers/b;D)V

    invoke-virtual {v0, v1, v2}, Lcom/google/research/reflection/layers/e;->Vp(ILcom/google/research/reflection/layers/c;)V

    .line 226
    return-object p0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/google/research/reflection/layers/b;->Mr:[D

    invoke-static {v0}, Lcom/google/research/reflection/layers/k;->VD([D)V

    .line 249
    return-void
.end method

.method public clone()Lcom/google/research/reflection/layers/b;
    .locals 6

    .prologue
    .line 29
    new-instance v1, Lcom/google/research/reflection/layers/b;

    iget v0, p0, Lcom/google/research/reflection/layers/b;->Mq:I

    iget v2, p0, Lcom/google/research/reflection/layers/b;->Ms:I

    invoke-direct {v1, v0, v2}, Lcom/google/research/reflection/layers/b;-><init>(II)V

    .line 30
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/research/reflection/layers/b;->Mr:[D

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 33
    return-object v1

    .line 31
    :cond_0
    iget-object v2, v1, Lcom/google/research/reflection/layers/b;->Mr:[D

    iget-object v3, p0, Lcom/google/research/reflection/layers/b;->Mr:[D

    aget-wide v4, v3, v0

    aput-wide v4, v2, v0

    .line 30
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/google/research/reflection/layers/b;->clone()Lcom/google/research/reflection/layers/b;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 100
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 101
    :goto_0
    invoke-virtual {p0, v1}, Lcom/google/research/reflection/layers/b;->Vj(Z)I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 107
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    move v2, v1

    .line 102
    :goto_1
    invoke-virtual {p0, v1}, Lcom/google/research/reflection/layers/b;->Vh(Z)I

    move-result v4

    if-lt v2, v4, :cond_1

    .line 105
    const-string/jumbo v2, "\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    :cond_1
    invoke-virtual {p0, v1, v0, v2}, Lcom/google/research/reflection/layers/b;->Vc(ZII)D

    move-result-wide v4

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x19

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
