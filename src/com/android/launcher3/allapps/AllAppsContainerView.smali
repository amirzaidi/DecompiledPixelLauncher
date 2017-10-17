.class public Lcom/android/launcher3/allapps/AllAppsContainerView;
.super Lcom/android/launcher3/BaseContainerView;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/DragSource;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/launcher3/allapps/AllAppsSearchBarController$Callbacks;
.implements Lcom/android/launcher3/Insettable;


# instance fields
.field private final mAdapter:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

.field private final mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

.field private mAppsRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

.field private mElevationController:Lcom/android/launcher3/allapps/HeaderElevationController;

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private final mLayoutManager:Landroid/support/v7/widget/p;

.field private mNumAppsPerRow:I

.field private mNumPredictedAppsPerRow:I

.field private mSearchBarController:Lcom/android/launcher3/allapps/AllAppsSearchBarController;

.field private mSearchContainer:Landroid/view/View;

.field private mSearchContainerMinHeight:I

.field private mSearchInput:Lcom/android/launcher3/ExtendedEditText;

.field private mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;


# direct methods
.method static synthetic -get0(Lcom/android/launcher3/allapps/AllAppsContainerView;)Lcom/android/launcher3/allapps/AllAppsRecyclerView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAppsRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/allapps/AllAppsContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/allapps/AllAppsContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    .line 100
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/BaseContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    .line 102
    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 103
    new-instance v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-direct {v0, p1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    .line 104
    new-instance v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    iget-object v3, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/allapps/AlphabeticalAppsList;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAdapter:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    .line 105
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAdapter:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->setAdapter(Lcom/android/launcher3/allapps/AllAppsGridAdapter;)V

    .line 106
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAdapter:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->getLayoutManager()Landroid/support/v7/widget/M;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mLayoutManager:Landroid/support/v7/widget/p;

    .line 107
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    .line 109
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 108
    iput v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSearchContainerMinHeight:I

    .line 111
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 112
    return-void
.end method


# virtual methods
.method public addApps(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->addApps(Ljava/util/List;)V

    .line 151
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSearchBarController:Lcom/android/launcher3/allapps/AllAppsSearchBarController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsSearchBarController;->refreshSearchResult()V

    .line 152
    return-void
.end method

.method public clearSearchResult()V
    .locals 2

    .prologue
    .line 450
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->setOrderedFilter(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAppsRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->onSearchResultsChanged()V

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 456
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 457
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 458
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 350
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSearchBarController:Lcom/android/launcher3/allapps/AllAppsSearchBarController;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AllAppsSearchBarController;->isSearchFieldFocused()Z

    move-result v1

    if-nez v1, :cond_1

    .line 351
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 352
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v1

    .line 353
    if-lez v1, :cond_0

    .line 354
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 353
    if-eqz v2, :cond_0

    .line 354
    invoke-static {v1}, Ljava/lang/Character;->isSpaceChar(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 355
    :cond_0
    if-eqz v0, :cond_1

    .line 356
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    .line 357
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 356
    invoke-virtual {v0, p0, v1, v2, p1}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 358
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 359
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSearchBarController:Lcom/android/launcher3/allapps/AllAppsSearchBarController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsSearchBarController;->focusSearchField()V

    .line 364
    :cond_1
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseContainerView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public fillInLogContainerData(Landroid/view/View;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)V
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAppsRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getContainerType(Landroid/view/View;)I

    move-result v0

    iput v0, p4, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->containerType:I

    .line 463
    return-void
.end method

.method public getIntrinsicIconScaleFactor()F
    .locals 2

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 410
    iget v1, v0, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    int-to-float v1, v1

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v0, v0

    div-float v0, v1, v0

    return v0
.end method

.method public getTouchDelegateTargetView()Landroid/view/View;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAppsRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    return-object v0
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;ZZ)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 416
    if-nez p3, :cond_0

    xor-int/lit8 v0, p4, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 417
    instance-of v0, p1, Lcom/android/launcher3/DeleteDropTarget;

    xor-int/lit8 v0, v0, 0x1

    .line 416
    if-eqz v0, :cond_1

    .line 417
    instance-of v0, p1, Lcom/android/launcher3/folder/Folder;

    xor-int/lit8 v0, v0, 0x1

    .line 416
    if-eqz v0, :cond_1

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v1, 0x1

    .line 421
    const/16 v2, 0x1f4

    const/4 v3, 0x0

    .line 420
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/Launcher;->exitSpringLoadedDragModeDelayed(ZILjava/lang/Runnable;)V

    .line 423
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v4}, Lcom/android/launcher3/Launcher;->unlockScreenOrientation(Z)V

    .line 425
    if-nez p4, :cond_2

    .line 426
    iput-boolean v4, p2, Lcom/android/launcher3/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 428
    :cond_2
    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 246
    invoke-super {p0}, Lcom/android/launcher3/BaseContainerView;->onFinishInflate()V

    .line 250
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->getContentView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/allapps/AllAppsContainerView$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/allapps/AllAppsContainerView$1;-><init>(Lcom/android/launcher3/allapps/AllAppsContainerView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 259
    const v0, 0x7f0e0029

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSearchContainer:Landroid/view/View;

    .line 260
    const v0, 0x7f0e002b

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ExtendedEditText;

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSearchInput:Lcom/android/launcher3/ExtendedEditText;

    .line 266
    new-instance v0, Landroid/text/SpannableString;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSearchInput:Lcom/android/launcher3/ExtendedEditText;

    invoke-virtual {v2}, Lcom/android/launcher3/ExtendedEditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 267
    new-instance v1, Lcom/android/launcher3/graphics/TintedDrawableSpan;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f02003d

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/graphics/TintedDrawableSpan;-><init>(Landroid/content/Context;I)V

    .line 268
    const/16 v2, 0x22

    .line 267
    invoke-virtual {v0, v1, v4, v5, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 269
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSearchInput:Lcom/android/launcher3/ExtendedEditText;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/ExtendedEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 271
    new-instance v0, Lcom/android/launcher3/allapps/HeaderElevationController;

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSearchContainer:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/HeaderElevationController;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mElevationController:Lcom/android/launcher3/allapps/HeaderElevationController;

    .line 274
    const v0, 0x7f0e0028

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAppsRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    .line 275
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAppsRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->setApps(Lcom/android/launcher3/allapps/AlphabeticalAppsList;)V

    .line 276
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAppsRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mLayoutManager:Landroid/support/v7/widget/p;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->setLayoutManager(Landroid/support/v7/widget/p;)V

    .line 277
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAppsRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAdapter:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->setAdapter(Landroid/support/v7/widget/q;)V

    .line 278
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAppsRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v0, v5}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->setHasFixedSize(Z)V

    .line 279
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAppsRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mElevationController:Lcom/android/launcher3/allapps/HeaderElevationController;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->addOnScrollListener(Landroid/support/v7/widget/m;)V

    .line 280
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAppsRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mElevationController:Lcom/android/launcher3/allapps/HeaderElevationController;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->setElevationController(Lcom/android/launcher3/allapps/HeaderElevationController;)V

    .line 282
    new-instance v0, Lcom/android/launcher3/keyboard/FocusedItemDecorator;

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAppsRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-direct {v0, v1}, Lcom/android/launcher3/keyboard/FocusedItemDecorator;-><init>(Landroid/view/View;)V

    .line 283
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAppsRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->addItemDecoration(Landroid/support/v7/widget/o;)V

    .line 284
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAppsRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAdapter:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->preMeasureViews(Lcom/android/launcher3/allapps/AllAppsGridAdapter;)V

    .line 285
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAdapter:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    invoke-virtual {v0}, Lcom/android/launcher3/keyboard/FocusedItemDecorator;->getFocusListener()Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->setIconFocusListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 287
    sget-boolean v0, Lcom/android/launcher3/config/FeatureFlags;->LAUNCHER3_ALL_APPS_PULL_UP:Z

    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->getRevealView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 289
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 290
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->getContentView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 292
    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 370
    invoke-virtual {p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isAppsViewVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 374
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isSwitchingState()Z

    move-result v0

    .line 373
    if-eqz v0, :cond_2

    .line 374
    :cond_1
    return v2

    .line 376
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isDraggingEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    return v2

    .line 377
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_4

    return v2

    .line 380
    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v0

    .line 381
    new-instance v1, Lcom/android/launcher3/allapps/AllAppsContainerView$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/launcher3/allapps/AllAppsContainerView$2;-><init>(Lcom/android/launcher3/allapps/AllAppsContainerView;Landroid/view/View;Lcom/android/launcher3/dragndrop/DragController;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    .line 393
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/dragndrop/DragOptions;

    invoke-direct {v1}, Lcom/android/launcher3/dragndrop/DragOptions;-><init>()V

    invoke-virtual {v0, p1, p0, v1}, Lcom/android/launcher3/Workspace;->beginDragShared(Landroid/view/View;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/dragndrop/DragOptions;)V

    .line 394
    return v2
.end method

.method protected onMeasure(II)V
    .locals 4

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 305
    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->updateAppsViewNumCols()V

    .line 306
    sget-boolean v1, Lcom/android/launcher3/config/FeatureFlags;->LAUNCHER3_ALL_APPS_PULL_UP:Z

    if-eqz v1, :cond_3

    .line 307
    iget v1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mNumAppsPerRow:I

    iget-object v2, v0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    if-ne v1, v2, :cond_0

    .line 308
    iget v1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mNumPredictedAppsPerRow:I

    iget-object v2, v0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    if-eq v1, v2, :cond_1

    .line 309
    :cond_0
    iget-object v1, v0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iput v1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mNumAppsPerRow:I

    .line 310
    iget-object v1, v0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iput v1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mNumPredictedAppsPerRow:I

    .line 312
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAppsRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget v2, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mNumAppsPerRow:I

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->setNumAppsPerRow(Lcom/android/launcher3/DeviceProfile;I)V

    .line 313
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAdapter:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    iget v2, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mNumAppsPerRow:I

    invoke-virtual {v1, v2}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->setNumAppsPerRow(I)V

    .line 314
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    iget v2, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mNumAppsPerRow:I

    iget v3, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mNumPredictedAppsPerRow:I

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->setNumAppsPerRow(II)V

    .line 316
    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-nez v0, :cond_2

    .line 318
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSearchContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 320
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/dragndrop/DragLayer;->getInsets()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 321
    iget v2, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSearchContainerMinHeight:I

    .line 320
    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 322
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSearchContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 324
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/BaseContainerView;->onMeasure(II)V

    .line 325
    return-void

    .line 331
    :cond_3
    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->updateAppsViewNumCols()V

    .line 332
    iget v1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mNumAppsPerRow:I

    iget v2, v0, Lcom/android/launcher3/DeviceProfile;->allAppsNumCols:I

    if-ne v1, v2, :cond_4

    .line 333
    iget v1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mNumPredictedAppsPerRow:I

    iget v2, v0, Lcom/android/launcher3/DeviceProfile;->allAppsNumPredictiveCols:I

    if-eq v1, v2, :cond_5

    .line 334
    :cond_4
    iget v1, v0, Lcom/android/launcher3/DeviceProfile;->allAppsNumCols:I

    iput v1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mNumAppsPerRow:I

    .line 335
    iget v1, v0, Lcom/android/launcher3/DeviceProfile;->allAppsNumPredictiveCols:I

    iput v1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mNumPredictedAppsPerRow:I

    .line 337
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAppsRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget v2, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mNumAppsPerRow:I

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->setNumAppsPerRow(Lcom/android/launcher3/DeviceProfile;I)V

    .line 338
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAdapter:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    iget v1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mNumAppsPerRow:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->setNumAppsPerRow(I)V

    .line 339
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    iget v1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mNumAppsPerRow:I

    iget v2, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mNumPredictedAppsPerRow:I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->setNumAppsPerRow(II)V

    .line 343
    :cond_5
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/BaseContainerView;->onMeasure(II)V

    .line 344
    return-void
.end method

.method public onSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1

    .prologue
    .line 432
    if-eqz p2, :cond_0

    .line 433
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->setOrderedFilter(Ljava/util/ArrayList;)Z

    .line 434
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAppsRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->onSearchResultsChanged()V

    .line 435
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAdapter:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->setLastSearchQuery(Ljava/lang/String;)V

    .line 437
    :cond_0
    return-void
.end method

.method public removeApps(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->removeApps(Ljava/util/List;)V

    .line 167
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSearchBarController:Lcom/android/launcher3/allapps/AllAppsSearchBarController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsSearchBarController;->refreshSearchResult()V

    .line 168
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->scrollToTop()V

    .line 240
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSearchBarController:Lcom/android/launcher3/allapps/AllAppsSearchBarController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsSearchBarController;->reset()V

    .line 241
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAppsRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->reset()V

    .line 242
    return-void
.end method

.method public scrollToTop()V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAppsRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->scrollToTop()V

    .line 195
    return-void
.end method

.method public setApps(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->setApps(Ljava/util/List;)V

    .line 144
    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 3

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 472
    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 474
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 475
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 476
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 477
    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 485
    :goto_0
    return-void

    .line 479
    :cond_0
    const v0, 0x7f0e002c

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 480
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 481
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 482
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 483
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPredictedApps(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->setPredictedApps(Ljava/util/List;)V

    .line 137
    return-void
.end method

.method public setSearchBarController(Lcom/android/launcher3/allapps/AllAppsSearchBarController;)V
    .locals 4

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSearchBarController:Lcom/android/launcher3/allapps/AllAppsSearchBarController;

    if-eqz v0, :cond_0

    .line 183
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Expected search bar controller to only be set once"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSearchBarController:Lcom/android/launcher3/allapps/AllAppsSearchBarController;

    .line 186
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSearchBarController:Lcom/android/launcher3/allapps/AllAppsSearchBarController;

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSearchInput:Lcom/android/launcher3/ExtendedEditText;

    iget-object v3, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/android/launcher3/allapps/AllAppsSearchBarController;->initialize(Lcom/android/launcher3/allapps/AlphabeticalAppsList;Lcom/android/launcher3/ExtendedEditText;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/allapps/AllAppsSearchBarController$Callbacks;)V

    .line 187
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAdapter:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSearchBarController:Lcom/android/launcher3/allapps/AllAppsSearchBarController;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->setSearchController(Lcom/android/launcher3/allapps/AllAppsSearchBarController;)V

    .line 188
    return-void
.end method

.method public shouldContainerScroll(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 201
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 202
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    .line 203
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    .line 204
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAppsRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-static {v1, p0, v0}, Lcom/android/launcher3/Utilities;->mapCoordInSelfToDescendant(Landroid/view/View;Landroid/view/View;[I)V

    .line 208
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSearchContainer:Landroid/view/View;

    invoke-virtual {v1, v2, p1}, Lcom/android/launcher3/dragndrop/DragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    return v4

    .line 213
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAppsRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getScrollBar()Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;

    move-result-object v1

    aget v2, v0, v3

    aget v0, v0, v4

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->isNearThumb(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    return v3

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAppsRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getCurrentScrollY()I

    move-result v0

    if-nez v0, :cond_2

    .line 220
    return v4

    .line 222
    :cond_2
    return v3
.end method

.method public shouldRestoreImeState()Z
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSearchInput:Lcom/android/launcher3/ExtendedEditText;

    invoke-virtual {v0}, Lcom/android/launcher3/ExtendedEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public startAppsSearch()V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSearchBarController:Lcom/android/launcher3/allapps/AllAppsSearchBarController;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSearchBarController:Lcom/android/launcher3/allapps/AllAppsSearchBarController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsSearchBarController;->focusSearchField()V

    .line 232
    :cond_0
    return-void
.end method

.method public supportsAppInfoDropTarget()Z
    .locals 1

    .prologue
    .line 399
    const/4 v0, 0x1

    return v0
.end method

.method public supportsDeleteDropTarget()Z
    .locals 1

    .prologue
    .line 404
    const/4 v0, 0x0

    return v0
.end method

.method public updateApps(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->updateApps(Ljava/util/List;)V

    .line 159
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSearchBarController:Lcom/android/launcher3/allapps/AllAppsSearchBarController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsSearchBarController;->refreshSearchResult()V

    .line 160
    return-void
.end method

.method protected updateBackground(IIII)V
    .locals 7

    .prologue
    .line 117
    sget-boolean v0, Lcom/android/launcher3/config/FeatureFlags;->LAUNCHER3_ALL_APPS_PULL_UP:Z

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->getRevealView()Landroid/view/View;

    move-result-object v6

    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mBaseDrawable:Landroid/graphics/drawable/Drawable;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 121
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->getContentView()Landroid/view/View;

    move-result-object v6

    .line 122
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 121
    invoke-virtual {v6, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 130
    :goto_0
    return-void

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->getRevealView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mBaseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 128
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher3/BaseContainerView;->updateBackground(IIII)V

    goto :goto_0
.end method

.method public updateIconBadges(Ljava/util/Set;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 488
    new-instance v3, Lcom/android/launcher3/util/PackageUserKey;

    invoke-direct {v3, v0, v0}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 489
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAppsRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getChildCount()I

    move-result v4

    .line 490
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_2

    .line 491
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAppsRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 492
    instance-of v0, v1, Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/ItemInfo;

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 490
    :cond_0
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 495
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 496
    invoke-virtual {v3, v0}, Lcom/android/launcher3/util/PackageUserKey;->updateFromItemInfo(Lcom/android/launcher3/ItemInfo;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 497
    check-cast v1, Lcom/android/launcher3/BubbleTextView;

    const/4 v5, 0x1

    invoke-virtual {v1, v0, v5}, Lcom/android/launcher3/BubbleTextView;->applyBadgeState(Lcom/android/launcher3/ItemInfo;Z)V

    goto :goto_1

    .line 500
    :cond_2
    return-void
.end method
