.class public Lcom/android/launcher3/AllAppsList;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public added:Ljava/util/ArrayList;

.field public data:Ljava/util/ArrayList;

.field private mAppFilter:Lcom/android/launcher3/AppFilter;

.field private mIconCache:Lcom/android/launcher3/IconCache;

.field public modified:Ljava/util/ArrayList;

.field public removed:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/IconCache;Lcom/android/launcher3/AppFilter;)V
    .locals 2

    .prologue
    const/16 v1, 0x2a

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 40
    iput-object v0, p0, Lcom/android/launcher3/AllAppsList;->data:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 43
    iput-object v0, p0, Lcom/android/launcher3/AllAppsList;->added:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/AllAppsList;->removed:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/AllAppsList;->modified:Ljava/util/ArrayList;

    .line 58
    iput-object p1, p0, Lcom/android/launcher3/AllAppsList;->mIconCache:Lcom/android/launcher3/IconCache;

    .line 59
    iput-object p2, p0, Lcom/android/launcher3/AllAppsList;->mAppFilter:Lcom/android/launcher3/AppFilter;

    .line 60
    return-void
.end method

.method private static findActivity(Ljava/util/ArrayList;Landroid/content/ComponentName;Landroid/os/UserHandle;)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 215
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    .line 216
    :goto_0
    if-ge v1, v3, :cond_1

    .line 217
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/AppInfo;

    .line 218
    iget-object v4, v0, Lcom/android/launcher3/AppInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v4, p2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v0, v0, Lcom/android/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    const/4 v0, 0x1

    return v0

    .line 216
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 222
    :cond_1
    return v2
.end method

.method private static findActivity(Ljava/util/List;Landroid/content/ComponentName;)Z
    .locals 2

    .prologue
    .line 202
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherActivityInfo;

    .line 203
    invoke-virtual {v0}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    const/4 v0, 0x1

    return v0

    .line 207
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private findApplicationInfoLocked(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)Lcom/android/launcher3/AppInfo;
    .locals 3

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/launcher3/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/AppInfo;

    .line 231
    iget-object v2, v0, Lcom/android/launcher3/AppInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p2, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 232
    iget-object v2, v0, Lcom/android/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 231
    if-eqz v2, :cond_0

    .line 233
    return-object v0

    .line 236
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public add(Lcom/android/launcher3/AppInfo;Landroid/content/pm/LauncherActivityInfo;)V
    .locals 3

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/launcher3/AllAppsList;->mAppFilter:Lcom/android/launcher3/AppFilter;

    iget-object v1, p1, Lcom/android/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/AppFilter;->shouldShowApp(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/AllAppsList;->data:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    iget-object v2, p1, Lcom/android/launcher3/AppInfo;->user:Landroid/os/UserHandle;

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/AllAppsList;->findActivity(Ljava/util/ArrayList;Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    return-void

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/AllAppsList;->mIconCache:Lcom/android/launcher3/IconCache;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/launcher3/IconCache;->getTitleAndIcon(Lcom/android/launcher3/ItemInfoWithIcon;Landroid/content/pm/LauncherActivityInfo;Z)V

    .line 77
    iget-object v0, p0, Lcom/android/launcher3/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v0, p0, Lcom/android/launcher3/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    return-void
.end method

.method public addPackage(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 3

    .prologue
    .line 101
    invoke-static {p1}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object v0

    .line 102
    invoke-virtual {v0, p2, p3}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    .line 105
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherActivityInfo;

    .line 106
    new-instance v2, Lcom/android/launcher3/AppInfo;

    invoke-direct {v2, p1, v0, p3}, Lcom/android/launcher3/AppInfo;-><init>(Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;)V

    invoke-virtual {p0, v2, v0}, Lcom/android/launcher3/AllAppsList;->add(Lcom/android/launcher3/AppInfo;Landroid/content/pm/LauncherActivityInfo;)V

    goto :goto_0

    .line 108
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/launcher3/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 84
    iget-object v0, p0, Lcom/android/launcher3/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 85
    iget-object v0, p0, Lcom/android/launcher3/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 86
    iget-object v0, p0, Lcom/android/launcher3/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 87
    return-void
.end method

.method public removePackage(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 4

    .prologue
    .line 114
    iget-object v2, p0, Lcom/android/launcher3/AllAppsList;->data:Ljava/util/ArrayList;

    .line 115
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 116
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/AppInfo;

    .line 117
    iget-object v3, v0, Lcom/android/launcher3/AppInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v3, p2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/android/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 118
    iget-object v3, p0, Lcom/android/launcher3/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 115
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 122
    :cond_1
    return-void
.end method

.method public updateDisabledFlags(Lcom/android/launcher3/util/ItemInfoMatcher;Lcom/android/launcher3/util/FlagOp;)V
    .locals 4

    .prologue
    .line 128
    iget-object v2, p0, Lcom/android/launcher3/AllAppsList;->data:Ljava/util/ArrayList;

    .line 129
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 130
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/AppInfo;

    .line 131
    iget-object v3, v0, Lcom/android/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, v3}, Lcom/android/launcher3/util/ItemInfoMatcher;->matches(Lcom/android/launcher3/ItemInfo;Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 132
    iget v3, v0, Lcom/android/launcher3/AppInfo;->isDisabled:I

    invoke-virtual {p2, v3}, Lcom/android/launcher3/util/FlagOp;->apply(I)I

    move-result v3

    iput v3, v0, Lcom/android/launcher3/AppInfo;->isDisabled:I

    .line 133
    iget-object v3, p0, Lcom/android/launcher3/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 136
    :cond_1
    return-void
.end method

.method public updateIconsAndLabels(Ljava/util/HashSet;Landroid/os/UserHandle;Ljava/util/ArrayList;)V
    .locals 3

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/launcher3/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/AppInfo;

    .line 141
    iget-object v2, v0, Lcom/android/launcher3/AppInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v2, p2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 142
    iget-object v2, p0, Lcom/android/launcher3/AllAppsList;->mIconCache:Lcom/android/launcher3/IconCache;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/IconCache;->updateTitleAndIcon(Lcom/android/launcher3/AppInfo;)V

    .line 143
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 146
    :cond_1
    return-void
.end method

.method public updatePackage(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 5

    .prologue
    .line 152
    invoke-static {p1}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object v0

    .line 153
    invoke-virtual {v0, p2, p3}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v2

    .line 155
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 158
    iget-object v0, p0, Lcom/android/launcher3/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 159
    iget-object v0, p0, Lcom/android/launcher3/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/AppInfo;

    .line 160
    iget-object v3, v0, Lcom/android/launcher3/AppInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p3, v3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 161
    iget-object v3, v0, Lcom/android/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 160
    if-eqz v3, :cond_0

    .line 162
    iget-object v3, v0, Lcom/android/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-static {v2, v3}, Lcom/android/launcher3/AllAppsList;->findActivity(Ljava/util/List;Landroid/content/ComponentName;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 163
    iget-object v3, p0, Lcom/android/launcher3/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    iget-object v0, p0, Lcom/android/launcher3/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 158
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 171
    :cond_1
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherActivityInfo;

    .line 173
    invoke-virtual {v0}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 174
    invoke-virtual {v0}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 172
    invoke-direct {p0, v2, p3, v3}, Lcom/android/launcher3/AllAppsList;->findApplicationInfoLocked(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)Lcom/android/launcher3/AppInfo;

    move-result-object v2

    .line 175
    if-nez v2, :cond_2

    .line 176
    new-instance v2, Lcom/android/launcher3/AppInfo;

    invoke-direct {v2, p1, v0, p3}, Lcom/android/launcher3/AppInfo;-><init>(Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;)V

    invoke-virtual {p0, v2, v0}, Lcom/android/launcher3/AllAppsList;->add(Lcom/android/launcher3/AppInfo;Landroid/content/pm/LauncherActivityInfo;)V

    goto :goto_1

    .line 178
    :cond_2
    iget-object v3, p0, Lcom/android/launcher3/AllAppsList;->mIconCache:Lcom/android/launcher3/IconCache;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v0, v4}, Lcom/android/launcher3/IconCache;->getTitleAndIcon(Lcom/android/launcher3/ItemInfoWithIcon;Landroid/content/pm/LauncherActivityInfo;Z)V

    .line 179
    iget-object v0, p0, Lcom/android/launcher3/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 184
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_5

    .line 185
    iget-object v0, p0, Lcom/android/launcher3/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/AppInfo;

    .line 186
    iget-object v2, v0, Lcom/android/launcher3/AppInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p3, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 187
    iget-object v2, v0, Lcom/android/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 186
    if-eqz v2, :cond_4

    .line 188
    iget-object v2, p0, Lcom/android/launcher3/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    iget-object v2, p0, Lcom/android/launcher3/AllAppsList;->mIconCache:Lcom/android/launcher3/IconCache;

    iget-object v0, v0, Lcom/android/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v0, p3}, Lcom/android/launcher3/IconCache;->remove(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 190
    iget-object v0, p0, Lcom/android/launcher3/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 184
    :cond_4
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    .line 194
    :cond_5
    return-void
.end method
