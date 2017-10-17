.class public Landroid/support/v4/a/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private Xd:I

.field private final Xe:Ljava/util/LinkedHashMap;

.field private Xf:I

.field private Xg:I

.field private Xh:I

.field private Xi:I

.field private Xj:I


# direct methods
.method public constructor <init>(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    if-lez p1, :cond_0

    .line 52
    iput p1, p0, Landroid/support/v4/a/h;->Xf:I

    .line 53
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x1

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-direct {v0, v3, v2, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Landroid/support/v4/a/h;->Xe:Ljava/util/LinkedHashMap;

    .line 54
    return-void

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private aiu(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 250
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/a/h;->pr(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 251
    if-ltz v0, :cond_0

    .line 254
    return v0

    .line 252
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Negative size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final ait()V
    .locals 1

    .prologue
    .line 272
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/a/h;->aiv(I)V

    .line 273
    return-void
.end method

.method public aiv(I)V
    .locals 4

    .prologue
    .line 166
    :goto_0
    monitor-enter p0

    .line 167
    :try_start_0
    iget v0, p0, Landroid/support/v4/a/h;->Xd:I

    if-gez v0, :cond_1

    .line 168
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".sizeOf() is reporting inconsistent results!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 167
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/support/v4/a/h;->Xe:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 172
    :goto_1
    iget v0, p0, Landroid/support/v4/a/h;->Xd:I

    if-gt v0, p1, :cond_4

    .line 173
    :cond_2
    monitor-exit p0

    .line 186
    return-void

    .line 167
    :cond_3
    iget v0, p0, Landroid/support/v4/a/h;->Xd:I

    if-nez v0, :cond_0

    goto :goto_1

    .line 172
    :cond_4
    iget-object v0, p0, Landroid/support/v4/a/h;->Xe:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 176
    iget-object v0, p0, Landroid/support/v4/a/h;->Xe:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 177
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 178
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 179
    iget-object v2, p0, Landroid/support/v4/a/h;->Xe:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget v2, p0, Landroid/support/v4/a/h;->Xd:I

    invoke-direct {p0, v1, v0}, Landroid/support/v4/a/h;->aiu(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Landroid/support/v4/a/h;->Xd:I

    .line 181
    iget v2, p0, Landroid/support/v4/a/h;->Xg:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/support/v4/a/h;->Xg:I

    .line 182
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v1, v0, v3}, Landroid/support/v4/a/h;->pq(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected pq(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 228
    return-void
.end method

.method protected pr(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 265
    const/4 v0, 0x1

    return v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 133
    if-nez p1, :cond_1

    .line 134
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "key == null || value == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_1
    if-eqz p2, :cond_0

    .line 138
    monitor-enter p0

    .line 139
    :try_start_0
    iget v0, p0, Landroid/support/v4/a/h;->Xj:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/a/h;->Xj:I

    .line 140
    iget v0, p0, Landroid/support/v4/a/h;->Xd:I

    invoke-direct {p0, p1, p2}, Landroid/support/v4/a/h;->aiu(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v4/a/h;->Xd:I

    .line 141
    iget-object v0, p0, Landroid/support/v4/a/h;->Xe:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 142
    if-nez v0, :cond_2

    .line 145
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    if-nez v0, :cond_3

    .line 151
    :goto_1
    iget v1, p0, Landroid/support/v4/a/h;->Xf:I

    invoke-virtual {p0, v1}, Landroid/support/v4/a/h;->aiv(I)V

    .line 152
    return-object v0

    .line 143
    :cond_2
    :try_start_1
    iget v1, p0, Landroid/support/v4/a/h;->Xd:I

    invoke-direct {p0, p1, v0}, Landroid/support/v4/a/h;->aiu(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/support/v4/a/h;->Xd:I

    goto :goto_0

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 148
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0, p2}, Landroid/support/v4/a/h;->pq(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    monitor-enter p0

    .line 339
    :try_start_0
    iget v1, p0, Landroid/support/v4/a/h;->Xh:I

    iget v2, p0, Landroid/support/v4/a/h;->Xi:I

    add-int/2addr v1, v2

    .line 340
    if-nez v1, :cond_0

    .line 341
    :goto_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Landroid/support/v4/a/h;->Xf:I

    const-string/jumbo v4, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]"

    const/4 v5, 0x0

    .line 342
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget v3, p0, Landroid/support/v4/a/h;->Xh:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    iget v3, p0, Landroid/support/v4/a/h;->Xi:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v2, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x3

    aput-object v0, v2, v3

    .line 341
    invoke-static {v1, v4, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 340
    :cond_0
    :try_start_1
    iget v0, p0, Landroid/support/v4/a/h;->Xh:I

    mul-int/lit8 v0, v0, 0x64

    div-int/2addr v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
