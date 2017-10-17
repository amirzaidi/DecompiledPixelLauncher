.class public Lcom/android/launcher3/PromiseAppInfo;
.super Lcom/android/launcher3/AppInfo;
.source "SourceFile"


# instance fields
.field public level:I


# direct methods
.method public constructor <init>(Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;)V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/launcher3/AppInfo;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/PromiseAppInfo;->level:I

    .line 30
    iget-object v0, p1, Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;->componentName:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/launcher3/PromiseAppInfo;->componentName:Landroid/content/ComponentName;

    .line 31
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 32
    const-string/jumbo v1, "android.intent.category.LAUNCHER"

    .line 31
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/android/launcher3/PromiseAppInfo;->componentName:Landroid/content/ComponentName;

    .line 31
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 34
    const/high16 v1, 0x10200000

    .line 31
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/PromiseAppInfo;->intent:Landroid/content/Intent;

    .line 36
    return-void
.end method


# virtual methods
.method public getMarketIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/launcher3/PromiseAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/util/PackageManagerHelper;->getMarketIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public makeShortcut()Lcom/android/launcher3/ShortcutInfo;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Lcom/android/launcher3/ShortcutInfo;

    invoke-direct {v0, p0}, Lcom/android/launcher3/ShortcutInfo;-><init>(Lcom/android/launcher3/AppInfo;)V

    .line 41
    iget v1, p0, Lcom/android/launcher3/PromiseAppInfo;->level:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/ShortcutInfo;->setInstallProgress(I)V

    .line 43
    iget v1, v0, Lcom/android/launcher3/ShortcutInfo;->status:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/android/launcher3/ShortcutInfo;->status:I

    .line 45
    iget v1, v0, Lcom/android/launcher3/ShortcutInfo;->status:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Lcom/android/launcher3/ShortcutInfo;->status:I

    .line 46
    return-object v0
.end method
