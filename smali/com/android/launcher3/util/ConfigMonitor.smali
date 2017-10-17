.class public Lcom/android/launcher3/util/ConfigMonitor;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDensity:I

.field private final mFontScale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/launcher3/util/ConfigMonitor;->mContext:Landroid/content/Context;

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 40
    iget v1, v0, Landroid/content/res/Configuration;->fontScale:F

    iput v1, p0, Lcom/android/launcher3/util/ConfigMonitor;->mFontScale:F

    .line 41
    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, p0, Lcom/android/launcher3/util/ConfigMonitor;->mDensity:I

    .line 42
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 47
    iget v1, p0, Lcom/android/launcher3/util/ConfigMonitor;->mFontScale:F

    iget v2, v0, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/launcher3/util/ConfigMonitor;->mDensity:I

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v1, v0, :cond_1

    .line 48
    :cond_0
    const-string/jumbo v0, "ConfigMonitor"

    const-string/jumbo v1, "Configuration changed, restarting launcher"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v0, p0, Lcom/android/launcher3/util/ConfigMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 50
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 52
    :cond_1
    return-void
.end method

.method public register()V
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/launcher3/util/ConfigMonitor;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 56
    return-void
.end method
