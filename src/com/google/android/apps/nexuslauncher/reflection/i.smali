.class public Lcom/google/android/apps/nexuslauncher/reflection/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final cP:Ljava/lang/String;

.field private cQ:Ljava/io/File;

.field private cR:Lcom/google/research/reflection/predictor/d;

.field private final cS:Lcom/google/android/apps/nexuslauncher/reflection/c/c;

.field private final cT:Landroid/content/SharedPreferences;

.field private final cU:Ljava/lang/Runnable;

.field private final mContext:Landroid/content/Context;

.field mLearners:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/nexuslauncher/reflection/c/c;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/i;->mLearners:Ljava/util/HashMap;

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/i;->cQ:Ljava/io/File;

    .line 80
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/i;->mContext:Landroid/content/Context;

    .line 81
    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/reflection/i;->cS:Lcom/google/android/apps/nexuslauncher/reflection/c/c;

    .line 82
    iput-object p3, p0, Lcom/google/android/apps/nexuslauncher/reflection/i;->cT:Landroid/content/SharedPreferences;

    .line 83
    iput-object p4, p0, Lcom/google/android/apps/nexuslauncher/reflection/i;->cP:Ljava/lang/String;

    .line 84
    iput-object p5, p0, Lcom/google/android/apps/nexuslauncher/reflection/i;->cU:Ljava/lang/Runnable;

    .line 86
    new-instance v0, Lcom/google/research/reflection/predictor/d;

    invoke-direct {v0}, Lcom/google/research/reflection/predictor/d;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/i;->cR:Lcom/google/research/reflection/predictor/d;

    .line 87
    return-void
.end method

.method private co()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 312
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 314
    const-string/jumbo v1, "LatLong=%b "

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 313
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 316
    const-string/jumbo v1, "Semantic=%b "

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 315
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 318
    const-string/jumbo v1, "Install=%b "

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 317
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 320
    const-string/jumbo v1, "Headset=%b "

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 319
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 321
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method declared-synchronized cf(Ljava/lang/String;Lcom/google/android/apps/nexuslauncher/reflection/b/b;)V
    .locals 2

    .prologue
    monitor-enter p0

    .line 218
    :try_start_0
    invoke-virtual {p2}, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->getId()Ljava/lang/String;

    move-result-object v0

    .line 222
    const-string/jumbo v1, "/deleted_app/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit p0

    .line 223
    return-void

    .line 225
    :cond_0
    :try_start_1
    invoke-static {p2}, Lcom/google/android/apps/nexuslauncher/reflection/o;->cx(Lcom/google/research/reflection/a/b;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    monitor-exit p0

    .line 226
    return-void

    .line 228
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/i;->mLearners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/reflection/predictor/a;

    .line 229
    if-nez v0, :cond_2

    .line 230
    new-instance v1, Lcom/google/research/reflection/predictor/g;

    invoke-direct {v1}, Lcom/google/research/reflection/predictor/g;-><init>()V

    .line 231
    new-instance v0, Lcom/google/android/apps/nexuslauncher/reflection/e/a;

    invoke-direct {v0, v1}, Lcom/google/android/apps/nexuslauncher/reflection/e/a;-><init>(Lcom/google/research/reflection/predictor/b;)V

    .line 232
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/i;->cR:Lcom/google/research/reflection/predictor/d;

    invoke-virtual {v0, v1}, Lcom/google/research/reflection/predictor/a;->Tw(Lcom/google/research/reflection/predictor/d;)V

    .line 233
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/i;->mLearners:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    :cond_2
    invoke-virtual {v0, p2}, Lcom/google/research/reflection/predictor/a;->Tu(Lcom/google/research/reflection/a/b;)Lcom/google/research/reflection/predictor/e;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 236
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method cg()Lcom/google/research/reflection/predictor/d;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/i;->cR:Lcom/google/research/reflection/predictor/d;

    return-object v0
.end method

.method public declared-synchronized ch()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    monitor-enter p0

    .line 155
    :try_start_0
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertNonUiThread()V

    .line 156
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/i;->cR:Lcom/google/research/reflection/predictor/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/i;->cT:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/i;->cR:Lcom/google/research/reflection/predictor/d;

    invoke-static {v0}, Lcom/google/research/reflection/predictor/d;->TS(Lcom/google/research/reflection/predictor/d;)Ljava/lang/String;

    move-result-object v0

    .line 158
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/i;->cT:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/i;->cP:Ljava/lang/String;

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/i;->cQ:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_1

    monitor-exit p0

    .line 167
    return v6

    .line 171
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/i;->mLearners:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/reflection/e/a;->bx(Ljava/util/Map;)Lcom/google/android/apps/nexuslauncher/reflection/a/k;

    move-result-object v0

    .line 172
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/google/android/apps/nexuslauncher/reflection/a/k;->bh:J

    .line 173
    const/16 v1, 0x18

    iput v1, v0, Lcom/google/android/apps/nexuslauncher/reflection/a/k;->bi:I

    .line 174
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/reflection/i;->co()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/apps/nexuslauncher/reflection/a/k;->bj:Ljava/lang/String;

    .line 175
    new-instance v1, Ljava/io/DataOutputStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/google/android/apps/nexuslauncher/reflection/i;->cQ:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    :try_start_2
    invoke-static {v0}, Lcom/google/protobuf/nano/a;->toByteArray(Lcom/google/protobuf/nano/a;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 178
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/i;->cU:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 179
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/i;->cU:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 185
    :cond_2
    :try_start_3
    invoke-static {v1}, Lcom/android/launcher3/Utilities;->closeSilently(Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 187
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 181
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 182
    :goto_0
    :try_start_4
    const-string/jumbo v2, "Reflection.Engine"

    const-string/jumbo v3, "Failed to save models"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 185
    :try_start_5
    invoke-static {v1}, Lcom/android/launcher3/Utilities;->closeSilently(Ljava/io/Closeable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit p0

    .line 183
    return v6

    .line 184
    :catchall_0
    move-exception v0

    .line 185
    :goto_1
    :try_start_6
    invoke-static {v2}, Lcom/android/launcher3/Utilities;->closeSilently(Ljava/io/Closeable;)V

    .line 184
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

    .line 181
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized ci(Ljava/io/File;)V
    .locals 1

    .prologue
    monitor-enter p0

    .line 90
    :try_start_0
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/i;->cQ:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 91
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized cj()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    monitor-enter p0

    .line 109
    :try_start_0
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertNonUiThread()V

    .line 110
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/i;->cT:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/i;->cT:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/i;->cP:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/nexuslauncher/reflection/b/b;

    invoke-direct {v1}, Lcom/google/android/apps/nexuslauncher/reflection/b/b;-><init>()V

    .line 111
    invoke-static {v0, v1}, Lcom/google/research/reflection/predictor/d;->TN(Ljava/lang/String;Lcom/google/research/reflection/a/b;)Lcom/google/research/reflection/predictor/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/i;->cR:Lcom/google/research/reflection/predictor/d;

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/i;->cQ:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_1

    monitor-exit p0

    .line 121
    return v4

    .line 123
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/i;->mLearners:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 124
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/i;->cQ:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_2

    monitor-exit p0

    .line 128
    return v4

    .line 130
    :cond_2
    const/4 v1, 0x0

    .line 132
    :try_start_2
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/i;->cQ:Ljava/io/File;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/util/b;->cD(Ljava/io/File;)[B

    move-result-object v0

    .line 133
    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/reflection/a/k;->aq([B)Lcom/google/android/apps/nexuslauncher/reflection/a/k;

    move-result-object v0

    .line 134
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/i;->mLearners:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/i;->cR:Lcom/google/research/reflection/predictor/d;

    invoke-static {v0, v2, v3}, Lcom/google/android/apps/nexuslauncher/reflection/e/a;->bw(Lcom/google/android/apps/nexuslauncher/reflection/a/k;Ljava/util/Map;Lcom/google/research/reflection/predictor/d;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 144
    :try_start_3
    invoke-static {v1}, Lcom/android/launcher3/Utilities;->closeSilently(Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 146
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    :try_start_4
    const-string/jumbo v2, "Reflection.Engine"

    const-string/jumbo v3, "Failed to load models, starting a fresh model."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 144
    :try_start_5
    invoke-static {v1}, Lcom/android/launcher3/Utilities;->closeSilently(Ljava/io/Closeable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit p0

    .line 142
    return v4

    .line 143
    :catchall_0
    move-exception v0

    .line 144
    :try_start_6
    invoke-static {v1}, Lcom/android/launcher3/Utilities;->closeSilently(Ljava/io/Closeable;)V

    .line 143
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized ck(Lcom/google/android/apps/nexuslauncher/reflection/i;)V
    .locals 2

    .prologue
    monitor-enter p0

    .line 97
    :try_start_0
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 98
    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/i;->mLearners:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 99
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/i;->mLearners:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/google/android/apps/nexuslauncher/reflection/i;->mLearners:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    .line 101
    return-void

    .line 97
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

.method public declared-synchronized cl(Ljava/lang/String;Lcom/google/android/apps/nexuslauncher/reflection/b/b;)V
    .locals 4

    .prologue
    monitor-enter p0

    .line 199
    :try_start_0
    const-string/jumbo v0, "system"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/nexuslauncher/reflection/i;->cf(Ljava/lang/String;Lcom/google/android/apps/nexuslauncher/reflection/b/b;)V

    .line 203
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->getId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "/deleted_app/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/i;->cR:Lcom/google/research/reflection/predictor/d;

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/i;->cR:Lcom/google/research/reflection/predictor/d;

    invoke-virtual {v0, p2}, Lcom/google/research/reflection/predictor/d;->TM(Lcom/google/research/reflection/a/b;)V

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/i;->cS:Lcom/google/android/apps/nexuslauncher/reflection/c/c;

    invoke-virtual {p2}, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->ax()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/apps/nexuslauncher/reflection/c/c;->aO(J)V

    .line 214
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/i;->cS:Lcom/google/android/apps/nexuslauncher/reflection/c/c;

    invoke-virtual {v0, p2}, Lcom/google/android/apps/nexuslauncher/reflection/c/c;->aP(Lcom/google/research/reflection/a/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 215
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized cm(Ljava/lang/String;Lcom/google/android/apps/nexuslauncher/reflection/b/b;)Lcom/google/research/reflection/predictor/e;
    .locals 2

    .prologue
    monitor-enter p0

    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/i;->mLearners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/reflection/predictor/a;

    .line 243
    if-nez v0, :cond_0

    .line 247
    new-instance v0, Lcom/google/research/reflection/predictor/e;

    invoke-direct {v0}, Lcom/google/research/reflection/predictor/e;-><init>()V

    .line 248
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/research/reflection/predictor/e;->TX(Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 249
    return-object v0

    .line 250
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/google/research/reflection/predictor/a;->TA()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 254
    new-instance v0, Lcom/google/research/reflection/predictor/e;

    invoke-direct {v0}, Lcom/google/research/reflection/predictor/e;-><init>()V

    .line 255
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/research/reflection/predictor/e;->TX(Ljava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 256
    return-object v0

    .line 260
    :cond_1
    :try_start_2
    invoke-virtual {v0, p2}, Lcom/google/research/reflection/predictor/a;->Ts(Lcom/google/research/reflection/a/b;)Lcom/google/research/reflection/predictor/e;

    move-result-object v0

    .line 261
    invoke-virtual {v0}, Lcom/google/research/reflection/predictor/e;->Ua()Ljava/util/ArrayList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 278
    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized cn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    monitor-enter p0

    .line 285
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

    .line 286
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 287
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/i;->mLearners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/reflection/predictor/a;

    .line 288
    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {v0, p2, v1, v2}, Lcom/google/research/reflection/predictor/a;->Ty(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 290
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/reflection/i;->ch()Z

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/i;->cS:Lcom/google/android/apps/nexuslauncher/reflection/c/c;

    invoke-virtual {v0, p2, v1, v2}, Lcom/google/android/apps/nexuslauncher/reflection/c/c;->aQ(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 293
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getPredictors()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/i;->mLearners:Ljava/util/HashMap;

    return-object v0
.end method

.method declared-synchronized reset()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 191
    :try_start_0
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertNonUiThread()V

    .line 192
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/i;->mLearners:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 193
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
