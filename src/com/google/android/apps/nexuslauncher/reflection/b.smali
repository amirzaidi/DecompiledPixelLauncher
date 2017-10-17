.class public Lcom/google/android/apps/nexuslauncher/reflection/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final bc:Ljava/lang/String;

.field private bd:Ljava/io/File;

.field private be:Lcom/google/research/reflection/predictor/d;

.field private final bf:Lcom/google/android/apps/nexuslauncher/reflection/c/c;

.field private final bg:Landroid/content/SharedPreferences;

.field private final bh:Ljava/lang/Runnable;

.field private final mContext:Landroid/content/Context;

.field mLearners:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/nexuslauncher/reflection/c/c;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b;->mLearners:Ljava/util/HashMap;

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b;->bd:Ljava/io/File;

    .line 81
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/b;->mContext:Landroid/content/Context;

    .line 82
    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/reflection/b;->bf:Lcom/google/android/apps/nexuslauncher/reflection/c/c;

    .line 83
    iput-object p3, p0, Lcom/google/android/apps/nexuslauncher/reflection/b;->bg:Landroid/content/SharedPreferences;

    .line 84
    iput-object p4, p0, Lcom/google/android/apps/nexuslauncher/reflection/b;->bc:Ljava/lang/String;

    .line 85
    iput-object p5, p0, Lcom/google/android/apps/nexuslauncher/reflection/b;->bh:Ljava/lang/Runnable;

    .line 87
    new-instance v0, Lcom/google/research/reflection/predictor/d;

    invoke-direct {v0}, Lcom/google/research/reflection/predictor/d;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b;->be:Lcom/google/research/reflection/predictor/d;

    .line 88
    return-void
.end method

.method private at()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 313
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 315
    const-string/jumbo v1, "LatLong=%b "

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 314
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 317
    const-string/jumbo v1, "Semantic=%b "

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 316
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 319
    const-string/jumbo v1, "Install=%b "

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 318
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 321
    const-string/jumbo v1, "Headset=%b "

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 320
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 322
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized an(Ljava/io/File;)V
    .locals 1

    .prologue
    monitor-enter p0

    .line 91
    :try_start_0
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/b;->bd:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 92
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized ao(Lcom/google/android/apps/nexuslauncher/reflection/b;)V
    .locals 2

    .prologue
    monitor-enter p0

    .line 98
    :try_start_0
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 99
    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b;->mLearners:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 100
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b;->mLearners:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/google/android/apps/nexuslauncher/reflection/b;->mLearners:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    .line 102
    return-void

    .line 98
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p1

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized ap(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    monitor-enter p0

    .line 286
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "/deleted_app/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 287
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 288
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b;->mLearners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/reflection/predictor/a;

    .line 289
    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {v0, p2, v1, v2}, Lcom/google/research/reflection/predictor/a;->Sl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 291
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/reflection/b;->aw()Z

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b;->bf:Lcom/google/android/apps/nexuslauncher/reflection/c/c;

    invoke-virtual {v0, p2, v1, v2}, Lcom/google/android/apps/nexuslauncher/reflection/c/c;->X(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 294
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method aq()Lcom/google/research/reflection/predictor/d;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b;->be:Lcom/google/research/reflection/predictor/d;

    return-object v0
.end method

.method declared-synchronized ar(Ljava/lang/String;Lcom/google/android/apps/nexuslauncher/reflection/b/b;)V
    .locals 2

    .prologue
    monitor-enter p0

    .line 219
    :try_start_0
    invoke-virtual {p2}, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->getId()Ljava/lang/String;

    move-result-object v0

    .line 223
    const-string/jumbo v1, "/deleted_app/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit p0

    .line 224
    return-void

    .line 226
    :cond_0
    :try_start_1
    invoke-static {p2}, Lcom/google/android/apps/nexuslauncher/reflection/i;->aV(Lcom/google/research/reflection/a/b;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    monitor-exit p0

    .line 227
    return-void

    .line 229
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b;->mLearners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/reflection/predictor/a;

    .line 230
    if-nez v0, :cond_2

    .line 231
    new-instance v1, Lcom/google/research/reflection/predictor/g;

    invoke-direct {v1}, Lcom/google/research/reflection/predictor/g;-><init>()V

    .line 232
    new-instance v0, Lcom/google/android/apps/nexuslauncher/reflection/e/a;

    invoke-direct {v0, v1}, Lcom/google/android/apps/nexuslauncher/reflection/e/a;-><init>(Lcom/google/research/reflection/predictor/b;)V

    .line 233
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/b;->be:Lcom/google/research/reflection/predictor/d;

    invoke-virtual {v0, v1}, Lcom/google/research/reflection/predictor/a;->Sj(Lcom/google/research/reflection/predictor/d;)V

    .line 234
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/b;->mLearners:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    :cond_2
    invoke-virtual {v0, p2}, Lcom/google/research/reflection/predictor/a;->Sh(Lcom/google/research/reflection/a/b;)Lcom/google/research/reflection/predictor/e;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 237
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized as()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    monitor-enter p0

    .line 110
    :try_start_0
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertNonUiThread()V

    .line 111
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b;->bg:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b;->bg:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/b;->bc:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/nexuslauncher/reflection/b/b;

    invoke-direct {v1}, Lcom/google/android/apps/nexuslauncher/reflection/b/b;-><init>()V

    .line 112
    invoke-static {v0, v1}, Lcom/google/research/reflection/predictor/d;->SA(Ljava/lang/String;Lcom/google/research/reflection/a/b;)Lcom/google/research/reflection/predictor/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b;->be:Lcom/google/research/reflection/predictor/d;

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b;->bd:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_1

    monitor-exit p0

    .line 122
    return v4

    .line 124
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b;->mLearners:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 125
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b;->bd:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_2

    monitor-exit p0

    .line 129
    return v4

    .line 131
    :cond_2
    const/4 v1, 0x0

    .line 133
    :try_start_2
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b;->bd:Ljava/io/File;

    invoke-static {v0}, Lcom/android/launcher3/util/IOUtils;->toByteArray(Ljava/io/File;)[B

    move-result-object v0

    .line 134
    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/reflection/d/a;->ad([B)Lcom/google/android/apps/nexuslauncher/reflection/d/a;

    move-result-object v0

    .line 135
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/b;->mLearners:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/b;->be:Lcom/google/research/reflection/predictor/d;

    invoke-static {v0, v2, v3}, Lcom/google/android/apps/nexuslauncher/reflection/e/a;->ai(Lcom/google/android/apps/nexuslauncher/reflection/d/a;Ljava/util/Map;Lcom/google/research/reflection/predictor/d;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 145
    :try_start_3
    invoke-static {v1}, Lcom/android/launcher3/Utilities;->closeSilently(Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 147
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    :try_start_4
    const-string/jumbo v2, "Reflection.Engine"

    const-string/jumbo v3, "Failed to load models, starting a fresh model."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 145
    :try_start_5
    invoke-static {v1}, Lcom/android/launcher3/Utilities;->closeSilently(Ljava/io/Closeable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit p0

    .line 143
    return v4

    .line 144
    :catchall_0
    move-exception v0

    .line 145
    :try_start_6
    invoke-static {v1}, Lcom/android/launcher3/Utilities;->closeSilently(Ljava/io/Closeable;)V

    .line 144
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized au(Ljava/lang/String;Lcom/google/android/apps/nexuslauncher/reflection/b/b;)Lcom/google/research/reflection/predictor/e;
    .locals 2

    .prologue
    monitor-enter p0

    .line 243
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b;->mLearners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/reflection/predictor/a;

    .line 244
    if-nez v0, :cond_0

    .line 248
    new-instance v0, Lcom/google/research/reflection/predictor/e;

    invoke-direct {v0}, Lcom/google/research/reflection/predictor/e;-><init>()V

    .line 249
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/research/reflection/predictor/e;->SK(Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 250
    return-object v0

    .line 251
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/google/research/reflection/predictor/a;->Sn()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 255
    new-instance v0, Lcom/google/research/reflection/predictor/e;

    invoke-direct {v0}, Lcom/google/research/reflection/predictor/e;-><init>()V

    .line 256
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/research/reflection/predictor/e;->SK(Ljava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 257
    return-object v0

    .line 261
    :cond_1
    :try_start_2
    invoke-virtual {v0, p2}, Lcom/google/research/reflection/predictor/a;->Sf(Lcom/google/research/reflection/a/b;)Lcom/google/research/reflection/predictor/e;

    move-result-object v0

    .line 262
    invoke-virtual {v0}, Lcom/google/research/reflection/predictor/e;->SN()Ljava/util/ArrayList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 279
    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized av(Ljava/lang/String;Lcom/google/android/apps/nexuslauncher/reflection/b/b;)V
    .locals 4

    .prologue
    monitor-enter p0

    .line 200
    :try_start_0
    const-string/jumbo v0, "system"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/nexuslauncher/reflection/b;->ar(Ljava/lang/String;Lcom/google/android/apps/nexuslauncher/reflection/b/b;)V

    .line 204
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->getId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "/deleted_app/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b;->be:Lcom/google/research/reflection/predictor/d;

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b;->be:Lcom/google/research/reflection/predictor/d;

    invoke-virtual {v0, p2}, Lcom/google/research/reflection/predictor/d;->Sz(Lcom/google/research/reflection/a/b;)V

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b;->bf:Lcom/google/android/apps/nexuslauncher/reflection/c/c;

    invoke-virtual {p2}, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->F()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/apps/nexuslauncher/reflection/c/c;->V(J)V

    .line 215
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b;->bf:Lcom/google/android/apps/nexuslauncher/reflection/c/c;

    invoke-virtual {v0, p2}, Lcom/google/android/apps/nexuslauncher/reflection/c/c;->W(Lcom/google/research/reflection/a/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 216
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized aw()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    monitor-enter p0

    .line 156
    :try_start_0
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertNonUiThread()V

    .line 157
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b;->be:Lcom/google/research/reflection/predictor/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b;->bg:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b;->be:Lcom/google/research/reflection/predictor/d;

    invoke-static {v0}, Lcom/google/research/reflection/predictor/d;->SF(Lcom/google/research/reflection/predictor/d;)Ljava/lang/String;

    move-result-object v0

    .line 159
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/b;->bg:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/b;->bc:Ljava/lang/String;

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b;->bd:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_1

    monitor-exit p0

    .line 168
    return v6

    .line 172
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b;->mLearners:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/reflection/e/a;->aj(Ljava/util/Map;)Lcom/google/android/apps/nexuslauncher/reflection/d/a;

    move-result-object v0

    .line 173
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/google/android/apps/nexuslauncher/reflection/d/a;->Q:J

    .line 174
    const/16 v1, 0x18

    iput v1, v0, Lcom/google/android/apps/nexuslauncher/reflection/d/a;->version:I

    .line 175
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/reflection/b;->at()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/apps/nexuslauncher/reflection/d/a;->R:Ljava/lang/String;

    .line 176
    new-instance v1, Ljava/io/DataOutputStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/google/android/apps/nexuslauncher/reflection/b;->bd:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    :try_start_2
    invoke-static {v0}, Lcom/google/protobuf/nano/a;->toByteArray(Lcom/google/protobuf/nano/a;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 179
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b;->bh:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 180
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b;->bh:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 186
    :cond_2
    :try_start_3
    invoke-static {v1}, Lcom/android/launcher3/Utilities;->closeSilently(Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 188
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 182
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 183
    :goto_0
    :try_start_4
    const-string/jumbo v2, "Reflection.Engine"

    const-string/jumbo v3, "Failed to save models"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 186
    :try_start_5
    invoke-static {v1}, Lcom/android/launcher3/Utilities;->closeSilently(Ljava/io/Closeable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit p0

    .line 184
    return v6

    .line 185
    :catchall_0
    move-exception v0

    .line 186
    :goto_1
    :try_start_6
    invoke-static {v2}, Lcom/android/launcher3/Utilities;->closeSilently(Ljava/io/Closeable;)V

    .line 185
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_1

    .line 182
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method getPredictors()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b;->mLearners:Ljava/util/HashMap;

    return-object v0
.end method

.method declared-synchronized reset()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 192
    :try_start_0
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertNonUiThread()V

    .line 193
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b;->mLearners:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 194
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
