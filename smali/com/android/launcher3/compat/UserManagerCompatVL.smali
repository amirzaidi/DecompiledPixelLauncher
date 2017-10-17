.class public Lcom/android/launcher3/compat/UserManagerCompatVL;
.super Lcom/android/launcher3/compat/UserManagerCompat;
.source "SourceFile"


# static fields
.field private static final USER_CREATION_TIME_KEY:Ljava/lang/String; = "user_creation_time_"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPm:Landroid/content/pm/PackageManager;

.field protected final mUserManager:Landroid/os/UserManager;

.field protected mUserToSerialMap:Ljava/util/HashMap;

.field protected mUsers:Lcom/android/launcher3/util/LongArrayMap;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/launcher3/compat/UserManagerCompat;-><init>()V

    .line 46
    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/launcher3/compat/UserManagerCompatVL;->mUserManager:Landroid/os/UserManager;

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/compat/UserManagerCompatVL;->mPm:Landroid/content/pm/PackageManager;

    .line 48
    iput-object p1, p0, Lcom/android/launcher3/compat/UserManagerCompatVL;->mContext:Landroid/content/Context;

    .line 49
    return-void
.end method


# virtual methods
.method public enableAndResetCache()V
    .locals 5

    .prologue
    .line 89
    monitor-enter p0

    .line 90
    :try_start_0
    new-instance v0, Lcom/android/launcher3/util/LongArrayMap;

    invoke-direct {v0}, Lcom/android/launcher3/util/LongArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/compat/UserManagerCompatVL;->mUsers:Lcom/android/launcher3/util/LongArrayMap;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/compat/UserManagerCompatVL;->mUserToSerialMap:Ljava/util/HashMap;

    .line 92
    iget-object v0, p0, Lcom/android/launcher3/compat/UserManagerCompatVL;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_0

    .line 94
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 95
    iget-object v2, p0, Lcom/android/launcher3/compat/UserManagerCompatVL;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, v0}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v2

    .line 96
    iget-object v4, p0, Lcom/android/launcher3/compat/UserManagerCompatVL;->mUsers:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v4, v2, v3, v0}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 97
    iget-object v4, p0, Lcom/android/launcher3/compat/UserManagerCompatVL;->mUserToSerialMap:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    monitor-exit p0

    .line 101
    return-void
.end method

.method public getBadgedLabelForUser(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 117
    if-nez p2, :cond_0

    .line 118
    return-object p1

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/compat/UserManagerCompatVL;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getSerialNumberForUser(Landroid/os/UserHandle;)J
    .locals 2

    .prologue
    .line 53
    monitor-enter p0

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/compat/UserManagerCompatVL;->mUserToSerialMap:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/android/launcher3/compat/UserManagerCompatVL;->mUserToSerialMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    monitor-exit p0

    return-wide v0

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    goto :goto_0

    :cond_1
    monitor-exit p0

    .line 59
    iget-object v0, p0, Lcom/android/launcher3/compat/UserManagerCompatVL;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v0

    return-wide v0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getUserCreationTime(Landroid/os/UserHandle;)J
    .locals 6

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/launcher3/compat/UserManagerCompatVL;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "user_creation_time_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/compat/UserManagerCompatVL;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 127
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 128
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v2, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 130
    :cond_0
    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUserForSerialNumber(J)Landroid/os/UserHandle;
    .locals 1

    .prologue
    .line 64
    monitor-enter p0

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/compat/UserManagerCompatVL;->mUsers:Lcom/android/launcher3/util/LongArrayMap;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/launcher3/compat/UserManagerCompatVL;->mUsers:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    monitor-exit p0

    .line 69
    iget-object v0, p0, Lcom/android/launcher3/compat/UserManagerCompatVL;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1, p2}, Landroid/os/UserManager;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getUserProfiles()Ljava/util/List;
    .locals 2

    .prologue
    .line 105
    monitor-enter p0

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/compat/UserManagerCompatVL;->mUsers:Lcom/android/launcher3/util/LongArrayMap;

    if-eqz v0, :cond_0

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher3/compat/UserManagerCompatVL;->mUserToSerialMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    monitor-exit p0

    .line 111
    iget-object v0, p0, Lcom/android/launcher3/compat/UserManagerCompatVL;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    .line 112
    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_1
    return-object v0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isDemoUser()Z
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public isQuietModeEnabled(Landroid/os/UserHandle;)Z
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public isUserUnlocked(Landroid/os/UserHandle;)Z
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x1

    return v0
.end method
