.class public Lcom/google/research/reflection/predictor/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected Mq:Ljava/util/HashMap;

.field protected Mr:Lcom/google/research/reflection/predictor/b;

.field protected Ms:Ljava/util/HashMap;

.field private Mt:[F

.field protected Mu:I

.field protected Mv:I

.field protected Mw:Ljava/util/HashMap;

.field private Mx:Lcom/google/research/reflection/predictor/c;

.field private My:Lcom/google/research/reflection/predictor/d;

.field protected Mz:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/research/reflection/predictor/a;->Mw:Ljava/util/HashMap;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/research/reflection/predictor/a;->Ms:Ljava/util/HashMap;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/research/reflection/predictor/a;->Mq:Ljava/util/HashMap;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/research/reflection/predictor/a;->Mz:Ljava/util/HashMap;

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/research/reflection/predictor/a;->Mt:[F

    .line 72
    const/16 v0, 0x64

    iput v0, p0, Lcom/google/research/reflection/predictor/a;->Mu:I

    .line 76
    return-void
.end method

.method public constructor <init>(Lcom/google/research/reflection/predictor/b;)V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/research/reflection/predictor/a;->Mw:Ljava/util/HashMap;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/research/reflection/predictor/a;->Ms:Ljava/util/HashMap;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/research/reflection/predictor/a;->Mq:Ljava/util/HashMap;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/research/reflection/predictor/a;->Mz:Ljava/util/HashMap;

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/research/reflection/predictor/a;->Mt:[F

    .line 72
    const/16 v0, 0x64

    iput v0, p0, Lcom/google/research/reflection/predictor/a;->Mu:I

    .line 79
    iput-object p1, p0, Lcom/google/research/reflection/predictor/a;->Mr:Lcom/google/research/reflection/predictor/b;

    .line 80
    invoke-virtual {p1, p0}, Lcom/google/research/reflection/predictor/b;->Sr(Lcom/google/research/reflection/predictor/a;)V

    .line 81
    return-void
.end method

.method private Se()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 134
    const-wide v0, 0x7fffffffffffffffL

    .line 136
    iget-object v2, p0, Lcom/google/research/reflection/predictor/a;->Mz:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v2, v3

    move-wide v4, v0

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/google/research/reflection/predictor/a;->Ms:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 147
    return-object v3

    .line 136
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 137
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v1, v8, v4

    if-ltz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_3

    .line 138
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 139
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object v0, v1

    :goto_2
    move-object v2, v0

    .line 141
    goto :goto_0

    :cond_2
    move v1, v6

    .line 137
    goto :goto_1

    :cond_3
    move-object v0, v2

    goto :goto_2

    .line 142
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 143
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private Sg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/research/reflection/predictor/a;->Ms:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/google/research/reflection/predictor/a;->Ms:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 191
    if-nez v0, :cond_1

    .line 194
    :goto_0
    iget-object v0, p0, Lcom/google/research/reflection/predictor/a;->Mr:Lcom/google/research/reflection/predictor/b;

    invoke-virtual {v0, p1, p2}, Lcom/google/research/reflection/predictor/b;->So(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    return-void

    .line 188
    :cond_0
    return-void

    .line 192
    :cond_1
    iget-object v1, p0, Lcom/google/research/reflection/predictor/a;->Ms:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private Sm(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 217
    iget-object v0, p0, Lcom/google/research/reflection/predictor/a;->Ms:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/google/research/reflection/predictor/a;->Ms:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    .line 221
    iget-object v0, p0, Lcom/google/research/reflection/predictor/a;->Ms:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 224
    iget-object v1, p0, Lcom/google/research/reflection/predictor/a;->Ms:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 227
    if-nez v0, :cond_3

    .line 253
    iget-object v1, p0, Lcom/google/research/reflection/predictor/a;->Mr:Lcom/google/research/reflection/predictor/b;

    invoke-virtual {v1, v2, v2, p1}, Lcom/google/research/reflection/predictor/b;->Ss(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 254
    iget-object v1, p0, Lcom/google/research/reflection/predictor/a;->Mx:Lcom/google/research/reflection/predictor/c;

    if-nez v1, :cond_7

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    return-void

    .line 225
    :cond_2
    new-instance v0, Lcom/google/research/reflection/predictor/PredictorWrapper$PredictorInvalidException;

    const-string/jumbo v1, "Predictor becomes invalid"

    invoke-direct {v0, v1}, Lcom/google/research/reflection/predictor/PredictorWrapper$PredictorInvalidException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_3
    iget-object v1, p0, Lcom/google/research/reflection/predictor/a;->Mw:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 229
    iget v2, p0, Lcom/google/research/reflection/predictor/a;->Mv:I

    sub-int v1, v2, v1

    iput v1, p0, Lcom/google/research/reflection/predictor/a;->Mv:I

    .line 230
    iget-object v1, p0, Lcom/google/research/reflection/predictor/a;->Mq:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget-object v1, p0, Lcom/google/research/reflection/predictor/a;->Mz:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v3, v1, :cond_4

    .line 247
    :goto_1
    iget-object v1, p0, Lcom/google/research/reflection/predictor/a;->Mr:Lcom/google/research/reflection/predictor/b;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2, p1}, Lcom/google/research/reflection/predictor/b;->Ss(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 248
    iget-object v1, p0, Lcom/google/research/reflection/predictor/a;->Mx:Lcom/google/research/reflection/predictor/c;

    if-eqz v1, :cond_0

    .line 249
    iget-object v1, p0, Lcom/google/research/reflection/predictor/a;->Mx:Lcom/google/research/reflection/predictor/c;

    invoke-interface {v1, v0, v3, p1}, Lcom/google/research/reflection/predictor/c;->Sy(Ljava/lang/Integer;ILjava/lang/String;)V

    goto :goto_0

    .line 234
    :cond_4
    iget-object v1, p0, Lcom/google/research/reflection/predictor/a;->Ms:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_6

    .line 240
    :goto_2
    iget-object v1, p0, Lcom/google/research/reflection/predictor/a;->Mw:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 241
    iget-object v2, p0, Lcom/google/research/reflection/predictor/a;->Mw:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    iget-object v1, p0, Lcom/google/research/reflection/predictor/a;->Mq:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 243
    iget-object v1, p0, Lcom/google/research/reflection/predictor/a;->Mq:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    iget-object v1, p0, Lcom/google/research/reflection/predictor/a;->Mz:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 245
    iget-object v1, p0, Lcom/google/research/reflection/predictor/a;->Mz:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 234
    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 235
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_5

    .line 236
    invoke-interface {v1, v0}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 255
    :cond_7
    iget-object v1, p0, Lcom/google/research/reflection/predictor/a;->Mx:Lcom/google/research/reflection/predictor/c;

    invoke-interface {v1, v0, v3, p1}, Lcom/google/research/reflection/predictor/c;->Sy(Ljava/lang/Integer;ILjava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public Sd()Lcom/google/research/reflection/predictor/d;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/google/research/reflection/predictor/a;->My:Lcom/google/research/reflection/predictor/d;

    return-object v0
.end method

.method public Sf(Lcom/google/research/reflection/a/b;)Lcom/google/research/reflection/predictor/e;
    .locals 7

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/research/reflection/predictor/a;->Mt:[F

    if-nez v0, :cond_1

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/google/research/reflection/predictor/a;->Ms:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/research/reflection/predictor/a;->Mt:[F

    .line 158
    :goto_0
    iget-object v0, p0, Lcom/google/research/reflection/predictor/a;->Mt:[F

    array-length v0, v0

    if-gtz v0, :cond_2

    .line 161
    :goto_1
    iget-object v0, p0, Lcom/google/research/reflection/predictor/a;->Mr:Lcom/google/research/reflection/predictor/b;

    iget-object v1, p0, Lcom/google/research/reflection/predictor/a;->Mt:[F

    invoke-virtual {v0, v1, p1}, Lcom/google/research/reflection/predictor/b;->Sv([FLcom/google/research/reflection/a/b;)Lcom/google/research/reflection/predictor/e;

    move-result-object v2

    .line 162
    new-instance v3, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/research/reflection/predictor/a;->Ms:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 163
    invoke-virtual {v2}, Lcom/google/research/reflection/predictor/e;->SI()[F

    move-result-object v4

    .line 165
    iget-object v0, p0, Lcom/google/research/reflection/predictor/a;->Ms:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 169
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 170
    invoke-virtual {v2, v3}, Lcom/google/research/reflection/predictor/e;->SK(Ljava/util/ArrayList;)V

    .line 171
    return-object v2

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/google/research/reflection/predictor/a;->Ms:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/research/reflection/predictor/a;->Mt:[F

    array-length v1, v1

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 159
    :cond_2
    iget-object v0, p0, Lcom/google/research/reflection/predictor/a;->Mt:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    goto :goto_1

    .line 165
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 166
    new-instance v6, Lcom/google/research/reflection/predictor/f;

    .line 167
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget v0, v4, v0

    invoke-direct {v6, v1, v0}, Lcom/google/research/reflection/predictor/f;-><init>(Ljava/lang/String;F)V

    .line 166
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public Sh(Lcom/google/research/reflection/a/b;)Lcom/google/research/reflection/predictor/e;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 108
    iget-object v0, p0, Lcom/google/research/reflection/predictor/a;->Ms:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/google/research/reflection/a/b;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/research/reflection/predictor/a;->Mr:Lcom/google/research/reflection/predictor/b;

    invoke-virtual {v0, p1}, Lcom/google/research/reflection/predictor/b;->Sq(Lcom/google/research/reflection/a/b;)Lcom/google/research/reflection/predictor/e;

    move-result-object v1

    .line 121
    invoke-virtual {p0, p1}, Lcom/google/research/reflection/predictor/a;->Si(Lcom/google/research/reflection/a/b;)I

    move-result v2

    .line 122
    iget-object v0, p0, Lcom/google/research/reflection/predictor/a;->Mw:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 123
    if-eqz v0, :cond_2

    .line 126
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 127
    iget-object v3, p0, Lcom/google/research/reflection/predictor/a;->Mw:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget v0, p0, Lcom/google/research/reflection/predictor/a;->Mv:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/research/reflection/predictor/a;->Mv:I

    .line 129
    iget-object v0, p0, Lcom/google/research/reflection/predictor/a;->Mz:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/research/reflection/a/b;->F()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    return-object v1

    .line 109
    :cond_1
    invoke-virtual {p0}, Lcom/google/research/reflection/predictor/a;->Sn()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/research/reflection/predictor/a;->Sk()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 110
    invoke-direct {p0}, Lcom/google/research/reflection/predictor/a;->Se()Ljava/lang/String;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_0

    .line 113
    :try_start_0
    invoke-direct {p0, v0}, Lcom/google/research/reflection/predictor/a;->Sm(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/research/reflection/predictor/PredictorWrapper$PredictorInvalidException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    goto :goto_0

    .line 124
    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1
.end method

.method public Si(Lcom/google/research/reflection/a/b;)I
    .locals 5

    .prologue
    .line 84
    invoke-interface {p1}, Lcom/google/research/reflection/a/b;->getId()Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-interface {p1}, Lcom/google/research/reflection/a/b;->F()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 86
    iget-object v0, p0, Lcom/google/research/reflection/predictor/a;->Ms:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 87
    if-eqz v0, :cond_0

    .line 92
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/google/research/reflection/predictor/a;->Ms:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 89
    iget-object v4, p0, Lcom/google/research/reflection/predictor/a;->Ms:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v1, p0, Lcom/google/research/reflection/predictor/a;->Mq:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public Sj(Lcom/google/research/reflection/predictor/d;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/google/research/reflection/predictor/a;->My:Lcom/google/research/reflection/predictor/d;

    .line 274
    return-void
.end method

.method public Sk()I
    .locals 1

    .prologue
    .line 291
    iget v0, p0, Lcom/google/research/reflection/predictor/a;->Mu:I

    return v0
.end method

.method public Sl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 198
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 199
    iget-object v0, p0, Lcom/google/research/reflection/predictor/a;->Ms:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 205
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 214
    return-void

    .line 199
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 200
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 201
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 205
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 207
    :goto_2
    iget-object v3, p0, Lcom/google/research/reflection/predictor/a;->Ms:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0xb

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 210
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xb

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 211
    invoke-interface {p3, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    invoke-direct {p0, v0, v3}, Lcom/google/research/reflection/predictor/a;->Sg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 208
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public Sn()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/research/reflection/predictor/a;->Ms:Ljava/util/HashMap;

    return-object v0
.end method
