.class public Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mShortcutInfo:Landroid/content/pm/ShortcutInfo;


# direct methods
.method public constructor <init>(Landroid/content/pm/ShortcutInfo;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    .line 44
    return-void
.end method


# virtual methods
.method public getActivity()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getDisabledMessage()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getDisabledMessage()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLongLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getLongLabel()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRank()I
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v0

    return v0
.end method

.method public getShortLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getShortcutInfo()Landroid/content/pm/ShortcutInfo;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    return-object v0
.end method

.method public getUserHandle()Landroid/os/UserHandle;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public isDeclaredInManifest()Z
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result v0

    return v0
.end method

.method public isDynamic()Z
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isPinned()Z
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v0

    return v0
.end method

.method public makeIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 48
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 49
    const-string/jumbo v1, "com.android.launcher3.DEEP_SHORTCUT"

    .line 48
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 50
    invoke-virtual {p0}, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->getActivity()Landroid/content/ComponentName;

    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 51
    invoke-virtual {p0}, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->getPackage()Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 52
    const/high16 v1, 0x10200000

    .line 48
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 53
    const-string/jumbo v1, "shortcut_id"

    invoke-virtual {p0}, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->getId()Ljava/lang/String;

    move-result-object v2

    .line 48
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
