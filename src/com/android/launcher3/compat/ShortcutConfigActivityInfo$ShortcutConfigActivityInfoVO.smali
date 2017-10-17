.class Lcom/android/launcher3/compat/ShortcutConfigActivityInfo$ShortcutConfigActivityInfoVO;
.super Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;
.source "SourceFile"


# instance fields
.field private final mInfo:Landroid/content/pm/LauncherActivityInfo;


# direct methods
.method public constructor <init>(Landroid/content/pm/LauncherActivityInfo;)V
    .locals 2

    .prologue
    .line 135
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 136
    iput-object p1, p0, Lcom/android/launcher3/compat/ShortcutConfigActivityInfo$ShortcutConfigActivityInfoVO;->mInfo:Landroid/content/pm/LauncherActivityInfo;

    .line 137
    return-void
.end method


# virtual methods
.method public getFullResIcon(Lcom/android/launcher3/IconCache;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/launcher3/compat/ShortcutConfigActivityInfo$ShortcutConfigActivityInfoVO;->mInfo:Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/IconCache;->getFullResIcon(Landroid/content/pm/LauncherActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/launcher3/compat/ShortcutConfigActivityInfo$ShortcutConfigActivityInfoVO;->mInfo:Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/LauncherActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public startConfigActivity(Landroid/app/Activity;I)Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 151
    invoke-virtual {p0}, Lcom/android/launcher3/compat/ShortcutConfigActivityInfo$ShortcutConfigActivityInfoVO;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;->startConfigActivity(Landroid/app/Activity;I)Z

    move-result v0

    return v0

    .line 155
    :cond_0
    :try_start_0
    const-class v0, Landroid/content/pm/LauncherApps;

    .line 156
    const-string/jumbo v1, "getShortcutConfigActivityIntent"

    .line 155
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    .line 156
    const-class v3, Landroid/content/pm/LauncherActivityInfo;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 155
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 158
    const-class v1, Landroid/content/pm/LauncherApps;

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 157
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 158
    iget-object v3, p0, Lcom/android/launcher3/compat/ShortcutConfigActivityInfo$ShortcutConfigActivityInfoVO;->mInfo:Landroid/content/pm/LauncherActivityInfo;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 157
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/IntentSender;

    .line 159
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    return v8

    .line 161
    :catch_0
    move-exception v0

    .line 162
    const-string/jumbo v1, "SCActivityInfo"

    const-string/jumbo v2, "Error calling new API"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    return v7
.end method
