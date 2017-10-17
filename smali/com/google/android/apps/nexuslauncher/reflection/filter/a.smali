.class public Lcom/google/android/apps/nexuslauncher/reflection/filter/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final bW:Ljava/util/Map;

.field private final bX:Lcom/android/launcher3/compat/LauncherAppsCompat;

.field private final bY:Lcom/android/launcher3/compat/UserManagerCompat;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {p1}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/a;->bY:Lcom/android/launcher3/compat/UserManagerCompat;

    .line 39
    invoke-static {p1}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/a;->bX:Lcom/android/launcher3/compat/LauncherAppsCompat;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/a;->bW:Ljava/util/Map;

    .line 41
    return-void
.end method

.method private bm(Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 67
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/g;->cO:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 69
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 70
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 73
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_0

    .line 76
    :try_start_0
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/a;->bY:Lcom/android/launcher3/compat/UserManagerCompat;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/compat/UserManagerCompat;->getUserForSerialNumber(J)Landroid/os/UserHandle;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 77
    if-nez v0, :cond_1

    .line 78
    return v6

    .line 80
    :catch_0
    move-exception v0

    .line 81
    return v6

    .line 84
    :cond_0
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 86
    :cond_1
    new-instance v3, Lcom/android/launcher3/util/ComponentKey;

    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v4, v0}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 87
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/a;->bW:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 88
    if-nez v0, :cond_2

    .line 89
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/a;->bX:Lcom/android/launcher3/compat/LauncherAppsCompat;

    .line 90
    iget-object v1, v3, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    iget-object v2, v3, Lcom/android/launcher3/util/ComponentKey;->user:Landroid/os/UserHandle;

    .line 89
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/compat/LauncherAppsCompat;->isActivityEnabledForProfile(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 92
    :cond_2
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/a;->bW:Ljava/util/Map;

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 99
    :cond_3
    return v6
.end method


# virtual methods
.method public bi(Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;)V
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/a;->bW:Ljava/util/Map;

    new-instance v1, Lcom/android/launcher3/util/ComponentKey;

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    return-void
.end method

.method public bj(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 3

    .prologue
    .line 111
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertNonUiThread()V

    .line 112
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/a;->bW:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 113
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/ComponentKey;

    .line 115
    iget-object v2, v0, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 116
    iget-object v0, v0, Lcom/android/launcher3/util/ComponentKey;->user:Landroid/os/UserHandle;

    invoke-virtual {p2, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 115
    if-eqz v0, :cond_0

    .line 117
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 120
    :cond_1
    return-void
.end method

.method public bk([Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 3

    .prologue
    .line 123
    const/4 v0, 0x0

    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 124
    invoke-virtual {p0, v2, p2}, Lcom/google/android/apps/nexuslauncher/reflection/filter/a;->bj(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    :cond_0
    return-void
.end method

.method public bl(Ljava/util/List;Ljava/util/List;)V
    .locals 3

    .prologue
    .line 51
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 52
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/reflection/predictor/f;

    .line 54
    iget-object v2, v0, Lcom/google/research/reflection/predictor/f;->LR:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/google/android/apps/nexuslauncher/reflection/filter/a;->bm(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 55
    if-eqz p2, :cond_1

    .line 56
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 61
    :cond_2
    return-void
.end method
