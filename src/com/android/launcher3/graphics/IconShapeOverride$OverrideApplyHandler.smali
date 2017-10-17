.class Lcom/android/launcher3/graphics/IconShapeOverride$OverrideApplyHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mValue:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput-object p1, p0, Lcom/android/launcher3/graphics/IconShapeOverride$OverrideApplyHandler;->mContext:Landroid/content/Context;

    .line 186
    iput-object p2, p0, Lcom/android/launcher3/graphics/IconShapeOverride$OverrideApplyHandler;->mValue:Ljava/lang/String;

    .line 187
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/graphics/IconShapeOverride$OverrideApplyHandler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/graphics/IconShapeOverride$OverrideApplyHandler;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/launcher3/graphics/IconShapeOverride$OverrideApplyHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/graphics/IconShapeOverride;->-wrap0(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "pref_override_icon_shape"

    iget-object v2, p0, Lcom/android/launcher3/graphics/IconShapeOverride$OverrideApplyHandler;->mValue:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 194
    iget-object v0, p0, Lcom/android/launcher3/graphics/IconShapeOverride$OverrideApplyHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/IconCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/IconCache;->clear()V

    .line 198
    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 205
    const-string/jumbo v1, "android.intent.category.HOME"

    .line 204
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 206
    iget-object v1, p0, Lcom/android/launcher3/graphics/IconShapeOverride$OverrideApplyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 204
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 207
    const/high16 v1, 0x10000000

    .line 204
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 208
    iget-object v1, p0, Lcom/android/launcher3/graphics/IconShapeOverride$OverrideApplyHandler;->mContext:Landroid/content/Context;

    const/16 v2, 0x2a

    .line 209
    const/high16 v3, 0x50000000

    .line 208
    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 210
    iget-object v0, p0, Lcom/android/launcher3/graphics/IconShapeOverride$OverrideApplyHandler;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/AlarmManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 211
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x32

    add-long/2addr v2, v4

    const/4 v4, 0x3

    .line 210
    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 214
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 215
    return-void

    .line 199
    :catch_0
    move-exception v0

    .line 200
    const-string/jumbo v1, "IconShapeOverride"

    const-string/jumbo v2, "Error waiting"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
