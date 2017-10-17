.class Landroid/support/v4/view/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static UA:Ljava/lang/reflect/Field;

.field private static UB:Z

.field private static UC:Ljava/util/WeakHashMap;

.field static UD:Z

.field private static UE:Ljava/lang/reflect/Field;

.field private static Uy:Ljava/lang/reflect/Field;

.field private static Uz:Z


# instance fields
.field Ux:Ljava/util/WeakHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 442
    const/4 v0, 0x0

    sput-boolean v0, Landroid/support/v4/view/p;->UD:Z

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 439
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/p;->Ux:Ljava/util/WeakHashMap;

    return-void
.end method


# virtual methods
.method public afI(Landroid/view/View;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 698
    sget-object v0, Landroid/support/v4/view/p;->UC:Ljava/util/WeakHashMap;

    if-eqz v0, :cond_0

    .line 701
    sget-object v0, Landroid/support/v4/view/p;->UC:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 699
    :cond_0
    return-object v1
.end method

.method public afJ(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 823
    instance-of v0, p1, Landroid/support/v4/view/e;

    if-nez v0, :cond_0

    .line 826
    :goto_0
    return-void

    .line 824
    :cond_0
    check-cast p1, Landroid/support/v4/view/e;

    invoke-interface {p1}, Landroid/support/v4/view/e;->stopNestedScroll()V

    goto :goto_0
.end method

.method public afK(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 523
    return-void
.end method

.method public afL(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 890
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public afM(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 553
    const/4 v0, 0x0

    return v0
.end method

.method public afN(Landroid/view/View;)Landroid/view/Display;
    .locals 2

    .prologue
    .line 944
    invoke-virtual {p0, p1}, Landroid/support/v4/view/p;->afL(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 949
    const/4 v0, 0x0

    return-object v0

    .line 945
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 947
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method public afO(Landroid/view/View;)I
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 656
    sget-boolean v0, Landroid/support/v4/view/p;->Uz:Z

    if-eqz v0, :cond_0

    .line 666
    :goto_0
    sget-object v0, Landroid/support/v4/view/p;->Uy:Ljava/lang/reflect/Field;

    if-nez v0, :cond_1

    .line 675
    :goto_1
    return v2

    .line 658
    :cond_0
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string/jumbo v1, "mMinHeight"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v4/view/p;->Uy:Ljava/lang/reflect/Field;

    .line 659
    sget-object v0, Landroid/support/v4/view/p;->Uy:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    .line 663
    :goto_2
    sput-boolean v3, Landroid/support/v4/view/p;->Uz:Z

    goto :goto_0

    .line 668
    :cond_1
    :try_start_1
    sget-object v0, Landroid/support/v4/view/p;->Uy:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    return v0

    .line 669
    :catch_0
    move-exception v0

    goto :goto_1

    .line 660
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public afP(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 519
    const/4 v0, 0x0

    return v0
.end method

.method public afQ(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 617
    const/4 v0, 0x1

    return v0
.end method

.method public afR(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 507
    invoke-virtual {p0}, Landroid/support/v4/view/p;->afW()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 508
    return-void
.end method

.method public afS(Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 3

    .prologue
    .line 511
    invoke-virtual {p0}, Landroid/support/v4/view/p;->afW()J

    move-result-wide v0

    add-long/2addr v0, p3

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 512
    return-void
.end method

.method public afT(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 491
    const/4 v0, 0x0

    return v0
.end method

.method public afU(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 499
    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    .line 500
    return-void
.end method

.method public afV(Landroid/view/View;)I
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 633
    sget-boolean v0, Landroid/support/v4/view/p;->UB:Z

    if-eqz v0, :cond_0

    .line 643
    :goto_0
    sget-object v0, Landroid/support/v4/view/p;->UE:Ljava/lang/reflect/Field;

    if-nez v0, :cond_1

    .line 652
    :goto_1
    return v2

    .line 635
    :cond_0
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string/jumbo v1, "mMinWidth"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v4/view/p;->UE:Ljava/lang/reflect/Field;

    .line 636
    sget-object v0, Landroid/support/v4/view/p;->UE:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    .line 640
    :goto_2
    sput-boolean v3, Landroid/support/v4/view/p;->UB:Z

    goto :goto_0

    .line 645
    :cond_1
    :try_start_1
    sget-object v0, Landroid/support/v4/view/p;->UE:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    return v0

    .line 646
    :catch_0
    move-exception v0

    goto :goto_1

    .line 637
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method afW()J
    .locals 2

    .prologue
    .line 515
    invoke-static {}, Landroid/animation/ValueAnimator;->getFrameDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method public afX(Landroid/view/View;Landroid/support/v4/view/a;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 446
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/support/v4/view/a;->getBridge()Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 447
    return-void
.end method

.method public afY(Landroid/view/View;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 450
    sget-boolean v2, Landroid/support/v4/view/p;->UD:Z

    if-nez v2, :cond_0

    .line 453
    sget-object v2, Landroid/support/v4/view/p;->UA:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_1

    .line 464
    :goto_0
    :try_start_0
    sget-object v2, Landroid/support/v4/view/p;->UA:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    if-nez v2, :cond_2

    :goto_1
    return v0

    .line 451
    :cond_0
    return v0

    .line 455
    :cond_1
    :try_start_1
    const-class v2, Landroid/view/View;

    const-string/jumbo v3, "mAccessibilityDelegate"

    .line 456
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Landroid/support/v4/view/p;->UA:Ljava/lang/reflect/Field;

    .line 457
    sget-object v2, Landroid/support/v4/view/p;->UA:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 458
    :catch_0
    move-exception v2

    .line 459
    sput-boolean v1, Landroid/support/v4/view/p;->UD:Z

    .line 460
    return v0

    :cond_2
    move v0, v1

    .line 464
    goto :goto_1

    .line 465
    :catch_1
    move-exception v2

    .line 466
    sput-boolean v1, Landroid/support/v4/view/p;->UD:Z

    .line 467
    return v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/a/a;)V
    .locals 1

    .prologue
    .line 472
    invoke-virtual {p2}, Landroid/support/v4/view/a/a;->adU()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 473
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 530
    const/4 v0, 0x0

    return v0
.end method
