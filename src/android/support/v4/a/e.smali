.class final Landroid/support/v4/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/util/Map$Entry;


# instance fields
.field WV:I

.field WW:Z

.field WX:I

.field final synthetic WY:Landroid/support/v4/a/l;


# direct methods
.method constructor <init>(Landroid/support/v4/a/l;)V
    .locals 1

    .prologue
    .line 77
    iput-object p1, p0, Landroid/support/v4/a/e;->WY:Landroid/support/v4/a/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/a/e;->WW:Z

    .line 78
    invoke-virtual {p1}, Landroid/support/v4/a/l;->aiL()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v4/a/e;->WV:I

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/a/e;->WX:I

    .line 80
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 135
    iget-boolean v2, p0, Landroid/support/v4/a/e;->WW:Z

    if-eqz v2, :cond_1

    .line 139
    instance-of v2, p1, Ljava/util/Map$Entry;

    if-eqz v2, :cond_2

    .line 142
    check-cast p1, Ljava/util/Map$Entry;

    .line 143
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v4/a/e;->WY:Landroid/support/v4/a/l;

    iget v4, p0, Landroid/support/v4/a/e;->WX:I

    invoke-virtual {v3, v4, v1}, Landroid/support/v4/a/l;->aiA(II)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/support/v4/a/s;->ajb(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :goto_0
    move v0, v1

    .line 144
    :cond_0
    return v0

    .line 136
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "This container does not support retaining Map.Entry objects"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_2
    return v1

    .line 144
    :cond_3
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v4/a/e;->WY:Landroid/support/v4/a/l;

    iget v4, p0, Landroid/support/v4/a/e;->WX:I

    invoke-virtual {v3, v4, v0}, Landroid/support/v4/a/l;->aiA(II)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/support/v4/a/s;->ajb(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 108
    iget-boolean v0, p0, Landroid/support/v4/a/e;->WW:Z

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Landroid/support/v4/a/e;->WY:Landroid/support/v4/a/l;

    iget v1, p0, Landroid/support/v4/a/e;->WX:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/l;->aiA(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 109
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "This container does not support retaining Map.Entry objects"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 117
    iget-boolean v0, p0, Landroid/support/v4/a/e;->WW:Z

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Landroid/support/v4/a/e;->WY:Landroid/support/v4/a/l;

    iget v1, p0, Landroid/support/v4/a/e;->WX:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/l;->aiA(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 118
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "This container does not support retaining Map.Entry objects"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 84
    iget v0, p0, Landroid/support/v4/a/e;->WX:I

    iget v1, p0, Landroid/support/v4/a/e;->WV:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 149
    iget-boolean v1, p0, Landroid/support/v4/a/e;->WW:Z

    if-eqz v1, :cond_1

    .line 153
    iget-object v1, p0, Landroid/support/v4/a/e;->WY:Landroid/support/v4/a/l;

    iget v2, p0, Landroid/support/v4/a/e;->WX:I

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/a/l;->aiA(II)Ljava/lang/Object;

    move-result-object v1

    .line 154
    iget-object v2, p0, Landroid/support/v4/a/e;->WY:Landroid/support/v4/a/l;

    iget v3, p0, Landroid/support/v4/a/e;->WX:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/a/l;->aiA(II)Ljava/lang/Object;

    move-result-object v2

    .line 155
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    if-eqz v2, :cond_0

    .line 156
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :cond_0
    xor-int/2addr v0, v1

    return v0

    .line 150
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "This container does not support retaining Map.Entry objects"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v1, v0

    .line 155
    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Landroid/support/v4/a/e;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Landroid/support/v4/a/e;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget v0, p0, Landroid/support/v4/a/e;->WX:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/a/e;->WX:I

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/a/e;->WW:Z

    .line 92
    return-object p0

    .line 89
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 97
    iget-boolean v0, p0, Landroid/support/v4/a/e;->WW:Z

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Landroid/support/v4/a/e;->WY:Landroid/support/v4/a/l;

    iget v1, p0, Landroid/support/v4/a/e;->WX:I

    invoke-virtual {v0, v1}, Landroid/support/v4/a/l;->aiM(I)V

    .line 101
    iget v0, p0, Landroid/support/v4/a/e;->WX:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v4/a/e;->WX:I

    .line 102
    iget v0, p0, Landroid/support/v4/a/e;->WV:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v4/a/e;->WV:I

    .line 103
    iput-boolean v2, p0, Landroid/support/v4/a/e;->WW:Z

    .line 104
    return-void

    .line 98
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 126
    iget-boolean v0, p0, Landroid/support/v4/a/e;->WW:Z

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Landroid/support/v4/a/e;->WY:Landroid/support/v4/a/l;

    iget v1, p0, Landroid/support/v4/a/e;->WX:I

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/a/l;->aiH(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 127
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "This container does not support retaining Map.Entry objects"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/support/v4/a/e;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/a/e;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
