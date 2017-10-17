.class public Lcom/android/launcher3/shortcuts/ShortcutKey;
.super Lcom/android/launcher3/util/ComponentKey;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 18
    return-void
.end method

.method public static fromInfo(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;)Lcom/android/launcher3/shortcuts/ShortcutKey;
    .locals 4

    .prologue
    .line 25
    new-instance v0, Lcom/android/launcher3/shortcuts/ShortcutKey;

    invoke-virtual {p0}, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    .line 26
    invoke-virtual {p0}, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->getId()Ljava/lang/String;

    move-result-object v3

    .line 25
    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/shortcuts/ShortcutKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-object v0
.end method

.method public static fromIntent(Landroid/content/Intent;Landroid/os/UserHandle;)Lcom/android/launcher3/shortcuts/ShortcutKey;
    .locals 3

    .prologue
    .line 31
    const-string/jumbo v0, "shortcut_id"

    .line 30
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    new-instance v1, Lcom/android/launcher3/shortcuts/ShortcutKey;

    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1, v0}, Lcom/android/launcher3/shortcuts/ShortcutKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-object v1
.end method

.method public static fromItemInfo(Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/shortcuts/ShortcutKey;
    .locals 2

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/android/launcher3/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-static {v0, v1}, Lcom/android/launcher3/shortcuts/ShortcutKey;->fromIntent(Landroid/content/Intent;Landroid/os/UserHandle;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
