.class public Lcom/android/launcher3/allapps/DefaultAppSearchController;
.super Lcom/android/launcher3/allapps/AllAppsSearchBarController;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AllAppsSearchBarController;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeSearch()Lcom/android/launcher3/allapps/DefaultAppSearchAlgorithm;
    .locals 2

    .prologue
    .line 24
    new-instance v0, Lcom/android/launcher3/allapps/DefaultAppSearchAlgorithm;

    iget-object v1, p0, Lcom/android/launcher3/allapps/DefaultAppSearchController;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getApps()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/DefaultAppSearchAlgorithm;-><init>(Ljava/util/List;)V

    return-object v0
.end method
