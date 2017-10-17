.class Lcom/android/launcher3/compat/ShortcutConfigActivityInfo$ShortcutConfigActivityInfoVL;
.super Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;
.source "SourceFile"


# instance fields
.field private final mInfo:Landroid/content/pm/ActivityInfo;

.field private final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/pm/ActivityInfo;Landroid/content/pm/PackageManager;)V
    .locals 3

    .prologue
    .line 113
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 114
    iput-object p1, p0, Lcom/android/launcher3/compat/ShortcutConfigActivityInfo$ShortcutConfigActivityInfoVL;->mInfo:Landroid/content/pm/ActivityInfo;

    .line 115
    iput-object p2, p0, Lcom/android/launcher3/compat/ShortcutConfigActivityInfo$ShortcutConfigActivityInfoVL;->mPm:Landroid/content/pm/PackageManager;

    .line 116
    return-void
.end method


# virtual methods
.method public getFullResIcon(Lcom/android/launcher3/IconCache;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/launcher3/compat/ShortcutConfigActivityInfo$ShortcutConfigActivityInfoVL;->mInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/IconCache;->getFullResIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/launcher3/compat/ShortcutConfigActivityInfo$ShortcutConfigActivityInfoVL;->mInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, p0, Lcom/android/launcher3/compat/ShortcutConfigActivityInfo$ShortcutConfigActivityInfoVL;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
