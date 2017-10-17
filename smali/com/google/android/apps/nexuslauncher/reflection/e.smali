.class public Lcom/google/android/apps/nexuslauncher/reflection/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final cD:Lcom/google/android/apps/nexuslauncher/reflection/m;

.field private final cE:Lcom/google/android/apps/nexuslauncher/reflection/c/e;

.field private final cF:Lcom/google/android/apps/nexuslauncher/reflection/c/a;

.field private final cG:Lcom/google/android/apps/nexuslauncher/reflection/filter/a;

.field private final cH:Lcom/google/android/apps/nexuslauncher/reflection/filter/b;

.field private final cI:Lcom/google/android/apps/nexuslauncher/reflection/filter/d;

.field private final cJ:Lcom/google/android/apps/nexuslauncher/reflection/h;

.field private final cK:Ljava/util/ArrayList;

.field private final cL:Lcom/google/android/apps/nexuslauncher/reflection/d/b;

.field private final cM:Lcom/google/android/apps/nexuslauncher/reflection/b;

.field private final mContext:Landroid/content/Context;

.field final mEngine:Lcom/google/android/apps/nexuslauncher/reflection/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/nexuslauncher/reflection/i;Lcom/google/android/apps/nexuslauncher/reflection/b;Lcom/google/android/apps/nexuslauncher/reflection/d/b;Lcom/google/android/apps/nexuslauncher/reflection/filter/a;Lcom/google/android/apps/nexuslauncher/reflection/filter/d;Lcom/google/android/apps/nexuslauncher/reflection/filter/b;Lcom/google/android/apps/nexuslauncher/reflection/h;Lcom/google/android/apps/nexuslauncher/reflection/c/a;Lcom/google/android/apps/nexuslauncher/reflection/c/e;Lcom/google/android/apps/nexuslauncher/reflection/m;)V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->cK:Ljava/util/ArrayList;

    .line 79
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->mContext:Landroid/content/Context;

    .line 80
    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->mEngine:Lcom/google/android/apps/nexuslauncher/reflection/i;

    .line 81
    iput-object p3, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->cM:Lcom/google/android/apps/nexuslauncher/reflection/b;

    .line 82
    iput-object p4, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->cL:Lcom/google/android/apps/nexuslauncher/reflection/d/b;

    .line 83
    iput-object p5, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->cG:Lcom/google/android/apps/nexuslauncher/reflection/filter/a;

    .line 84
    iput-object p6, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->cI:Lcom/google/android/apps/nexuslauncher/reflection/filter/d;

    .line 85
    iput-object p7, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->cH:Lcom/google/android/apps/nexuslauncher/reflection/filter/b;

    .line 86
    iput-object p8, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->cJ:Lcom/google/android/apps/nexuslauncher/reflection/h;

    .line 87
    iput-object p9, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->cF:Lcom/google/android/apps/nexuslauncher/reflection/c/a;

    .line 88
    iput-object p10, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->cE:Lcom/google/android/apps/nexuslauncher/reflection/c/e;

    .line 89
    iput-object p11, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->cD:Lcom/google/android/apps/nexuslauncher/reflection/m;

    .line 90
    return-void
.end method

.method private bT(Ljava/util/List;)[Lcom/google/android/apps/nexuslauncher/reflection/a/h;
    .locals 4

    .prologue
    .line 269
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    .line 270
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 271
    new-instance v3, Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    invoke-direct {v3}, Lcom/google/android/apps/nexuslauncher/reflection/a/h;-><init>()V

    .line 272
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/reflection/predictor/f;

    iget-object v0, v0, Lcom/google/research/reflection/predictor/f;->LR:Ljava/lang/String;

    iput-object v0, v3, Lcom/google/android/apps/nexuslauncher/reflection/a/h;->aW:Ljava/lang/String;

    .line 273
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/reflection/predictor/f;

    iget v0, v0, Lcom/google/research/reflection/predictor/f;->LQ:F

    iput v0, v3, Lcom/google/android/apps/nexuslauncher/reflection/a/h;->aX:F

    .line 274
    aput-object v3, v2, v1

    .line 270
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 276
    :cond_0
    return-object v2
.end method

.method private bV(Ljava/lang/String;Lcom/google/android/apps/nexuslauncher/reflection/b/b;Lcom/google/android/apps/nexuslauncher/reflection/a/i;)Ljava/util/ArrayList;
    .locals 4

    .prologue
    const/16 v3, 0xc

    .line 209
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->mEngine:Lcom/google/android/apps/nexuslauncher/reflection/i;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/nexuslauncher/reflection/i;->cm(Ljava/lang/String;Lcom/google/android/apps/nexuslauncher/reflection/b/b;)Lcom/google/research/reflection/predictor/e;

    move-result-object v0

    .line 210
    invoke-virtual {v0}, Lcom/google/research/reflection/predictor/e;->TW()[D

    move-result-object v1

    .line 211
    invoke-virtual {v0}, Lcom/google/research/reflection/predictor/e;->Ua()Ljava/util/ArrayList;

    move-result-object v0

    .line 214
    invoke-virtual {p0, p3, v0, v1}, Lcom/google/android/apps/nexuslauncher/reflection/e;->bS(Lcom/google/android/apps/nexuslauncher/reflection/a/i;Ljava/util/ArrayList;[D)V

    .line 223
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v3, :cond_0

    .line 224
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1

    .line 226
    :cond_0
    return-object v0
.end method

.method static stabilizePredictedAppOrder(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 316
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [Lcom/google/research/reflection/predictor/f;

    .line 317
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 319
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/reflection/predictor/f;

    .line 320
    iget-object v1, v0, Lcom/google/research/reflection/predictor/f;->LR:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 321
    iget-object v1, v0, Lcom/google/research/reflection/predictor/f;->LR:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 322
    array-length v6, v4

    if-ge v1, v6, :cond_0

    .line 323
    aput-object v0, v4, v1

    goto :goto_0

    .line 326
    :cond_0
    const-string/jumbo v6, "Reflection.SvcHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Previous app index:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v7, " larger than current array size"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v7, v4

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 331
    :cond_1
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 336
    :cond_2
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    move v1, v2

    .line 337
    :goto_1
    array-length v0, v4

    if-ge v1, v0, :cond_4

    .line 338
    aget-object v0, v4, v1

    if-nez v0, :cond_3

    .line 339
    add-int/lit8 v3, v2, 0x1

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/reflection/predictor/f;

    aput-object v0, v4, v1

    move v2, v3

    .line 337
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 342
    :cond_4
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bQ(Ljava/lang/String;J)V
    .locals 3

    .prologue
    .line 291
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertNonUiThread()V

    .line 293
    const-string/jumbo v0, "%s/"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 294
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->mEngine:Lcom/google/android/apps/nexuslauncher/reflection/i;

    const-string/jumbo v2, "system"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/apps/nexuslauncher/reflection/i;->cn(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    return-void
.end method

.method public bR(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->cK:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 94
    return-void
.end method

.method protected bS(Lcom/google/android/apps/nexuslauncher/reflection/a/i;Ljava/util/ArrayList;[D)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 237
    if-eqz p1, :cond_2

    .line 238
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 239
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 240
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 241
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 245
    :goto_0
    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->cH:Lcom/google/android/apps/nexuslauncher/reflection/filter/b;

    invoke-virtual {v4, p2, v2}, Lcom/google/android/apps/nexuslauncher/reflection/filter/b;->bl(Ljava/util/List;Ljava/util/List;)V

    .line 246
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->cI:Lcom/google/android/apps/nexuslauncher/reflection/filter/d;

    invoke-virtual {v2, p2, v1}, Lcom/google/android/apps/nexuslauncher/reflection/filter/d;->bl(Ljava/util/List;Ljava/util/List;)V

    .line 248
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->cG:Lcom/google/android/apps/nexuslauncher/reflection/filter/a;

    invoke-virtual {v2, p2, v0}, Lcom/google/android/apps/nexuslauncher/reflection/filter/a;->bl(Ljava/util/List;Ljava/util/List;)V

    .line 251
    if-eqz p1, :cond_1

    .line 252
    if-eqz p3, :cond_0

    .line 253
    new-instance v2, Lcom/google/android/apps/nexuslauncher/reflection/a/j;

    invoke-direct {v2}, Lcom/google/android/apps/nexuslauncher/reflection/a/j;-><init>()V

    iput-object v2, p1, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->aZ:Lcom/google/android/apps/nexuslauncher/reflection/a/j;

    .line 254
    iget-object v2, p1, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->aZ:Lcom/google/android/apps/nexuslauncher/reflection/a/j;

    iput-object p3, v2, Lcom/google/android/apps/nexuslauncher/reflection/a/j;->bg:[D

    .line 257
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/apps/nexuslauncher/reflection/e;->bT(Ljava/util/List;)[Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    move-result-object v2

    .line 256
    iput-object v2, p1, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->ba:[Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    .line 259
    invoke-direct {p0, v3}, Lcom/google/android/apps/nexuslauncher/reflection/e;->bT(Ljava/util/List;)[Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    move-result-object v2

    .line 258
    iput-object v2, p1, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->bb:[Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    .line 261
    invoke-direct {p0, v1}, Lcom/google/android/apps/nexuslauncher/reflection/e;->bT(Ljava/util/List;)[Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    move-result-object v1

    .line 260
    iput-object v1, p1, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->bc:[Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    .line 263
    invoke-direct {p0, v0}, Lcom/google/android/apps/nexuslauncher/reflection/e;->bT(Ljava/util/List;)[Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    move-result-object v0

    .line 262
    iput-object v0, p1, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->bd:[Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    .line 266
    :cond_1
    return-void

    :cond_2
    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    goto :goto_0
.end method

.method public declared-synchronized bU(Z)V
    .locals 2

    .prologue
    monitor-enter p0

    .line 280
    :try_start_0
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertNonUiThread()V

    .line 281
    if-eqz p1, :cond_0

    .line 282
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->cF:Lcom/google/android/apps/nexuslauncher/reflection/c/a;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/reflection/c/a;->aL()V

    .line 283
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->mEngine:Lcom/google/android/apps/nexuslauncher/reflection/i;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/reflection/i;->reset()V

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->cK:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/reflection/f;

    .line 286
    invoke-interface {v0}, Lcom/google/android/apps/nexuslauncher/reflection/f;->be()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    monitor-exit p0

    .line 288
    return-void
.end method

.method bW(Landroid/content/ComponentName;J)Ljava/lang/String;
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->cL:Lcom/google/android/apps/nexuslauncher/reflection/d/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/apps/nexuslauncher/reflection/d/b;->aY(Landroid/content/ComponentName;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bX(Ljava/lang/String;I)V
    .locals 10

    .prologue
    .line 155
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertNonUiThread()V

    .line 156
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 157
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->cD:Lcom/google/android/apps/nexuslauncher/reflection/m;

    invoke-interface {v0}, Lcom/google/android/apps/nexuslauncher/reflection/m;->bA()J

    move-result-wide v4

    .line 158
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 161
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->cL:Lcom/google/android/apps/nexuslauncher/reflection/d/b;

    .line 162
    const-string/jumbo v2, "predict"

    .line 164
    const-string/jumbo v8, "unknown"

    const-string/jumbo v9, ""

    move-object v1, p1

    .line 161
    invoke-virtual/range {v0 .. v9}, Lcom/google/android/apps/nexuslauncher/reflection/d/b;->aX(Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;JJLjava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/nexuslauncher/reflection/b/b;

    move-result-object v0

    .line 165
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/apps/nexuslauncher/reflection/e;->predict(Ljava/lang/String;ILcom/google/android/apps/nexuslauncher/reflection/b/b;)V

    .line 166
    return-void
.end method

.method public bY(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;)V
    .locals 11

    .prologue
    .line 107
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertNonUiThread()V

    .line 108
    if-nez p2, :cond_0

    .line 109
    const-string/jumbo v0, "Reflection.SvcHandler"

    const-string/jumbo v1, "Empty event string"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-void

    .line 112
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 113
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->cD:Lcom/google/android/apps/nexuslauncher/reflection/m;

    invoke-interface {v0}, Lcom/google/android/apps/nexuslauncher/reflection/m;->bA()J

    move-result-wide v4

    .line 114
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 117
    const-string/jumbo v9, ""

    .line 118
    iget-object v0, p4, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    array-length v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 119
    iget-object v0, p4, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget v0, v0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->containerType:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    .line 121
    :cond_1
    iget-object v10, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->mEngine:Lcom/google/android/apps/nexuslauncher/reflection/i;

    .line 123
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->cL:Lcom/google/android/apps/nexuslauncher/reflection/d/b;

    move-object v1, p1

    move-object v2, p3

    move-object v8, p2

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/apps/nexuslauncher/reflection/d/b;->aX(Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;JJLjava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/nexuslauncher/reflection/b/b;

    move-result-object v0

    .line 121
    invoke-virtual {v10, p1, v0}, Lcom/google/android/apps/nexuslauncher/reflection/i;->cl(Ljava/lang/String;Lcom/google/android/apps/nexuslauncher/reflection/b/b;)V

    .line 125
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->mEngine:Lcom/google/android/apps/nexuslauncher/reflection/i;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/reflection/i;->ch()Z

    .line 128
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->cH:Lcom/google/android/apps/nexuslauncher/reflection/filter/b;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/reflection/filter/b;->bo()V

    .line 131
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->cE:Lcom/google/android/apps/nexuslauncher/reflection/c/e;

    if-eqz v0, :cond_4

    .line 132
    new-instance v0, Lcom/google/android/apps/nexuslauncher/reflection/a/f;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/reflection/a/f;-><init>()V

    .line 133
    iput-object p3, v0, Lcom/google/android/apps/nexuslauncher/reflection/a/f;->aO:Ljava/lang/String;

    .line 134
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/apps/nexuslauncher/reflection/a/f;->aP:J

    .line 135
    iput-object p2, v0, Lcom/google/android/apps/nexuslauncher/reflection/a/f;->packageName:Ljava/lang/String;

    .line 136
    if-eqz p4, :cond_3

    .line 137
    new-instance v1, Lcom/google/android/apps/nexuslauncher/reflection/a/g;

    invoke-direct {v1}, Lcom/google/android/apps/nexuslauncher/reflection/a/g;-><init>()V

    .line 138
    iget-object v2, p4, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    array-length v2, v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_2

    .line 139
    iget-object v2, p4, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    iget v2, v2, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->containerType:I

    if-eqz v2, :cond_2

    .line 143
    iget-object v2, p4, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    iget v2, v2, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->containerType:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/apps/nexuslauncher/reflection/a/g;->aS:Ljava/lang/String;

    .line 146
    iget-object v2, p4, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget v2, v2, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->pageIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/apps/nexuslauncher/reflection/a/g;->aT:Ljava/lang/String;

    .line 148
    :cond_2
    iput-object v1, v0, Lcom/google/android/apps/nexuslauncher/reflection/a/f;->aQ:Lcom/google/android/apps/nexuslauncher/reflection/a/g;

    .line 150
    :cond_3
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->cE:Lcom/google/android/apps/nexuslauncher/reflection/c/e;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/nexuslauncher/reflection/c/e;->aS(Lcom/google/android/apps/nexuslauncher/reflection/a/f;)V

    .line 152
    :cond_4
    return-void
.end method

.method predict(Ljava/lang/String;ILcom/google/android/apps/nexuslauncher/reflection/b/b;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 173
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->cE:Lcom/google/android/apps/nexuslauncher/reflection/c/e;

    if-eqz v1, :cond_3

    .line 174
    new-instance v1, Lcom/google/android/apps/nexuslauncher/reflection/a/f;

    invoke-direct {v1}, Lcom/google/android/apps/nexuslauncher/reflection/a/f;-><init>()V

    .line 175
    const-string/jumbo v0, "prediction_update"

    iput-object v0, v1, Lcom/google/android/apps/nexuslauncher/reflection/a/f;->aO:Ljava/lang/String;

    .line 176
    invoke-virtual {p3}, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->ax()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/google/android/apps/nexuslauncher/reflection/a/f;->aP:J

    .line 177
    new-instance v0, Lcom/google/android/apps/nexuslauncher/reflection/a/i;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/reflection/a/i;-><init>()V

    .line 178
    iput-object v0, v1, Lcom/google/android/apps/nexuslauncher/reflection/a/f;->aR:Lcom/google/android/apps/nexuslauncher/reflection/a/i;

    .line 180
    :goto_0
    invoke-direct {p0, p1, p3, v0}, Lcom/google/android/apps/nexuslauncher/reflection/e;->bV(Ljava/lang/String;Lcom/google/android/apps/nexuslauncher/reflection/b/b;Lcom/google/android/apps/nexuslauncher/reflection/a/i;)Ljava/util/ArrayList;

    move-result-object v0

    .line 186
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->cJ:Lcom/google/android/apps/nexuslauncher/reflection/h;

    invoke-virtual {v2}, Lcom/google/android/apps/nexuslauncher/reflection/h;->cb()Ljava/util/Map;

    move-result-object v2

    .line 188
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge p2, v3, :cond_0

    const/4 v3, 0x0

    invoke-interface {v0, v3, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 191
    :cond_0
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 192
    invoke-static {v0, v2}, Lcom/google/android/apps/nexuslauncher/reflection/e;->stabilizePredictedAppOrder(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    .line 195
    :cond_1
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->cJ:Lcom/google/android/apps/nexuslauncher/reflection/h;

    invoke-virtual {v2, v0}, Lcom/google/android/apps/nexuslauncher/reflection/h;->cc(Ljava/util/List;)V

    .line 196
    if-eqz v1, :cond_2

    .line 197
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->cE:Lcom/google/android/apps/nexuslauncher/reflection/c/e;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/nexuslauncher/reflection/c/e;->aS(Lcom/google/android/apps/nexuslauncher/reflection/a/f;)V

    .line 199
    :cond_2
    return-void

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method

.method updateNewEvent(Ljava/lang/String;Lcom/google/android/apps/nexuslauncher/reflection/b/b;)V
    .locals 1

    .prologue
    .line 102
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertNonUiThread()V

    .line 103
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->mEngine:Lcom/google/android/apps/nexuslauncher/reflection/i;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/nexuslauncher/reflection/i;->cl(Ljava/lang/String;Lcom/google/android/apps/nexuslauncher/reflection/b/b;)V

    .line 104
    return-void
.end method
