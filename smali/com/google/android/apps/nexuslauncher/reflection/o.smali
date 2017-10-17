.class public Lcom/google/android/apps/nexuslauncher/reflection/o;
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

.method public static cx(Lcom/google/research/reflection/a/b;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 17
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/google/research/reflection/a/b;->aD()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    .line 18
    :cond_0
    return v3

    .line 17
    :cond_1
    invoke-interface {p0}, Lcom/google/research/reflection/a/b;->aD()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    .line 20
    invoke-interface {p0}, Lcom/google/research/reflection/a/b;->aD()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 21
    const-string/jumbo v2, "GEL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 22
    if-nez v0, :cond_2

    .line 23
    return v3

    .line 25
    :cond_2
    invoke-interface {p0}, Lcom/google/research/reflection/a/b;->aD()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 26
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 27
    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 26
    if-nez v2, :cond_3

    .line 28
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 26
    :goto_0
    return v0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
