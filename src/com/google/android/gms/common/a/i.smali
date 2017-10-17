.class public Lcom/google/android/gms/common/a/i;
.super Ljava/util/AbstractSet;


# instance fields
.field private final kr:Landroid/support/v4/a/t;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    new-instance v0, Landroid/support/v4/a/t;

    invoke-direct {v0}, Landroid/support/v4/a/t;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/a/i;->kr:Landroid/support/v4/a/t;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    new-instance v0, Landroid/support/v4/a/t;

    invoke-direct {v0, p1}, Landroid/support/v4/a/t;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/common/a/i;->kr:Landroid/support/v4/a/t;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/common/a/i;->kr:Landroid/support/v4/a/t;

    invoke-virtual {v0, p1}, Landroid/support/v4/a/t;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/a/i;->kr:Landroid/support/v4/a/t;

    invoke-virtual {v0, p1, p1}, Landroid/support/v4/a/t;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1

    instance-of v0, p1, Lcom/google/android/gms/common/a/i;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Ljava/util/AbstractSet;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0

    :cond_0
    check-cast p1, Lcom/google/android/gms/common/a/i;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/a/i;->mu(Lcom/google/android/gms/common/a/i;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/a/i;->kr:Landroid/support/v4/a/t;

    invoke-virtual {v0}, Landroid/support/v4/a/t;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/a/i;->kr:Landroid/support/v4/a/t;

    invoke-virtual {v0, p1}, Landroid/support/v4/a/t;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/a/i;->kr:Landroid/support/v4/a/t;

    invoke-virtual {v0}, Landroid/support/v4/a/t;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public mu(Lcom/google/android/gms/common/a/i;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/common/a/i;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/common/a/i;->kr:Landroid/support/v4/a/t;

    iget-object v2, p1, Lcom/google/android/gms/common/a/i;->kr:Landroid/support/v4/a/t;

    invoke-virtual {v1, v2}, Landroid/support/v4/a/t;->ahW(Landroid/support/v4/a/b;)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/a/i;->size()I

    move-result v1

    if-gt v1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/common/a/i;->kr:Landroid/support/v4/a/t;

    invoke-virtual {v0, p1}, Landroid/support/v4/a/t;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/a/i;->kr:Landroid/support/v4/a/t;

    invoke-virtual {v0, p1}, Landroid/support/v4/a/t;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/a/i;->kr:Landroid/support/v4/a/t;

    invoke-virtual {v0}, Landroid/support/v4/a/t;->size()I

    move-result v0

    return v0
.end method
