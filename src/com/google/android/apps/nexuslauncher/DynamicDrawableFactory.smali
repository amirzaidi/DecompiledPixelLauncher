.class public Lcom/google/android/apps/nexuslauncher/DynamicDrawableFactory;
.super Lcom/android/launcher3/graphics/DrawableFactory;
.source "SourceFile"


# instance fields
.field private final fw:Lcom/google/android/apps/nexuslauncher/b/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/launcher3/graphics/DrawableFactory;-><init>()V

    .line 18
    new-instance v0, Lcom/google/android/apps/nexuslauncher/b/c;

    invoke-direct {v0, p1}, Lcom/google/android/apps/nexuslauncher/b/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/DynamicDrawableFactory;->fw:Lcom/google/android/apps/nexuslauncher/b/c;

    .line 19
    return-void
.end method


# virtual methods
.method public newIcon(Landroid/graphics/Bitmap;Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/FastBitmapDrawable;
    .locals 2

    .prologue
    .line 22
    if-eqz p2, :cond_0

    iget v0, p2, Lcom/android/launcher3/ItemInfo;->itemType:I

    if-nez v0, :cond_0

    .line 23
    sget-object v0, Lcom/google/android/apps/nexuslauncher/b/c;->fk:Landroid/content/ComponentName;

    invoke-virtual {p2}, Lcom/android/launcher3/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p2, Lcom/android/launcher3/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/DynamicDrawableFactory;->fw:Lcom/google/android/apps/nexuslauncher/b/c;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/nexuslauncher/b/c;->dJ(Landroid/graphics/Bitmap;)Lcom/google/android/apps/nexuslauncher/b/a;

    move-result-object v0

    return-object v0

    .line 27
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/graphics/DrawableFactory;->newIcon(Landroid/graphics/Bitmap;Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/FastBitmapDrawable;

    move-result-object v0

    return-object v0
.end method
