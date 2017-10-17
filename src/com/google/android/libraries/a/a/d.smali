.class Lcom/google/android/libraries/a/a/d;
.super Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback$Stub;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private Ku:Z

.field private final Kv:Landroid/os/Handler;

.field private Kw:I

.field private Kx:Lcom/google/android/libraries/a/a/c;

.field private Ky:Landroid/view/WindowManager;

.field private Kz:Landroid/view/Window;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 622
    invoke-direct {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback$Stub;-><init>()V

    .line 620
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/libraries/a/a/d;->Ku:Z

    .line 623
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/libraries/a/a/d;->Kv:Landroid/os/Handler;

    .line 624
    return-void
.end method

.method private QO(Z)V
    .locals 1

    .prologue
    .line 687
    iget-boolean v0, p0, Lcom/google/android/libraries/a/a/d;->Ku:Z

    if-ne v0, p1, :cond_0

    .line 694
    :goto_0
    return-void

    .line 688
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/libraries/a/a/d;->Ku:Z

    goto :goto_0
.end method


# virtual methods
.method public QP(Lcom/google/android/libraries/a/a/c;)V
    .locals 2

    .prologue
    .line 628
    iput-object p1, p0, Lcom/google/android/libraries/a/a/d;->Kx:Lcom/google/android/libraries/a/a/c;

    .line 629
    invoke-static {p1}, Lcom/google/android/libraries/a/a/c;->Qv(Lcom/google/android/libraries/a/a/c;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/a/a/d;->Ky:Landroid/view/WindowManager;

    .line 630
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 631
    iget-object v1, p0, Lcom/google/android/libraries/a/a/d;->Ky:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 632
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/google/android/libraries/a/a/d;->Kw:I

    .line 633
    invoke-static {p1}, Lcom/google/android/libraries/a/a/c;->Qv(Lcom/google/android/libraries/a/a/c;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/a/a/d;->Kz:Landroid/view/Window;

    .line 634
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 637
    iput-object v0, p0, Lcom/google/android/libraries/a/a/d;->Kx:Lcom/google/android/libraries/a/a/c;

    .line 638
    iput-object v0, p0, Lcom/google/android/libraries/a/a/d;->Ky:Landroid/view/WindowManager;

    .line 639
    iput-object v0, p0, Lcom/google/android/libraries/a/a/d;->Kz:Landroid/view/Window;

    .line 640
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 658
    iget-object v0, p0, Lcom/google/android/libraries/a/a/d;->Kx:Lcom/google/android/libraries/a/a/c;

    if-eqz v0, :cond_0

    .line 662
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 683
    return v2

    .line 660
    :cond_0
    return v3

    .line 664
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/libraries/a/a/d;->Kx:Lcom/google/android/libraries/a/a/c;

    invoke-static {v0}, Lcom/google/android/libraries/a/a/c;->QM(Lcom/google/android/libraries/a/a/c;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 667
    :goto_0
    return v3

    .line 665
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/a/a/d;->Kx:Lcom/google/android/libraries/a/a/c;

    invoke-static {v0}, Lcom/google/android/libraries/a/a/c;->Qz(Lcom/google/android/libraries/a/a/c;)Lcom/google/android/libraries/a/a/a;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {v1, v0}, Lcom/google/android/libraries/a/a/a;->onOverlayScrollChanged(F)V

    goto :goto_0

    .line 669
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/libraries/a/a/d;->Kz:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 670
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 674
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 675
    iget v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, -0x201

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 677
    :goto_1
    iget-object v0, p0, Lcom/google/android/libraries/a/a/d;->Ky:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/google/android/libraries/a/a/d;->Kz:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 678
    return v3

    .line 671
    :cond_2
    iget v0, p0, Lcom/google/android/libraries/a/a/d;->Kw:I

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 672
    iget v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v0, v0, 0x200

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_1

    .line 680
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/libraries/a/a/d;->Kx:Lcom/google/android/libraries/a/a/c;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/google/android/libraries/a/a/c;->QC(Lcom/google/android/libraries/a/a/c;I)V

    .line 681
    return v3

    .line 662
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public overlayScrollChanged(F)V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 644
    iget-object v0, p0, Lcom/google/android/libraries/a/a/d;->Kv:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 645
    iget-object v0, p0, Lcom/google/android/libraries/a/a/d;->Kv:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 646
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 647
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/a/a/d;->QO(Z)V

    .line 649
    :cond_0
    return-void
.end method

.method public overlayStatusChanged(I)V
    .locals 3

    .prologue
    .line 653
    iget-object v0, p0, Lcom/google/android/libraries/a/a/d;->Kv:Landroid/os/Handler;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 654
    return-void
.end method
