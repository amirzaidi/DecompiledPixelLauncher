.class public Lcom/google/research/reflection/common/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Tf(Ljava/io/DataOutputStream;Ljava/lang/Object;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 99
    instance-of v1, p1, Ljava/lang/Integer;

    if-nez v1, :cond_1

    .line 101
    instance-of v1, p1, Ljava/lang/Long;

    if-nez v1, :cond_2

    .line 103
    instance-of v1, p1, Ljava/lang/Float;

    if-nez v1, :cond_3

    .line 105
    instance-of v1, p1, Ljava/lang/String;

    if-nez v1, :cond_4

    .line 107
    instance-of v1, p1, Ljava/util/HashMap;

    if-nez v1, :cond_5

    .line 109
    instance-of v1, p1, [I

    if-nez v1, :cond_6

    .line 115
    instance-of v1, p1, [F

    if-nez v1, :cond_7

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_0

    .line 102
    :cond_2
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto :goto_0

    .line 104
    :cond_3
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    goto :goto_0

    .line 106
    :cond_4
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_5
    check-cast p1, Ljava/util/HashMap;

    invoke-static {p0, p1}, Lcom/google/research/reflection/common/d;->Ti(Ljava/io/DataOutputStream;Ljava/util/Map;)V

    goto :goto_0

    .line 110
    :cond_6
    check-cast p1, [I

    .line 111
    array-length v1, p1

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 112
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 113
    aget v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 116
    :cond_7
    check-cast p1, [F

    .line 117
    array-length v1, p1

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 118
    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 119
    aget v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private static Tg(Ljava/io/DataInputStream;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 152
    const-class v1, Ljava/lang/Integer;

    if-eq p1, v1, :cond_0

    .line 154
    const-class v1, Ljava/lang/Long;

    if-eq p1, v1, :cond_1

    .line 156
    const-class v1, Ljava/lang/Float;

    if-eq p1, v1, :cond_2

    .line 158
    const-class v1, Ljava/lang/String;

    if-eq p1, v1, :cond_3

    .line 160
    const-class v1, [I

    if-eq p1, v1, :cond_4

    .line 167
    const-class v1, [F

    if-eq p1, v1, :cond_6

    .line 175
    const/4 v0, 0x0

    return-object v0

    .line 153
    :cond_0
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 155
    :cond_1
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 157
    :cond_2
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 159
    :cond_3
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 161
    :cond_4
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 162
    new-array v2, v1, [I

    .line 163
    :goto_0
    if-lt v0, v1, :cond_5

    .line 166
    return-object v2

    .line 164
    :cond_5
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    aput v3, v2, v0

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    :cond_6
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 169
    new-array v2, v1, [F

    .line 170
    :goto_1
    if-lt v0, v1, :cond_7

    .line 173
    return-object v2

    .line 171
    :cond_7
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    aput v3, v2, v0

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static Th(DD)[F
    .locals 10

    .prologue
    .line 194
    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 195
    invoke-static {p2, p3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 196
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    .line 197
    const/4 v6, 0x3

    new-array v6, v6, [F

    const/4 v7, 0x0

    .line 198
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v8, v4

    double-to-float v8, v8

    aput v8, v6, v7

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-float v2, v2

    const/4 v3, 0x1

    aput v2, v6, v3

    const/4 v2, 0x2

    .line 199
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, v6, v2

    .line 197
    return-object v6
.end method

.method public static Ti(Ljava/io/DataOutputStream;Ljava/util/Map;)V
    .locals 3

    .prologue
    .line 79
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 80
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    return-void

    .line 80
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 81
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/google/research/reflection/common/d;->Tf(Ljava/io/DataOutputStream;Ljava/lang/Object;)V

    .line 82
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/research/reflection/common/d;->Tf(Ljava/io/DataOutputStream;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static Tj(Ljava/io/DataInputStream;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/HashMap;
    .locals 5

    .prologue
    .line 126
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 127
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 128
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    .line 133
    return-object v1

    .line 129
    :cond_0
    invoke-static {p0, p1}, Lcom/google/research/reflection/common/d;->Tg(Ljava/io/DataInputStream;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .line 130
    invoke-static {p0, p2}, Lcom/google/research/reflection/common/d;->Tg(Ljava/io/DataInputStream;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    .line 131
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
