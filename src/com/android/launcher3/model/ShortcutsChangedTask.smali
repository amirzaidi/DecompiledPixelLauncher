.class public Lcom/android/launcher3/model/ShortcutsChangedTask;
.super Lcom/android/launcher3/model/ExtendedModelTask;
.source "SourceFile"


# instance fields
.field private final mPackageName:Ljava/lang/String;

.field private final mShortcuts:Ljava/util/List;

.field private final mUpdateIdMap:Z

.field private final mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;Z)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/launcher3/model/ExtendedModelTask;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/launcher3/model/ShortcutsChangedTask;->mPackageName:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/android/launcher3/model/ShortcutsChangedTask;->mShortcuts:Ljava/util/List;

    .line 49
    iput-object p3, p0, Lcom/android/launcher3/model/ShortcutsChangedTask;->mUser:Landroid/os/UserHandle;

    .line 50
    iput-boolean p4, p0, Lcom/android/launcher3/model/ShortcutsChangedTask;->mUpdateIdMap:Z

    .line 51
    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/AllAppsList;)V
    .locals 9

    .prologue
    .line 55
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 56
    invoke-static {v2}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/shortcuts/DeepShortcutManager;

    move-result-object v1

    .line 57
    iget-object v0, p0, Lcom/android/launcher3/model/ShortcutsChangedTask;->mShortcuts:Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->onShortcutsChanged(Ljava/util/List;)V

    .line 60
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 61
    new-instance v4, Lcom/android/launcher3/util/MultiHashMap;

    invoke-direct {v4}, Lcom/android/launcher3/util/MultiHashMap;-><init>()V

    .line 62
    iget-object v0, p2, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 63
    iget v6, v0, Lcom/android/launcher3/ItemInfo;->itemType:I

    const/4 v7, 0x6

    if-ne v6, v7, :cond_0

    .line 64
    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    .line 65
    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutInfo;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher3/model/ShortcutsChangedTask;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 66
    iget-object v6, v0, Lcom/android/launcher3/ShortcutInfo;->user:Landroid/os/UserHandle;

    iget-object v7, p0, Lcom/android/launcher3/model/ShortcutsChangedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v6, v7}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 65
    if-eqz v6, :cond_0

    .line 67
    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutInfo;->getDeepShortcutId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v0}, Lcom/android/launcher3/util/MultiHashMap;->addToList(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 72
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 73
    invoke-virtual {v4}, Lcom/android/launcher3/util/MultiHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 76
    iget-object v0, p0, Lcom/android/launcher3/model/ShortcutsChangedTask;->mPackageName:Ljava/lang/String;

    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {v4}, Lcom/android/launcher3/util/MultiHashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v7, p0, Lcom/android/launcher3/model/ShortcutsChangedTask;->mUser:Landroid/os/UserHandle;

    .line 75
    invoke-virtual {v1, v0, v6, v7}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->queryForFullDetails(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    .line 77
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    .line 79
    invoke-virtual {v0}, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->getId()Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-virtual {v4, v1}, Lcom/android/launcher3/util/MultiHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 80
    invoke-virtual {v0}, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->isPinned()Z

    move-result v7

    if-nez v7, :cond_3

    .line 86
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 89
    :cond_3
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/ShortcutInfo;

    .line 90
    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/ShortcutInfo;->updateFromDeepShortcutInfo(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;Landroid/content/Context;)V

    .line 92
    invoke-static {v0, v2}, Lcom/android/launcher3/graphics/LauncherIcons;->createShortcutIcon(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 91
    iput-object v8, v1, Lcom/android/launcher3/ShortcutInfo;->iconBitmap:Landroid/graphics/Bitmap;

    .line 93
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 101
    :cond_4
    invoke-virtual {v4}, Lcom/android/launcher3/util/MultiHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 102
    invoke-virtual {v4, v0}, Lcom/android/launcher3/util/MultiHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 105
    :cond_5
    iget-object v0, p0, Lcom/android/launcher3/model/ShortcutsChangedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {p0, v5, v3, v0}, Lcom/android/launcher3/model/ShortcutsChangedTask;->bindUpdatedShortcuts(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/UserHandle;)V

    .line 106
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 107
    invoke-virtual {p0}, Lcom/android/launcher3/model/ShortcutsChangedTask;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/launcher3/model/ModelWriter;->deleteItemsFromDatabase(Ljava/lang/Iterable;)V

    .line 110
    :cond_6
    iget-boolean v0, p0, Lcom/android/launcher3/model/ShortcutsChangedTask;->mUpdateIdMap:Z

    if-eqz v0, :cond_7

    .line 112
    iget-object v0, p0, Lcom/android/launcher3/model/ShortcutsChangedTask;->mPackageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/launcher3/model/ShortcutsChangedTask;->mUser:Landroid/os/UserHandle;

    iget-object v2, p0, Lcom/android/launcher3/model/ShortcutsChangedTask;->mShortcuts:Ljava/util/List;

    invoke-virtual {p2, v0, v1, v2}, Lcom/android/launcher3/model/BgDataModel;->updateDeepShortcutMap(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/List;)V

    .line 113
    invoke-virtual {p0, p2}, Lcom/android/launcher3/model/ShortcutsChangedTask;->bindDeepShortcuts(Lcom/android/launcher3/model/BgDataModel;)V

    .line 115
    :cond_7
    return-void
.end method
