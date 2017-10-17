.class Landroid/support/v4/view/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static VY:Ljava/lang/reflect/Field;

.field private static VZ:Z

.field static Wa:Ljava/lang/reflect/Field;

.field private static Wb:Z

.field private static Wc:Ljava/util/WeakHashMap;

.field static Wd:Z

.field private static We:Ljava/lang/reflect/Field;


# instance fields
.field VX:Ljava/util/WeakHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 440
    const/4 v0, 0x0

    sput-boolean v0, Landroid/support/v4/view/p;->Wd:Z

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 437
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/p;->VX:Ljava/util/WeakHashMap;

    return-void
.end method


# virtual methods
.method public agM(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 713
    const/4 v0, 0x0

    return v0
.end method

.method public agN(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 720
    const/4 v0, 0x0

    return v0
.end method

.method public agO(Landroid/view/View;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 696
    sget-object v0, Landroid/support/v4/view/p;->Wc:Ljava/util/WeakHashMap;

    if-eqz v0, :cond_0

    .line 699
    sget-object v0, Landroid/support/v4/view/p;->Wc:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 697
    :cond_0
    return-object v1
.end method

.method public agP(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 717
    return-void
.end method

.method public agQ(Landroid/view/View;)F
    .locals 2

    .prologue
    .line 880
    invoke-virtual {p0, p1}, Landroid/support/v4/view/p;->agN(Landroid/view/View;)F

    move-result v0

    invoke-virtual {p0, p1}, Landroid/support/v4/view/p;->agM(Landroid/view/View;)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public agR(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 885
    return-void
.end method

.method public agS(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 821
    instance-of v0, p1, Landroid/support/v4/view/b;

    if-nez v0, :cond_0

    .line 824
    :goto_0
    return-void

    .line 822
    :cond_0
    check-cast p1, Landroid/support/v4/view/b;

    invoke-interface {p1}, Landroid/support/v4/view/b;->stopNestedScroll()V

    goto :goto_0
.end method

.method public agT(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 521
    return-void
.end method

.method public agU(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 888
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

.method public agV(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 551
    const/4 v0, 0x0

    return v0
.end method

.method public agW(Landroid/view/View;)Landroid/view/Display;
    .locals 2

    .prologue
    .line 942
    invoke-virtual {p0, p1}, Landroid/support/v4/view/p;->agU(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 947
    const/4 v0, 0x0

    return-object v0

    .line 943
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 945
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method public agX(Landroid/view/View;)I
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 654
    sget-boolean v0, Landroid/support/v4/view/p;->VZ:Z

    if-eqz v0, :cond_0

    .line 664
    :goto_0
    sget-object v0, Landroid/support/v4/view/p;->VY:Ljava/lang/reflect/Field;

    if-nez v0, :cond_1

    .line 673
    :goto_1
    return v2

    .line 656
    :cond_0
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string/jumbo v1, "mMinHeight"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v4/view/p;->VY:Ljava/lang/reflect/Field;

    .line 657
    sget-object v0, Landroid/support/v4/view/p;->VY:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    .line 661
    :goto_2
    sput-boolean v3, Landroid/support/v4/view/p;->VZ:Z

    goto :goto_0

    .line 666
    :cond_1
    :try_start_1
    sget-object v0, Landroid/support/v4/view/p;->VY:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    return v0

    .line 667
    :catch_0
    move-exception v0

    goto :goto_1

    .line 658
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public agY(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 517
    const/4 v0, 0x0

    return v0
.end method

.method public agZ(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 615
    const/4 v0, 0x1

    return v0
.end method

.method public aha(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 505
    invoke-virtual {p0}, Landroid/support/v4/view/p;->ahf()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 506
    return-void
.end method

.method public ahb(Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 3

    .prologue
    .line 509
    invoke-virtual {p0}, Landroid/support/v4/view/p;->ahf()J

    move-result-wide v0

    add-long/2addr v0, p3

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 510
    return-void
.end method

.method public ahc(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 489
    const/4 v0, 0x0

    return v0
.end method

.method public ahd(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 497
    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    .line 498
    return-void
.end method

.method public ahe(Landroid/view/View;)I
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 631
    sget-boolean v0, Landroid/support/v4/view/p;->Wb:Z

    if-eqz v0, :cond_0

    .line 641
    :goto_0
    sget-object v0, Landroid/support/v4/view/p;->We:Ljava/lang/reflect/Field;

    if-nez v0, :cond_1

    .line 650
    :goto_1
    return v2

    .line 633
    :cond_0
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string/jumbo v1, "mMinWidth"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v4/view/p;->We:Ljava/lang/reflect/Field;

    .line 634
    sget-object v0, Landroid/support/v4/view/p;->We:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    .line 638
    :goto_2
    sput-boolean v3, Landroid/support/v4/view/p;->Wb:Z

    goto :goto_0

    .line 643
    :cond_1
    :try_start_1
    sget-object v0, Landroid/support/v4/view/p;->We:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    return v0

    .line 644
    :catch_0
    move-exception v0

    goto :goto_1

    .line 635
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method ahf()J
    .locals 2

    .prologue
    .line 513
    invoke-static {}, Landroid/animation/ValueAnimator;->getFrameDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method public ahg(Landroid/view/View;Landroid/support/v4/view/c;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 444
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/support/v4/view/c;->getBridge()Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 445
    return-void
.end method

.method public ahh(Landroid/view/View;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 448
    sget-boolean v2, Landroid/support/v4/view/p;->Wd:Z

    if-nez v2, :cond_0

    .line 451
    sget-object v2, Landroid/support/v4/view/p;->Wa:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_1

    .line 462
    :goto_0
    :try_start_0
    sget-object v2, Landroid/support/v4/view/p;->Wa:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    if-nez v2, :cond_2

    :goto_1
    return v0

    .line 449
    :cond_0
    return v0

    .line 453
    :cond_1
    :try_start_1
    const-class v2, Landroid/view/View;

    const-string/jumbo v3, "mAccessibilityDelegate"

    .line 454
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Landroid/support/v4/view/p;->Wa:Ljava/lang/reflect/Field;

    .line 455
    sget-object v2, Landroid/support/v4/view/p;->Wa:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 456
    :catch_0
    move-exception v2

    .line 457
    sput-boolean v1, Landroid/support/v4/view/p;->Wd:Z

    .line 458
    return v0

    :cond_2
    move v0, v1

    .line 462
    goto :goto_1

    .line 463
    :catch_1
    move-exception v2

    .line 464
    sput-boolean v1, Landroid/support/v4/view/p;->Wd:Z

    .line 465
    return v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/a/a;)V
    .locals 1

    .prologue
    .line 470
    invoke-virtual {p2}, Landroid/support/v4/view/a/a;->aeW()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 471
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 528
    const/4 v0, 0x0

    return v0
.end method
