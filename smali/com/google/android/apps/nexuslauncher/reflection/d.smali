.class public Lcom/google/android/apps/nexuslauncher/reflection/d;
.super Lcom/android/launcher3/util/CachedPackageTracker;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/apps/nexuslauncher/reflection/f;


# instance fields
.field private final cA:Lcom/google/android/apps/nexuslauncher/reflection/filter/b;

.field private final cB:Lcom/google/android/apps/nexuslauncher/reflection/filter/d;

.field private final cC:Lcom/android/launcher3/compat/UserManagerCompat;

.field private final cy:Lcom/google/android/apps/nexuslauncher/reflection/filter/a;

.field private final cz:Lcom/android/launcher3/compat/LauncherAppsCompat;

.field private final mContext:Landroid/content/Context;

.field private final mServiceHandler:Lcom/google/android/apps/nexuslauncher/reflection/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/nexuslauncher/reflection/e;Lcom/google/android/apps/nexuslauncher/reflection/filter/d;Lcom/google/android/apps/nexuslauncher/reflection/filter/a;Lcom/google/android/apps/nexuslauncher/reflection/filter/b;)V
    .locals 1

    .prologue
    .line 41
    const-string/jumbo v0, "package_info"

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/util/CachedPackageTracker;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 43
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/d;->mContext:Landroid/content/Context;

    .line 44
    invoke-static {p1}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d;->cC:Lcom/android/launcher3/compat/UserManagerCompat;

    .line 45
    invoke-static {p1}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d;->cz:Lcom/android/launcher3/compat/LauncherAppsCompat;

    .line 46
    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d;->mServiceHandler:Lcom/google/android/apps/nexuslauncher/reflection/e;

    .line 48
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertNonUiThread()V

    .line 49
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d;->cz:Lcom/android/launcher3/compat/LauncherAppsCompat;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/compat/LauncherAppsCompat;->addOnAppsChangedCallback(Lcom/android/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V

    .line 51
    iput-object p3, p0, Lcom/google/android/apps/nexuslauncher/reflection/d;->cB:Lcom/google/android/apps/nexuslauncher/reflection/filter/d;

    .line 52
    iput-object p4, p0, Lcom/google/android/apps/nexuslauncher/reflection/d;->cy:Lcom/google/android/apps/nexuslauncher/reflection/filter/a;

    .line 53
    iput-object p5, p0, Lcom/google/android/apps/nexuslauncher/reflection/d;->cA:Lcom/google/android/apps/nexuslauncher/reflection/filter/b;

    .line 54
    return-void
.end method


# virtual methods
.method protected bP(Lcom/android/launcher3/util/CachedPackageTracker$LauncherActivityInstallInfo;Landroid/os/UserHandle;Z)V
    .locals 6

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d;->cB:Lcom/google/android/apps/nexuslauncher/reflection/filter/d;

    iget-object v1, p1, Lcom/android/launcher3/util/CachedPackageTracker$LauncherActivityInstallInfo;->info:Landroid/content/pm/LauncherActivityInfo;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1, p2}, Lcom/google/android/apps/nexuslauncher/reflection/filter/d;->br(ILandroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;)V

    .line 85
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d;->cy:Lcom/google/android/apps/nexuslauncher/reflection/filter/a;

    iget-object v1, p1, Lcom/android/launcher3/util/CachedPackageTracker$LauncherActivityInstallInfo;->info:Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v0, v1, p2}, Lcom/google/android/apps/nexuslauncher/reflection/filter/a;->bi(Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;)V

    .line 88
    if-eqz p3, :cond_0

    .line 89
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d;->cA:Lcom/google/android/apps/nexuslauncher/reflection/filter/b;

    .line 90
    iget-object v1, p1, Lcom/android/launcher3/util/CachedPackageTracker$LauncherActivityInstallInfo;->info:Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 91
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d;->cC:Lcom/android/launcher3/compat/UserManagerCompat;

    invoke-virtual {v2, p2}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v2

    .line 92
    iget-wide v4, p1, Lcom/android/launcher3/util/CachedPackageTracker$LauncherActivityInstallInfo;->installTime:J

    .line 89
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/nexuslauncher/reflection/filter/b;->bn(Landroid/content/ComponentName;JJ)V

    .line 94
    :cond_0
    return-void
.end method

.method public be()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d;->cz:Lcom/android/launcher3/compat/LauncherAppsCompat;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/compat/LauncherAppsCompat;->removeOnAppsChangedCallback(Lcom/android/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V

    .line 139
    return-void
.end method

.method protected onLauncherAppsAdded(Ljava/util/List;Landroid/os/UserHandle;Z)V
    .locals 2

    .prologue
    .line 77
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/CachedPackageTracker$LauncherActivityInstallInfo;

    .line 78
    invoke-virtual {p0, v0, p2, p3}, Lcom/google/android/apps/nexuslauncher/reflection/d;->bP(Lcom/android/launcher3/util/CachedPackageTracker$LauncherActivityInstallInfo;Landroid/os/UserHandle;Z)V

    goto :goto_0

    .line 80
    :cond_0
    return-void
.end method

.method protected onLauncherPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 4

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d;->cB:Lcom/google/android/apps/nexuslauncher/reflection/filter/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/apps/nexuslauncher/reflection/filter/d;->bs(ILjava/lang/String;Landroid/os/UserHandle;)V

    .line 99
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d;->cy:Lcom/google/android/apps/nexuslauncher/reflection/filter/a;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/nexuslauncher/reflection/filter/a;->bj(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 100
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d;->mServiceHandler:Lcom/google/android/apps/nexuslauncher/reflection/e;

    .line 101
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/d;->cC:Lcom/android/launcher3/compat/UserManagerCompat;

    invoke-virtual {v1, p2}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v2

    .line 100
    invoke-virtual {v0, p1, v2, v3}, Lcom/google/android/apps/nexuslauncher/reflection/e;->bQ(Ljava/lang/String;J)V

    .line 102
    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d;->cB:Lcom/google/android/apps/nexuslauncher/reflection/filter/d;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/apps/nexuslauncher/reflection/filter/d;->bs(ILjava/lang/String;Landroid/os/UserHandle;)V

    .line 109
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d;->cy:Lcom/google/android/apps/nexuslauncher/reflection/filter/a;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/nexuslauncher/reflection/filter/a;->bj(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 110
    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d;->cB:Lcom/google/android/apps/nexuslauncher/reflection/filter/d;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/apps/nexuslauncher/reflection/filter/d;->bt(I[Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 116
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d;->cy:Lcom/google/android/apps/nexuslauncher/reflection/filter/a;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/nexuslauncher/reflection/filter/a;->bk([Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 117
    return-void
.end method

.method public onPackagesSuspended([Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d;->cB:Lcom/google/android/apps/nexuslauncher/reflection/filter/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/apps/nexuslauncher/reflection/filter/d;->bt(I[Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 128
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d;->cy:Lcom/google/android/apps/nexuslauncher/reflection/filter/a;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/nexuslauncher/reflection/filter/a;->bk([Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 129
    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d;->cB:Lcom/google/android/apps/nexuslauncher/reflection/filter/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/apps/nexuslauncher/reflection/filter/d;->bt(I[Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 123
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d;->cy:Lcom/google/android/apps/nexuslauncher/reflection/filter/a;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/nexuslauncher/reflection/filter/a;->bk([Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 124
    return-void
.end method

.method public onPackagesUnsuspended([Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d;->cB:Lcom/google/android/apps/nexuslauncher/reflection/filter/d;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/apps/nexuslauncher/reflection/filter/d;->bt(I[Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 133
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d;->cy:Lcom/google/android/apps/nexuslauncher/reflection/filter/a;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/nexuslauncher/reflection/filter/a;->bk([Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 134
    return-void
.end method

.method public onShortcutsChanged(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    .locals 0

    .prologue
    .line 145
    return-void
.end method

.method public processUserApps(Ljava/util/List;Landroid/os/UserHandle;)V
    .locals 4

    .prologue
    .line 63
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 64
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherActivityInfo;

    .line 65
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d;->cB:Lcom/google/android/apps/nexuslauncher/reflection/filter/d;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0, p2}, Lcom/google/android/apps/nexuslauncher/reflection/filter/d;->br(ILandroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;)V

    .line 66
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d;->cy:Lcom/google/android/apps/nexuslauncher/reflection/filter/a;

    invoke-virtual {v2, v0, p2}, Lcom/google/android/apps/nexuslauncher/reflection/filter/a;->bi(Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;)V

    .line 63
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 68
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/util/CachedPackageTracker;->processUserApps(Ljava/util/List;Landroid/os/UserHandle;)V

    .line 69
    return-void
.end method
