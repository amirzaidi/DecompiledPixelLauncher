.class public Lcom/android/launcher3/model/WidgetsModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mAppFilter:Lcom/android/launcher3/AppFilter;

.field private final mIconCache:Lcom/android/launcher3/IconCache;

.field private final mWidgetsList:Lcom/android/launcher3/util/MultiHashMap;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/IconCache;Lcom/android/launcher3/AppFilter;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/launcher3/model/WidgetsModel;->mIconCache:Lcom/android/launcher3/IconCache;

    .line 48
    iput-object p2, p0, Lcom/android/launcher3/model/WidgetsModel;->mAppFilter:Lcom/android/launcher3/AppFilter;

    .line 49
    new-instance v0, Lcom/android/launcher3/util/MultiHashMap;

    invoke-direct {v0}, Lcom/android/launcher3/util/MultiHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/WidgetsModel;->mWidgetsList:Lcom/android/launcher3/util/MultiHashMap;

    .line 50
    return-void
.end method

.method private setWidgetsAndShortcuts(Ljava/util/ArrayList;Landroid/content/Context;Lcom/android/launcher3/util/PackageUserKey;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 106
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 109
    if-nez p3, :cond_4

    .line 110
    iget-object v0, p0, Lcom/android/launcher3/model/WidgetsModel;->mWidgetsList:Lcom/android/launcher3/util/MultiHashMap;

    invoke-virtual {v0}, Lcom/android/launcher3/util/MultiHashMap;->clear()V

    .line 136
    :cond_0
    invoke-static {p2}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v3

    .line 137
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    .line 140
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/WidgetItem;

    .line 141
    iget-object v1, v0, Lcom/android/launcher3/model/WidgetItem;->widgetInfo:Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    if-eqz v1, :cond_2

    .line 143
    iget-object v1, v0, Lcom/android/launcher3/model/WidgetItem;->widgetInfo:Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    iget v1, v1, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->spanX:I

    iget-object v6, v0, Lcom/android/launcher3/model/WidgetItem;->widgetInfo:Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    iget v6, v6, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->minSpanX:I

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 144
    iget-object v6, v0, Lcom/android/launcher3/model/WidgetItem;->widgetInfo:Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    iget v6, v6, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->spanY:I

    iget-object v7, v0, Lcom/android/launcher3/model/WidgetItem;->widgetInfo:Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    iget v7, v7, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->minSpanY:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 145
    iget v7, v3, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    if-gt v1, v7, :cond_1

    iget v1, v3, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    if-gt v6, v1, :cond_1

    .line 155
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/model/WidgetsModel;->mAppFilter:Lcom/android/launcher3/AppFilter;

    iget-object v6, v0, Lcom/android/launcher3/model/WidgetItem;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v6}, Lcom/android/launcher3/AppFilter;->shouldShowApp(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    iget-object v1, v0, Lcom/android/launcher3/model/WidgetItem;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 164
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/PackageItemInfo;

    .line 165
    if-nez v1, :cond_7

    .line 166
    new-instance v1, Lcom/android/launcher3/model/PackageItemInfo;

    invoke-direct {v1, v6}, Lcom/android/launcher3/model/PackageItemInfo;-><init>(Ljava/lang/String;)V

    .line 167
    iget-object v7, v0, Lcom/android/launcher3/model/WidgetItem;->user:Landroid/os/UserHandle;

    iput-object v7, v1, Lcom/android/launcher3/model/PackageItemInfo;->user:Landroid/os/UserHandle;

    .line 168
    invoke-virtual {v2, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    :cond_3
    :goto_1
    iget-object v6, p0, Lcom/android/launcher3/model/WidgetsModel;->mWidgetsList:Lcom/android/launcher3/util/MultiHashMap;

    invoke-virtual {v6, v1, v0}, Lcom/android/launcher3/util/MultiHashMap;->addToList(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 114
    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/model/WidgetsModel;->mWidgetsList:Lcom/android/launcher3/util/MultiHashMap;

    invoke-virtual {v0}, Lcom/android/launcher3/util/MultiHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/PackageItemInfo;

    .line 115
    iget-object v4, v0, Lcom/android/launcher3/model/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v5, p3, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 120
    :goto_2
    if-eqz v0, :cond_0

    .line 123
    iget-object v1, v0, Lcom/android/launcher3/model/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v1, p0, Lcom/android/launcher3/model/WidgetsModel;->mWidgetsList:Lcom/android/launcher3/util/MultiHashMap;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/MultiHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 126
    :cond_6
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/WidgetItem;

    .line 128
    iget-object v3, v0, Lcom/android/launcher3/model/WidgetItem;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p3, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 129
    iget-object v0, v0, Lcom/android/launcher3/model/WidgetItem;->user:Landroid/os/UserHandle;

    iget-object v3, p3, Lcom/android/launcher3/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 128
    if-eqz v0, :cond_6

    .line 130
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 169
    :cond_7
    iget-object v6, v1, Lcom/android/launcher3/model/PackageItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v4, v6}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 171
    iget-object v6, v0, Lcom/android/launcher3/model/WidgetItem;->user:Landroid/os/UserHandle;

    iput-object v6, v1, Lcom/android/launcher3/model/PackageItemInfo;->user:Landroid/os/UserHandle;

    goto :goto_1

    .line 177
    :cond_8
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/PackageItemInfo;

    .line 178
    iget-object v2, p0, Lcom/android/launcher3/model/WidgetsModel;->mIconCache:Lcom/android/launcher3/IconCache;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/android/launcher3/IconCache;->getTitleAndIconForApp(Lcom/android/launcher3/model/PackageItemInfo;Z)V

    goto :goto_4

    .line 180
    :cond_9
    return-void

    :cond_a
    move-object v0, v1

    goto :goto_2
.end method


# virtual methods
.method public getWidgetsMap()Lcom/android/launcher3/util/MultiHashMap;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/launcher3/model/WidgetsModel;->mWidgetsList:Lcom/android/launcher3/util/MultiHashMap;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/launcher3/model/WidgetsModel;->mWidgetsList:Lcom/android/launcher3/util/MultiHashMap;

    invoke-virtual {v0}, Lcom/android/launcher3/util/MultiHashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public update(Landroid/content/Context;Lcom/android/launcher3/util/PackageUserKey;)Ljava/util/ArrayList;
    .locals 6

    .prologue
    .line 65
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertWorkerThread()V

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 69
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 70
    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v3

    .line 73
    invoke-static {p1}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    move-result-object v0

    .line 74
    invoke-virtual {v0, p2}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->getAllProviders(Lcom/android/launcher3/util/PackageUserKey;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    .line 75
    new-instance v5, Lcom/android/launcher3/model/WidgetItem;

    invoke-static {p1, v0}, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    move-result-object v0

    invoke-direct {v5, v0, v2, v3}, Lcom/android/launcher3/model/WidgetItem;-><init>(Lcom/android/launcher3/LauncherAppWidgetProviderInfo;Landroid/content/pm/PackageManager;Lcom/android/launcher3/InvariantDeviceProfile;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isBinderSizeError(Ljava/lang/Exception;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 95
    :goto_1
    return-object v1

    .line 80
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getCustomShortcutActivityList(Lcom/android/launcher3/util/PackageUserKey;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;

    .line 82
    new-instance v3, Lcom/android/launcher3/model/WidgetItem;

    invoke-direct {v3, v0}, Lcom/android/launcher3/model/WidgetItem;-><init>(Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 84
    :cond_1
    invoke-direct {p0, v1, p1, p2}, Lcom/android/launcher3/model/WidgetsModel;->setWidgetsAndShortcuts(Ljava/util/ArrayList;Landroid/content/Context;Lcom/android/launcher3/util/PackageUserKey;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 92
    :cond_2
    throw v0
.end method
