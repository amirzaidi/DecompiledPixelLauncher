.class public Lcom/google/android/apps/nexuslauncher/reflection/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/research/reflection/a/a;


# instance fields
.field private H:Lcom/google/android/apps/nexuslauncher/reflection/d/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/google/android/apps/nexuslauncher/reflection/d/i;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/reflection/d/i;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b/a;->H:Lcom/google/android/apps/nexuslauncher/reflection/d/i;

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/reflection/d/i;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/b/a;->H:Lcom/google/android/apps/nexuslauncher/reflection/d/i;

    .line 14
    return-void
.end method


# virtual methods
.method public B()Ljava/util/List;
    .locals 6

    .prologue
    .line 68
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 69
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b/a;->H:Lcom/google/android/apps/nexuslauncher/reflection/d/i;

    iget-object v2, v0, Lcom/google/android/apps/nexuslauncher/reflection/d/i;->aG:[D

    const/4 v0, 0x0

    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_0

    aget-wide v4, v2, v0

    .line 70
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    :cond_0
    return-object v1
.end method

.method public C()Ljava/util/List;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b/a;->H:Lcom/google/android/apps/nexuslauncher/reflection/d/i;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/reflection/d/i;->aF:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public D()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b/a;->H:Lcom/google/android/apps/nexuslauncher/reflection/d/i;

    iget-wide v0, v0, Lcom/google/android/apps/nexuslauncher/reflection/d/i;->aD:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public E()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b/a;->H:Lcom/google/android/apps/nexuslauncher/reflection/d/i;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/reflection/d/i;->aC:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b/a;->H:Lcom/google/android/apps/nexuslauncher/reflection/d/i;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/reflection/d/i;->aE:Ljava/lang/String;

    return-object v0
.end method

.method public getInstance()Lcom/google/android/apps/nexuslauncher/reflection/d/i;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b/a;->H:Lcom/google/android/apps/nexuslauncher/reflection/d/i;

    return-object v0
.end method
