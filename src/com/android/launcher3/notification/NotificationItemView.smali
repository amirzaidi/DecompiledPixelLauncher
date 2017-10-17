.class public Lcom/android/launcher3/notification/NotificationItemView;
.super Lcom/android/launcher3/popup/PopupItemView;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/logging/UserEventDispatcher$LogContainerProvider;


# static fields
.field private static final sTempRect:Landroid/graphics/Rect;


# instance fields
.field private mAnimatingNextIcon:Z

.field private mFooter:Lcom/android/launcher3/notification/NotificationFooterLayout;

.field private mHeaderCount:Landroid/widget/TextView;

.field private mMainView:Lcom/android/launcher3/notification/NotificationMainView;

.field private mNotificationHeaderTextColor:I

.field private mSwipeHelper:Lcom/android/launcher3/notification/SwipeHelper;


# direct methods
.method static synthetic -get0(Lcom/android/launcher3/notification/NotificationItemView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationItemView;->mIconView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/launcher3/notification/NotificationItemView;)Lcom/android/launcher3/notification/NotificationMainView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationItemView;->mMainView:Lcom/android/launcher3/notification/NotificationMainView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/launcher3/notification/NotificationItemView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/notification/NotificationItemView;->mAnimatingNextIcon:Z

    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher3/notification/NotificationItemView;->sTempRect:Landroid/graphics/Rect;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 59
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/notification/NotificationItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/notification/NotificationItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/popup/PopupItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/notification/NotificationItemView;->mNotificationHeaderTextColor:I

    .line 68
    return-void
.end method


# virtual methods
.method public animateHeightRemoval(I)Landroid/animation/Animator;
    .locals 4

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/android/launcher3/notification/NotificationItemView;->getHeight()I

    move-result v0

    sub-int/2addr v0, p1

    .line 91
    new-instance v1, Lcom/android/launcher3/anim/PillHeightRevealOutlineProvider;

    iget-object v2, p0, Lcom/android/launcher3/notification/NotificationItemView;->mPillRect:Landroid/graphics/Rect;

    .line 92
    invoke-virtual {p0}, Lcom/android/launcher3/notification/NotificationItemView;->getBackgroundRadius()F

    move-result v3

    .line 91
    invoke-direct {v1, v2, v3, v0}, Lcom/android/launcher3/anim/PillHeightRevealOutlineProvider;-><init>(Landroid/graphics/Rect;FI)V

    .line 92
    const/4 v0, 0x1

    .line 91
    invoke-virtual {v1, p0, v0}, Lcom/android/launcher3/anim/PillHeightRevealOutlineProvider;->createRevealAnimator(Landroid/view/View;Z)Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public applyNotificationInfos(Ljava/util/List;)V
    .locals 3

    .prologue
    .line 127
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    return-void

    .line 131
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/notification/NotificationInfo;

    .line 132
    iget-object v1, p0, Lcom/android/launcher3/notification/NotificationItemView;->mMainView:Lcom/android/launcher3/notification/NotificationMainView;

    iget-object v2, p0, Lcom/android/launcher3/notification/NotificationItemView;->mIconView:Landroid/view/View;

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/notification/NotificationMainView;->applyNotificationInfo(Lcom/android/launcher3/notification/NotificationInfo;Landroid/view/View;)V

    .line 134
    const/4 v0, 0x1

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 135
    iget-object v2, p0, Lcom/android/launcher3/notification/NotificationItemView;->mFooter:Lcom/android/launcher3/notification/NotificationFooterLayout;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/notification/NotificationInfo;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/notification/NotificationFooterLayout;->addNotificationInfo(Lcom/android/launcher3/notification/NotificationInfo;)V

    .line 134
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationItemView;->mFooter:Lcom/android/launcher3/notification/NotificationFooterLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/notification/NotificationFooterLayout;->commitNotificationInfos()V

    .line 138
    return-void
.end method

.method public fillInLogContainerData(Landroid/view/View;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)V
    .locals 1

    .prologue
    .line 175
    const/16 v0, 0x8

    iput v0, p3, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->itemType:I

    .line 176
    const/16 v0, 0x9

    iput v0, p4, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->containerType:I

    .line 177
    return-void
.end method

.method public getArrowColor(Z)I
    .locals 2

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/android/launcher3/notification/NotificationItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz p1, :cond_0

    .line 168
    const v0, 0x7f0a0020

    .line 167
    :goto_0
    invoke-static {v1, v0}, Landroid/support/v4/c/a;->arj(Landroid/content/Context;I)I

    move-result v0

    return v0

    .line 169
    :cond_0
    const v0, 0x7f0a001f

    goto :goto_0
.end method

.method public getHeightMinusFooter()I
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationItemView;->mFooter:Lcom/android/launcher3/notification/NotificationFooterLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/notification/NotificationFooterLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 86
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/notification/NotificationItemView;->getHeight()I

    move-result v1

    sub-int v0, v1, v0

    return v0

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationItemView;->mFooter:Lcom/android/launcher3/notification/NotificationFooterLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/notification/NotificationFooterLayout;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getMainView()Lcom/android/launcher3/notification/NotificationMainView;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationItemView;->mMainView:Lcom/android/launcher3/notification/NotificationMainView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 72
    invoke-super {p0}, Lcom/android/launcher3/popup/PopupItemView;->onFinishInflate()V

    .line 73
    const v0, 0x7f0e004b

    invoke-virtual {p0, v0}, Lcom/android/launcher3/notification/NotificationItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/notification/NotificationItemView;->mHeaderCount:Landroid/widget/TextView;

    .line 74
    const v0, 0x7f0e004c

    invoke-virtual {p0, v0}, Lcom/android/launcher3/notification/NotificationItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/notification/NotificationMainView;

    iput-object v0, p0, Lcom/android/launcher3/notification/NotificationItemView;->mMainView:Lcom/android/launcher3/notification/NotificationMainView;

    .line 75
    const v0, 0x7f0e004d

    invoke-virtual {p0, v0}, Lcom/android/launcher3/notification/NotificationItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/notification/NotificationFooterLayout;

    iput-object v0, p0, Lcom/android/launcher3/notification/NotificationItemView;->mFooter:Lcom/android/launcher3/notification/NotificationFooterLayout;

    .line 76
    new-instance v0, Lcom/android/launcher3/notification/SwipeHelper;

    iget-object v1, p0, Lcom/android/launcher3/notification/NotificationItemView;->mMainView:Lcom/android/launcher3/notification/NotificationMainView;

    invoke-virtual {p0}, Lcom/android/launcher3/notification/NotificationItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/android/launcher3/notification/SwipeHelper;-><init>(ILcom/android/launcher3/notification/SwipeHelper$Callback;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/notification/NotificationItemView;->mSwipeHelper:Lcom/android/launcher3/notification/SwipeHelper;

    .line 77
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationItemView;->mSwipeHelper:Lcom/android/launcher3/notification/SwipeHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/notification/SwipeHelper;->setDisableHardwareLayers(Z)V

    .line 78
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationItemView;->mMainView:Lcom/android/launcher3/notification/NotificationMainView;

    invoke-virtual {v0}, Lcom/android/launcher3/notification/NotificationMainView;->getNotificationInfo()Lcom/android/launcher3/notification/NotificationInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 111
    const/4 v0, 0x0

    return v0

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/notification/NotificationItemView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 114
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationItemView;->mSwipeHelper:Lcom/android/launcher3/notification/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/notification/SwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationItemView;->mMainView:Lcom/android/launcher3/notification/NotificationMainView;

    invoke-virtual {v0}, Lcom/android/launcher3/notification/NotificationMainView;->getNotificationInfo()Lcom/android/launcher3/notification/NotificationInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 121
    const/4 v0, 0x0

    return v0

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationItemView;->mSwipeHelper:Lcom/android/launcher3/notification/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/notification/SwipeHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lcom/android/launcher3/popup/PopupItemView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public trimNotifications(Ljava/util/List;)V
    .locals 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationItemView;->mMainView:Lcom/android/launcher3/notification/NotificationMainView;

    invoke-virtual {v0}, Lcom/android/launcher3/notification/NotificationMainView;->getNotificationInfo()Lcom/android/launcher3/notification/NotificationInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/notification/NotificationInfo;->notificationKey:Ljava/lang/String;

    .line 141
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 143
    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/notification/NotificationItemView;->mAnimatingNextIcon:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/notification/NotificationItemView;->mAnimatingNextIcon:Z

    .line 146
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationItemView;->mMainView:Lcom/android/launcher3/notification/NotificationMainView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/launcher3/notification/NotificationMainView;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationItemView;->mMainView:Lcom/android/launcher3/notification/NotificationMainView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/notification/NotificationMainView;->setTranslationX(F)V

    .line 148
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationItemView;->mIconView:Landroid/view/View;

    sget-object v1, Lcom/android/launcher3/notification/NotificationItemView;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 149
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationItemView;->mFooter:Lcom/android/launcher3/notification/NotificationFooterLayout;

    sget-object v1, Lcom/android/launcher3/notification/NotificationItemView;->sTempRect:Landroid/graphics/Rect;

    .line 150
    new-instance v2, Lcom/android/launcher3/notification/NotificationItemView$1;

    invoke-direct {v2, p0}, Lcom/android/launcher3/notification/NotificationItemView$1;-><init>(Lcom/android/launcher3/notification/NotificationItemView;)V

    .line 149
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/notification/NotificationFooterLayout;->animateFirstNotificationTo(Landroid/graphics/Rect;Lcom/android/launcher3/notification/NotificationFooterLayout$IconAnimationEndListener;)V

    .line 163
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationItemView;->mFooter:Lcom/android/launcher3/notification/NotificationFooterLayout;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/notification/NotificationFooterLayout;->trimNotifications(Ljava/util/List;)V

    goto :goto_0
.end method

.method public updateHeader(ILcom/android/launcher3/graphics/IconPalette;)V
    .locals 4

    .prologue
    .line 96
    iget-object v1, p0, Lcom/android/launcher3/notification/NotificationItemView;->mHeaderCount:Landroid/widget/TextView;

    const/4 v0, 0x1

    if-gt p1, v0, :cond_2

    const-string/jumbo v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    if-eqz p2, :cond_1

    .line 98
    iget v0, p0, Lcom/android/launcher3/notification/NotificationItemView;->mNotificationHeaderTextColor:I

    if-nez v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/android/launcher3/notification/NotificationItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p2, Lcom/android/launcher3/graphics/IconPalette;->dominantColor:I

    .line 101
    invoke-virtual {p0}, Lcom/android/launcher3/notification/NotificationItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a001f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 100
    invoke-static {v0, v1, v2}, Lcom/android/launcher3/graphics/IconPalette;->resolveContrastColor(Landroid/content/Context;II)I

    move-result v0

    .line 99
    iput v0, p0, Lcom/android/launcher3/notification/NotificationItemView;->mNotificationHeaderTextColor:I

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationItemView;->mHeaderCount:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/launcher3/notification/NotificationItemView;->mNotificationHeaderTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 105
    :cond_1
    return-void

    .line 96
    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
