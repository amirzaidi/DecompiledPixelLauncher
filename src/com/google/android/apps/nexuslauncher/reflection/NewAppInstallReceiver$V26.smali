.class public Lcom/google/android/apps/nexuslauncher/reflection/NewAppInstallReceiver$V26;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 40
    const-string/jumbo v0, "android.content.pm.extra.SESSION"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 41
    const-string/jumbo v1, "android.intent.extra.USER"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 43
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getInstallReason()I

    move-result v2

    .line 44
    const/4 v3, 0x4

    .line 43
    if-ne v2, v3, :cond_0

    .line 45
    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/reflection/c;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/reflection/c;

    move-result-object v2

    .line 46
    new-instance v3, Lcom/android/launcher3/util/PackageUserKey;

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v1}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 45
    invoke-virtual {v2, v3}, Lcom/google/android/apps/nexuslauncher/reflection/c;->ax(Lcom/android/launcher3/util/PackageUserKey;)V

    .line 48
    :cond_0
    return-void
.end method
