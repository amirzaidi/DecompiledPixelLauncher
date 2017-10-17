.class public Lcom/android/launcher3/shortcuts/ShortcutsItemView;
.super Lcom/android/launcher3/popup/PopupItemView;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/launcher3/logging/UserEventDispatcher$LogContainerProvider;


# instance fields
.field private final mDeepShortcutViews:Ljava/util/List;

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
    .line 65
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/shortcuts/ShortcutsItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/shortcuts/ShortcutsItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/popup/PopupItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mIconShift:Landroid/graphics/Point;

    .line 60
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mIconLastTouchPos:Landroid/graphics/Point;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mDeepShortcutViews:Ljava/util/List;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mSystemShortcutViews:Ljava/util/List;

    .line 75
    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 76
    return-void
.end method

.method private addShortcutView(Landroid/view/View;Lcom/android/launcher3/popup/PopupPopulator$Item;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 128
    sget-object v0, Lcom/android/launcher3/popup/PopupPopulator$Item;->SHORTCUT:Lcom/android/launcher3/popup/PopupPopulator$Item;

    if-ne p2, v0, :cond_1

    .line 129
    iget-object v1, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mDeepShortcutViews:Ljava/util/List;

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    :goto_0
    sget-object v0, Lcom/android/launcher3/popup/PopupPopulator$Item;->SYSTEM_SHORTCUT_ICON:Lcom/android/launcher3/popup/PopupPopulator$Item;

    if-ne p2, v0, :cond_2

    .line 135
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mSystemShortcutIcons:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mShortcutsLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f04002e

    .line 136
    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mSystemShortcutIcons:Landroid/widget/LinearLayout;

    .line 138
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mShortcutsLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mSystemShortcutIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mSystemShortcutIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 150
    :goto_1
    return-void

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mSystemShortcutViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 142
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mShortcutsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 143
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mShortcutsLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mShortcutsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 144
    instance-of v1, v0, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    if-eqz v1, :cond_3

    .line 145
    const v1, 0x7f0e003b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 148
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mShortcutsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_1
.end method


# virtual methods
.method public addShortcutView(Landroid/view/View;Lcom/android/launcher3/popup/PopupPopulator$Item;)V
    .locals 1

    .prologue
    .line 124
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->addShortcutView(Landroid/view/View;Lcom/android/launcher3/popup/PopupPopulator$Item;I)V

    .line 125
    return-void
.end method

.method public createCloseAnimation(ZZJ)Landroid/animation/Animator;
    .locals 7

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 233
    invoke-static {}, Lcom/android/launcher3/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v2

    .line 234
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher3/popup/PopupItemView;->createCloseAnimation(ZZJ)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 235
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mShortcutsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mShortcutsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    if-nez v0, :cond_0

    .line 235
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mShortcutsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    .line 240
    invoke-virtual {v0}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getIconView()Landroid/view/View;

    move-result-object v0

    .line 241
    invoke-virtual {v0, v5}, Landroid/view/View;->setScaleX(F)V

    .line 242
    invoke-virtual {v0, v5}, Landroid/view/View;->setScaleY(F)V

    .line 244
    new-instance v3, Lcom/android/launcher3/anim/PropertyListBuilder;

    invoke-direct {v3}, Lcom/android/launcher3/anim/PropertyListBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/launcher3/anim/PropertyListBuilder;->scale(F)Lcom/android/launcher3/anim/PropertyListBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/anim/PropertyListBuilder;->build()[Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 243
    invoke-static {v0, v3}, Lcom/android/launcher3/LauncherAnimUtils;->ofPropertyValuesHolder(Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_1

    .line 246
    :cond_1
    return-object v2
.end method

.method public createOpenAnimation(ZZ)Landroid/animation/Animator;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 214
    invoke-static {}, Lcom/android/launcher3/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v2

    .line 215
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/popup/PopupItemView;->createOpenAnimation(ZZ)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 216
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mShortcutsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mShortcutsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    if-nez v0, :cond_0

    .line 216
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mShortcutsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    .line 221
    invoke-virtual {v0}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getIconView()Landroid/view/View;

    move-result-object v0

    .line 222
    invoke-virtual {v0, v5}, Landroid/view/View;->setScaleX(F)V

    .line 223
    invoke-virtual {v0, v5}, Landroid/view/View;->setScaleY(F)V

    .line 225
    new-instance v3, Lcom/android/launcher3/anim/PropertyListBuilder;

    invoke-direct {v3}, Lcom/android/launcher3/anim/PropertyListBuilder;-><init>()V

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Lcom/android/launcher3/anim/PropertyListBuilder;->scale(F)Lcom/android/launcher3/anim/PropertyListBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/anim/PropertyListBuilder;->build()[Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 224
    invoke-static {v0, v3}, Lcom/android/launcher3/LauncherAnimUtils;->ofPropertyValuesHolder(Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_1

    .line 227
    :cond_1
    return-object v2
.end method

.method public enableWidgetsIfExist(Lcom/android/launcher3/BubbleTextView;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 172
    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 173
    new-instance v2, Lcom/android/launcher3/popup/SystemShortcut$Widgets;

    invoke-direct {v2}, Lcom/android/launcher3/popup/SystemShortcut$Widgets;-><init>()V

    .line 174
    iget-object v3, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2, v3, v0}, Lcom/android/launcher3/popup/SystemShortcut;->getOnClickListener(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/ItemInfo;)Landroid/view/View$OnClickListener;

    move-result-object v3

    .line 176
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

    .line 177
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/android/launcher3/popup/SystemShortcut$Widgets;

    if-eqz v5, :cond_0

    .line 182
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mSystemShortcutIcons:Landroid/widget/LinearLayout;

    if-nez v1, :cond_2

    .line 183
    sget-object v1, Lcom/android/launcher3/popup/PopupPopulator$Item;->SYSTEM_SHORTCUT:Lcom/android/launcher3/popup/PopupPopulator$Item;

    .line 185
    :goto_1
    if-eqz v3, :cond_4

    if-nez v0, :cond_4

    .line 187
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget v4, v1, Lcom/android/launcher3/popup/PopupPopulator$Item;->layoutId:I

    invoke-virtual {v0, v4, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 188
    invoke-virtual {p0}, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0, v2}, Lcom/android/launcher3/popup/PopupPopulator;->initializeSystemShortcut(Landroid/content/Context;Landroid/view/View;Lcom/android/launcher3/popup/SystemShortcut;)V

    .line 189
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    sget-object v2, Lcom/android/launcher3/popup/PopupPopulator$Item;->SYSTEM_SHORTCUT_ICON:Lcom/android/launcher3/popup/PopupPopulator$Item;

    if-ne v1, v2, :cond_3

    .line 191
    invoke-direct {p0, v0, v1, v6}, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->addShortcutView(Landroid/view/View;Lcom/android/launcher3/popup/PopupPopulator$Item;I)V

    .line 210
    :cond_1
    :goto_2
    return-void

    .line 184
    :cond_2
    sget-object v1, Lcom/android/launcher3/popup/PopupPopulator$Item;->SYSTEM_SHORTCUT_ICON:Lcom/android/launcher3/popup/PopupPopulator$Item;

    goto :goto_1

    .line 197
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/popup/PopupContainerWithArrow;

    invoke-virtual {v0, v6}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->close(Z)V

    .line 198
    invoke-static {p1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->showForIcon(Lcom/android/launcher3/BubbleTextView;)Lcom/android/launcher3/popup/PopupContainerWithArrow;

    goto :goto_2

    .line 200
    :cond_4
    if-nez v3, :cond_1

    if-eqz v0, :cond_1

    .line 202
    sget-object v2, Lcom/android/launcher3/popup/PopupPopulator$Item;->SYSTEM_SHORTCUT_ICON:Lcom/android/launcher3/popup/PopupPopulator$Item;

    if-ne v1, v2, :cond_5

    .line 203
    iget-object v1, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mSystemShortcutViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 204
    iget-object v1, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mSystemShortcutIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_2

    .line 206
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/popup/PopupContainerWithArrow;

    invoke-virtual {v0, v6}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->close(Z)V

    .line 207
    invoke-static {p1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->showForIcon(Lcom/android/launcher3/BubbleTextView;)Lcom/android/launcher3/popup/PopupContainerWithArrow;

    goto :goto_2

    :cond_6
    move-object v0, v1

    goto :goto_0
.end method

.method public fillInLogContainerData(Landroid/view/View;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)V
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x5

    iput v0, p3, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->itemType:I

    .line 261
    iget v0, p2, Lcom/android/launcher3/ItemInfo;->rank:I

    iput v0, p3, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->rank:I

    .line 262
    const/16 v0, 0x9

    iput v0, p4, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->containerType:I

    .line 263
    return-void
.end method

.method public getArrowColor(Z)I
    .locals 2

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 252
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mSystemShortcutIcons:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    .line 253
    :cond_0
    const v0, 0x7f0a0020

    .line 251
    :goto_0
    invoke-static {v1, v0}, Landroid/support/v4/c/a;->arj(Landroid/content/Context;I)I

    move-result v0

    return v0

    .line 254
    :cond_1
    const v0, 0x7f0a001f

    goto :goto_0
.end method

.method public getDeepShortcutViews(Z)Ljava/util/List;
    .locals 1

    .prologue
    .line 153
    if-eqz p1, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mDeepShortcutViews:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mDeepShortcutViews:Ljava/util/List;

    return-object v0
.end method

.method public getSystemShortcutViews(Z)Ljava/util/List;
    .locals 1

    .prologue
    .line 162
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mSystemShortcutIcons:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mSystemShortcutViews:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mSystemShortcutViews:Ljava/util/List;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Lcom/android/launcher3/popup/PopupItemView;->onFinishInflate()V

    .line 81
    const v0, 0x7f0e0065

    invoke-virtual {p0, v0}, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mShortcutsLayout:Landroid/widget/LinearLayout;

    .line 82
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 99
    invoke-virtual {p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    return v7

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isDraggingEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    return v7

    .line 103
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_3

    return v7

    .line 106
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    .line 107
    invoke-virtual {v5, v7}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->setWillDrawIcon(Z)V

    .line 110
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mIconShift:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mIconLastTouchPos:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v5}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getIconCenter()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 111
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mIconShift:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mIconLastTouchPos:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 113
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v5}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getIconView()Landroid/view/View;

    move-result-object v1

    .line 114
    invoke-virtual {p0}, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/popup/PopupContainerWithArrow;

    invoke-virtual {v5}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getFinalInfo()Lcom/android/launcher3/ShortcutInfo;

    move-result-object v3

    .line 115
    new-instance v4, Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider;

    invoke-virtual {v5}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getIconView()Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mIconShift:Landroid/graphics/Point;

    invoke-direct {v4, v5, v6}, Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider;-><init>(Landroid/view/View;Landroid/graphics/Point;)V

    new-instance v5, Lcom/android/launcher3/dragndrop/DragOptions;

    invoke-direct {v5}, Lcom/android/launcher3/dragndrop/DragOptions;-><init>()V

    .line 113
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/Workspace;->beginDragShared(Landroid/view/View;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/graphics/DragPreviewProvider;Lcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;

    move-result-object v0

    .line 116
    iget-object v1, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mIconShift:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    neg-int v1, v1

    iget-object v2, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mIconShift:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/dragndrop/DragView;->animateShift(II)V

    .line 119
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenContainer(Lcom/android/launcher3/Launcher;I)V

    .line 120
    return v7
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 87
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 93
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 90
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

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
