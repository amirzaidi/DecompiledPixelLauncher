.class Lcom/google/android/libraries/a/a/e;
.super Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback$Stub;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private Ma:Z

.field private final Mb:Landroid/os/Handler;

.field private Mc:I

.field private Md:Lcom/google/android/libraries/a/a/d;

.field private Me:Landroid/view/WindowManager;

.field private mWindow:Landroid/view/Window;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 684
    invoke-direct {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback$Stub;-><init>()V

    .line 682
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/libraries/a/a/e;->Ma:Z

    .line 685
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/libraries/a/a/e;->Mb:Landroid/os/Handler;

    .line 686
    return-void
.end method

.method private RI(Z)V
    .locals 1

    .prologue
    .line 753
    iget-boolean v0, p0, Lcom/google/android/libraries/a/a/e;->Ma:Z

    if-ne v0, p1, :cond_0

    .line 760
    :goto_0
    return-void

    .line 754
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/libraries/a/a/e;->Ma:Z

    goto :goto_0
.end method


# virtual methods
.method public RJ(Lcom/google/android/libraries/a/a/d;)V
    .locals 2

    .prologue
    .line 690
    iput-object p1, p0, Lcom/google/android/libraries/a/a/e;->Md:Lcom/google/android/libraries/a/a/d;

    .line 691
    invoke-static {p1}, Lcom/google/android/libraries/a/a/d;->Ro(Lcom/google/android/libraries/a/a/d;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/a/a/e;->Me:Landroid/view/WindowManager;

    .line 692
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 693
    iget-object v1, p0, Lcom/google/android/libraries/a/a/e;->Me:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 694
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/google/android/libraries/a/a/e;->Mc:I

    .line 695
    invoke-static {p1}, Lcom/google/android/libraries/a/a/d;->Ro(Lcom/google/android/libraries/a/a/d;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/a/a/e;->mWindow:Landroid/view/Window;

    .line 696
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 699
    iput-object v0, p0, Lcom/google/android/libraries/a/a/e;->Md:Lcom/google/android/libraries/a/a/d;

    .line 700
    iput-object v0, p0, Lcom/google/android/libraries/a/a/e;->Me:Landroid/view/WindowManager;

    .line 701
    iput-object v0, p0, Lcom/google/android/libraries/a/a/e;->mWindow:Landroid/view/Window;

    .line 702
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 720
    iget-object v0, p0, Lcom/google/android/libraries/a/a/e;->Md:Lcom/google/android/libraries/a/a/d;

    if-eqz v0, :cond_0

    .line 724
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 749
    return v2

    .line 722
    :cond_0
    return v3

    .line 726
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/libraries/a/a/e;->Md:Lcom/google/android/libraries/a/a/d;

    invoke-static {v0}, Lcom/google/android/libraries/a/a/d;->RG(Lcom/google/android/libraries/a/a/d;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 729
    :goto_0
    return v3

    .line 727
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/a/a/e;->Md:Lcom/google/android/libraries/a/a/d;

    invoke-static {v0}, Lcom/google/android/libraries/a/a/d;->Rs(Lcom/google/android/libraries/a/a/d;)Lcom/google/android/libraries/a/a/b;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {v1, v0}, Lcom/google/android/libraries/a/a/b;->onOverlayScrollChanged(F)V

    goto :goto_0

    .line 731
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/libraries/a/a/e;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 732
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 736
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 737
    iget v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, -0x201

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 739
    :goto_1
    iget-object v0, p0, Lcom/google/android/libraries/a/a/e;->Me:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/google/android/libraries/a/a/e;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 740
    return v3

    .line 733
    :cond_2
    iget v0, p0, Lcom/google/android/libraries/a/a/e;->Mc:I

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 734
    iget v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v0, v0, 0x200

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_1

    .line 742
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/libraries/a/a/e;->Md:Lcom/google/android/libraries/a/a/d;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/google/android/libraries/a/a/d;->Rv(Lcom/google/android/libraries/a/a/d;I)V

    .line 744
    iget-object v0, p0, Lcom/google/android/libraries/a/a/e;->Md:Lcom/google/android/libraries/a/a/d;

    invoke-static {v0}, Lcom/google/android/libraries/a/a/d;->Rs(Lcom/google/android/libraries/a/a/d;)Lcom/google/android/libraries/a/a/b;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/libraries/a/a/a;

    if-nez v0, :cond_3

    .line 747
    :goto_2
    return v3

    .line 745
    :cond_3
    iget-object v0, p0, Lcom/google/android/libraries/a/a/e;->Md:Lcom/google/android/libraries/a/a/d;

    invoke-static {v0}, Lcom/google/android/libraries/a/a/d;->Rs(Lcom/google/android/libraries/a/a/d;)Lcom/google/android/libraries/a/a/b;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/a/a/a;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/google/android/libraries/a/a/a;->es(I)V

    goto :goto_2

    .line 724
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

    .line 706
    iget-object v0, p0, Lcom/google/android/libraries/a/a/e;->Mb:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 707
    iget-object v0, p0, Lcom/google/android/libraries/a/a/e;->Mb:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 708
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 709
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/a/a/e;->RI(Z)V

    .line 711
    :cond_0
    return-void
.end method

.method public overlayStatusChanged(I)V
    .locals 3

    .prologue
    .line 715
    iget-object v0, p0, Lcom/google/android/libraries/a/a/e;->Mb:Landroid/os/Handler;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 716
    return-void
.end method
