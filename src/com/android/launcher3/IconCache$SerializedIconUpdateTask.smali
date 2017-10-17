.class Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mAppsToAdd:Ljava/util/Stack;

.field private final mAppsToUpdate:Ljava/util/Stack;

.field private final mPkgInfoMap:Ljava/util/HashMap;

.field private final mUpdatedPackages:Ljava/util/HashSet;

.field private final mUserSerial:J

.field final synthetic this$0:Lcom/android/launcher3/IconCache;


# direct methods
.method constructor <init>(Lcom/android/launcher3/IconCache;JLjava/util/HashMap;Ljava/util/Stack;Ljava/util/Stack;)V
    .locals 2

    .prologue
    .line 725
    iput-object p1, p0, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->this$0:Lcom/android/launcher3/IconCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 723
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->mUpdatedPackages:Ljava/util/HashSet;

    .line 728
    iput-wide p2, p0, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->mUserSerial:J

    .line 729
    iput-object p4, p0, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->mPkgInfoMap:Ljava/util/HashMap;

    .line 730
    iput-object p5, p0, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->mAppsToAdd:Ljava/util/Stack;

    .line 731
    iput-object p6, p0, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->mAppsToUpdate:Ljava/util/Stack;

    .line 732
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 736
    iget-object v0, p0, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->mAppsToUpdate:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 737
    iget-object v0, p0, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->mAppsToUpdate:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/LauncherActivityInfo;

    .line 738
    invoke-virtual {v2}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 739
    iget-object v1, p0, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->mPkgInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 740
    iget-object v1, p0, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->this$0:Lcom/android/launcher3/IconCache;

    iget-wide v4, p0, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->mUserSerial:J

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/IconCache;->addIconToDBAndMemCache(Landroid/content/pm/LauncherActivityInfo;Landroid/content/pm/PackageInfo;JZ)V

    .line 741
    iget-object v1, p0, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->mUpdatedPackages:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 743
    iget-object v0, p0, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->mAppsToUpdate:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->mUpdatedPackages:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 745
    iget-object v0, p0, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->this$0:Lcom/android/launcher3/IconCache;

    invoke-static {v0}, Lcom/android/launcher3/IconCache;->-get0(Lcom/android/launcher3/IconCache;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    .line 746
    iget-object v1, p0, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->mUpdatedPackages:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->this$0:Lcom/android/launcher3/IconCache;

    iget-object v2, v2, Lcom/android/launcher3/IconCache;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    iget-wide v4, p0, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->mUserSerial:J

    invoke-virtual {v2, v4, v5}, Lcom/android/launcher3/compat/UserManagerCompat;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v2

    .line 745
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/LauncherModel;->onPackageIconsUpdated(Ljava/util/HashSet;Landroid/os/UserHandle;)V

    .line 750
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->scheduleNext()V

    .line 764
    :cond_1
    :goto_0
    return-void

    .line 751
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->mAppsToAdd:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 752
    iget-object v0, p0, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->mAppsToAdd:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/LauncherActivityInfo;

    .line 753
    iget-object v0, p0, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->mPkgInfoMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 756
    if-eqz v3, :cond_3

    .line 757
    iget-object v1, p0, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->this$0:Lcom/android/launcher3/IconCache;

    iget-wide v4, p0, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->mUserSerial:J

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/IconCache;->addIconToDBAndMemCache(Landroid/content/pm/LauncherActivityInfo;Landroid/content/pm/PackageInfo;JZ)V

    .line 760
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->mAppsToAdd:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 761
    invoke-virtual {p0}, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->scheduleNext()V

    goto :goto_0
.end method

.method public scheduleNext()V
    .locals 6

    .prologue
    .line 767
    iget-object v0, p0, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->this$0:Lcom/android/launcher3/IconCache;

    iget-object v0, v0, Lcom/android/launcher3/IconCache;->mWorkerHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/launcher3/IconCache;->ICON_UPDATE_TOKEN:Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 768
    return-void
.end method
