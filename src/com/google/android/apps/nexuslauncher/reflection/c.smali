.class Lcom/google/android/apps/nexuslauncher/reflection/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private cw:Lcom/google/android/apps/nexuslauncher/reflection/i;

.field final synthetic cx:Lcom/google/android/apps/nexuslauncher/reflection/b;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/nexuslauncher/reflection/b;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/c;->cx:Lcom/google/android/apps/nexuslauncher/reflection/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/reflection/b;Lcom/google/android/apps/nexuslauncher/reflection/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/reflection/c;-><init>(Lcom/google/android/apps/nexuslauncher/reflection/b;)V

    return-void
.end method

.method private bN(J)V
    .locals 13

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 188
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertNonUiThread()V

    .line 189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 190
    const-string/jumbo v0, "Reflection.StBatchTrain"

    const-string/jumbo v1, "Start loading events from logs..."

    invoke-static {v0, v1}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :goto_0
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/c;->cx:Lcom/google/android/apps/nexuslauncher/reflection/b;

    monitor-enter v1

    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c;->cx:Lcom/google/android/apps/nexuslauncher/reflection/b;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/reflection/b;->bI(Lcom/google/android/apps/nexuslauncher/reflection/b;)Lcom/google/android/apps/nexuslauncher/reflection/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eq v0, p0, :cond_0

    monitor-exit v1

    .line 196
    return-void

    .line 201
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c;->cx:Lcom/google/android/apps/nexuslauncher/reflection/b;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/reflection/b;->bJ(Lcom/google/android/apps/nexuslauncher/reflection/b;)Lcom/google/android/apps/nexuslauncher/reflection/c/c;

    move-result-object v0

    .line 203
    const/16 v4, 0x3e8

    .line 201
    invoke-virtual {v0, p1, p2, v4}, Lcom/google/android/apps/nexuslauncher/reflection/c/c;->aN(JI)Lcom/google/android/apps/nexuslauncher/reflection/c/d;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    monitor-exit v1

    .line 205
    if-eqz v4, :cond_1

    iget-object v0, v4, Lcom/google/android/apps/nexuslauncher/reflection/c/d;->bE:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 252
    :cond_1
    const-string/jumbo v0, "Reflection.StBatchTrain"

    const-string/jumbo v1, "Retrain finished, total time including loading: %dms"

    new-array v4, v11, [Ljava/lang/Object;

    .line 253
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v10

    .line 252
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    return-void

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 209
    :cond_2
    iget-object v0, v4, Lcom/google/android/apps/nexuslauncher/reflection/c/d;->bE:Ljava/util/List;

    .line 211
    const-string/jumbo v1, "Reflection.StBatchTrain"

    const-string/jumbo v5, "Num events loaded: %d, time taken so far: %dms"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 212
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v11

    .line 211
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/reflection/b/b;

    .line 216
    iget-object v5, p0, Lcom/google/android/apps/nexuslauncher/reflection/c;->cx:Lcom/google/android/apps/nexuslauncher/reflection/b;

    monitor-enter v5

    .line 218
    :try_start_2
    iget-object v6, p0, Lcom/google/android/apps/nexuslauncher/reflection/c;->cx:Lcom/google/android/apps/nexuslauncher/reflection/b;

    invoke-static {v6}, Lcom/google/android/apps/nexuslauncher/reflection/b;->bI(Lcom/google/android/apps/nexuslauncher/reflection/b;)Lcom/google/android/apps/nexuslauncher/reflection/c;

    move-result-object v6

    if-ne v6, p0, :cond_4

    .line 219
    iget-object v6, p0, Lcom/google/android/apps/nexuslauncher/reflection/c;->cw:Lcom/google/android/apps/nexuslauncher/reflection/i;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->aw()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Lcom/google/android/apps/nexuslauncher/reflection/i;->cf(Ljava/lang/String;Lcom/google/android/apps/nexuslauncher/reflection/b/b;)V

    .line 220
    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->getId()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "/deleted_app/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 221
    iget-object v6, p0, Lcom/google/android/apps/nexuslauncher/reflection/c;->cw:Lcom/google/android/apps/nexuslauncher/reflection/i;

    invoke-virtual {v6}, Lcom/google/android/apps/nexuslauncher/reflection/i;->cg()Lcom/google/research/reflection/predictor/d;

    move-result-object v6

    .line 222
    if-eqz v6, :cond_3

    .line 223
    invoke-virtual {v6, v0}, Lcom/google/research/reflection/predictor/d;->TM(Lcom/google/research/reflection/a/b;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_3
    monitor-exit v5

    goto :goto_1

    :cond_4
    monitor-exit v5

    .line 227
    return-void

    .line 216
    :catchall_1
    move-exception v0

    monitor-exit v5

    throw v0

    .line 232
    :cond_5
    iget-wide p1, v4, Lcom/google/android/apps/nexuslauncher/reflection/c/d;->bF:J

    .line 236
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 237
    const-string/jumbo v1, "InProgress:%d"

    .line 235
    new-array v4, v11, [Ljava/lang/Object;

    .line 238
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v10

    .line 235
    invoke-static {v0, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 240
    const-string/jumbo v1, "Reflection.StBatchTrain"

    const-string/jumbo v4, "Progress: %s"

    new-array v5, v11, [Ljava/lang/Object;

    aput-object v0, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/c;->cx:Lcom/google/android/apps/nexuslauncher/reflection/b;

    monitor-enter v1

    .line 243
    :try_start_3
    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/reflection/c;->cx:Lcom/google/android/apps/nexuslauncher/reflection/b;

    invoke-static {v4}, Lcom/google/android/apps/nexuslauncher/reflection/b;->bI(Lcom/google/android/apps/nexuslauncher/reflection/b;)Lcom/google/android/apps/nexuslauncher/reflection/c;

    move-result-object v4

    if-ne v4, p0, :cond_6

    .line 245
    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/reflection/c;->cx:Lcom/google/android/apps/nexuslauncher/reflection/b;

    invoke-static {v4}, Lcom/google/android/apps/nexuslauncher/reflection/b;->bK(Lcom/google/android/apps/nexuslauncher/reflection/b;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string/jumbo v5, "staged_batch_training_progress"

    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 246
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c;->cw:Lcom/google/android/apps/nexuslauncher/reflection/i;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/reflection/i;->ch()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit v1

    goto/16 :goto_0

    :cond_6
    monitor-exit v1

    .line 248
    return-void

    .line 242
    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private bO()Lcom/google/android/apps/nexuslauncher/reflection/i;
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 260
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertNonUiThread()V

    .line 262
    const-wide/16 v6, 0x0

    .line 264
    iget-object v8, p0, Lcom/google/android/apps/nexuslauncher/reflection/c;->cx:Lcom/google/android/apps/nexuslauncher/reflection/b;

    monitor-enter v8

    .line 266
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c;->cx:Lcom/google/android/apps/nexuslauncher/reflection/b;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/reflection/b;->bK(Lcom/google/android/apps/nexuslauncher/reflection/b;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "staged_batch_training_progress"

    const-string/jumbo v2, "Success"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 267
    const-string/jumbo v0, "Success"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v8

    .line 271
    return-object v10

    .line 275
    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/android/apps/nexuslauncher/reflection/i;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/c;->cx:Lcom/google/android/apps/nexuslauncher/reflection/b;

    invoke-static {v1}, Lcom/google/android/apps/nexuslauncher/reflection/b;->bH(Lcom/google/android/apps/nexuslauncher/reflection/b;)Landroid/content/Context;

    move-result-object v1

    .line 276
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/c;->cx:Lcom/google/android/apps/nexuslauncher/reflection/b;

    invoke-static {v2}, Lcom/google/android/apps/nexuslauncher/reflection/b;->bK(Lcom/google/android/apps/nexuslauncher/reflection/b;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 277
    const-string/jumbo v4, "background_evt_buf.properties"

    .line 275
    const/4 v2, 0x0

    .line 277
    const/4 v5, 0x0

    .line 275
    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/nexuslauncher/reflection/i;-><init>(Landroid/content/Context;Lcom/google/android/apps/nexuslauncher/reflection/c/c;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c;->cw:Lcom/google/android/apps/nexuslauncher/reflection/i;

    .line 278
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c;->cw:Lcom/google/android/apps/nexuslauncher/reflection/i;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/c;->cx:Lcom/google/android/apps/nexuslauncher/reflection/b;

    invoke-static {v1}, Lcom/google/android/apps/nexuslauncher/reflection/b;->bG(Lcom/google/android/apps/nexuslauncher/reflection/b;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/nexuslauncher/reflection/i;->ci(Ljava/io/File;)V

    .line 279
    const-string/jumbo v0, "New"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 280
    invoke-static {}, Lcom/google/android/apps/nexuslauncher/reflection/b;->-get0()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 281
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_1

    .line 282
    const-string/jumbo v0, "Reflection.StBatchTrain"

    const-string/jumbo v1, "Invalid progress string."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v8

    .line 283
    return-object v10

    .line 287
    :cond_1
    const/4 v1, 0x1

    :try_start_2
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v0

    .line 293
    :try_start_3
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/c;->cw:Lcom/google/android/apps/nexuslauncher/reflection/i;

    invoke-virtual {v2}, Lcom/google/android/apps/nexuslauncher/reflection/i;->cj()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    monitor-exit v8

    .line 298
    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/nexuslauncher/reflection/c;->bN(J)V

    .line 300
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/c;->cx:Lcom/google/android/apps/nexuslauncher/reflection/b;

    monitor-enter v1

    .line 301
    :try_start_4
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c;->cx:Lcom/google/android/apps/nexuslauncher/reflection/b;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/reflection/b;->bI(Lcom/google/android/apps/nexuslauncher/reflection/b;)Lcom/google/android/apps/nexuslauncher/reflection/c;

    move-result-object v0

    if-ne v0, p0, :cond_2

    .line 302
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c;->cx:Lcom/google/android/apps/nexuslauncher/reflection/b;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/reflection/b;->bK(Lcom/google/android/apps/nexuslauncher/reflection/b;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "staged_batch_training_progress"

    const-string/jumbo v3, "Success"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_2
    monitor-exit v1

    .line 305
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c;->cw:Lcom/google/android/apps/nexuslauncher/reflection/i;

    return-object v0

    .line 288
    :catch_0
    move-exception v0

    .line 289
    :try_start_5
    const-string/jumbo v1, "Reflection.StBatchTrain"

    const-string/jumbo v2, "Invalid progress string."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v8

    .line 290
    return-object v10

    .line 264
    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0

    .line 300
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_3
    move-wide v0, v6

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 175
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/reflection/c;->bO()Lcom/google/android/apps/nexuslauncher/reflection/i;

    move-result-object v0

    .line 176
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/c;->cx:Lcom/google/android/apps/nexuslauncher/reflection/b;

    invoke-static {v1, v0, p0}, Lcom/google/android/apps/nexuslauncher/reflection/b;->bM(Lcom/google/android/apps/nexuslauncher/reflection/b;Lcom/google/android/apps/nexuslauncher/reflection/i;Lcom/google/android/apps/nexuslauncher/reflection/c;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :goto_0
    return-void

    .line 177
    :catch_0
    move-exception v0

    .line 178
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/c;->cx:Lcom/google/android/apps/nexuslauncher/reflection/b;

    invoke-static {v1, v0, p0}, Lcom/google/android/apps/nexuslauncher/reflection/b;->bL(Lcom/google/android/apps/nexuslauncher/reflection/b;Ljava/lang/Throwable;Lcom/google/android/apps/nexuslauncher/reflection/c;)V

    goto :goto_0
.end method
