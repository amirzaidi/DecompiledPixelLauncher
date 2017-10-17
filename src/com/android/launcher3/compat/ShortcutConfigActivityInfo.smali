.class public abstract Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SCActivityInfo"


# instance fields
.field private final mCn:Landroid/content/ComponentName;

.field private final mUser:Landroid/os/UserHandle;


# direct methods
.method protected constructor <init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;->mCn:Landroid/content/ComponentName;

    .line 54
    iput-object p2, p0, Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;->mUser:Landroid/os/UserHandle;

    .line 55
    return-void
.end method


# virtual methods
.method public createShortcutInfo()Lcom/android/launcher3/ShortcutInfo;
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;->mCn:Landroid/content/ComponentName;

    return-object v0
.end method

.method public abstract getFullResIcon(Lcom/android/launcher3/IconCache;)Landroid/graphics/drawable/Drawable;
.end method

.method public getItemType()I
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public abstract getLabel()Ljava/lang/CharSequence;
.end method

.method public getUser()Landroid/os/UserHandle;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;->mUser:Landroid/os/UserHandle;

    return-object v0
.end method

.method public isPersistable()Z
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x1

    return v0
.end method

.method public startConfigActivity(Landroid/app/Activity;I)Z
    .locals 6

    .prologue
    const v2, 0x7f0c001f

    const/4 v5, 0x0

    .line 82
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 82
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 85
    :try_start_0
    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    const/4 v0, 0x1

    return v0

    .line 89
    :catch_0
    move-exception v1

    .line 90
    invoke-static {p1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 91
    const-string/jumbo v2, "SCActivityInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Launcher does not have the permission to launch "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 92
    const-string/jumbo v3, ". Make sure to create a MAIN intent-filter for the corresponding activity "

    .line 91
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 93
    const-string/jumbo v3, "or use the exported attribute for this activity."

    .line 91
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    :goto_0
    return v5

    .line 87
    :catch_1
    move-exception v0

    .line 88
    invoke-static {p1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
