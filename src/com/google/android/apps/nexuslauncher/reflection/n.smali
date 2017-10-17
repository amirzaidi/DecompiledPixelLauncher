.class public Lcom/google/android/apps/nexuslauncher/reflection/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final bA:Lcom/google/android/apps/nexuslauncher/reflection/d;

.field private final bB:Lcom/google/android/apps/nexuslauncher/reflection/c/e;

.field private final bC:Lcom/google/android/apps/nexuslauncher/reflection/c/b;

.field private final bD:Lcom/google/android/apps/nexuslauncher/reflection/filter/c;

.field private final bE:Lcom/google/android/apps/nexuslauncher/reflection/filter/d;

.field private final bF:Lcom/google/android/apps/nexuslauncher/reflection/filter/a;

.field private final bG:Lcom/google/android/apps/nexuslauncher/reflection/m;

.field private final bH:Ljava/util/ArrayList;

.field private final bI:Lcom/google/android/apps/nexuslauncher/reflection/a/b;

.field private final bJ:Lcom/google/android/apps/nexuslauncher/reflection/e;

.field private final mContext:Landroid/content/Context;

.field final mEngine:Lcom/google/android/apps/nexuslauncher/reflection/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/nexuslauncher/reflection/b;Lcom/google/android/apps/nexuslauncher/reflection/e;Lcom/google/android/apps/nexuslauncher/reflection/a/b;Lcom/google/android/apps/nexuslauncher/reflection/filter/c;Lcom/google/android/apps/nexuslauncher/reflection/filter/a;Lcom/google/android/apps/nexuslauncher/reflection/filter/d;Lcom/google/android/apps/nexuslauncher/reflection/m;Lcom/google/android/apps/nexuslauncher/reflection/c/b;Lcom/google/android/apps/nexuslauncher/reflection/c/e;Lcom/google/android/apps/nexuslauncher/reflection/d;)V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/n;->bH:Ljava/util/ArrayList;

    .line 84
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/n;->mContext:Landroid/content/Context;

    .line 85
    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/reflection/n;->mEngine:Lcom/google/android/apps/nexuslauncher/reflection/b;

    .line 86
    iput-object p3, p0, Lcom/google/android/apps/nexuslauncher/reflection/n;->bJ:Lcom/google/android/apps/nexuslauncher/reflection/e;

    .line 87
    iput-object p4, p0, Lcom/google/android/apps/nexuslauncher/reflection/n;->bI:Lcom/google/android/apps/nexuslauncher/reflection/a/b;

    .line 88
    iput-object p5, p0, Lcom/google/android/apps/nexuslauncher/reflection/n;->bD:Lcom/google/android/apps/nexuslauncher/reflection/filter/c;

    .line 89
    iput-object p6, p0, Lcom/google/android/apps/nexuslauncher/reflection/n;->bF:Lcom/google/android/apps/nexuslauncher/reflection/filter/a;

    .line 90
    iput-object p7, p0, Lcom/google/android/apps/nexuslauncher/reflection/n;->bE:Lcom/google/android/apps/nexuslauncher/reflection/filter/d;

    .line 91
    iput-object p8, p0, Lcom/google/android/apps/nexuslauncher/reflection/n;->bG:Lcom/google/android/apps/nexuslauncher/reflection/m;

    .line 92
    iput-object p9, p0, Lcom/google/android/apps/nexuslauncher/reflection/n;->bC:Lcom/google/android/apps/nexuslauncher/reflection/c/b;

    .line 93
    iput-object p10, p0, Lcom/google/android/apps/nexuslauncher/reflection/n;->bB:Lcom/google/android/apps/nexuslauncher/reflection/c/e;

    .line 94
    iput-object p11, p0, Lcom/google/android/apps/nexuslauncher/reflection/n;->bA:Lcom/google/android/apps/nexuslauncher/reflection/d;

    .line 95
    return-void
.end method

.method private bk(Ljava/util/List;)[Lcom/google/android/apps/nexuslauncher/reflection/d/l;
    .locals 4

    .prologue
    .line 296
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Lcom/google/android/apps/nexuslauncher/reflection/d/l;

    .line 297
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 298
    new-instance v3, Lcom/google/android/apps/nexuslauncher/reflection/d/l;

    invoke-direct {v3}, Lcom/google/android/apps/nexuslauncher/reflection/d/l;-><init>()V

    .line 299
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/reflection/predictor/f;

    iget-object v0, v0, Lcom/google/research/reflection/predictor/f;->ML:Ljava/lang/String;

    iput-object v0, v3, Lcom/google/android/apps/nexuslauncher/reflection/d/l;->aR:Ljava/lang/String;

    .line 300
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/reflection/predictor/f;

    iget v0, v0, Lcom/google/research/reflection/predictor/f;->MK:F

    iput v0, v3, Lcom/google/android/apps/nexuslauncher/reflection/d/l;->aT:F

    .line 301
    aput-object v3, v2, v1

    .line 297
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 303
    :cond_0
    return-object v2
.end method

.method private bl(Ljava/lang/String;Lcom/google/android/apps/nexuslauncher/reflection/b/b;Lcom/google/android/apps/nexuslauncher/reflection/d/m;)Ljava/util/ArrayList;
    .locals 4

    .prologue
    const/16 v3, 0xc

    .line 236
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/n;->mEngine:Lcom/google/android/apps/nexuslauncher/reflection/b;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/nexuslauncher/reflection/b;->au(Ljava/lang/String;Lcom/google/android/apps/nexuslauncher/reflection/b/b;)Lcom/google/research/reflection/predictor/e;

    move-result-object v0

    .line 237
    invoke-virtual {v0}, Lcom/google/research/reflection/predictor/e;->SJ()[D

    move-result-object v1

    .line 238
    invoke-virtual {v0}, Lcom/google/research/reflection/predictor/e;->SN()Ljava/util/ArrayList;

    move-result-object v0

    .line 241
    invoke-virtual {p0, p3, v0, v1}, Lcom/google/android/apps/nexuslauncher/reflection/n;->bj(Lcom/google/android/apps/nexuslauncher/reflection/d/m;Ljava/util/ArrayList;[D)V

    .line 250
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v3, :cond_0

    .line 251
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1

    .line 253
    :cond_0
    return-object v0
.end method

.method static stabilizePredictedAppOrder(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 343
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [Lcom/google/research/reflection/predictor/f;

    .line 344
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 346
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/reflection/predictor/f;

    .line 347
    iget-object v1, v0, Lcom/google/research/reflection/predictor/f;->ML:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 348
    iget-object v1, v0, Lcom/google/research/reflection/predictor/f;->ML:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 349
    array-length v6, v4

    if-ge v1, v6, :cond_0

    .line 350
    aput-object v0, v4, v1

    goto :goto_0

    .line 353
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

    .line 355
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 358
    :cond_1
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 363
    :cond_2
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    move v1, v2

    .line 364
    :goto_1
    array-length v0, v4

    if-ge v1, v0, :cond_4

    .line 365
    aget-object v0, v4, v1

    if-nez v0, :cond_3

    .line 366
    add-int/lit8 v3, v2, 0x1

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/reflection/predictor/f;

    aput-object v0, v4, v1

    move v2, v3

    .line 364
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 369
    :cond_4
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bc(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/n;->bH:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 99
    return-void
.end method

.method public declared-synchronized bd(Z)V
    .locals 2

    .prologue
    monitor-enter p0

    .line 307
    :try_start_0
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertNonUiThread()V

    .line 308
    if-eqz p1, :cond_0

    .line 309
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/n;->bC:Lcom/google/android/apps/nexuslauncher/reflection/c/b;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/reflection/c/b;->T()V

    .line 310
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/n;->mEngine:Lcom/google/android/apps/nexuslauncher/reflection/b;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/reflection/b;->reset()V

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/n;->bH:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/reflection/o;

    .line 313
    invoke-interface {v0}, Lcom/google/android/apps/nexuslauncher/reflection/o;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    monitor-exit p0

    .line 315
    return-void
.end method

.method be(Landroid/content/ComponentName;J)Ljava/lang/String;
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/n;->bI:Lcom/google/android/apps/nexuslauncher/reflection/a/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/apps/nexuslauncher/reflection/a/b;->i(Landroid/content/ComponentName;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;)V
    .locals 11

    .prologue
    .line 112
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertNonUiThread()V

    .line 113
    if-nez p2, :cond_0

    .line 114
    const-string/jumbo v0, "Reflection.SvcHandler"

    const-string/jumbo v1, "Empty event string"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-void

    .line 117
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 118
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/n;->bA:Lcom/google/android/apps/nexuslauncher/reflection/d;

    invoke-interface {v0}, Lcom/google/android/apps/nexuslauncher/reflection/d;->aE()J

    move-result-wide v4

    .line 119
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 122
    const-string/jumbo v9, ""

    .line 123
    iget-object v0, p4, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    array-length v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 124
    iget-object v0, p4, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget v0, v0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->containerType:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    .line 126
    :cond_1
    iget-object v10, p0, Lcom/google/android/apps/nexuslauncher/reflection/n;->mEngine:Lcom/google/android/apps/nexuslauncher/reflection/b;

    .line 128
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/n;->bI:Lcom/google/android/apps/nexuslauncher/reflection/a/b;

    move-object v1, p1

    move-object v2, p3

    move-object v8, p2

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/apps/nexuslauncher/reflection/a/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;JJLjava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/nexuslauncher/reflection/b/b;

    move-result-object v0

    .line 126
    invoke-virtual {v10, p1, v0}, Lcom/google/android/apps/nexuslauncher/reflection/b;->av(Ljava/lang/String;Lcom/google/android/apps/nexuslauncher/reflection/b/b;)V

    .line 130
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/n;->mEngine:Lcom/google/android/apps/nexuslauncher/reflection/b;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/reflection/b;->aw()Z

    .line 133
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/n;->bE:Lcom/google/android/apps/nexuslauncher/reflection/filter/d;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/reflection/filter/d;->x()V

    .line 136
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/n;->bB:Lcom/google/android/apps/nexuslauncher/reflection/c/e;

    if-eqz v0, :cond_4

    .line 137
    new-instance v0, Lcom/google/android/apps/nexuslauncher/reflection/d/j;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/reflection/d/j;-><init>()V

    .line 138
    iput-object p3, v0, Lcom/google/android/apps/nexuslauncher/reflection/d/j;->aK:Ljava/lang/String;

    .line 139
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/apps/nexuslauncher/reflection/d/j;->aJ:J

    .line 140
    iput-object p2, v0, Lcom/google/android/apps/nexuslauncher/reflection/d/j;->packageName:Ljava/lang/String;

    .line 141
    if-eqz p4, :cond_3

    .line 142
    new-instance v1, Lcom/google/android/apps/nexuslauncher/reflection/d/k;

    invoke-direct {v1}, Lcom/google/android/apps/nexuslauncher/reflection/d/k;-><init>()V

    .line 143
    iget-object v2, p4, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    array-length v2, v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_2

    .line 144
    iget-object v2, p4, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    iget v2, v2, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->containerType:I

    if-eqz v2, :cond_2

    .line 148
    iget-object v2, p4, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    iget v2, v2, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->containerType:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/apps/nexuslauncher/reflection/d/k;->aN:Ljava/lang/String;

    .line 151
    iget-object v2, p4, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget v2, v2, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->pageIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/apps/nexuslauncher/reflection/d/k;->aO:Ljava/lang/String;

    .line 153
    :cond_2
    iput-object v1, v0, Lcom/google/android/apps/nexuslauncher/reflection/d/j;->aM:Lcom/google/android/apps/nexuslauncher/reflection/d/k;

    .line 155
    :cond_3
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/n;->bB:Lcom/google/android/apps/nexuslauncher/reflection/c/e;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/nexuslauncher/reflection/c/e;->aa(Lcom/google/android/apps/nexuslauncher/reflection/d/j;)V

    .line 157
    :cond_4
    return-void
.end method

.method public bg(Ljava/lang/String;I)V
    .locals 10

    .prologue
    .line 172
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertNonUiThread()V

    .line 173
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 174
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/n;->bA:Lcom/google/android/apps/nexuslauncher/reflection/d;

    invoke-interface {v0}, Lcom/google/android/apps/nexuslauncher/reflection/d;->aE()J

    move-result-wide v4

    .line 175
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 178
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/n;->bI:Lcom/google/android/apps/nexuslauncher/reflection/a/b;

    .line 179
    const-string/jumbo v2, "predict"

    .line 181
    const-string/jumbo v8, "unknown"

    const-string/jumbo v9, ""

    move-object v1, p1

    .line 178
    invoke-virtual/range {v0 .. v9}, Lcom/google/android/apps/nexuslauncher/reflection/a/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;JJLjava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/nexuslauncher/reflection/b/b;

    move-result-object v0

    .line 182
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/apps/nexuslauncher/reflection/n;->predict(Ljava/lang/String;ILcom/google/android/apps/nexuslauncher/reflection/b/b;)V

    .line 183
    return-void
.end method

.method public bh(Lcom/android/launcher3/util/PackageUserKey;)V
    .locals 6

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/n;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object v0

    .line 161
    iget-object v1, p1, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/launcher3/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    .line 160
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1

    .line 162
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/n;->bE:Lcom/google/android/apps/nexuslauncher/reflection/filter/d;

    .line 166
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 167
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/n;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v2

    iget-object v3, p1, Lcom/android/launcher3/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v2

    .line 168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 165
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/nexuslauncher/reflection/filter/d;->y(Landroid/content/ComponentName;JJ)V

    .line 169
    return-void
.end method

.method public bi(Ljava/lang/String;J)V
    .locals 3

    .prologue
    .line 318
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertNonUiThread()V

    .line 320
    const-string/jumbo v0, "%s/"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 321
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/n;->mEngine:Lcom/google/android/apps/nexuslauncher/reflection/b;

    const-string/jumbo v2, "system"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/apps/nexuslauncher/reflection/b;->ap(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    return-void
.end method

.method protected bj(Lcom/google/android/apps/nexuslauncher/reflection/d/m;Ljava/util/ArrayList;[D)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 264
    if-eqz p1, :cond_2

    .line 265
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 266
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 267
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 268
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 272
    :goto_0
    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/reflection/n;->bE:Lcom/google/android/apps/nexuslauncher/reflection/filter/d;

    invoke-virtual {v4, p2, v2}, Lcom/google/android/apps/nexuslauncher/reflection/filter/d;->n(Ljava/util/List;Ljava/util/List;)V

    .line 273
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/n;->bF:Lcom/google/android/apps/nexuslauncher/reflection/filter/a;

    invoke-virtual {v2, p2, v1}, Lcom/google/android/apps/nexuslauncher/reflection/filter/a;->n(Ljava/util/List;Ljava/util/List;)V

    .line 275
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/n;->bD:Lcom/google/android/apps/nexuslauncher/reflection/filter/c;

    invoke-virtual {v2, p2, v0}, Lcom/google/android/apps/nexuslauncher/reflection/filter/c;->n(Ljava/util/List;Ljava/util/List;)V

    .line 278
    if-eqz p1, :cond_1

    .line 279
    if-eqz p3, :cond_0

    .line 280
    new-instance v2, Lcom/google/android/apps/nexuslauncher/reflection/d/n;

    invoke-direct {v2}, Lcom/google/android/apps/nexuslauncher/reflection/d/n;-><init>()V

    iput-object v2, p1, Lcom/google/android/apps/nexuslauncher/reflection/d/m;->aW:Lcom/google/android/apps/nexuslauncher/reflection/d/n;

    .line 281
    iget-object v2, p1, Lcom/google/android/apps/nexuslauncher/reflection/d/m;->aW:Lcom/google/android/apps/nexuslauncher/reflection/d/n;

    iput-object p3, v2, Lcom/google/android/apps/nexuslauncher/reflection/d/n;->bb:[D

    .line 284
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/apps/nexuslauncher/reflection/n;->bk(Ljava/util/List;)[Lcom/google/android/apps/nexuslauncher/reflection/d/l;

    move-result-object v2

    .line 283
    iput-object v2, p1, Lcom/google/android/apps/nexuslauncher/reflection/d/m;->ba:[Lcom/google/android/apps/nexuslauncher/reflection/d/l;

    .line 286
    invoke-direct {p0, v3}, Lcom/google/android/apps/nexuslauncher/reflection/n;->bk(Ljava/util/List;)[Lcom/google/android/apps/nexuslauncher/reflection/d/l;

    move-result-object v2

    .line 285
    iput-object v2, p1, Lcom/google/android/apps/nexuslauncher/reflection/d/m;->aV:[Lcom/google/android/apps/nexuslauncher/reflection/d/l;

    .line 288
    invoke-direct {p0, v1}, Lcom/google/android/apps/nexuslauncher/reflection/n;->bk(Ljava/util/List;)[Lcom/google/android/apps/nexuslauncher/reflection/d/l;

    move-result-object v1

    .line 287
    iput-object v1, p1, Lcom/google/android/apps/nexuslauncher/reflection/d/m;->aY:[Lcom/google/android/apps/nexuslauncher/reflection/d/l;

    .line 290
    invoke-direct {p0, v0}, Lcom/google/android/apps/nexuslauncher/reflection/n;->bk(Ljava/util/List;)[Lcom/google/android/apps/nexuslauncher/reflection/d/l;

    move-result-object v0

    .line 289
    iput-object v0, p1, Lcom/google/android/apps/nexuslauncher/reflection/d/m;->aZ:[Lcom/google/android/apps/nexuslauncher/reflection/d/l;

    .line 293
    :cond_1
    return-void

    :cond_2
    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    goto :goto_0
.end method

.method predict(Ljava/lang/String;ILcom/google/android/apps/nexuslauncher/reflection/b/b;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 189
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/n;->bB:Lcom/google/android/apps/nexuslauncher/reflection/c/e;

    if-eqz v1, :cond_3

    .line 190
    new-instance v1, Lcom/google/android/apps/nexuslauncher/reflection/d/j;

    invoke-direct {v1}, Lcom/google/android/apps/nexuslauncher/reflection/d/j;-><init>()V

    .line 191
    const-string/jumbo v0, "prediction_update"

    iput-object v0, v1, Lcom/google/android/apps/nexuslauncher/reflection/d/j;->aK:Ljava/lang/String;

    .line 192
    invoke-virtual {p3}, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->F()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/google/android/apps/nexuslauncher/reflection/d/j;->aJ:J

    .line 193
    new-instance v0, Lcom/google/android/apps/nexuslauncher/reflection/d/m;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/reflection/d/m;-><init>()V

    .line 194
    iput-object v0, v1, Lcom/google/android/apps/nexuslauncher/reflection/d/j;->aL:Lcom/google/android/apps/nexuslauncher/reflection/d/m;

    .line 196
    :goto_0
    invoke-direct {p0, p1, p3, v0}, Lcom/google/android/apps/nexuslauncher/reflection/n;->bl(Ljava/lang/String;Lcom/google/android/apps/nexuslauncher/reflection/b/b;Lcom/google/android/apps/nexuslauncher/reflection/d/m;)Ljava/util/ArrayList;

    move-result-object v3

    .line 202
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/n;->bG:Lcom/google/android/apps/nexuslauncher/reflection/m;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/reflection/m;->aY()Ljava/util/Map;

    move-result-object v4

    .line 210
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p2, :cond_2

    .line 211
    const/4 v0, 0x0

    invoke-interface {v3, v0, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    .line 212
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v3, p2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 218
    :goto_1
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 219
    invoke-static {v2, v4}, Lcom/google/android/apps/nexuslauncher/reflection/n;->stabilizePredictedAppOrder(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    .line 222
    :cond_0
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/n;->bG:Lcom/google/android/apps/nexuslauncher/reflection/m;

    invoke-virtual {v3, v2, v0}, Lcom/google/android/apps/nexuslauncher/reflection/m;->bb(Ljava/util/List;Ljava/util/List;)V

    .line 223
    if-eqz v1, :cond_1

    .line 224
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/n;->bB:Lcom/google/android/apps/nexuslauncher/reflection/c/e;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/nexuslauncher/reflection/c/e;->aa(Lcom/google/android/apps/nexuslauncher/reflection/d/j;)V

    .line 226
    :cond_1
    return-void

    .line 215
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    move-object v2, v3

    goto :goto_1

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method

.method updateNewEvent(Ljava/lang/String;Lcom/google/android/apps/nexuslauncher/reflection/b/b;)V
    .locals 1

    .prologue
    .line 107
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertNonUiThread()V

    .line 108
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/n;->mEngine:Lcom/google/android/apps/nexuslauncher/reflection/b;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/nexuslauncher/reflection/b;->av(Ljava/lang/String;Lcom/google/android/apps/nexuslauncher/reflection/b/b;)V

    .line 109
    return-void
.end method
