.class public Lcom/android/launcher3/StylusEventHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mIsButtonPressed:Z

.field private mListener:Lcom/android/launcher3/StylusEventHelper$StylusButtonListener;

.field private final mSlop:F

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/StylusEventHelper$StylusButtonListener;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/launcher3/StylusEventHelper;->mListener:Lcom/android/launcher3/StylusEventHelper$StylusButtonListener;

    .line 50
    iput-object p2, p0, Lcom/android/launcher3/StylusEventHelper;->mView:Landroid/view/View;

    .line 51
    iget-object v0, p0, Lcom/android/launcher3/StylusEventHelper;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/android/launcher3/StylusEventHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/StylusEventHelper;->mSlop:F

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/StylusEventHelper;->mSlop:F

    goto :goto_0
.end method

.method private static isStylusButtonPressed(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v0, 0x0

    .line 105
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 106
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 105
    :cond_0
    return v0
.end method


# virtual methods
.method public inStylusButtonPressed()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/launcher3/StylusEventHelper;->mIsButtonPressed:Z

    return v0
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 59
    invoke-static {p1}, Lcom/android/launcher3/StylusEventHelper;->isStylusButtonPressed(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 60
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 87
    :cond_0
    return v5

    .line 62
    :pswitch_0
    iput-boolean v0, p0, Lcom/android/launcher3/StylusEventHelper;->mIsButtonPressed:Z

    .line 63
    iget-boolean v0, p0, Lcom/android/launcher3/StylusEventHelper;->mIsButtonPressed:Z

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/launcher3/StylusEventHelper;->mListener:Lcom/android/launcher3/StylusEventHelper$StylusButtonListener;

    invoke-interface {v0, p1}, Lcom/android/launcher3/StylusEventHelper$StylusButtonListener;->onPressed(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 68
    :pswitch_1
    iget-object v1, p0, Lcom/android/launcher3/StylusEventHelper;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lcom/android/launcher3/StylusEventHelper;->mSlop:F

    invoke-static {v1, v2, v3, v4}, Lcom/android/launcher3/Utilities;->pointInView(Landroid/view/View;FFF)Z

    move-result v1

    if-nez v1, :cond_1

    .line 69
    return v5

    .line 71
    :cond_1
    iget-boolean v1, p0, Lcom/android/launcher3/StylusEventHelper;->mIsButtonPressed:Z

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/StylusEventHelper;->mIsButtonPressed:Z

    .line 73
    iget-object v0, p0, Lcom/android/launcher3/StylusEventHelper;->mListener:Lcom/android/launcher3/StylusEventHelper$StylusButtonListener;

    invoke-interface {v0, p1}, Lcom/android/launcher3/StylusEventHelper$StylusButtonListener;->onPressed(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 74
    :cond_2
    iget-boolean v1, p0, Lcom/android/launcher3/StylusEventHelper;->mIsButtonPressed:Z

    if-eqz v1, :cond_0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 75
    iput-boolean v5, p0, Lcom/android/launcher3/StylusEventHelper;->mIsButtonPressed:Z

    .line 76
    iget-object v0, p0, Lcom/android/launcher3/StylusEventHelper;->mListener:Lcom/android/launcher3/StylusEventHelper$StylusButtonListener;

    invoke-interface {v0, p1}, Lcom/android/launcher3/StylusEventHelper$StylusButtonListener;->onReleased(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 81
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/launcher3/StylusEventHelper;->mIsButtonPressed:Z

    if-eqz v0, :cond_0

    .line 82
    iput-boolean v5, p0, Lcom/android/launcher3/StylusEventHelper;->mIsButtonPressed:Z

    .line 83
    iget-object v0, p0, Lcom/android/launcher3/StylusEventHelper;->mListener:Lcom/android/launcher3/StylusEventHelper$StylusButtonListener;

    invoke-interface {v0, p1}, Lcom/android/launcher3/StylusEventHelper$StylusButtonListener;->onReleased(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
