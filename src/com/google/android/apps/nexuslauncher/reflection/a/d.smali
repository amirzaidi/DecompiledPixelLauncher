.class public Lcom/google/android/apps/nexuslauncher/reflection/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/apps/nexuslauncher/reflection/a/c;


# instance fields
.field private final l:Landroid/app/usage/UsageStatsManager;


# direct methods
.method public constructor <init>(Landroid/app/usage/UsageStatsManager;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/d;->l:Landroid/app/usage/UsageStatsManager;

    .line 34
    return-void
.end method


# virtual methods
.method public l(Lcom/google/android/apps/nexuslauncher/reflection/b/b;)V
    .locals 4

    .prologue
    .line 38
    const-wide/32 v0, 0x927c0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/nexuslauncher/reflection/a/d;->m(J)Ljava/util/List;

    move-result-object v0

    .line 39
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 40
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/reflection/d/i;

    .line 41
    new-instance v3, Lcom/google/android/apps/nexuslauncher/reflection/b/a;

    invoke-direct {v3, v0}, Lcom/google/android/apps/nexuslauncher/reflection/b/a;-><init>(Lcom/google/android/apps/nexuslauncher/reflection/d/i;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 44
    :cond_0
    const-string/jumbo v0, "app_usage"

    invoke-static {p1, v0, v1}, Lcom/google/research/reflection/common/b;->Tb(Lcom/google/research/reflection/a/b;Ljava/lang/String;Ljava/util/List;)V

    .line 53
    return-void
.end method

.method public m(J)Ljava/util/List;
    .locals 7

    .prologue
    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 71
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/d;->l:Landroid/app/usage/UsageStatsManager;

    sub-long v4, v2, p1

    invoke-virtual {v1, v4, v5, v2, v3}, Landroid/app/usage/UsageStatsManager;->queryEvents(JJ)Landroid/app/usage/UsageEvents;

    move-result-object v1

    .line 72
    new-instance v2, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v2}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .line 73
    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroid/app/usage/UsageEvents;->hasNextEvent()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 74
    invoke-virtual {v1, v2}, Landroid/app/usage/UsageEvents;->getNextEvent(Landroid/app/usage/UsageEvents$Event;)Z

    .line 76
    invoke-virtual {v2}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 77
    new-instance v3, Lcom/google/android/apps/nexuslauncher/reflection/d/i;

    invoke-direct {v3}, Lcom/google/android/apps/nexuslauncher/reflection/d/i;-><init>()V

    .line 78
    const-string/jumbo v4, "app_usage"

    iput-object v4, v3, Lcom/google/android/apps/nexuslauncher/reflection/d/i;->aC:Ljava/lang/String;

    .line 79
    invoke-virtual {v2}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/google/android/apps/nexuslauncher/reflection/d/i;->aD:J

    .line 82
    new-instance v4, Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 83
    invoke-virtual {v2}, Landroid/app/usage/UsageEvents$Event;->getClassName()Ljava/lang/String;

    move-result-object v6

    .line 82
    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-static {v4}, Lcom/google/android/apps/nexuslauncher/reflection/g;->aU(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v4

    .line 80
    iput-object v4, v3, Lcom/google/android/apps/nexuslauncher/reflection/d/i;->aE:Ljava/lang/String;

    .line 88
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 91
    :cond_1
    return-object v0
.end method
