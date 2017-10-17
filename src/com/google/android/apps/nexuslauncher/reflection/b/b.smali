.class public Lcom/google/android/apps/nexuslauncher/reflection/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/research/reflection/a/b;


# instance fields
.field private bA:Lcom/google/android/apps/nexuslauncher/reflection/a/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/google/android/apps/nexuslauncher/reflection/a/a;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/reflection/a/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->bA:Lcom/google/android/apps/nexuslauncher/reflection/a/a;

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/reflection/a/a;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->bA:Lcom/google/android/apps/nexuslauncher/reflection/a/a;

    .line 28
    return-void
.end method


# virtual methods
.method public aA()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->bA:Lcom/google/android/apps/nexuslauncher/reflection/a/a;

    iget-wide v0, v0, Lcom/google/android/apps/nexuslauncher/reflection/a/a;->am:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public aB()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->bA:Lcom/google/android/apps/nexuslauncher/reflection/a/a;

    iget-wide v0, v0, Lcom/google/android/apps/nexuslauncher/reflection/a/a;->duration:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public aC()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->bA:Lcom/google/android/apps/nexuslauncher/reflection/a/a;

    iget-wide v0, v0, Lcom/google/android/apps/nexuslauncher/reflection/a/a;->ap:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public aD()Ljava/util/List;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->bA:Lcom/google/android/apps/nexuslauncher/reflection/a/a;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/reflection/a/a;->aq:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public aE()Ljava/util/List;
    .locals 6

    .prologue
    .line 146
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->bA:Lcom/google/android/apps/nexuslauncher/reflection/a/a;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/reflection/a/a;->av:[Lcom/google/android/apps/nexuslauncher/reflection/a/e;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 147
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->bA:Lcom/google/android/apps/nexuslauncher/reflection/a/a;

    iget-object v2, v0, Lcom/google/android/apps/nexuslauncher/reflection/a/a;->av:[Lcom/google/android/apps/nexuslauncher/reflection/a/e;

    const/4 v0, 0x0

    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 148
    new-instance v5, Lcom/google/android/apps/nexuslauncher/reflection/b/a;

    invoke-direct {v5, v4}, Lcom/google/android/apps/nexuslauncher/reflection/b/a;-><init>(Lcom/google/android/apps/nexuslauncher/reflection/a/e;)V

    .line 149
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 151
    :cond_0
    return-object v1
.end method

.method public aF()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->bA:Lcom/google/android/apps/nexuslauncher/reflection/a/a;

    iget-wide v0, v0, Lcom/google/android/apps/nexuslauncher/reflection/a/a;->ax:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public aG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->bA:Lcom/google/android/apps/nexuslauncher/reflection/a/a;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/reflection/a/a;->ay:Ljava/lang/String;

    return-object v0
.end method

.method public aH()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->bA:Lcom/google/android/apps/nexuslauncher/reflection/a/a;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/reflection/a/a;->az:Ljava/lang/String;

    return-object v0
.end method

.method public aI()[B
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 243
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->bA:Lcom/google/android/apps/nexuslauncher/reflection/a/a;

    if-nez v0, :cond_0

    .line 244
    return-object v1

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->bA:Lcom/google/android/apps/nexuslauncher/reflection/a/a;

    invoke-static {v0}, Lcom/google/protobuf/nano/a;->toByteArray(Lcom/google/protobuf/nano/a;)[B

    move-result-object v0

    return-object v0
.end method

.method public aJ(Ljava/lang/String;)Lcom/google/research/reflection/a/b;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->bA:Lcom/google/android/apps/nexuslauncher/reflection/a/a;

    iput-object p1, v0, Lcom/google/android/apps/nexuslauncher/reflection/a/a;->as:Ljava/lang/String;

    .line 42
    return-object p0
.end method

.method public aK(Ljava/util/List;)Lcom/google/research/reflection/a/b;
    .locals 3

    .prologue
    .line 156
    if-nez p1, :cond_0

    .line 157
    return-object p0

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->bA:Lcom/google/android/apps/nexuslauncher/reflection/a/a;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/apps/nexuslauncher/reflection/a/e;

    iput-object v1, v0, Lcom/google/android/apps/nexuslauncher/reflection/a/a;->av:[Lcom/google/android/apps/nexuslauncher/reflection/a/e;

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
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->bA:Lcom/google/android/apps/nexuslauncher/reflection/a/a;

    iget-object v2, v0, Lcom/google/android/apps/nexuslauncher/reflection/a/a;->av:[Lcom/google/android/apps/nexuslauncher/reflection/a/e;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/reflection/b/a;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/reflection/b/a;->as()Lcom/google/android/apps/nexuslauncher/reflection/a/e;

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

.method public aw()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->bA:Lcom/google/android/apps/nexuslauncher/reflection/a/a;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/reflection/a/a;->an:Ljava/lang/String;

    return-object v0
.end method

.method public ax()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->bA:Lcom/google/android/apps/nexuslauncher/reflection/a/a;

    iget-wide v0, v0, Lcom/google/android/apps/nexuslauncher/reflection/a/a;->aw:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public ay()Lcom/google/android/apps/nexuslauncher/reflection/a/a;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->bA:Lcom/google/android/apps/nexuslauncher/reflection/a/a;

    return-object v0
.end method

.method public az([BII)Lcom/google/research/reflection/a/b;
    .locals 2

    .prologue
    .line 253
    :try_start_0
    new-instance v0, Lcom/google/android/apps/nexuslauncher/reflection/b/b;

    const/4 v1, 0x0

    invoke-static {p1, v1, p3}, Lcom/google/protobuf/nano/c;->SH([BII)Lcom/google/protobuf/nano/c;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/nexuslauncher/reflection/a/a;->an(Lcom/google/protobuf/nano/c;)Lcom/google/android/apps/nexuslauncher/reflection/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/nexuslauncher/reflection/b/b;-><init>(Lcom/google/android/apps/nexuslauncher/reflection/a/a;)V
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

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 262
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->bA:Lcom/google/android/apps/nexuslauncher/reflection/a/a;

    if-nez v0, :cond_0

    .line 263
    const/4 v0, 0x1

    return v0

    .line 265
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->bA:Lcom/google/android/apps/nexuslauncher/reflection/a/a;

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

    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->ay()Lcom/google/android/apps/nexuslauncher/reflection/a/a;

    move-result-object v0

    .line 270
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->bA:Lcom/google/android/apps/nexuslauncher/reflection/a/a;

    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/reflection/a/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/reflection/a/a;->toString()Ljava/lang/String;

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
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->bA:Lcom/google/android/apps/nexuslauncher/reflection/a/a;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/reflection/a/a;->as:Ljava/lang/String;

    return-object v0
.end method
