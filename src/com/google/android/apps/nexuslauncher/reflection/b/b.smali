.class public Lcom/google/android/apps/nexuslauncher/reflection/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/research/reflection/a/b;


# instance fields
.field private I:Lcom/google/android/apps/nexuslauncher/reflection/d/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/reflection/d/e;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->I:Lcom/google/android/apps/nexuslauncher/reflection/d/e;

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/reflection/d/e;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->I:Lcom/google/android/apps/nexuslauncher/reflection/d/e;

    .line 28
    return-void
.end method


# virtual methods
.method public F()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->I:Lcom/google/android/apps/nexuslauncher/reflection/d/e;

    iget-wide v0, v0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->ah:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public G()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->I:Lcom/google/android/apps/nexuslauncher/reflection/d/e;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->an:Ljava/lang/String;

    return-object v0
.end method

.method public H(Ljava/lang/String;)Lcom/google/research/reflection/a/b;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->I:Lcom/google/android/apps/nexuslauncher/reflection/d/e;

    iput-object p1, v0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->am:Ljava/lang/String;

    .line 42
    return-object p0
.end method

.method public I([BII)Lcom/google/research/reflection/a/b;
    .locals 2

    .prologue
    .line 253
    :try_start_0
    new-instance v0, Lcom/google/android/apps/nexuslauncher/reflection/b/b;

    const/4 v1, 0x0

    invoke-static {p1, v1, p3}, Lcom/google/protobuf/nano/c;->WC([BII)Lcom/google/protobuf/nano/c;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->af(Lcom/google/protobuf/nano/c;)Lcom/google/android/apps/nexuslauncher/reflection/d/e;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/nexuslauncher/reflection/b/b;-><init>(Lcom/google/android/apps/nexuslauncher/reflection/d/e;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 254
    :catch_0
    move-exception v0

    .line 255
    const-string/jumbo v0, "Reflection"

    const-string/jumbo v1, "deserialize event failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const/4 v0, 0x0

    return-object v0
.end method

.method public J()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->I:Lcom/google/android/apps/nexuslauncher/reflection/d/e;

    iget-wide v0, v0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->ak:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public K()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->I:Lcom/google/android/apps/nexuslauncher/reflection/d/e;

    iget-wide v0, v0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->duration:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public L()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->I:Lcom/google/android/apps/nexuslauncher/reflection/d/e;

    iget-wide v0, v0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->al:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public M()Ljava/util/List;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->I:Lcom/google/android/apps/nexuslauncher/reflection/d/e;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->ao:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public N()Ljava/util/List;
    .locals 6

    .prologue
    .line 146
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->I:Lcom/google/android/apps/nexuslauncher/reflection/d/e;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->au:[Lcom/google/android/apps/nexuslauncher/reflection/d/i;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 147
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->I:Lcom/google/android/apps/nexuslauncher/reflection/d/e;

    iget-object v2, v0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->au:[Lcom/google/android/apps/nexuslauncher/reflection/d/i;

    const/4 v0, 0x0

    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 148
    new-instance v5, Lcom/google/android/apps/nexuslauncher/reflection/b/a;

    invoke-direct {v5, v4}, Lcom/google/android/apps/nexuslauncher/reflection/b/a;-><init>(Lcom/google/android/apps/nexuslauncher/reflection/d/i;)V

    .line 149
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 151
    :cond_0
    return-object v1
.end method

.method public O()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->I:Lcom/google/android/apps/nexuslauncher/reflection/d/e;

    iget-wide v0, v0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->aj:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public P()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->I:Lcom/google/android/apps/nexuslauncher/reflection/d/e;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->ai:Ljava/lang/String;

    return-object v0
.end method

.method public Q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->I:Lcom/google/android/apps/nexuslauncher/reflection/d/e;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->ap:Ljava/lang/String;

    return-object v0
.end method

.method public R()[B
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 243
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->I:Lcom/google/android/apps/nexuslauncher/reflection/d/e;

    if-nez v0, :cond_0

    .line 244
    return-object v1

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->I:Lcom/google/android/apps/nexuslauncher/reflection/d/e;

    invoke-static {v0}, Lcom/google/protobuf/nano/a;->toByteArray(Lcom/google/protobuf/nano/a;)[B

    move-result-object v0

    return-object v0
.end method

.method public S(Ljava/util/List;)Lcom/google/research/reflection/a/b;
    .locals 3

    .prologue
    .line 156
    if-nez p1, :cond_0

    .line 157
    return-object p0

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->I:Lcom/google/android/apps/nexuslauncher/reflection/d/e;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/apps/nexuslauncher/reflection/d/i;

    iput-object v1, v0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->au:[Lcom/google/android/apps/nexuslauncher/reflection/d/i;

    .line 160
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 161
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/apps/nexuslauncher/reflection/b/a;

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->I:Lcom/google/android/apps/nexuslauncher/reflection/d/e;

    iget-object v2, v0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->au:[Lcom/google/android/apps/nexuslauncher/reflection/d/i;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/reflection/b/a;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/reflection/b/a;->getInstance()Lcom/google/android/apps/nexuslauncher/reflection/d/i;

    move-result-object v0

    aput-object v0, v2, v1

    .line 160
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 164
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Passed in type is unexpected!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_2
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 262
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->I:Lcom/google/android/apps/nexuslauncher/reflection/d/e;

    if-nez v0, :cond_0

    .line 263
    const/4 v0, 0x1

    return v0

    .line 265
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->I:Lcom/google/android/apps/nexuslauncher/reflection/d/e;

    if-nez v0, :cond_2

    .line 266
    :cond_1
    return v1

    .line 268
    :cond_2
    instance-of v0, p1, Lcom/google/android/apps/nexuslauncher/reflection/b/b;

    if-eqz v0, :cond_3

    .line 269
    check-cast p1, Lcom/google/android/apps/nexuslauncher/reflection/b/b;

    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->getInstance()Lcom/google/android/apps/nexuslauncher/reflection/d/e;

    move-result-object v0

    .line 270
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->I:Lcom/google/android/apps/nexuslauncher/reflection/d/e;

    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 272
    :cond_3
    return v1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->I:Lcom/google/android/apps/nexuslauncher/reflection/d/e;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->am:Ljava/lang/String;

    return-object v0
.end method

.method public getInstance()Lcom/google/android/apps/nexuslauncher/reflection/d/e;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->I:Lcom/google/android/apps/nexuslauncher/reflection/d/e;

    return-object v0
.end method
