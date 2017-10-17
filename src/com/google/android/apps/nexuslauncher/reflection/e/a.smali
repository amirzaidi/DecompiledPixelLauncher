.class public Lcom/google/android/apps/nexuslauncher/reflection/e/a;
.super Lcom/google/research/reflection/predictor/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/research/reflection/predictor/a;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/google/research/reflection/predictor/b;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/google/research/reflection/predictor/a;-><init>(Lcom/google/research/reflection/predictor/b;)V

    .line 31
    return-void
.end method

.method public static ai(Lcom/google/android/apps/nexuslauncher/reflection/d/a;Ljava/util/Map;Lcom/google/research/reflection/predictor/d;)V
    .locals 5

    .prologue
    .line 131
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 132
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/a;->S:[Lcom/google/android/apps/nexuslauncher/reflection/d/b;

    const/4 v0, 0x0

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 133
    new-instance v4, Lcom/google/android/apps/nexuslauncher/reflection/e/a;

    invoke-direct {v4}, Lcom/google/android/apps/nexuslauncher/reflection/e/a;-><init>()V

    .line 134
    invoke-virtual {v4, p2}, Lcom/google/android/apps/nexuslauncher/reflection/e/a;->Sj(Lcom/google/research/reflection/predictor/d;)V

    .line 135
    invoke-virtual {v4, v3}, Lcom/google/android/apps/nexuslauncher/reflection/e/a;->ak(Lcom/google/android/apps/nexuslauncher/reflection/d/b;)V

    .line 136
    iget-object v3, v3, Lcom/google/android/apps/nexuslauncher/reflection/d/b;->U:Ljava/lang/String;

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    :cond_0
    return-void
.end method

.method public static aj(Ljava/util/Map;)Lcom/google/android/apps/nexuslauncher/reflection/d/a;
    .locals 6

    .prologue
    .line 142
    new-instance v3, Lcom/google/android/apps/nexuslauncher/reflection/d/a;

    invoke-direct {v3}, Lcom/google/android/apps/nexuslauncher/reflection/d/a;-><init>()V

    .line 143
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, v3, Lcom/google/android/apps/nexuslauncher/reflection/d/a;->Q:J

    .line 144
    const/4 v0, -0x1

    iput v0, v3, Lcom/google/android/apps/nexuslauncher/reflection/d/a;->version:I

    .line 145
    const-string/jumbo v0, ""

    iput-object v0, v3, Lcom/google/android/apps/nexuslauncher/reflection/d/a;->R:Ljava/lang/String;

    .line 147
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/apps/nexuslauncher/reflection/d/b;

    iput-object v0, v3, Lcom/google/android/apps/nexuslauncher/reflection/d/a;->S:[Lcom/google/android/apps/nexuslauncher/reflection/d/b;

    .line 148
    const/4 v0, 0x0

    .line 149
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 150
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/nexuslauncher/reflection/e/a;

    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/reflection/e/a;->al()Lcom/google/android/apps/nexuslauncher/reflection/d/b;

    move-result-object v1

    .line 151
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/google/android/apps/nexuslauncher/reflection/d/b;->U:Ljava/lang/String;

    .line 152
    iget-object v5, v3, Lcom/google/android/apps/nexuslauncher/reflection/d/a;->S:[Lcom/google/android/apps/nexuslauncher/reflection/d/b;

    add-int/lit8 v0, v2, 0x1

    aput-object v1, v5, v2

    move v2, v0

    goto :goto_0

    .line 154
    :cond_0
    return-object v3
.end method


# virtual methods
.method public ak(Lcom/google/android/apps/nexuslauncher/reflection/d/b;)V
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 34
    iget v1, p1, Lcom/google/android/apps/nexuslauncher/reflection/d/b;->ac:I

    iput v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/a;->Mv:I

    .line 35
    iget v1, p1, Lcom/google/android/apps/nexuslauncher/reflection/d/b;->Y:I

    iput v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/a;->Mu:I

    .line 37
    iget-object v1, p1, Lcom/google/android/apps/nexuslauncher/reflection/d/b;->aa:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/research/reflection/predictor/b;->Sp(Ljava/lang/String;)Lcom/google/research/reflection/predictor/b;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/a;->Mr:Lcom/google/research/reflection/predictor/b;

    .line 38
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/a;->Mr:Lcom/google/research/reflection/predictor/b;

    if-nez v1, :cond_0

    .line 39
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot find predictor with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/apps/nexuslauncher/reflection/d/b;->aa:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/a;->Mr:Lcom/google/research/reflection/predictor/b;

    invoke-virtual {v1, p0}, Lcom/google/research/reflection/predictor/b;->Sr(Lcom/google/research/reflection/predictor/a;)V

    .line 42
    new-instance v1, Ljava/io/DataInputStream;

    .line 43
    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v3, p1, Lcom/google/android/apps/nexuslauncher/reflection/d/b;->Z:[B

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 42
    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 44
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/a;->Mr:Lcom/google/research/reflection/predictor/b;

    invoke-virtual {v2, v1}, Lcom/google/research/reflection/predictor/b;->Sw(Ljava/io/DataInputStream;)V

    .line 45
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 48
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/a;->Ms:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 49
    iget-object v2, p1, Lcom/google/android/apps/nexuslauncher/reflection/d/b;->ab:[Lcom/google/android/apps/nexuslauncher/reflection/d/c;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 50
    iget-object v5, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/a;->Ms:Ljava/util/HashMap;

    iget-object v6, v4, Lcom/google/android/apps/nexuslauncher/reflection/d/c;->name:Ljava/lang/String;

    iget v4, v4, Lcom/google/android/apps/nexuslauncher/reflection/d/c;->ae:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 53
    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/a;->Mw:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 54
    iget-object v2, p1, Lcom/google/android/apps/nexuslauncher/reflection/d/b;->V:[Lcom/google/android/apps/nexuslauncher/reflection/d/d;

    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    .line 55
    iget-object v5, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/a;->Mw:Ljava/util/HashMap;

    iget v6, v4, Lcom/google/android/apps/nexuslauncher/reflection/d/d;->key:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-wide v8, v4, Lcom/google/android/apps/nexuslauncher/reflection/d/d;->ag:J

    long-to-int v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 58
    :cond_2
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/a;->Mq:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 59
    iget-object v2, p1, Lcom/google/android/apps/nexuslauncher/reflection/d/b;->X:[Lcom/google/android/apps/nexuslauncher/reflection/d/d;

    array-length v3, v2

    move v1, v0

    :goto_2
    if-ge v1, v3, :cond_3

    aget-object v4, v2, v1

    .line 60
    iget-object v5, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/a;->Mq:Ljava/util/HashMap;

    iget v6, v4, Lcom/google/android/apps/nexuslauncher/reflection/d/d;->key:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-wide v8, v4, Lcom/google/android/apps/nexuslauncher/reflection/d/d;->ag:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 63
    :cond_3
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/a;->Mz:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 64
    iget-object v1, p1, Lcom/google/android/apps/nexuslauncher/reflection/d/b;->W:[Lcom/google/android/apps/nexuslauncher/reflection/d/d;

    array-length v2, v1

    :goto_3
    if-ge v0, v2, :cond_4

    aget-object v3, v1, v0

    .line 65
    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/a;->Mz:Ljava/util/HashMap;

    iget v5, v3, Lcom/google/android/apps/nexuslauncher/reflection/d/d;->key:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-wide v6, v3, Lcom/google/android/apps/nexuslauncher/reflection/d/d;->ag:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 67
    :cond_4
    return-void
.end method

.method public al()Lcom/google/android/apps/nexuslauncher/reflection/d/b;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 70
    new-instance v4, Lcom/google/android/apps/nexuslauncher/reflection/d/b;

    invoke-direct {v4}, Lcom/google/android/apps/nexuslauncher/reflection/d/b;-><init>()V

    .line 71
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/a;->Mv:I

    iput v0, v4, Lcom/google/android/apps/nexuslauncher/reflection/d/b;->ac:I

    .line 72
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/a;->Mu:I

    iput v0, v4, Lcom/google/android/apps/nexuslauncher/reflection/d/b;->Y:I

    .line 73
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/a;->Mr:Lcom/google/research/reflection/predictor/b;

    invoke-static {v0}, Lcom/google/research/reflection/predictor/b;->St(Lcom/google/research/reflection/predictor/b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/google/android/apps/nexuslauncher/reflection/d/b;->aa:Ljava/lang/String;

    .line 75
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 76
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 77
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/a;->Mr:Lcom/google/research/reflection/predictor/b;

    invoke-virtual {v2, v1}, Lcom/google/research/reflection/predictor/b;->Su(Ljava/io/DataOutputStream;)V

    .line 78
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 79
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, v4, Lcom/google/android/apps/nexuslauncher/reflection/d/b;->Z:[B

    .line 80
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 83
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/a;->Ms:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/apps/nexuslauncher/reflection/d/c;

    iput-object v0, v4, Lcom/google/android/apps/nexuslauncher/reflection/d/b;->ab:[Lcom/google/android/apps/nexuslauncher/reflection/d/c;

    .line 85
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/a;->Ms:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v3

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 86
    new-instance v6, Lcom/google/android/apps/nexuslauncher/reflection/d/c;

    invoke-direct {v6}, Lcom/google/android/apps/nexuslauncher/reflection/d/c;-><init>()V

    .line 87
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v6, Lcom/google/android/apps/nexuslauncher/reflection/d/c;->name:Ljava/lang/String;

    .line 88
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v6, Lcom/google/android/apps/nexuslauncher/reflection/d/c;->ae:I

    .line 89
    iget-object v1, v4, Lcom/google/android/apps/nexuslauncher/reflection/d/b;->ab:[Lcom/google/android/apps/nexuslauncher/reflection/d/c;

    add-int/lit8 v0, v2, 0x1

    aput-object v6, v1, v2

    move v2, v0

    goto :goto_0

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/a;->Mw:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/apps/nexuslauncher/reflection/d/d;

    iput-object v0, v4, Lcom/google/android/apps/nexuslauncher/reflection/d/b;->V:[Lcom/google/android/apps/nexuslauncher/reflection/d/d;

    .line 95
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/a;->Mw:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v3

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 96
    new-instance v6, Lcom/google/android/apps/nexuslauncher/reflection/d/d;

    invoke-direct {v6}, Lcom/google/android/apps/nexuslauncher/reflection/d/d;-><init>()V

    .line 97
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v6, Lcom/google/android/apps/nexuslauncher/reflection/d/d;->key:I

    .line 98
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, v6, Lcom/google/android/apps/nexuslauncher/reflection/d/d;->ag:J

    .line 99
    iget-object v1, v4, Lcom/google/android/apps/nexuslauncher/reflection/d/b;->V:[Lcom/google/android/apps/nexuslauncher/reflection/d/d;

    add-int/lit8 v0, v2, 0x1

    aput-object v6, v1, v2

    move v2, v0

    goto :goto_1

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/a;->Mq:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/apps/nexuslauncher/reflection/d/d;

    iput-object v0, v4, Lcom/google/android/apps/nexuslauncher/reflection/d/b;->X:[Lcom/google/android/apps/nexuslauncher/reflection/d/d;

    .line 106
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/a;->Mq:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v3

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 107
    new-instance v6, Lcom/google/android/apps/nexuslauncher/reflection/d/d;

    invoke-direct {v6}, Lcom/google/android/apps/nexuslauncher/reflection/d/d;-><init>()V

    .line 108
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v6, Lcom/google/android/apps/nexuslauncher/reflection/d/d;->key:I

    .line 109
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, v6, Lcom/google/android/apps/nexuslauncher/reflection/d/d;->ag:J

    .line 110
    iget-object v1, v4, Lcom/google/android/apps/nexuslauncher/reflection/d/b;->X:[Lcom/google/android/apps/nexuslauncher/reflection/d/d;

    add-int/lit8 v0, v2, 0x1

    aput-object v6, v1, v2

    move v2, v0

    goto :goto_2

    .line 114
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/a;->Mz:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/apps/nexuslauncher/reflection/d/d;

    iput-object v0, v4, Lcom/google/android/apps/nexuslauncher/reflection/d/b;->W:[Lcom/google/android/apps/nexuslauncher/reflection/d/d;

    .line 117
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/a;->Mz:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 118
    new-instance v5, Lcom/google/android/apps/nexuslauncher/reflection/d/d;

    invoke-direct {v5}, Lcom/google/android/apps/nexuslauncher/reflection/d/d;-><init>()V

    .line 119
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v5, Lcom/google/android/apps/nexuslauncher/reflection/d/d;->key:I

    .line 120
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, v5, Lcom/google/android/apps/nexuslauncher/reflection/d/d;->ag:J

    .line 121
    iget-object v1, v4, Lcom/google/android/apps/nexuslauncher/reflection/d/b;->W:[Lcom/google/android/apps/nexuslauncher/reflection/d/d;

    add-int/lit8 v0, v3, 0x1

    aput-object v5, v1, v3

    move v3, v0

    goto :goto_3

    .line 123
    :cond_3
    return-object v4
.end method
