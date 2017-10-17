.class final Landroid/support/v4/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;


# instance fields
.field final synthetic Vm:Landroid/support/v4/a/l;


# direct methods
.method constructor <init>(Landroid/support/v4/a/l;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Landroid/support/v4/a/f;->Vm:Landroid/support/v4/a/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 165
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Landroid/support/v4/a/f;->agW(Ljava/util/Map$Entry;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 173
    iget-object v0, p0, Landroid/support/v4/a/f;->Vm:Landroid/support/v4/a/l;

    invoke-virtual {v0}, Landroid/support/v4/a/l;->ahB()I

    move-result v2

    .line 174
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Landroid/support/v4/a/f;->Vm:Landroid/support/v4/a/l;

    invoke-virtual {v0}, Landroid/support/v4/a/l;->ahB()I

    move-result v0

    if-ne v2, v0, :cond_1

    move v0, v1

    :goto_1
    return v0

    .line 174
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 175
    iget-object v4, p0, Landroid/support/v4/a/f;->Vm:Landroid/support/v4/a/l;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/support/v4/a/l;->ahD(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 177
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public agW(Ljava/util/Map$Entry;)Z
    .locals 1

    .prologue
    .line 168
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Landroid/support/v4/a/f;->Vm:Landroid/support/v4/a/l;

    invoke-virtual {v0}, Landroid/support/v4/a/l;->ahy()V

    .line 183
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 187
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 189
    check-cast p1, Ljava/util/Map$Entry;

    .line 190
    iget-object v0, p0, Landroid/support/v4/a/f;->Vm:Landroid/support/v4/a/l;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/a/l;->ahr(Ljava/lang/Object;)I

    move-result v0

    .line 191
    if-ltz v0, :cond_1

    .line 194
    iget-object v1, p0, Landroid/support/v4/a/f;->Vm:Landroid/support/v4/a/l;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/a/l;->ahq(II)Ljava/lang/Object;

    move-result-object v0

    .line 195
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/a/s;->ahR(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 188
    :cond_0
    return v2

    .line 192
    :cond_1
    return v2
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 200
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 201
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 206
    const/4 v0, 0x1

    return v0

    .line 202
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v4/a/f;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 203
    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 251
    invoke-static {p0, p1}, Landroid/support/v4/a/l;->ahF(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 257
    iget-object v0, p0, Landroid/support/v4/a/f;->Vm:Landroid/support/v4/a/l;

    invoke-virtual {v0}, Landroid/support/v4/a/l;->ahB()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    move v4, v1

    :goto_0
    if-gez v3, :cond_0

    .line 263
    return v4

    .line 258
    :cond_0
    iget-object v0, p0, Landroid/support/v4/a/f;->Vm:Landroid/support/v4/a/l;

    invoke-virtual {v0, v3, v1}, Landroid/support/v4/a/l;->ahq(II)Ljava/lang/Object;

    move-result-object v0

    .line 259
    iget-object v2, p0, Landroid/support/v4/a/f;->Vm:Landroid/support/v4/a/l;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5}, Landroid/support/v4/a/l;->ahq(II)Ljava/lang/Object;

    move-result-object v5

    .line 260
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    move v2, v0

    :goto_1
    if-eqz v5, :cond_2

    .line 261
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_2
    xor-int/2addr v0, v2

    add-int v2, v4, v0

    .line 257
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    move v4, v2

    goto :goto_0

    :cond_1
    move v2, v1

    .line 260
    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 211
    iget-object v1, p0, Landroid/support/v4/a/f;->Vm:Landroid/support/v4/a/l;

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
    .locals 2

    .prologue
    .line 216
    new-instance v0, Landroid/support/v4/a/e;

    iget-object v1, p0, Landroid/support/v4/a/f;->Vm:Landroid/support/v4/a/l;

    invoke-direct {v0, v1}, Landroid/support/v4/a/e;-><init>(Landroid/support/v4/a/l;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 221
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 226
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 231
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Landroid/support/v4/a/f;->Vm:Landroid/support/v4/a/l;

    invoke-virtual {v0}, Landroid/support/v4/a/l;->ahB()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 241
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 246
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
