.class public Lcom/android/launcher3/notification/NotificationFooterLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field private static final sTempRect:Landroid/graphics/Rect;


# instance fields
.field private mBackgroundColor:I

.field mIconLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field private mIconRow:Landroid/widget/LinearLayout;

.field private final mNotifications:Ljava/util/List;

.field private mOverflowEllipsis:Landroid/view/View;

.field private final mOverflowNotifications:Ljava/util/List;

.field private final mRtl:Z


# direct methods
.method static synthetic -wrap0(Lcom/android/launcher3/notification/NotificationFooterLayout;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/notification/NotificationFooterLayout;->removeViewFromIconRow(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher3/notification/NotificationFooterLayout;->sTempRect:Landroid/graphics/Rect;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 70
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/notification/NotificationFooterLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/notification/NotificationFooterLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/notification/NotificationFooterLayout;->mNotifications:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/notification/NotificationFooterLayout;->mOverflowNotifications:Ljava/util/List;

    .line 80
    invoke-virtual {p0}, Lcom/android/launcher3/notification/NotificationFooterLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 81
    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher3/notification/NotificationFooterLayout;->mRtl:Z

    .line 83
    const v1, 0x7f0b009b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 84
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lcom/android/launcher3/notification/NotificationFooterLayout;->mIconLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 85
    iget-object v2, p0, Lcom/android/launcher3/notification/NotificationFooterLayout;->mIconLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x10

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 88
    const v2, 0x7f0b0092

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 89
    const v3, 0x7f0b009f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 90
    const v4, 0x7f0b009e

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 89
    add-int/2addr v3, v4

    .line 91
    const v4, 0x7f0b0074

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 92
    sub-int/2addr v0, v2

    sub-int/2addr v0, v3

    .line 93
    mul-int/lit8 v1, v1, 0x5

    .line 92
    sub-int/2addr v0, v1

    .line 94
    iget-object v1, p0, Lcom/android/launcher3/notification/NotificationFooterLayout;->mIconLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    div-int/lit8 v0, v0, 0x5

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 95
    return-void
.end method

.method private addNotificationIconForInfo(Lcom/android/launcher3/notification/NotificationInfo;)Landroid/view/View;
    .locals 4

    .prologue
    .line 140
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/launcher3/notification/NotificationFooterLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 141
    invoke-virtual {p0}, Lcom/android/launcher3/notification/NotificationFooterLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/notification/NotificationFooterLayout;->mBackgroundColor:I

    invoke-virtual {p1, v1, v2}, Lcom/android/launcher3/notification/NotificationInfo;->getIconForBackground(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 142
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 144
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 145
    iget-object v1, p0, Lcom/android/launcher3/notification/NotificationFooterLayout;->mIconRow:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/launcher3/notification/NotificationFooterLayout;->mIconLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 146
    return-object v0
.end method

.method private removeViewFromIconRow(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationFooterLayout;->mIconRow:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 196
    iget-object v1, p0, Lcom/android/launcher3/notification/NotificationFooterLayout;->mNotifications:Ljava/util/List;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/notification/NotificationInfo;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 197
    invoke-direct {p0}, Lcom/android/launcher3/notification/NotificationFooterLayout;->updateOverflowEllipsisVisibility()V

    .line 198
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationFooterLayout;->mIconRow:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/android/launcher3/notification/NotificationFooterLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    .line 200
    invoke-static {v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getOpen(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/popup/PopupContainerWithArrow;

    move-result-object v0

    .line 202
    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {p0}, Lcom/android/launcher3/notification/NotificationFooterLayout;->getHeight()I

    move-result v1

    .line 204
    invoke-virtual {p0}, Lcom/android/launcher3/notification/NotificationFooterLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0019

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 203
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->reduceNotificationViewHeight(II)Landroid/animation/Animator;

    move-result-object v0

    .line 205
    new-instance v1, Lcom/android/launcher3/notification/NotificationFooterLayout$2;

    invoke-direct {v1, p0}, Lcom/android/launcher3/notification/NotificationFooterLayout$2;-><init>(Lcom/android/launcher3/notification/NotificationFooterLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 215
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 218
    :cond_0
    return-void
.end method

.method private updateOverflowEllipsisVisibility()V
    .locals 2

    .prologue
    .line 132
    iget-object v1, p0, Lcom/android/launcher3/notification/NotificationFooterLayout;->mOverflowEllipsis:Landroid/view/View;

    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationFooterLayout;->mOverflowNotifications:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 133
    return-void

    .line 132
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addNotificationInfo(Lcom/android/launcher3/notification/NotificationInfo;)V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationFooterLayout;->mNotifications:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationFooterLayout;->mNotifications:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationFooterLayout;->mOverflowNotifications:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public animateFirstNotificationTo(Landroid/graphics/Rect;Lcom/android/launcher3/notification/NotificationFooterLayout$IconAnimationEndListener;)V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 151
    invoke-static {}, Lcom/android/launcher3/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v3

    .line 152
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationFooterLayout;->mIconRow:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/launcher3/notification/NotificationFooterLayout;->mIconRow:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 154
    sget-object v1, Lcom/android/launcher3/notification/NotificationFooterLayout;->sTempRect:Landroid/graphics/Rect;

    .line 155
    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 156
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 158
    new-instance v5, Lcom/android/launcher3/anim/PropertyListBuilder;

    invoke-direct {v5}, Lcom/android/launcher3/anim/PropertyListBuilder;-><init>()V

    invoke-virtual {v5, v4}, Lcom/android/launcher3/anim/PropertyListBuilder;->scale(F)Lcom/android/launcher3/anim/PropertyListBuilder;

    move-result-object v5

    iget v6, p1, Landroid/graphics/Rect;->top:I

    iget v7, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    .line 159
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v4, v7

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, v4, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    .line 158
    add-float/2addr v1, v6

    invoke-virtual {v5, v1}, Lcom/android/launcher3/anim/PropertyListBuilder;->translationY(F)Lcom/android/launcher3/anim/PropertyListBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/anim/PropertyListBuilder;->build()[Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 157
    invoke-static {v0, v1}, Lcom/android/launcher3/LauncherAnimUtils;->ofPropertyValuesHolder(Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 160
    new-instance v4, Lcom/android/launcher3/notification/NotificationFooterLayout$1;

    invoke-direct {v4, p0, p2, v0}, Lcom/android/launcher3/notification/NotificationFooterLayout$1;-><init>(Lcom/android/launcher3/notification/NotificationFooterLayout;Lcom/android/launcher3/notification/NotificationFooterLayout$IconAnimationEndListener;Landroid/view/View;)V

    invoke-virtual {v1, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 167
    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 170
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationFooterLayout;->mIconLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v1, p0, Lcom/android/launcher3/notification/NotificationFooterLayout;->mIconLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/widget/FrameLayout$LayoutParams;->getMarginStart()I

    move-result v1

    add-int/2addr v0, v1

    .line 171
    iget-boolean v1, p0, Lcom/android/launcher3/notification/NotificationFooterLayout;->mRtl:Z

    if-eqz v1, :cond_2

    .line 172
    neg-int v0, v0

    move v1, v0

    .line 174
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationFooterLayout;->mOverflowNotifications:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationFooterLayout;->mOverflowNotifications:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/notification/NotificationInfo;

    .line 176
    iget-object v4, p0, Lcom/android/launcher3/notification/NotificationFooterLayout;->mNotifications:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    invoke-direct {p0, v0}, Lcom/android/launcher3/notification/NotificationFooterLayout;->addNotificationIconForInfo(Lcom/android/launcher3/notification/NotificationInfo;)Landroid/view/View;

    move-result-object v0

    .line 178
    sget-object v4, Lcom/android/launcher3/notification/NotificationFooterLayout;->ALPHA:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v5, v5, [F

    aput v8, v5, v2

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v5, v10

    invoke-static {v0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationFooterLayout;->mIconRow:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    .line 184
    new-instance v5, Lcom/android/launcher3/anim/PropertyResetListener;

    sget-object v0, Lcom/android/launcher3/notification/NotificationFooterLayout;->TRANSLATION_X:Landroid/util/Property;

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-direct {v5, v0, v6}, Lcom/android/launcher3/anim/PropertyResetListener;-><init>(Landroid/util/Property;Ljava/lang/Object;)V

    move v0, v2

    .line 185
    :goto_1
    if-ge v0, v4, :cond_1

    .line 186
    iget-object v6, p0, Lcom/android/launcher3/notification/NotificationFooterLayout;->mIconRow:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 187
    sget-object v7, Lcom/android/launcher3/notification/NotificationFooterLayout;->TRANSLATION_X:Landroid/util/Property;

    new-array v8, v10, [F

    int-to-float v9, v1

    aput v9, v8, v2

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 188
    invoke-virtual {v6, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 189
    invoke-virtual {v3, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 191
    :cond_1
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 192
    return-void

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method public commitNotificationInfos()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationFooterLayout;->mIconRow:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 124
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationFooterLayout;->mNotifications:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationFooterLayout;->mNotifications:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/notification/NotificationInfo;

    .line 126
    invoke-direct {p0, v0}, Lcom/android/launcher3/notification/NotificationFooterLayout;->addNotificationIconForInfo(Lcom/android/launcher3/notification/NotificationInfo;)Landroid/view/View;

    .line 124
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 128
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/notification/NotificationFooterLayout;->updateOverflowEllipsisVisibility()V

    .line 129
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 99
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 100
    const v0, 0x7f0e0059

    invoke-virtual {p0, v0}, Lcom/android/launcher3/notification/NotificationFooterLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/notification/NotificationFooterLayout;->mOverflowEllipsis:Landroid/view/View;

    .line 101
    const v0, 0x7f0e0058

    invoke-virtual {p0, v0}, Lcom/android/launcher3/notification/NotificationFooterLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/launcher3/notification/NotificationFooterLayout;->mIconRow:Landroid/widget/LinearLayout;

    .line 102
    invoke-virtual {p0}, Lcom/android/launcher3/notification/NotificationFooterLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/notification/NotificationFooterLayout;->mBackgroundColor:I

    .line 103
    return-void
.end method

.method public trimNotifications(Ljava/util/List;)V
    .locals 3

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/android/launcher3/notification/NotificationFooterLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationFooterLayout;->mIconRow:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 222
    :cond_0
    return-void

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationFooterLayout;->mOverflowNotifications:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 225
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 226
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/notification/NotificationInfo;

    iget-object v0, v0, Lcom/android/launcher3/notification/NotificationInfo;->notificationKey:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 227
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 230
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationFooterLayout;->mIconRow:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_5

    .line 231
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationFooterLayout;->mIconRow:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 232
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/notification/NotificationInfo;

    .line 233
    iget-object v0, v0, Lcom/android/launcher3/notification/NotificationInfo;->notificationKey:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 234
    invoke-direct {p0, v2}, Lcom/android/launcher3/notification/NotificationFooterLayout;->removeViewFromIconRow(Landroid/view/View;)V

    .line 230
    :cond_4
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 237
    :cond_5
    return-void
.end method
