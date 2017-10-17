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

.field private mHeaderText:Landroid/widget/TextView;

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
    .line 53
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher3/notification/NotificationItemView;->sTempRect:Landroid/graphics/Rect;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 64
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/notification/NotificationItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/notification/NotificationItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/popup/PopupItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/notification/NotificationItemView;->mNotificationHeaderTextColor:I

    .line 73
    return-void
.end method


# virtual methods
.method public animateHeightRemoval(IZ)Landroid/animation/Animator;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 96
    invoke-static {}, Lcom/android/launcher3/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v6

    .line 98
    new-instance v3, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationItemView;->mPillRect:Landroid/graphics/Rect;

    invoke-direct {v3, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 99
    new-instance v4, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationItemView;->mPillRect:Landroid/graphics/Rect;

    invoke-direct {v4, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 100
    if-eqz p2, :cond_1

    .line 101
    iget v0, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p1

    iput v0, v4, Landroid/graphics/Rect;->top:I

    .line 105
    :goto_0
    new-instance v0, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;

    invoke-virtual {p0}, Lcom/android/launcher3/notification/NotificationItemView;->getBackgroundRadius()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/notification/NotificationItemView;->getBackgroundRadius()F

    move-result v2

    .line 106
    iget v5, p0, Lcom/android/launcher3/notification/NotificationItemView;->mRoundedCorners:I

    .line 105
    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;-><init>(FFLandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    invoke-virtual {v0, p0, v7}, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;->createRevealAnimator(Landroid/view/View;Z)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 108
    const v0, 0x7f0e0057

    invoke-virtual {p0, v0}, Lcom/android/launcher3/notification/NotificationItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 110
    sget-object v1, Lcom/android/launcher3/notification/NotificationItemView;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    .line 111
    neg-int v3, p1

    int-to-float v3, v3

    aput v3, v2, v7

    .line 110
    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 112
    new-instance v1, Lcom/android/launcher3/anim/PropertyResetListener;

    sget-object v2, Lcom/android/launcher3/notification/NotificationItemView;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/anim/PropertyResetListener;-><init>(Landroid/util/Property;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 113
    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 116
    :cond_0
    return-object v6

    .line 103
    :cond_1
    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p1

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method public applyNotificationInfos(Ljava/util/List;)V
    .locals 3

    .prologue
    .line 152
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    return-void

    .line 156
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/notification/NotificationInfo;

    .line 157
    iget-object v1, p0, Lcom/android/launcher3/notification/NotificationItemView;->mMainView:Lcom/android/launcher3/notification/NotificationMainView;

    iget-object v2, p0, Lcom/android/launcher3/notification/NotificationItemView;->mIconView:Landroid/view/View;

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/notification/NotificationMainView;->applyNotificationInfo(Lcom/android/launcher3/notification/NotificationInfo;Landroid/view/View;)V

    .line 159
    const/4 v0, 0x1

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 160
    iget-object v2, p0, Lcom/android/launcher3/notification/NotificationItemView;->mFooter:Lcom/android/launcher3/notification/NotificationFooterLayout;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/notification/NotificationInfo;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/notification/NotificationFooterLayout;->addNotificationInfo(Lcom/android/launcher3/notification/NotificationInfo;)V

    .line 159
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationItemView;->mFooter:Lcom/android/launcher3/notification/NotificationFooterLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/notification/NotificationFooterLayout;->commitNotificationInfos()V

    .line 163
    return-void
.end method

.method public fillInLogContainerData(Landroid/view/View;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)V
    .locals 1

    .prologue
    .line 193
    const/16 v0, 0x8

    iput v0, p3, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->itemType:I

    .line 194
    const/16 v0, 0x9

    iput v0, p4, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->containerType:I

    .line 195
    return-void
.end method

.method public getHeightMinusFooter()I
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationItemView;->mFooter:Lcom/android/launcher3/notification/NotificationFooterLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/notification/NotificationFooterLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 92
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/notification/NotificationItemView;->getHeight()I

    move-result v1

    sub-int v0, v1, v0

    return v0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationItemView;->mFooter:Lcom/android/launcher3/notification/NotificationFooterLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/notification/NotificationFooterLayout;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getMainView()Lcom/android/launcher3/notification/NotificationMainView;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationItemView;->mMainView:Lcom/android/launcher3/notification/NotificationMainView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 77
    invoke-super {p0}, Lcom/android/launcher3/popup/PopupItemView;->onFinishInflate()V

    .line 78
    const v0, 0x7f0e0053

    invoke-virtual {p0, v0}, Lcom/android/launcher3/notification/NotificationItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/notification/NotificationItemView;->mHeaderText:Landroid/widget/TextView;

    .line 79
    const v0, 0x7f0e0054

    invoke-virtual {p0, v0}, Lcom/android/launcher3/notification/NotificationItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/notification/NotificationItemView;->mHeaderCount:Landroid/widget/TextView;

    .line 80
    const v0, 0x7f0e0055

    invoke-virtual {p0, v0}, Lcom/android/launcher3/notification/NotificationItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/notification/NotificationMainView;

    iput-object v0, p0, Lcom/android/launcher3/notification/NotificationItemView;->mMainView:Lcom/android/launcher3/notification/NotificationMainView;

    .line 81
    const v0, 0x7f0e0056

    invoke-virtual {p0, v0}, Lcom/android/launcher3/notification/NotificationItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/notification/NotificationFooterLayout;

    iput-object v0, p0, Lcom/android/launcher3/notification/NotificationItemView;->mFooter:Lcom/android/launcher3/notification/NotificationFooterLayout;

    .line 82
    new-instance v0, Lcom/android/launcher3/notification/SwipeHelper;

    iget-object v1, p0, Lcom/android/launcher3/notification/NotificationItemView;->mMainView:Lcom/android/launcher3/notification/NotificationMainView;

    invoke-virtual {p0}, Lcom/android/launcher3/notification/NotificationItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/android/launcher3/notification/SwipeHelper;-><init>(ILcom/android/launcher3/notification/SwipeHelper$Callback;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/notification/NotificationItemView;->mSwipeHelper:Lcom/android/launcher3/notification/SwipeHelper;

    .line 83
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationItemView;->mSwipeHelper:Lcom/android/launcher3/notification/SwipeHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/notification/SwipeHelper;->setDisableHardwareLayers(Z)V

    .line 84
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationItemView;->mMainView:Lcom/android/launcher3/notification/NotificationMainView;

    invoke-virtual {v0}, Lcom/android/launcher3/notification/NotificationMainView;->getNotificationInfo()Lcom/android/launcher3/notification/NotificationInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 136
    const/4 v0, 0x0

    return v0

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/notification/NotificationItemView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 139
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationItemView;->mSwipeHelper:Lcom/android/launcher3/notification/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/notification/SwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationItemView;->mMainView:Lcom/android/launcher3/notification/NotificationMainView;

    invoke-virtual {v0}, Lcom/android/launcher3/notification/NotificationMainView;->getNotificationInfo()Lcom/android/launcher3/notification/NotificationInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 146
    const/4 v0, 0x0

    return v0

    .line 148
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
    .line 167
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationItemView;->mMainView:Lcom/android/launcher3/notification/NotificationMainView;

    invoke-virtual {v0}, Lcom/android/launcher3/notification/NotificationMainView;->getNotificationInfo()Lcom/android/launcher3/notification/NotificationInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/notification/NotificationInfo;->notificationKey:Ljava/lang/String;

    .line 166
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 168
    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/notification/NotificationItemView;->mAnimatingNextIcon:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/notification/NotificationItemView;->mAnimatingNextIcon:Z

    .line 171
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationItemView;->mMainView:Lcom/android/launcher3/notification/NotificationMainView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/launcher3/notification/NotificationMainView;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationItemView;->mMainView:Lcom/android/launcher3/notification/NotificationMainView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/notification/NotificationMainView;->setTranslationX(F)V

    .line 173
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationItemView;->mIconView:Landroid/view/View;

    sget-object v1, Lcom/android/launcher3/notification/NotificationItemView;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 174
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationItemView;->mFooter:Lcom/android/launcher3/notification/NotificationFooterLayout;

    sget-object v1, Lcom/android/launcher3/notification/NotificationItemView;->sTempRect:Landroid/graphics/Rect;

    .line 175
    new-instance v2, Lcom/android/launcher3/notification/NotificationItemView$1;

    invoke-direct {v2, p0}, Lcom/android/launcher3/notification/NotificationItemView$1;-><init>(Lcom/android/launcher3/notification/NotificationItemView;)V

    .line 174
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/notification/NotificationFooterLayout;->animateFirstNotificationTo(Landroid/graphics/Rect;Lcom/android/launcher3/notification/NotificationFooterLayout$IconAnimationEndListener;)V

    .line 188
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationItemView;->mFooter:Lcom/android/launcher3/notification/NotificationFooterLayout;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/notification/NotificationFooterLayout;->trimNotifications(Ljava/util/List;)V

    goto :goto_0
.end method

.method public updateHeader(ILcom/android/launcher3/graphics/IconPalette;)V
    .locals 4

    .prologue
    .line 120
    iget-object v1, p0, Lcom/android/launcher3/notification/NotificationItemView;->mHeaderCount:Landroid/widget/TextView;

    const/4 v0, 0x1

    if-gt p1, v0, :cond_2

    const-string/jumbo v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    if-eqz p2, :cond_1

    .line 122
    iget v0, p0, Lcom/android/launcher3/notification/NotificationItemView;->mNotificationHeaderTextColor:I

    if-nez v0, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/android/launcher3/notification/NotificationItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p2, Lcom/android/launcher3/graphics/IconPalette;->dominantColor:I

    .line 125
    invoke-virtual {p0}, Lcom/android/launcher3/notification/NotificationItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f010027

    invoke-static {v2, v3}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v2

    .line 124
    invoke-static {v0, v1, v2}, Lcom/android/launcher3/graphics/IconPalette;->resolveContrastColor(Landroid/content/Context;II)I

    move-result v0

    .line 123
    iput v0, p0, Lcom/android/launcher3/notification/NotificationItemView;->mNotificationHeaderTextColor:I

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationItemView;->mHeaderText:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/launcher3/notification/NotificationItemView;->mNotificationHeaderTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 128
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationItemView;->mHeaderCount:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/launcher3/notification/NotificationItemView;->mNotificationHeaderTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 130
    :cond_1
    return-void

    .line 120
    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
