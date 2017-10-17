.class public Lcom/android/launcher3/notification/NotificationMainView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/notification/SwipeHelper$Callback;


# instance fields
.field private mBackgroundColor:I

.field private mNotificationInfo:Lcom/android/launcher3/notification/NotificationInfo;

.field private mTextAndBackground:Landroid/view/ViewGroup;

.field private mTextView:Landroid/widget/TextView;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 51
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/notification/NotificationMainView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/notification/NotificationMainView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method


# virtual methods
.method public applyNotificationInfo(Lcom/android/launcher3/notification/NotificationInfo;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/notification/NotificationMainView;->applyNotificationInfo(Lcom/android/launcher3/notification/NotificationInfo;Landroid/view/View;Z)V

    .line 79
    return-void
.end method

.method public applyNotificationInfo(Lcom/android/launcher3/notification/NotificationInfo;Landroid/view/View;Z)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 86
    iput-object p1, p0, Lcom/android/launcher3/notification/NotificationMainView;->mNotificationInfo:Lcom/android/launcher3/notification/NotificationInfo;

    .line 87
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationMainView;->mNotificationInfo:Lcom/android/launcher3/notification/NotificationInfo;

    iget-object v1, v0, Lcom/android/launcher3/notification/NotificationInfo;->title:Ljava/lang/CharSequence;

    .line 88
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationMainView;->mNotificationInfo:Lcom/android/launcher3/notification/NotificationInfo;

    iget-object v0, v0, Lcom/android/launcher3/notification/NotificationInfo;->text:Ljava/lang/CharSequence;

    .line 89
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 90
    iget-object v2, p0, Lcom/android/launcher3/notification/NotificationMainView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v1, p0, Lcom/android/launcher3/notification/NotificationMainView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationMainView;->mNotificationInfo:Lcom/android/launcher3/notification/NotificationInfo;

    invoke-virtual {p0}, Lcom/android/launcher3/notification/NotificationMainView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 98
    iget v2, p0, Lcom/android/launcher3/notification/NotificationMainView;->mBackgroundColor:I

    .line 97
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/notification/NotificationInfo;->getIconForBackground(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 99
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationMainView;->mNotificationInfo:Lcom/android/launcher3/notification/NotificationInfo;

    iget-object v0, v0, Lcom/android/launcher3/notification/NotificationInfo;->intent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationMainView;->mNotificationInfo:Lcom/android/launcher3/notification/NotificationInfo;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/notification/NotificationMainView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/launcher3/notification/NotificationMainView;->setTranslationX(F)V

    .line 105
    new-instance v0, Lcom/android/launcher3/ItemInfo;

    invoke-direct {v0}, Lcom/android/launcher3/ItemInfo;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/notification/NotificationMainView;->setTag(Ljava/lang/Object;)V

    .line 106
    if-eqz p3, :cond_1

    .line 107
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationMainView;->mTextAndBackground:Landroid/view/ViewGroup;

    sget-object v1, Lcom/android/launcher3/notification/NotificationMainView;->ALPHA:Landroid/util/Property;

    new-array v2, v5, [F

    const/4 v3, 0x0

    aput v4, v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    aput v3, v2, v4

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 109
    :cond_1
    return-void

    .line 93
    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/notification/NotificationMainView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 94
    iget-object v2, p0, Lcom/android/launcher3/notification/NotificationMainView;->mTitleView:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationMainView;->mTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 94
    goto :goto_1
.end method

.method public canChildBeDismissed(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationMainView;->mNotificationInfo:Lcom/android/launcher3/notification/NotificationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationMainView;->mNotificationInfo:Lcom/android/launcher3/notification/NotificationInfo;

    iget-boolean v0, v0, Lcom/android/launcher3/notification/NotificationInfo;->dismissable:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 0

    .prologue
    .line 120
    return-object p0
.end method

.method public getFalsingThresholdFactor()F
    .locals 1

    .prologue
    .line 164
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getNotificationInfo()Lcom/android/launcher3/notification/NotificationInfo;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationMainView;->mNotificationInfo:Lcom/android/launcher3/notification/NotificationInfo;

    return-object v0
.end method

.method public isAntiFalsingNeeded()Z
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public onBeginDrag(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method public onChildDismissed(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/android/launcher3/notification/NotificationMainView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;

    move-result-object v1

    .line 141
    iget-object v2, p0, Lcom/android/launcher3/notification/NotificationMainView;->mNotificationInfo:Lcom/android/launcher3/notification/NotificationInfo;

    iget-object v2, v2, Lcom/android/launcher3/notification/NotificationInfo;->notificationKey:Ljava/lang/String;

    .line 140
    invoke-virtual {v1, v2}, Lcom/android/launcher3/popup/PopupDataProvider;->cancelNotification(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v0

    .line 143
    const/4 v1, 0x3

    .line 144
    const/4 v2, 0x4

    .line 145
    const/16 v3, 0x8

    .line 142
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/logging/UserEventDispatcher;->logActionOnItem(III)V

    .line 146
    return-void
.end method

.method public onChildSnappedBack(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 154
    return-void
.end method

.method public onDragCancelled(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 150
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 64
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 66
    const v0, 0x7f0e0050

    invoke-virtual {p0, v0}, Lcom/android/launcher3/notification/NotificationMainView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/launcher3/notification/NotificationMainView;->mTextAndBackground:Landroid/view/ViewGroup;

    .line 67
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationMainView;->mTextAndBackground:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    .line 68
    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/notification/NotificationMainView;->mBackgroundColor:I

    .line 69
    new-instance v1, Landroid/graphics/drawable/RippleDrawable;

    .line 70
    invoke-virtual {p0}, Lcom/android/launcher3/notification/NotificationMainView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x101042c

    invoke-static {v2, v3}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v2

    .line 69
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 71
    const/4 v3, 0x0

    .line 69
    invoke-direct {v1, v2, v0, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 72
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationMainView;->mTextAndBackground:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 73
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationMainView;->mTextAndBackground:Landroid/view/ViewGroup;

    const v1, 0x7f0e002e

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/notification/NotificationMainView;->mTitleView:Landroid/widget/TextView;

    .line 74
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationMainView;->mTextAndBackground:Landroid/view/ViewGroup;

    const v1, 0x7f0e0051

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/notification/NotificationMainView;->mTextView:Landroid/widget/TextView;

    .line 75
    return-void
.end method

.method public updateSwipeProgress(Landroid/view/View;ZF)Z
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x1

    return v0
.end method
