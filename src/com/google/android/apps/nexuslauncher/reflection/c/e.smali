.class public Lcom/google/android/apps/nexuslauncher/reflection/c/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final bG:J

.field private final bH:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;J)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/e;->bH:Ljava/io/File;

    .line 44
    iput-wide p2, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/e;->bG:J

    .line 45
    return-void
.end method

.method private aT()V
    .locals 4

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/e;->bH:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/e;->bH:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 83
    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/e;->bG:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/reflection/c/e;->aU()Ljava/util/List;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/e;->bH:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/reflection/c/e;->log(Ljava/util/List;)V

    .line 90
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized aS(Lcom/google/android/apps/nexuslauncher/reflection/a/f;)V
    .locals 2

    .prologue
    monitor-enter p0

    .line 52
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Lcom/google/android/apps/nexuslauncher/reflection/a/f;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/reflection/c/e;->log(Ljava/util/List;)V

    .line 53
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/reflection/c/e;->aT()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 54
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized aU()Ljava/util/List;
    .locals 6

    .prologue
    const/4 v2, 0x0

    monitor-enter p0

    .line 97
    :try_start_0
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertNonUiThread()V

    .line 98
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :try_start_1
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    iget-object v5, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/e;->bH:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v2

    .line 104
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 105
    if-eqz v0, :cond_1

    array-length v4, v0

    if-ge v4, v2, :cond_2

    .line 106
    :cond_1
    new-array v0, v2, [B

    .line 108
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2}, Ljava/io/DataInputStream;->read([BII)I

    .line 110
    const/4 v4, 0x0

    invoke-static {v0, v4, v2}, Lcom/google/protobuf/nano/c;->SH([BII)Lcom/google/protobuf/nano/c;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/nexuslauncher/reflection/a/f;->ap(Lcom/google/protobuf/nano/c;)Lcom/google/android/apps/nexuslauncher/reflection/a/f;

    move-result-object v2

    .line 111
    if-eqz v2, :cond_0

    .line 112
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 120
    :goto_1
    :try_start_3
    invoke-static {v1}, Lcom/android/launcher3/Utilities;->closeSilently(Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    monitor-exit p0

    .line 122
    return-object v3

    .line 117
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 118
    :goto_3
    :try_start_4
    const-string/jumbo v2, "Reflection.ClientActLog"

    const-string/jumbo v4, "Failed in loading the log file"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 120
    :try_start_5
    invoke-static {v1}, Lcom/android/launcher3/Utilities;->closeSilently(Ljava/io/Closeable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 119
    :catchall_1
    move-exception v0

    move-object v1, v2

    .line 120
    :goto_4
    :try_start_6
    invoke-static {v1}, Lcom/android/launcher3/Utilities;->closeSilently(Ljava/io/Closeable;)V

    .line 119
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_2
    move-exception v0

    goto :goto_4

    .line 115
    :catch_2
    move-exception v0

    move-object v1, v2

    goto :goto_1

    .line 117
    :catch_3
    move-exception v0

    goto :goto_3
.end method

.method log(Ljava/util/List;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 58
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertNonUiThread()V

    .line 63
    :try_start_0
    new-instance v1, Ljava/io/DataOutputStream;

    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/e;->bH:Ljava/io/File;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v0, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :try_start_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/reflection/a/f;

    .line 65
    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/reflection/a/f;->getSerializedSize()I

    move-result v4

    .line 66
    if-eqz v2, :cond_0

    array-length v5, v2

    if-ge v5, v4, :cond_1

    .line 67
    :cond_0
    new-array v2, v4, [B

    .line 69
    :cond_1
    const/4 v5, 0x0

    invoke-static {v0, v2, v5, v4}, Lcom/google/protobuf/nano/a;->toByteArray(Lcom/google/protobuf/nano/a;[BII)V

    .line 70
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 71
    const/4 v0, 0x0

    invoke-virtual {v1, v2, v0, v4}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    :goto_1
    :try_start_2
    const-string/jumbo v2, "Reflection.ClientActLog"

    const-string/jumbo v3, "Failed to write the client action log file"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 76
    invoke-static {v1}, Lcom/android/launcher3/Utilities;->closeSilently(Ljava/io/Closeable;)V

    .line 78
    :goto_2
    return-void

    .line 76
    :cond_2
    invoke-static {v1}, Lcom/android/launcher3/Utilities;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_2

    .line 75
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 76
    :goto_3
    invoke-static {v1}, Lcom/android/launcher3/Utilities;->closeSilently(Ljava/io/Closeable;)V

    .line 75
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 73
    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method
