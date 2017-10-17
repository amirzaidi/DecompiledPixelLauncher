.class Lcom/google/android/apps/nexuslauncher/search/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final eO:Lcom/android/launcher3/util/ComponentKey;

.field final synthetic eP:Lcom/google/android/apps/nexuslauncher/search/AppSearchProvider;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/search/AppSearchProvider;Lcom/android/launcher3/util/ComponentKey;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/search/g;->eP:Lcom/google/android/apps/nexuslauncher/search/AppSearchProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/search/g;->eO:Lcom/android/launcher3/util/ComponentKey;

    .line 261
    return-void
.end method


# virtual methods
.method public call()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 265
    new-instance v0, Lcom/google/android/apps/nexuslauncher/search/d;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/g;->eO:Lcom/android/launcher3/util/ComponentKey;

    invoke-direct {v0, v1}, Lcom/google/android/apps/nexuslauncher/search/d;-><init>(Lcom/android/launcher3/util/ComponentKey;)V

    .line 266
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/g;->eP:Lcom/google/android/apps/nexuslauncher/search/AppSearchProvider;

    invoke-static {v1}, Lcom/google/android/apps/nexuslauncher/search/AppSearchProvider;->do(Lcom/google/android/apps/nexuslauncher/search/AppSearchProvider;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/IconCache;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/IconCache;->getTitleAndIcon(Lcom/android/launcher3/ItemInfoWithIcon;Z)V

    .line 267
    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/search/d;->iconBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/search/g;->call()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
