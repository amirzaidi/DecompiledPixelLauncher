.class public Lcom/google/android/apps/nexuslauncher/reflection/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/apps/nexuslauncher/reflection/o;
.implements Lcom/android/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;


# instance fields
.field private final bu:Lcom/google/android/apps/nexuslauncher/reflection/filter/c;

.field private final bv:Lcom/android/launcher3/compat/LauncherAppsCompat;

.field private final bw:Lcom/google/android/apps/nexuslauncher/reflection/filter/a;

.field private final bx:Lcom/android/launcher3/compat/UserManagerCompat;

.field private final mServiceHandler:Lcom/google/android/apps/nexuslauncher/reflection/n;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/nexuslauncher/reflection/n;Lcom/google/android/apps/nexuslauncher/reflection/filter/a;Lcom/google/android/apps/nexuslauncher/reflection/filter/c;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {p1}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->bx:Lcom/android/launcher3/compat/UserManagerCompat;

    .line 35
    invoke-static {p1}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->bv:Lcom/android/launcher3/compat/LauncherAppsCompat;

    .line 36
    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->mServiceHandler:Lcom/google/android/apps/nexuslauncher/reflection/n;

    .line 38
    iput-object p3, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->bw:Lcom/google/android/apps/nexuslauncher/reflection/filter/a;

    .line 39
    iput-object p4, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->bu:Lcom/google/android/apps/nexuslauncher/reflection/filter/c;

    .line 40
    return-void
.end method


# virtual methods
.method public aW()V
    .locals 7

    .prologue
    .line 46
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertNonUiThread()V

    .line 47
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->bx:Lcom/android/launcher3/compat/UserManagerCompat;

    invoke-virtual {v0}, Lcom/android/launcher3/compat/UserManagerCompat;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 48
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->bv:Lcom/android/launcher3/compat/LauncherAppsCompat;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v4

    .line 51
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_0
    if-ltz v2, :cond_0

    .line 52
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherActivityInfo;

    .line 53
    iget-object v5, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->bw:Lcom/google/android/apps/nexuslauncher/reflection/filter/a;

    const/4 v6, 0x1

    invoke-virtual {v5, v6, v1, v0}, Lcom/google/android/apps/nexuslauncher/reflection/filter/a;->s(ILandroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;)V

    .line 54
    iget-object v5, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->bu:Lcom/google/android/apps/nexuslauncher/reflection/filter/c;

    invoke-virtual {v5, v1, v0}, Lcom/google/android/apps/nexuslauncher/reflection/filter/c;->w(Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;)V

    .line 51
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_0

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->bv:Lcom/android/launcher3/compat/LauncherAppsCompat;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/compat/LauncherAppsCompat;->addOnAppsChangedCallback(Lcom/android/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V

    .line 58
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->bv:Lcom/android/launcher3/compat/LauncherAppsCompat;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/compat/LauncherAppsCompat;->removeOnAppsChangedCallback(Lcom/android/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V

    .line 120
    return-void
.end method

.method public onPackageAdded(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->bv:Lcom/android/launcher3/compat/LauncherAppsCompat;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    .line 67
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    return-void

    .line 71
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherActivityInfo;

    .line 72
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->bw:Lcom/google/android/apps/nexuslauncher/reflection/filter/a;

    .line 73
    const/4 v2, 0x1

    .line 72
    invoke-virtual {v1, v2, v0, p2}, Lcom/google/android/apps/nexuslauncher/reflection/filter/a;->s(ILandroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;)V

    .line 74
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->bu:Lcom/google/android/apps/nexuslauncher/reflection/filter/c;

    invoke-virtual {v1, v0, p2}, Lcom/google/android/apps/nexuslauncher/reflection/filter/c;->w(Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;)V

    .line 75
    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->bw:Lcom/google/android/apps/nexuslauncher/reflection/filter/a;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/apps/nexuslauncher/reflection/filter/a;->r(ILjava/lang/String;Landroid/os/UserHandle;)V

    .line 90
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->bu:Lcom/google/android/apps/nexuslauncher/reflection/filter/c;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/nexuslauncher/reflection/filter/c;->t(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 91
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 4

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->bw:Lcom/google/android/apps/nexuslauncher/reflection/filter/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/apps/nexuslauncher/reflection/filter/a;->r(ILjava/lang/String;Landroid/os/UserHandle;)V

    .line 80
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->bu:Lcom/google/android/apps/nexuslauncher/reflection/filter/c;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/nexuslauncher/reflection/filter/c;->t(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 81
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->mServiceHandler:Lcom/google/android/apps/nexuslauncher/reflection/n;

    .line 82
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->bx:Lcom/android/launcher3/compat/UserManagerCompat;

    invoke-virtual {v1, p2}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v2

    .line 81
    invoke-virtual {v0, p1, v2, v3}, Lcom/google/android/apps/nexuslauncher/reflection/n;->bi(Ljava/lang/String;J)V

    .line 83
    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->bw:Lcom/google/android/apps/nexuslauncher/reflection/filter/a;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/apps/nexuslauncher/reflection/filter/a;->q(I[Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 97
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->bu:Lcom/google/android/apps/nexuslauncher/reflection/filter/c;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/nexuslauncher/reflection/filter/c;->u([Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 98
    return-void
.end method

.method public onPackagesSuspended([Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->bw:Lcom/google/android/apps/nexuslauncher/reflection/filter/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/apps/nexuslauncher/reflection/filter/a;->q(I[Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 109
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->bu:Lcom/google/android/apps/nexuslauncher/reflection/filter/c;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/nexuslauncher/reflection/filter/c;->u([Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 110
    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->bw:Lcom/google/android/apps/nexuslauncher/reflection/filter/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/apps/nexuslauncher/reflection/filter/a;->q(I[Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 104
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->bu:Lcom/google/android/apps/nexuslauncher/reflection/filter/c;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/nexuslauncher/reflection/filter/c;->u([Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 105
    return-void
.end method

.method public onPackagesUnsuspended([Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->bw:Lcom/google/android/apps/nexuslauncher/reflection/filter/a;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/apps/nexuslauncher/reflection/filter/a;->q(I[Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 114
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->bu:Lcom/google/android/apps/nexuslauncher/reflection/filter/c;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/nexuslauncher/reflection/filter/c;->u([Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 115
    return-void
.end method

.method public onShortcutsChanged(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    .locals 0

    .prologue
    .line 126
    return-void
.end method
