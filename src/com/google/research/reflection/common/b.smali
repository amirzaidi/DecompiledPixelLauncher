.class public Lcom/google/research/reflection/common/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Ta(Lcom/google/research/reflection/a/b;Lcom/google/research/reflection/a/a;)V
    .locals 2

    .prologue
    .line 16
    invoke-interface {p1}, Lcom/google/research/reflection/a/a;->E()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/google/research/reflection/common/b;->Td(Lcom/google/research/reflection/a/b;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    .line 17
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-interface {p0, v0}, Lcom/google/research/reflection/a/b;->S(Ljava/util/List;)Lcom/google/research/reflection/a/b;

    .line 19
    return-void
.end method

.method public static Tb(Lcom/google/research/reflection/a/b;Ljava/lang/String;Ljava/util/List;)V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/research/reflection/common/b;->Td(Lcom/google/research/reflection/a/b;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    .line 24
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 25
    invoke-interface {p0, v0}, Lcom/google/research/reflection/a/b;->S(Ljava/util/List;)Lcom/google/research/reflection/a/b;

    .line 26
    return-void
.end method

.method public static Tc(Lcom/google/research/reflection/a/b;Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/google/research/reflection/common/b;->Td(Lcom/google/research/reflection/a/b;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static Td(Lcom/google/research/reflection/a/b;Ljava/lang/String;Z)Ljava/util/List;
    .locals 4

    .prologue
    .line 45
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 46
    invoke-interface {p0}, Lcom/google/research/reflection/a/b;->N()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 49
    invoke-interface {p0}, Lcom/google/research/reflection/a/b;->N()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 54
    return-object v1

    .line 47
    :cond_1
    return-object v1

    .line 49
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/reflection/a/a;

    .line 50
    invoke-interface {v0}, Lcom/google/research/reflection/a/a;->E()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne p2, v3, :cond_0

    .line 51
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
