.class public abstract Lcom/android/launcher3/util/CachedPackageTracker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;


# instance fields
.field protected final mLauncherApps:Lcom/android/launcher3/compat/LauncherAppsCompat;

.field protected final mPrefs:Landroid/content/SharedPreferences;

.field protected final mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/util/CachedPackageTracker;->mPrefs:Landroid/content/SharedPreferences;

    .line 50
    invoke-static {p1}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/util/CachedPackageTracker;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    .line 51
    invoke-static {p1}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/util/CachedPackageTracker;->mLauncherApps:Lcom/android/launcher3/compat/LauncherAppsCompat;

    .line 52
    return-void
.end method

.method private getUserApps(Ljava/util/HashSet;Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 100
    iget-object v0, p0, Lcom/android/launcher3/util/CachedPackageTracker;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 101
    if-nez v0, :cond_0

    .line 102
    const/4 v0, 0x0

    return v0

    .line 104
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 105
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method protected abstract onLauncherAppsAdded(Ljava/util/List;Landroid/os/UserHandle;Z)V
.end method

.method protected abstract onLauncherPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V
.end method

.method public onPackageAdded(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "installed_packages_for_user_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/util/CachedPackageTracker;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    invoke-virtual {v1, p2}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 123
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 124
    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/util/CachedPackageTracker;->getUserApps(Ljava/util/HashSet;Ljava/lang/String;)Z

    move-result v3

    .line 125
    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/launcher3/util/CachedPackageTracker;->mLauncherApps:Lcom/android/launcher3/compat/LauncherAppsCompat;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    .line 128
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 129
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherActivityInfo;

    .line 131
    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v4, p0, Lcom/android/launcher3/util/CachedPackageTracker;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, v1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 133
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/launcher3/util/CachedPackageTracker$LauncherActivityInstallInfo;

    .line 134
    new-instance v2, Lcom/android/launcher3/util/CachedPackageTracker$LauncherActivityInstallInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v0, v4, v5}, Lcom/android/launcher3/util/CachedPackageTracker$LauncherActivityInstallInfo;-><init>(Landroid/content/pm/LauncherActivityInfo;J)V

    aput-object v2, v1, v6

    .line 133
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2, v3}, Lcom/android/launcher3/util/CachedPackageTracker;->onLauncherAppsAdded(Ljava/util/List;Landroid/os/UserHandle;Z)V

    .line 138
    :cond_0
    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    .prologue
    .line 141
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 4

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "installed_packages_for_user_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/util/CachedPackageTracker;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    invoke-virtual {v1, p2}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 113
    invoke-direct {p0, v1, v0}, Lcom/android/launcher3/util/CachedPackageTracker;->getUserApps(Ljava/util/HashSet;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    iget-object v2, p0, Lcom/android/launcher3/util/CachedPackageTracker;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 117
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/util/CachedPackageTracker;->onLauncherPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 118
    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 0

    .prologue
    .line 145
    return-void
.end method

.method public onPackagesSuspended([Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    .prologue
    .line 152
    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 0

    .prologue
    .line 149
    return-void
.end method

.method public onPackagesUnsuspended([Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    .prologue
    .line 155
    return-void
.end method

.method public processUserApps(Ljava/util/List;Landroid/os/UserHandle;)V
    .locals 12

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "installed_packages_for_user_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/util/CachedPackageTracker;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    invoke-virtual {v1, p2}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 60
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 61
    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/util/CachedPackageTracker;->getUserApps(Ljava/util/HashSet;Ljava/lang/String;)Z

    move-result v3

    .line 63
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 64
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 65
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 67
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherActivityInfo;

    .line 68
    invoke-virtual {v0}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 69
    invoke-virtual {v5, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-virtual {v4, v8}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 72
    invoke-virtual {v2, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 73
    invoke-virtual {v2, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v8, Lcom/android/launcher3/util/CachedPackageTracker$LauncherActivityInstallInfo;

    .line 75
    invoke-virtual {v0}, Landroid/content/pm/LauncherActivityInfo;->getFirstInstallTime()J

    move-result-wide v10

    .line 74
    invoke-direct {v8, v0, v10, v11}, Lcom/android/launcher3/util/CachedPackageTracker$LauncherActivityInstallInfo;-><init>(Landroid/content/pm/LauncherActivityInfo;J)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 79
    :cond_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    .line 80
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/util/CachedPackageTracker;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 82
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 83
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 84
    invoke-virtual {p0, v6, p2, v3}, Lcom/android/launcher3/util/CachedPackageTracker;->onLauncherAppsAdded(Ljava/util/List;Landroid/os/UserHandle;Z)V

    .line 87
    :cond_3
    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 88
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 89
    invoke-virtual {p0, v0, p2}, Lcom/android/launcher3/util/CachedPackageTracker;->onLauncherPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V

    goto :goto_1

    .line 93
    :cond_4
    return-void
.end method
