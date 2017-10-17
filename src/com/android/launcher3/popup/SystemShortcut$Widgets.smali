.class public Lcom/android/launcher3/popup/SystemShortcut$Widgets;
.super Lcom/android/launcher3/popup/SystemShortcut;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 52
    const v0, 0x7f020048

    const v1, 0x7f0c004d

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/popup/SystemShortcut;-><init>(II)V

    .line 53
    return-void
.end method


# virtual methods
.method public getOnClickListener(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/ItemInfo;)Landroid/view/View$OnClickListener;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 58
    new-instance v0, Lcom/android/launcher3/util/PackageUserKey;

    .line 59
    invoke-virtual {p2}, Lcom/android/launcher3/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/android/launcher3/ItemInfo;->user:Landroid/os/UserHandle;

    .line 58
    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/Launcher;->getWidgetsForPackageUser(Lcom/android/launcher3/util/PackageUserKey;)Ljava/util/List;

    move-result-object v0

    .line 60
    if-nez v0, :cond_0

    .line 61
    return-object v3

    .line 63
    :cond_0
    new-instance v0, Lcom/android/launcher3/popup/SystemShortcut$Widgets$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/popup/SystemShortcut$Widgets$1;-><init>(Lcom/android/launcher3/popup/SystemShortcut$Widgets;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/ItemInfo;)V

    return-object v0
.end method
