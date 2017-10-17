.class public Lcom/android/launcher3/AppInfo;
.super Lcom/android/launcher3/ItemInfoWithIcon;
.source "SourceFile"


# instance fields
.field public componentName:Landroid/content/ComponentName;

.field public intent:Landroid/content/Intent;

.field public isDisabled:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Lcom/android/launcher3/ItemInfoWithIcon;-><init>()V

    .line 44
    iput v0, p0, Lcom/android/launcher3/AppInfo;->isDisabled:I

    .line 47
    iput v0, p0, Lcom/android/launcher3/AppInfo;->itemType:I

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;)V
    .locals 1

    .prologue
    .line 59
    invoke-static {p1}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/launcher3/compat/UserManagerCompat;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v0

    invoke-direct {p0, p2, p3, v0}, Lcom/android/launcher3/AppInfo;-><init>(Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;Z)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;Z)V
    .locals 2

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/launcher3/ItemInfoWithIcon;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/AppInfo;->isDisabled:I

    .line 63
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    .line 64
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher3/AppInfo;->container:J

    .line 65
    iput-object p2, p0, Lcom/android/launcher3/AppInfo;->user:Landroid/os/UserHandle;

    .line 66
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/util/PackageManagerHelper;->isAppSuspended(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget v0, p0, Lcom/android/launcher3/AppInfo;->isDisabled:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/launcher3/AppInfo;->isDisabled:I

    .line 69
    :cond_0
    if-eqz p3, :cond_1

    .line 70
    iget v0, p0, Lcom/android/launcher3/AppInfo;->isDisabled:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/launcher3/AppInfo;->isDisabled:I

    .line 73
    :cond_1
    invoke-static {p1}, Lcom/android/launcher3/AppInfo;->makeLaunchIntent(Landroid/content/pm/LauncherActivityInfo;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/AppInfo;->intent:Landroid/content/Intent;

    .line 74
    return-void
.end method

.method public static makeLaunchIntent(Landroid/content/pm/LauncherActivityInfo;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 98
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 99
    const-string/jumbo v1, "android.intent.category.LAUNCHER"

    .line 98
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 100
    invoke-virtual {p0}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 98
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 101
    const/high16 v1, 0x10200000

    .line 98
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected dumpProperties()Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/android/launcher3/ItemInfoWithIcon;->dumpProperties()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " componentName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/launcher3/AppInfo;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public isDisabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 106
    iget v1, p0, Lcom/android/launcher3/AppInfo;->isDisabled:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public makeShortcut()Lcom/android/launcher3/ShortcutInfo;
    .locals 1

    .prologue
    .line 90
    new-instance v0, Lcom/android/launcher3/ShortcutInfo;

    invoke-direct {v0, p0}, Lcom/android/launcher3/ShortcutInfo;-><init>(Lcom/android/launcher3/AppInfo;)V

    return-object v0
.end method

.method public toComponentKey()Lcom/android/launcher3/util/ComponentKey;
    .locals 3

    .prologue
    .line 94
    new-instance v0, Lcom/android/launcher3/util/ComponentKey;

    iget-object v1, p0, Lcom/android/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/launcher3/AppInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    return-object v0
.end method
