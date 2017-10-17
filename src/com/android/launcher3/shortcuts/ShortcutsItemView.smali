.class public Lcom/android/launcher3/shortcuts/ShortcutsItemView;
.super Lcom/android/launcher3/popup/PopupItemView;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/launcher3/logging/UserEventDispatcher$LogContainerProvider;


# instance fields
.field private mContent:Landroid/widget/LinearLayout;

.field private final mDeepShortcutViews:Ljava/util/List;

.field private mHiddenShortcutsHeight:I

.field private final mIconLastTouchPos:Landroid/graphics/Point;

.field private final mIconShift:Landroid/graphics/Point;

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mShortcutsLayout:Landroid/widget/LinearLayout;

.field private mSystemShortcutIcons:Landroid/widget/LinearLayout;

.field private final mSystemShortcutViews:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 73
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/shortcuts/ShortcutsItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/shortcuts/ShortcutsItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/popup/PopupItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mIconShift:Landroid/graphics/Point;

    .line 66
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mIconLastTouchPos:Landroid/graphics/Point;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mDeepShortcutViews:Ljava/util/List;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mSystemShortcutViews:Ljava/util/List;

    .line 83
    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 84
    return-void
.end method

.method private addShortcutView(Landroid/view/View;Lcom/android/launcher3/popup/PopupPopulator$Item;I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 137
    sget-object v0, Lcom/android/launcher3/popup/PopupPopulator$Item;->SHORTCUT:Lcom/android/launcher3/popup/PopupPopulator$Item;

    if-ne p2, v0, :cond_2

    .line 138
    iget-object v2, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mDeepShortcutViews:Ljava/util/List;

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    :goto_0
    sget-object v0, Lcom/android/launcher3/popup/PopupPopulator$Item;->SYSTEM_SHORTCUT_ICON:Lcom/android/launcher3/popup/PopupPopulator$Item;

    if-ne p2, v0, :cond_4

    .line 144
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mSystemShortcutIcons:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 146
    iget-object v2, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mContent:Landroid/widget/LinearLayout;

    const v3, 0x7f040030

    .line 145
    invoke-virtual {v0, v3, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mSystemShortcutIcons:Landroid/widget/LinearLayout;

    .line 147
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mShortcutsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x1

    .line 148
    :goto_1
    iget-object v2, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mContent:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mSystemShortcutIcons:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    :cond_0
    invoke-virtual {v2, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mSystemShortcutIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 160
    :goto_2
    return-void

    .line 140
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mSystemShortcutViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    move v0, v1

    .line 147
    goto :goto_1

    .line 152
    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mShortcutsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 153
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mShortcutsLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mShortcutsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 154
    instance-of v2, v0, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    if-eqz v2, :cond_5

    .line 155
    const v2, 0x7f0e0043

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 158
    :cond_5
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mShortcutsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_2
.end method

.method private translateYFrom(Landroid/view/View;I)Landroid/animation/Animator;
    .locals 5

    .prologue
    .line 285
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    .line 286
    sget-object v1, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    int-to-float v3, p2

    add-float/2addr v3, v0

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x1

    aput v0, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addShortcutView(Landroid/view/View;Lcom/android/launcher3/popup/PopupPopulator$Item;)V
    .locals 1

    .prologue
    .line 133
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->addShortcutView(Landroid/view/View;Lcom/android/launcher3/popup/PopupPopulator$Item;I)V

    .line 134
    return-void
.end method

.method public enableWidgetsIfExist(Lcom/android/launcher3/BubbleTextView;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 293
    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 294
    new-instance v2, Lcom/android/launcher3/popup/SystemShortcut$Widgets;

    invoke-direct {v2}, Lcom/android/launcher3/popup/SystemShortcut$Widgets;-><init>()V

    .line 295
    iget-object v3, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2, v3, v0}, Lcom/android/launcher3/popup/SystemShortcut;->getOnClickListener(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/ItemInfo;)Landroid/view/View$OnClickListener;

    move-result-object v3

    .line 297
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mSystemShortcutViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 298
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/android/launcher3/popup/SystemShortcut$Widgets;

    if-eqz v5, :cond_0

    .line 303
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mSystemShortcutIcons:Landroid/widget/LinearLayout;

    if-nez v1, :cond_2

    .line 304
    sget-object v1, Lcom/android/launcher3/popup/PopupPopulator$Item;->SYSTEM_SHORTCUT:Lcom/android/launcher3/popup/PopupPopulator$Item;

    .line 306
    :goto_1
    if-eqz v3, :cond_4

    if-nez v0, :cond_4

    .line 308
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget v4, v1, Lcom/android/launcher3/popup/PopupPopulator$Item;->layoutId:I

    invoke-virtual {v0, v4, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 309
    invoke-virtual {p0}, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0, v2}, Lcom/android/launcher3/popup/PopupPopulator;->initializeSystemShortcut(Landroid/content/Context;Landroid/view/View;Lcom/android/launcher3/popup/SystemShortcut;)V

    .line 310
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    sget-object v2, Lcom/android/launcher3/popup/PopupPopulator$Item;->SYSTEM_SHORTCUT_ICON:Lcom/android/launcher3/popup/PopupPopulator$Item;

    if-ne v1, v2, :cond_3

    .line 312
    invoke-direct {p0, v0, v1, v6}, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->addShortcutView(Landroid/view/View;Lcom/android/launcher3/popup/PopupPopulator$Item;I)V

    .line 331
    :cond_1
    :goto_2
    return-void

    .line 305
    :cond_2
    sget-object v1, Lcom/android/launcher3/popup/PopupPopulator$Item;->SYSTEM_SHORTCUT_ICON:Lcom/android/launcher3/popup/PopupPopulator$Item;

    goto :goto_1

    .line 318
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/popup/PopupContainerWithArrow;

    invoke-virtual {v0, v6}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->close(Z)V

    .line 319
    invoke-static {p1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->showForIcon(Lcom/android/launcher3/BubbleTextView;)Lcom/android/launcher3/popup/PopupContainerWithArrow;

    goto :goto_2

    .line 321
    :cond_4
    if-nez v3, :cond_1

    if-eqz v0, :cond_1

    .line 323
    sget-object v2, Lcom/android/launcher3/popup/PopupPopulator$Item;->SYSTEM_SHORTCUT_ICON:Lcom/android/launcher3/popup/PopupPopulator$Item;

    if-ne v1, v2, :cond_5

    .line 324
    iget-object v1, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mSystemShortcutViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 325
    iget-object v1, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mSystemShortcutIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_2

    .line 327
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/popup/PopupContainerWithArrow;

    invoke-virtual {v0, v6}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->close(Z)V

    .line 328
    invoke-static {p1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->showForIcon(Lcom/android/launcher3/BubbleTextView;)Lcom/android/launcher3/popup/PopupContainerWithArrow;

    goto :goto_2

    :cond_6
    move-object v0, v1

    goto :goto_0
.end method

.method public fillInLogContainerData(Landroid/view/View;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)V
    .locals 1

    .prologue
    .line 336
    const/4 v0, 0x5

    iput v0, p3, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->itemType:I

    .line 337
    iget v0, p2, Lcom/android/launcher3/ItemInfo;->rank:I

    iput v0, p3, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->rank:I

    .line 338
    const/16 v0, 0x9

    iput v0, p4, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->containerType:I

    .line 339
    return-void
.end method

.method public getDeepShortcutViews(Z)Ljava/util/List;
    .locals 1

    .prologue
    .line 163
    if-eqz p1, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mDeepShortcutViews:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mDeepShortcutViews:Ljava/util/List;

    return-object v0
.end method

.method public getHiddenShortcutsHeight()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mHiddenShortcutsHeight:I

    return v0
.end method

.method public getSystemShortcutViews(Z)Ljava/util/List;
    .locals 1

    .prologue
    .line 172
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mSystemShortcutIcons:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mSystemShortcutViews:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mSystemShortcutViews:Ljava/util/List;

    return-object v0
.end method

.method public hideShortcuts(ZI)V
    .locals 9

    .prologue
    const/16 v7, 0x8

    const/4 v0, 0x0

    .line 185
    iget-object v1, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mShortcutsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 186
    invoke-virtual {p0}, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0075

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 187
    sub-int v1, v2, v1

    iget-object v2, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mShortcutsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mHiddenShortcutsHeight:I

    .line 189
    iget-object v1, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mShortcutsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    sub-int/2addr v1, p2

    .line 190
    if-gtz v1, :cond_0

    .line 191
    return-void

    .line 193
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mShortcutsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    .line 194
    if-eqz p1, :cond_3

    const/4 v2, 0x1

    .line 195
    :goto_0
    if-eqz p1, :cond_4

    move v8, v0

    move v0, v1

    move v1, v8

    :goto_1
    if-ltz v1, :cond_2

    if-ge v1, v3, :cond_2

    .line 196
    iget-object v4, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mShortcutsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 197
    instance-of v5, v4, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    if-eqz v5, :cond_5

    .line 198
    iget v5, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mHiddenShortcutsHeight:I

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mHiddenShortcutsHeight:I

    .line 199
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 200
    add-int v4, v1, v2

    .line 201
    if-nez p1, :cond_1

    if-ltz v4, :cond_1

    if-ge v4, v3, :cond_1

    .line 203
    iget-object v5, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mShortcutsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0e0043

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 205
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 206
    if-nez v0, :cond_5

    .line 211
    :cond_2
    return-void

    .line 194
    :cond_3
    const/4 v2, -0x1

    goto :goto_0

    .line 195
    :cond_4
    add-int/lit8 v0, v3, -0x1

    move v8, v0

    move v0, v1

    move v1, v8

    goto :goto_1

    :cond_5
    add-int/2addr v1, v2

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 88
    invoke-super {p0}, Lcom/android/launcher3/popup/PopupItemView;->onFinishInflate()V

    .line 89
    const v0, 0x7f0e0070

    invoke-virtual {p0, v0}, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mContent:Landroid/widget/LinearLayout;

    .line 90
    const v0, 0x7f0e0071

    invoke-virtual {p0, v0}, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mShortcutsLayout:Landroid/widget/LinearLayout;

    .line 91
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    if-nez v0, :cond_0

    return v7

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isDraggingEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    return v7

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_2

    return v7

    .line 115
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    .line 116
    invoke-virtual {v5, v7}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->setWillDrawIcon(Z)V

    .line 119
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mIconShift:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mIconLastTouchPos:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v5}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getIconCenter()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 120
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mIconShift:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mIconLastTouchPos:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 122
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v5}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getIconView()Landroid/view/View;

    move-result-object v1

    .line 123
    invoke-virtual {p0}, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/popup/PopupContainerWithArrow;

    invoke-virtual {v5}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getFinalInfo()Lcom/android/launcher3/ShortcutInfo;

    move-result-object v3

    .line 124
    new-instance v4, Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider;

    invoke-virtual {v5}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getIconView()Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mIconShift:Landroid/graphics/Point;

    invoke-direct {v4, v5, v6}, Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider;-><init>(Landroid/view/View;Landroid/graphics/Point;)V

    new-instance v5, Lcom/android/launcher3/dragndrop/DragOptions;

    invoke-direct {v5}, Lcom/android/launcher3/dragndrop/DragOptions;-><init>()V

    .line 122
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/Workspace;->beginDragShared(Landroid/view/View;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/graphics/DragPreviewProvider;Lcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mIconShift:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    neg-int v1, v1

    iget-object v2, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mIconShift:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/dragndrop/DragView;->animateShift(II)V

    .line 128
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenContainer(Lcom/android/launcher3/Launcher;I)V

    .line 129
    return v7
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 96
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 102
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 99
    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mIconLastTouchPos:Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public showAllShortcuts(Z)Landroid/animation/Animator;
    .locals 11

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 225
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mShortcutsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    .line 226
    if-nez v7, :cond_0

    .line 227
    const-string/jumbo v0, "ShortcutsItem"

    const-string/jumbo v1, "Tried to show all shortcuts but there were no shortcuts to show"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    return-object v2

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mShortcutsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v8, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 231
    invoke-virtual {p0}, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0075

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    move v1, v6

    .line 232
    :goto_0
    if-ge v1, v7, :cond_2

    .line 233
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mShortcutsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    .line 234
    invoke-virtual {v0}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v9, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 235
    invoke-virtual {v0}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->requestLayout()V

    .line 236
    invoke-virtual {v0, v6}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->setVisibility(I)V

    .line 237
    add-int/lit8 v2, v7, -0x1

    if-ge v1, v2, :cond_1

    .line 238
    const v2, 0x7f0e0043

    invoke-virtual {v0, v2}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 232
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 243
    :cond_2
    invoke-static {}, Lcom/android/launcher3/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v10

    .line 245
    if-eqz p1, :cond_4

    .line 248
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mShortcutsLayout:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mHiddenShortcutsHeight:I

    neg-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->translateYFrom(Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_3
    :goto_1
    move v3, v6

    .line 263
    :goto_2
    if-ge v3, v7, :cond_7

    .line 265
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mShortcutsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    .line 266
    sub-int v4, v9, v8

    .line 267
    if-eqz p1, :cond_5

    sub-int v1, v7, v3

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    .line 268
    :goto_3
    if-eqz p1, :cond_6

    const/4 v1, 0x1

    .line 269
    :goto_4
    mul-int/2addr v2, v4

    mul-int/2addr v2, v1

    invoke-direct {p0, v0, v2}, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->translateYFrom(Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 271
    invoke-virtual {v0}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getBubbleText()Lcom/android/launcher3/BubbleTextView;

    move-result-object v2

    div-int/lit8 v5, v4, 0x2

    mul-int/2addr v5, v1

    invoke-direct {p0, v2, v5}, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->translateYFrom(Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 272
    invoke-virtual {v0}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getIconView()Landroid/view/View;

    move-result-object v2

    div-int/lit8 v4, v4, 0x2

    mul-int/2addr v1, v4

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->translateYFrom(Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 274
    invoke-virtual {v0}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getIconView()Landroid/view/View;

    move-result-object v0

    .line 275
    new-instance v1, Lcom/android/launcher3/anim/PropertyListBuilder;

    invoke-direct {v1}, Lcom/android/launcher3/anim/PropertyListBuilder;-><init>()V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/android/launcher3/anim/PropertyListBuilder;->scale(F)Lcom/android/launcher3/anim/PropertyListBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/anim/PropertyListBuilder;->build()[Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 274
    invoke-static {v0, v1}, Lcom/android/launcher3/LauncherAnimUtils;->ofPropertyValuesHolder(Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 263
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 249
    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mSystemShortcutIcons:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    .line 254
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mSystemShortcutIcons:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mHiddenShortcutsHeight:I

    neg-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->translateYFrom(Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 256
    new-instance v3, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mPillRect:Landroid/graphics/Rect;

    invoke-direct {v3, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 257
    new-instance v4, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mPillRect:Landroid/graphics/Rect;

    invoke-direct {v4, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 258
    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mHiddenShortcutsHeight:I

    add-int/2addr v0, v1

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 259
    new-instance v0, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;

    invoke-virtual {p0}, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->getBackgroundRadius()F

    move-result v1

    .line 260
    invoke-virtual {p0}, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->getBackgroundRadius()F

    move-result v2

    iget v5, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mRoundedCorners:I

    .line 259
    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;-><init>(FFLandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    invoke-virtual {v0, p0, v6}, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;->createRevealAnimator(Landroid/view/View;Z)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto/16 :goto_1

    :cond_5
    move v2, v3

    .line 267
    goto/16 :goto_3

    .line 268
    :cond_6
    const/4 v1, -0x1

    goto/16 :goto_4

    .line 277
    :cond_7
    return-object v10
.end method
