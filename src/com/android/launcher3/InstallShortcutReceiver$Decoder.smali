.class Lcom/android/launcher3/InstallShortcutReceiver$Decoder;
.super Lorg/json/JSONObject;
.source "SourceFile"


# instance fields
.field public final launcherIntent:Landroid/content/Intent;

.field public final user:Landroid/os/UserHandle;


# direct methods
.method private constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 569
    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 570
    const-string/jumbo v0, "intent.launch"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/InstallShortcutReceiver$Decoder;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$Decoder;->launcherIntent:Landroid/content/Intent;

    .line 571
    const-string/jumbo v0, "userHandle"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/InstallShortcutReceiver$Decoder;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v0

    .line 572
    const-string/jumbo v1, "userHandle"

    invoke-virtual {p0, v1}, Lcom/android/launcher3/InstallShortcutReceiver$Decoder;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 571
    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/compat/UserManagerCompat;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$Decoder;->user:Landroid/os/UserHandle;

    .line 574
    iget-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$Decoder;->user:Landroid/os/UserHandle;

    if-nez v0, :cond_1

    .line 575
    new-instance v0, Lorg/json/JSONException;

    const-string/jumbo v1, "Invalid user"

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 573
    :cond_0
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    goto :goto_0

    .line 577
    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/launcher3/InstallShortcutReceiver$Decoder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/InstallShortcutReceiver$Decoder;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
