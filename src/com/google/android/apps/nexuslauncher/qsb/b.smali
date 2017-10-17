.class public Lcom/google/android/apps/nexuslauncher/qsb/b;
.super Lcom/android/launcher3/dragndrop/BaseItemDragListener;
.source "SourceFile"


# instance fields
.field private final bS:Landroid/content/pm/LauncherActivityInfo;


# direct methods
.method public constructor <init>(Landroid/content/pm/LauncherActivityInfo;Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    .line 22
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-direct {p0, p2, v0, v1}, Lcom/android/launcher3/dragndrop/BaseItemDragListener;-><init>(Landroid/graphics/Rect;II)V

    .line 23
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/b;->bS:Landroid/content/pm/LauncherActivityInfo;

    .line 24
    return-void
.end method

.method static synthetic bs(Lcom/google/android/apps/nexuslauncher/qsb/b;)Landroid/content/pm/LauncherActivityInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/b;->bS:Landroid/content/pm/LauncherActivityInfo;

    return-object v0
.end method

.method static synthetic bt(Lcom/google/android/apps/nexuslauncher/qsb/b;)Lcom/android/launcher3/Launcher;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/b;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method


# virtual methods
.method protected createDragHelper()Lcom/android/launcher3/widget/PendingItemDragHelper;
    .locals 3

    .prologue
    .line 28
    new-instance v0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    .line 29
    new-instance v1, Lcom/google/android/apps/nexuslauncher/qsb/g;

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/b;->bS:Landroid/content/pm/LauncherActivityInfo;

    invoke-direct {v1, p0, v2}, Lcom/google/android/apps/nexuslauncher/qsb/g;-><init>(Lcom/google/android/apps/nexuslauncher/qsb/b;Landroid/content/pm/LauncherActivityInfo;)V

    .line 28
    invoke-direct {v0, v1}, Lcom/android/launcher3/widget/PendingAddShortcutInfo;-><init>(Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;)V

    .line 35
    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/b;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 37
    new-instance v0, Lcom/android/launcher3/widget/PendingItemDragHelper;

    invoke-direct {v0, v1}, Lcom/android/launcher3/widget/PendingItemDragHelper;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public fillInLogContainerData(Landroid/view/View;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)V
    .locals 0

    .prologue
    .line 44
    return-void
.end method
