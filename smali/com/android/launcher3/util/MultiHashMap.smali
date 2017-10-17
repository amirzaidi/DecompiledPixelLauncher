.class public Lcom/android/launcher3/util/MultiHashMap;
.super Ljava/util/HashMap;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Ljava/util/HashMap;-><init>(I)V

    .line 31
    return-void
.end method


# virtual methods
.method public addToList(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/MultiHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 35
    if-nez v0, :cond_0

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/util/MultiHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    :goto_0
    return-void

    .line 40
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public clone()Lcom/android/launcher3/util/MultiHashMap;
    .locals 5

    .prologue
    .line 46
    new-instance v1, Lcom/android/launcher3/util/MultiHashMap;

    invoke-virtual {p0}, Lcom/android/launcher3/util/MultiHashMap;->size()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/android/launcher3/util/MultiHashMap;-><init>(I)V

    .line 47
    invoke-virtual {p0}, Lcom/android/launcher3/util/MultiHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 48
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v3, v4}, Lcom/android/launcher3/util/MultiHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 50
    :cond_0
    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/android/launcher3/util/MultiHashMap;->clone()Lcom/android/launcher3/util/MultiHashMap;

    move-result-object v0

    return-object v0
.end method
