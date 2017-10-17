.class public Lcom/android/launcher3/allapps/AlphabeticalAppsList;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAdapter:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

.field private final mAdapterItems:Ljava/util/ArrayList;

.field private mAppDiscoveryUpdateState:Lcom/android/launcher3/discovery/AppDiscoveryUpdateState;

.field private mAppNameComparator:Lcom/android/launcher3/allapps/AppInfoComparator;

.field private final mApps:Ljava/util/List;

.field private mCachedSectionNames:Ljava/util/HashMap;

.field private final mComponentToAppMap:Ljava/util/HashMap;

.field private final mDiscoveredApps:Ljava/util/List;

.field private final mFastScrollDistributionMode:I

.field private final mFastScrollerSections:Ljava/util/List;

.field private final mFilteredApps:Ljava/util/List;

.field private mIndexer:Lcom/android/launcher3/compat/AlphabeticIndexCompat;

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private mNumAppRowsInAdapter:I

.field private mNumAppsPerRow:I

.field private mNumPredictedAppsPerRow:I

.field private final mPredictedAppComponents:Ljava/util/List;

.field private final mPredictedApps:Ljava/util/List;

.field private mSearchResults:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mFastScrollDistributionMode:I

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mApps:Ljava/util/List;

    .line 174
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mComponentToAppMap:Ljava/util/HashMap;

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mFilteredApps:Ljava/util/List;

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mFastScrollerSections:Ljava/util/List;

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mPredictedAppComponents:Ljava/util/List;

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mPredictedApps:Ljava/util/List;

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mDiscoveredApps:Ljava/util/List;

    .line 190
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mCachedSectionNames:Ljava/util/HashMap;

    .line 199
    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 200
    new-instance v0, Lcom/android/launcher3/compat/AlphabeticIndexCompat;

    invoke-direct {v0, p1}, Lcom/android/launcher3/compat/AlphabeticIndexCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mIndexer:Lcom/android/launcher3/compat/AlphabeticIndexCompat;

    .line 201
    new-instance v0, Lcom/android/launcher3/allapps/AppInfoComparator;

    invoke-direct {v0, p1}, Lcom/android/launcher3/allapps/AppInfoComparator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAppNameComparator:Lcom/android/launcher3/allapps/AppInfoComparator;

    .line 202
    return-void
.end method

.method private getAndUpdateCachedSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 614
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mCachedSectionNames:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 615
    if-nez v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mIndexer:Lcom/android/launcher3/compat/AlphabeticIndexCompat;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/compat/AlphabeticIndexCompat;->computeSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 617
    iget-object v1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mCachedSectionNames:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    :cond_0
    return-object v0
.end method

.method private getFiltersAppInfos()Ljava/util/List;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 584
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mSearchResults:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mApps:Ljava/util/List;

    return-object v0

    .line 588
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 589
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mSearchResults:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/ComponentKey;

    .line 590
    iget-object v4, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mComponentToAppMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/AppInfo;

    .line 591
    if-eqz v0, :cond_1

    .line 592
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 597
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mDiscoveredApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 598
    :goto_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mDiscoveredApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 599
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mDiscoveredApps:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/discovery/AppDiscoveryAppInfo;

    .line 600
    iget-boolean v3, v0, Lcom/android/launcher3/discovery/AppDiscoveryAppInfo;->isRecent:Z

    if-eqz v3, :cond_3

    .line 601
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 598
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 604
    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAppNameComparator:Lcom/android/launcher3/allapps/AppInfoComparator;

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 606
    :cond_5
    return-object v2
.end method

.method private onAppsUpdated()V
    .locals 5

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 352
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mApps:Ljava/util/List;

    iget-object v1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mComponentToAppMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 353
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mApps:Ljava/util/List;

    iget-object v1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAppNameComparator:Lcom/android/launcher3/allapps/AppInfoComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 357
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 358
    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 359
    if-eqz v0, :cond_2

    .line 362
    new-instance v2, Ljava/util/TreeMap;

    new-instance v0, Lcom/android/launcher3/util/LabelComparator;

    invoke-direct {v0}, Lcom/android/launcher3/util/LabelComparator;-><init>()V

    invoke-direct {v2, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 363
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/AppInfo;

    .line 365
    iget-object v1, v0, Lcom/android/launcher3/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-direct {p0, v1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAndUpdateCachedSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 368
    invoke-virtual {v2, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 369
    if-nez v1, :cond_0

    .line 370
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 371
    invoke-virtual {v2, v4, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 377
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 378
    invoke-virtual {v2}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 379
    iget-object v2, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 383
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/AppInfo;

    .line 385
    iget-object v0, v0, Lcom/android/launcher3/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAndUpdateCachedSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;

    goto :goto_2

    .line 390
    :cond_3
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->updateAdapterItems()V

    .line 391
    return-void
.end method

.method private refillAdapterItems()V
    .locals 13

    .prologue
    const/4 v5, 0x1

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 415
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mFilteredApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 416
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mFastScrollerSections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 417
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 433
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->asSearchDivider(I)Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mPredictedApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 437
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mPredictedAppComponents:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mPredictedAppComponents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->hasFilter()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_16

    .line 438
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mPredictedAppComponents:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/ComponentKey;

    .line 439
    iget-object v3, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mComponentToAppMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/AppInfo;

    .line 440
    if-eqz v0, :cond_1

    .line 441
    iget-object v3, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mPredictedApps:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mPredictedApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v3, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mNumPredictedAppsPerRow:I

    if-ne v0, v3, :cond_0

    .line 453
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mPredictedApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    .line 455
    new-instance v7, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;

    const-string/jumbo v0, ""

    invoke-direct {v7, v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;-><init>(Ljava/lang/String;)V

    .line 456
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mFastScrollerSections:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mPredictedApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v1, v2

    move v4, v5

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/AppInfo;

    .line 460
    add-int/lit8 v6, v4, 0x1

    const-string/jumbo v11, ""

    .line 461
    add-int/lit8 v3, v1, 0x1

    .line 460
    invoke-static {v4, v11, v0, v1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->asPredictedApp(ILjava/lang/String;Lcom/android/launcher3/AppInfo;I)Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    move-result-object v1

    .line 462
    iget-object v4, v7, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    if-nez v4, :cond_3

    .line 463
    iput-object v1, v7, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    .line 465
    :cond_3
    iget-object v4, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    iget-object v1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mFilteredApps:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v3

    move v4, v6

    goto :goto_0

    :cond_4
    move v1, v2

    move v0, v5

    move-object v3, v8

    .line 475
    :goto_1
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getFiltersAppInfos()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v4, v0

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/AppInfo;

    .line 476
    iget-object v6, v0, Lcom/android/launcher3/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-direct {p0, v6}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAndUpdateCachedSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 479
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_15

    .line 481
    new-instance v7, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;

    invoke-direct {v7, v9}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;-><init>(Ljava/lang/String;)V

    .line 482
    iget-object v3, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mFastScrollerSections:Ljava/util/List;

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v8, v9

    .line 486
    :goto_3
    add-int/lit8 v6, v4, 0x1

    add-int/lit8 v3, v1, 0x1

    invoke-static {v4, v9, v0, v1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->asApp(ILjava/lang/String;Lcom/android/launcher3/AppInfo;I)Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    move-result-object v1

    .line 487
    iget-object v4, v7, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    if-nez v4, :cond_5

    .line 488
    iput-object v1, v7, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    .line 490
    :cond_5
    iget-object v4, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    iget-object v1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mFilteredApps:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v3

    move v4, v6

    move-object v3, v7

    goto :goto_2

    .line 469
    :cond_6
    iget-object v3, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    add-int/lit8 v0, v4, 0x1

    invoke-static {v4}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->asPredictionDivider(I)Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v3, v7

    goto :goto_1

    .line 494
    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->hasFilter()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 495
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->isAppDiscoveryRunning()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mDiscoveredApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c

    .line 496
    :cond_8
    iget-object v3, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    add-int/lit8 v0, v4, 0x1

    invoke-static {v4}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->asLoadingDivider(I)Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v1

    move v4, v0

    move v1, v2

    .line 498
    :goto_4
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mDiscoveredApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_a

    .line 499
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mDiscoveredApps:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/discovery/AppDiscoveryAppInfo;

    .line 500
    iget-boolean v6, v0, Lcom/android/launcher3/discovery/AppDiscoveryAppInfo;->isRecent:Z

    if-eqz v6, :cond_9

    .line 498
    :goto_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 504
    :cond_9
    add-int/lit8 v7, v4, 0x1

    .line 505
    const-string/jumbo v8, ""

    add-int/lit8 v6, v3, 0x1

    .line 504
    invoke-static {v4, v8, v0, v3}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->asDiscoveryItem(ILjava/lang/String;Lcom/android/launcher3/AppInfo;I)Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    move-result-object v0

    .line 506
    iget-object v3, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v6

    move v4, v7

    goto :goto_5

    .line 509
    :cond_a
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->isAppDiscoveryRunning()Z

    move-result v0

    if-nez v0, :cond_b

    .line 510
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->asMarketSearch(I)Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    :cond_b
    :goto_6
    iget v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mNumAppsPerRow:I

    if-eqz v0, :cond_11

    .line 528
    const/4 v0, -0x1

    .line 529
    iget-object v1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v0

    move v3, v2

    move v4, v2

    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    .line 530
    iput v2, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->rowIndex:I

    .line 531
    iget v7, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    invoke-static {v7}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->isDividerViewType(I)Z

    move-result v7

    if-eqz v7, :cond_e

    move v0, v1

    move v1, v3

    move v3, v2

    :goto_8
    move v4, v3

    move v3, v1

    move v1, v0

    goto :goto_7

    .line 514
    :cond_c
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->hasNoFilteredResults()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 515
    iget-object v1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    add-int/lit8 v0, v4, 0x1

    invoke-static {v4}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->asEmptySearch(I)Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 519
    :goto_9
    iget-object v1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->asMarketSearch(I)Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 517
    :cond_d
    iget-object v1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    add-int/lit8 v0, v4, 0x1

    invoke-static {v4}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->asMarketDivider(I)Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 533
    :cond_e
    iget v7, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    invoke-static {v7}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->isIconViewType(I)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 534
    iget v7, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mNumAppsPerRow:I

    rem-int v7, v4, v7

    if-nez v7, :cond_f

    .line 536
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    .line 538
    :cond_f
    iput v1, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->rowIndex:I

    .line 539
    iput v3, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->rowAppIndex:I

    .line 540
    add-int/lit8 v4, v4, 0x1

    .line 541
    add-int/lit8 v3, v3, 0x1

    move v0, v1

    move v1, v3

    move v3, v4

    goto :goto_8

    .line 544
    :cond_10
    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mNumAppRowsInAdapter:I

    .line 547
    packed-switch v5, :pswitch_data_0

    .line 576
    :cond_11
    return-void

    .line 549
    :pswitch_0
    iget v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mNumAppRowsInAdapter:I

    int-to-float v0, v0

    div-float v1, v12, v0

    .line 550
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mFastScrollerSections:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;

    .line 551
    iget-object v3, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    .line 552
    iget v4, v3, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    invoke-static {v4}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->isIconViewType(I)Z

    move-result v4

    if-nez v4, :cond_12

    .line 553
    iput v10, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->touchFraction:F

    goto :goto_a

    .line 557
    :cond_12
    iget v4, v3, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->rowAppIndex:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mNumAppsPerRow:I

    int-to-float v5, v5

    div-float v5, v1, v5

    mul-float/2addr v4, v5

    .line 558
    iget v3, v3, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->rowIndex:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    add-float/2addr v3, v4

    iput v3, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->touchFraction:F

    goto :goto_a

    .line 562
    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mFastScrollerSections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-float v0, v0

    div-float v2, v12, v0

    .line 564
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mFastScrollerSections:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v10

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;

    .line 565
    iget-object v4, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    .line 566
    iget v4, v4, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    invoke-static {v4}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->isIconViewType(I)Z

    move-result v4

    if-nez v4, :cond_13

    .line 567
    iput v10, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->touchFraction:F

    move v0, v1

    :goto_c
    move v1, v0

    goto :goto_b

    .line 570
    :cond_13
    iput v1, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->touchFraction:F

    .line 571
    add-float v0, v1, v2

    goto :goto_c

    :cond_14
    move v0, v1

    move v1, v3

    move v3, v4

    goto/16 :goto_8

    :cond_15
    move-object v7, v3

    goto/16 :goto_3

    :cond_16
    move v1, v2

    move v0, v5

    move-object v3, v8

    goto/16 :goto_1

    .line 547
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private refreshRecyclerView()V
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapter:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapter:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->notifyDataSetChanged()V

    .line 406
    :cond_0
    return-void
.end method

.method private updateAdapterItems()V
    .locals 0

    .prologue
    .line 398
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->refillAdapterItems()V

    .line 399
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->refreshRecyclerView()V

    .line 400
    return-void
.end method


# virtual methods
.method public addApps(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 323
    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->updateApps(Ljava/util/List;)V

    .line 324
    return-void
.end method

.method public getAdapterItems()Ljava/util/List;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getApps()Ljava/util/List;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mApps:Ljava/util/List;

    return-object v0
.end method

.method public getFastScrollerSections()Ljava/util/List;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mFastScrollerSections:Ljava/util/List;

    return-object v0
.end method

.method public getNumAppRows()I
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mNumAppRowsInAdapter:I

    return v0
.end method

.method public getNumFilteredApps()I
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mFilteredApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public hasFilter()Z
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mSearchResults:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNoFilteredResults()Z
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mSearchResults:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mFilteredApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAppDiscoveryRunning()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 579
    iget-object v1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAppDiscoveryUpdateState:Lcom/android/launcher3/discovery/AppDiscoveryUpdateState;

    sget-object v2, Lcom/android/launcher3/discovery/AppDiscoveryUpdateState;->START:Lcom/android/launcher3/discovery/AppDiscoveryUpdateState;

    if-eq v1, v2, :cond_0

    .line 580
    iget-object v1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAppDiscoveryUpdateState:Lcom/android/launcher3/discovery/AppDiscoveryUpdateState;

    sget-object v2, Lcom/android/launcher3/discovery/AppDiscoveryUpdateState;->UPDATE:Lcom/android/launcher3/discovery/AppDiscoveryUpdateState;

    if-ne v1, v2, :cond_1

    .line 579
    :cond_0
    :goto_0
    return v0

    .line 580
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeApps(Ljava/util/List;)V
    .locals 3

    .prologue
    .line 340
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/AppInfo;

    .line 341
    iget-object v2, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mComponentToAppMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/android/launcher3/AppInfo;->toComponentKey()Lcom/android/launcher3/util/ComponentKey;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 343
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->onAppsUpdated()V

    .line 344
    return-void
.end method

.method public setAdapter(Lcom/android/launcher3/allapps/AllAppsGridAdapter;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapter:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    .line 219
    return-void
.end method

.method public setApps(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mComponentToAppMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 316
    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->addApps(Ljava/util/List;)V

    .line 317
    return-void
.end method

.method public setNumAppsPerRow(II)V
    .locals 0

    .prologue
    .line 208
    iput p1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mNumAppsPerRow:I

    .line 209
    iput p2, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mNumPredictedAppsPerRow:I

    .line 211
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->updateAdapterItems()V

    .line 212
    return-void
.end method

.method public setOrderedFilter(Ljava/util/ArrayList;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 278
    iget-object v1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mSearchResults:Ljava/util/ArrayList;

    if-eq v1, p1, :cond_1

    .line 279
    iget-object v1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mSearchResults:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mSearchResults:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 280
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mSearchResults:Ljava/util/ArrayList;

    .line 281
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->updateAdapterItems()V

    .line 282
    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 284
    :cond_1
    return v0
.end method

.method public setPredictedApps(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mPredictedAppComponents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 307
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mPredictedAppComponents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 308
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->onAppsUpdated()V

    .line 309
    return-void
.end method

.method shouldShowEmptySearch()Z
    .locals 1

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->hasNoFilteredResults()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->isAppDiscoveryRunning()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mDiscoveredApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateApps(Ljava/util/List;)V
    .locals 4

    .prologue
    .line 330
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/AppInfo;

    .line 331
    iget-object v2, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mComponentToAppMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/android/launcher3/AppInfo;->toComponentKey()Lcom/android/launcher3/util/ComponentKey;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 333
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->onAppsUpdated()V

    .line 334
    return-void
.end method
