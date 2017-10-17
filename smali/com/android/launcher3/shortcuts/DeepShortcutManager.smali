.class public Lcom/android/launcher3/shortcuts/DeepShortcutManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sInstance:Lcom/android/launcher3/shortcuts/DeepShortcutManager;

.field private static final sInstanceLock:Ljava/lang/Object;


# instance fields
.field private final mLauncherApps:Landroid/content/pm/LauncherApps;

.field private mWasLastCallSuccess:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->sInstanceLock:Ljava/lang/Object;

    .line 42
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const-string/jumbo v0, "launcherapps"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iput-object v0, p0, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 65
    return-void
.end method

.method private extractIds(Ljava/util/List;)Ljava/util/List;
    .locals 3

    .prologue
    .line 190
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 191
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    .line 192
    invoke-virtual {v0}, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 194
    :cond_0
    return-object v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/launcher3/shortcuts/DeepShortcutManager;
    .locals 3

    .prologue
    .line 52
    sget-object v1, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 53
    :try_start_0
    sget-object v0, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->sInstance:Lcom/android/launcher3/shortcuts/DeepShortcutManager;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/android/launcher3/shortcuts/DeepShortcutManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->sInstance:Lcom/android/launcher3/shortcuts/DeepShortcutManager;

    .line 56
    :cond_0
    sget-object v0, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->sInstance:Lcom/android/launcher3/shortcuts/DeepShortcutManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private query(ILjava/lang/String;Landroid/content/ComponentName;Ljava/util/List;Landroid/os/UserHandle;)Ljava/util/List;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 206
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_NOUGAT_MR1:Z

    if-eqz v0, :cond_3

    .line 207
    new-instance v0, Landroid/content/pm/LauncherApps$ShortcutQuery;

    invoke-direct {v0}, Landroid/content/pm/LauncherApps$ShortcutQuery;-><init>()V

    .line 208
    invoke-virtual {v0, p1}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setQueryFlags(I)Landroid/content/pm/LauncherApps$ShortcutQuery;

    .line 209
    if-eqz p2, :cond_0

    .line 210
    invoke-virtual {v0, p2}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setPackage(Ljava/lang/String;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    .line 211
    invoke-virtual {v0, p3}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setActivity(Landroid/content/ComponentName;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    .line 212
    invoke-virtual {v0, p4}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setShortcutIds(Ljava/util/List;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    .line 216
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {v2, v0, p5}, Landroid/content/pm/LauncherApps;->getShortcuts(Landroid/content/pm/LauncherApps$ShortcutQuery;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1

    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->mWasLastCallSuccess:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :goto_0
    if-nez v1, :cond_1

    .line 223
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 218
    :catch_0
    move-exception v0

    .line 219
    const-string/jumbo v2, "DeepShortcutManager"

    const-string/jumbo v3, "Failed to query for shortcuts"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 220
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->mWasLastCallSuccess:Z

    goto :goto_0

    .line 225
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 226
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    .line 227
    new-instance v3, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    invoke-direct {v3, v0}, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;-><init>(Landroid/content/pm/ShortcutInfo;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 229
    :cond_2
    return-object v2

    .line 231
    :cond_3
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public static supportsShortcuts(Lcom/android/launcher3/ItemInfo;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 68
    iget v1, p0, Lcom/android/launcher3/ItemInfo;->itemType:I

    if-nez v1, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/android/launcher3/ItemInfo;->isDisabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 68
    :cond_0
    return v0
.end method


# virtual methods
.method public getShortcutIconDrawable(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;I)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 162
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_NOUGAT_MR1:Z

    if-eqz v0, :cond_0

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 165
    invoke-virtual {p1}, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    .line 164
    invoke-virtual {v0, v1, p2}, Landroid/content/pm/LauncherApps;->getShortcutIconDrawable(Landroid/content/pm/ShortcutInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 166
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->mWasLastCallSuccess:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    return-object v0

    .line 168
    :catch_0
    move-exception v0

    .line 169
    const-string/jumbo v1, "DeepShortcutManager"

    const-string/jumbo v2, "Failed to get shortcut icon"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->mWasLastCallSuccess:Z

    .line 173
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasHostPermission()Z
    .locals 3

    .prologue
    .line 237
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_NOUGAT_MR1:Z

    if-eqz v0, :cond_0

    .line 239
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {v0}, Landroid/content/pm/LauncherApps;->hasShortcutHostPermission()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 240
    :catch_0
    move-exception v0

    .line 241
    const-string/jumbo v1, "DeepShortcutManager"

    const-string/jumbo v2, "Failed to make shortcut manager call"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 244
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onShortcutsChanged(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public pinShortcut(Lcom/android/launcher3/shortcuts/ShortcutKey;)V
    .locals 4

    .prologue
    .line 129
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_NOUGAT_MR1:Z

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p1, Lcom/android/launcher3/shortcuts/ShortcutKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-virtual {p1}, Lcom/android/launcher3/shortcuts/ShortcutKey;->getId()Ljava/lang/String;

    move-result-object v1

    .line 132
    iget-object v2, p1, Lcom/android/launcher3/shortcuts/ShortcutKey;->user:Landroid/os/UserHandle;

    .line 133
    invoke-virtual {p0, v0, v2}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->queryForPinnedShortcuts(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->extractIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 134
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/pm/LauncherApps;->pinShortcuts(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->mWasLastCallSuccess:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 139
    const-string/jumbo v1, "DeepShortcutManager"

    const-string/jumbo v2, "Failed to pin shortcut"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->mWasLastCallSuccess:Z

    goto :goto_0
.end method

.method public queryForAllShortcuts(Landroid/os/UserHandle;)Ljava/util/List;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 186
    const/16 v1, 0xb

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->query(ILjava/lang/String;Landroid/content/ComponentName;Ljava/util/List;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryForFullDetails(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)Ljava/util/List;
    .locals 6

    .prologue
    .line 88
    const/16 v1, 0xb

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->query(ILjava/lang/String;Landroid/content/ComponentName;Ljava/util/List;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryForPinnedShortcuts(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 182
    const/4 v1, 0x2

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->query(ILjava/lang/String;Landroid/content/ComponentName;Ljava/util/List;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryForShortcutsContainer(Landroid/content/ComponentName;Ljava/util/List;Landroid/os/UserHandle;)Ljava/util/List;
    .locals 6

    .prologue
    .line 98
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 97
    const/16 v1, 0x9

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->query(ILjava/lang/String;Landroid/content/ComponentName;Ljava/util/List;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public startShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 6

    .prologue
    .line 148
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_NOUGAT_MR1:Z

    if-eqz v0, :cond_0

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/LauncherApps;->startShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->mWasLastCallSuccess:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v0

    .line 154
    const-string/jumbo v1, "DeepShortcutManager"

    const-string/jumbo v2, "Failed to start shortcut"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->mWasLastCallSuccess:Z

    goto :goto_0
.end method

.method public unpinShortcut(Lcom/android/launcher3/shortcuts/ShortcutKey;)V
    .locals 4

    .prologue
    .line 107
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_NOUGAT_MR1:Z

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p1, Lcom/android/launcher3/shortcuts/ShortcutKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-virtual {p1}, Lcom/android/launcher3/shortcuts/ShortcutKey;->getId()Ljava/lang/String;

    move-result-object v1

    .line 110
    iget-object v2, p1, Lcom/android/launcher3/shortcuts/ShortcutKey;->user:Landroid/os/UserHandle;

    .line 111
    invoke-virtual {p0, v0, v2}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->queryForPinnedShortcuts(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->extractIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 112
    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 114
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/pm/LauncherApps;->pinShortcuts(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->mWasLastCallSuccess:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    const-string/jumbo v1, "DeepShortcutManager"

    const-string/jumbo v2, "Failed to unpin shortcut"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->mWasLastCallSuccess:Z

    goto :goto_0
.end method

.method public wasLastCallSuccess()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->mWasLastCallSuccess:Z

    return v0
.end method
