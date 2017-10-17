.class public Landroid/support/v4/a/t;
.super Landroid/support/v4/a/k;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;


# instance fields
.field VT:Landroid/support/v4/a/l;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/support/v4/a/k;-><init>()V

    .line 55
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Landroid/support/v4/a/k;-><init>(I)V

    .line 62
    return-void
.end method

.method private ahU()Landroid/support/v4/a/l;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Landroid/support/v4/a/t;->VT:Landroid/support/v4/a/l;

    if-eqz v0, :cond_0

    .line 120
    :goto_0
    iget-object v0, p0, Landroid/support/v4/a/t;->VT:Landroid/support/v4/a/l;

    return-object v0

    .line 73
    :cond_0
    new-instance v0, Landroid/support/v4/a/n;

    invoke-direct {v0, p0}, Landroid/support/v4/a/n;-><init>(Landroid/support/v4/a/t;)V

    iput-object v0, p0, Landroid/support/v4/a/t;->VT:Landroid/support/v4/a/l;

    goto :goto_0
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 179
    invoke-direct {p0}, Landroid/support/v4/a/t;->ahU()Landroid/support/v4/a/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/l;->ahv()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 191
    invoke-direct {p0}, Landroid/support/v4/a/t;->ahU()Landroid/support/v4/a/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/l;->ahu()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 3

    .prologue
    .line 139
    iget v0, p0, Landroid/support/v4/a/t;->mSize:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/support/v4/a/t;->ahl(I)V

    .line 140
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    return-void

    .line 140
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 141
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Landroid/support/v4/a/t;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 161
    invoke-static {p0, p1}, Landroid/support/v4/a/l;->ahA(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 203
    invoke-direct {p0}, Landroid/support/v4/a/t;->ahU()Landroid/support/v4/a/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/l;->ahp()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
