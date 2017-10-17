.class public Lcom/google/android/apps/nexuslauncher/DynamicDrawableFactory;
.super Lcom/android/launcher3/graphics/DrawableFactory;
.source "SourceFile"


# instance fields
.field du:Lcom/google/android/apps/nexuslauncher/a/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/launcher3/graphics/DrawableFactory;-><init>()V

    .line 18
    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/a/a;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/DynamicDrawableFactory;->du:Lcom/google/android/apps/nexuslauncher/a/a;

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
    sget-object v0, Lcom/google/android/apps/nexuslauncher/a/a;->dl:Landroid/content/ComponentName;

    invoke-virtual {p2}, Lcom/android/launcher3/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 24
    new-instance v0, Lcom/google/android/apps/nexuslauncher/a/b;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/DynamicDrawableFactory;->du:Lcom/google/android/apps/nexuslauncher/a/a;

    invoke-direct {v0, p1, v1}, Lcom/google/android/apps/nexuslauncher/a/b;-><init>(Landroid/graphics/Bitmap;Lcom/google/android/apps/nexuslauncher/a/a;)V

    .line 25
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/FastBitmapDrawable;->setFilterBitmap(Z)V

    .line 26
    return-object v0

    .line 28
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/graphics/DrawableFactory;->newIcon(Landroid/graphics/Bitmap;Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/FastBitmapDrawable;

    move-result-object v0

    return-object v0
.end method
