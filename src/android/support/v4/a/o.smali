.class final Landroid/support/v4/a/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;


# instance fields
.field final synthetic VL:Landroid/support/v4/a/l;


# direct methods
.method constructor <init>(Landroid/support/v4/a/l;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Landroid/support/v4/a/o;->VL:Landroid/support/v4/a/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 271
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 276
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Landroid/support/v4/a/o;->VL:Landroid/support/v4/a/l;

    invoke-virtual {v0}, Landroid/support/v4/a/l;->ahy()V

    .line 282
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 286
    iget-object v1, p0, Landroid/support/v4/a/o;->VL:Landroid/support/v4/a/l;

    invoke-virtual {v1, p1}, Landroid/support/v4/a/l;->ahr(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Landroid/support/v4/a/o;->VL:Landroid/support/v4/a/l;

    invoke-virtual {v0}, Landroid/support/v4/a/l;->ahw()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/a/l;->ahz(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 341
    invoke-static {p0, p1}, Landroid/support/v4/a/l;->ahF(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 347
    iget-object v0, p0, Landroid/support/v4/a/o;->VL:Landroid/support/v4/a/l;

    invoke-virtual {v0}, Landroid/support/v4/a/l;->ahB()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    move v3, v1

    :goto_0
    if-gez v2, :cond_0

    .line 351
    return v3

    .line 348
    :cond_0
    iget-object v0, p0, Landroid/support/v4/a/o;->VL:Landroid/support/v4/a/l;

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/a/l;->ahq(II)Ljava/lang/Object;

    move-result-object v0

    .line 349
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v3, v0

    .line 347
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 349
    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 296
    iget-object v1, p0, Landroid/support/v4/a/o;->VL:Landroid/support/v4/a/l;

    invoke-virtual {v1}, Landroid/support/v4/a/l;->ahB()I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3

    .prologue
    .line 301
    new-instance v0, Landroid/support/v4/a/g;

    iget-object v1, p0, Landroid/support/v4/a/o;->VL:Landroid/support/v4/a/l;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/support/v4/a/g;-><init>(Landroid/support/v4/a/l;I)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 306
    iget-object v0, p0, Landroid/support/v4/a/o;->VL:Landroid/support/v4/a/l;

    invoke-virtual {v0, p1}, Landroid/support/v4/a/l;->ahr(Ljava/lang/Object;)I

    move-result v0

    .line 307
    if-gez v0, :cond_0

    .line 311
    return v1

    .line 308
    :cond_0
    iget-object v1, p0, Landroid/support/v4/a/o;->VL:Landroid/support/v4/a/l;

    invoke-virtual {v1, v0}, Landroid/support/v4/a/l;->ahC(I)V

    .line 309
    const/4 v0, 0x1

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Landroid/support/v4/a/o;->VL:Landroid/support/v4/a/l;

    invoke-virtual {v0}, Landroid/support/v4/a/l;->ahw()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/a/l;->ahE(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Landroid/support/v4/a/o;->VL:Landroid/support/v4/a/l;

    invoke-virtual {v0}, Landroid/support/v4/a/l;->ahw()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/a/l;->ahA(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Landroid/support/v4/a/o;->VL:Landroid/support/v4/a/l;

    invoke-virtual {v0}, Landroid/support/v4/a/l;->ahB()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 331
    iget-object v0, p0, Landroid/support/v4/a/o;->VL:Landroid/support/v4/a/l;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/a/l;->aho(I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Landroid/support/v4/a/o;->VL:Landroid/support/v4/a/l;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/a/l;->aht([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
