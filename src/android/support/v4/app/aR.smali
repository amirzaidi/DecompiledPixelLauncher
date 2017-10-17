.class final Landroid/support/v4/app/aR;
.super Landroid/support/v4/app/aW;
.source "SourceFile"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# static fields
.field static DEBUG:Z

.field static final adA:Landroid/view/animation/Interpolator;

.field static final adL:Landroid/view/animation/Interpolator;

.field static adR:Ljava/lang/reflect/Field;

.field static final adV:Landroid/view/animation/Interpolator;

.field static final adz:Landroid/view/animation/Interpolator;


# instance fields
.field adB:Landroid/support/v4/app/ac;

.field adC:Z

.field adD:Z

.field adE:Ljava/util/ArrayList;

.field adF:Ljava/util/ArrayList;

.field adG:Ljava/util/ArrayList;

.field adH:Ljava/util/ArrayList;

.field adI:Ljava/util/ArrayList;

.field private final adJ:Ljava/util/concurrent/CopyOnWriteArrayList;

.field adK:Ljava/util/ArrayList;

.field adM:Landroid/support/v4/app/g;

.field adN:I

.field adO:Landroid/util/SparseArray;

.field adP:I

.field adQ:Ljava/util/ArrayList;

.field adS:Landroid/util/SparseArray;

.field adT:Ljava/util/ArrayList;

.field adU:Z

.field adp:Ljava/util/ArrayList;

.field adq:Landroid/support/v4/app/g;

.field adr:Ljava/lang/Runnable;

.field ads:Landroid/support/v4/app/r;

.field adt:Landroid/os/Bundle;

.field adu:Ljava/lang/String;

.field adv:Ljava/util/ArrayList;

.field adw:Z

.field final adx:Ljava/util/ArrayList;

.field ady:Landroid/support/v4/app/ax;

.field mDestroyed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/high16 v2, 0x40200000    # 2.5f

    const/high16 v1, 0x3fc00000    # 1.5f

    .line 642
    const/4 v0, 0x0

    sput-boolean v0, Landroid/support/v4/app/aR;->DEBUG:Z

    .line 674
    const/4 v0, 0x0

    sput-object v0, Landroid/support/v4/app/aR;->adR:Ljava/lang/reflect/Field;

    .line 1093
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/aR;->adz:Landroid/view/animation/Interpolator;

    .line 1094
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/aR;->adV:Landroid/view/animation/Interpolator;

    .line 1095
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/aR;->adL:Landroid/view/animation/Interpolator;

    .line 1096
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/aR;->adA:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 641
    invoke-direct {p0}, Landroid/support/v4/app/aW;-><init>()V

    .line 653
    iput v1, p0, Landroid/support/v4/app/aR;->adN:I

    .line 655
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/aR;->adx:Ljava/util/ArrayList;

    .line 665
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/aR;->adJ:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 668
    iput v1, p0, Landroid/support/v4/app/aR;->adP:I

    .line 688
    iput-object v2, p0, Landroid/support/v4/app/aR;->adt:Landroid/os/Bundle;

    .line 689
    iput-object v2, p0, Landroid/support/v4/app/aR;->adS:Landroid/util/SparseArray;

    .line 697
    new-instance v0, Landroid/support/v4/app/I;

    invoke-direct {v0, p0}, Landroid/support/v4/app/I;-><init>(Landroid/support/v4/app/aR;)V

    iput-object v0, p0, Landroid/support/v4/app/aR;->adr:Ljava/lang/Runnable;

    .line 3963
    return-void
.end method

.method private apE(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2663
    monitor-enter p0

    .line 2664
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/app/aR;->adQ:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 2665
    :cond_0
    monitor-exit p0

    return v0

    .line 2664
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/aR;->adQ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 2668
    iget-object v1, p0, Landroid/support/v4/app/aR;->adQ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v0

    move v2, v0

    .line 2669
    :goto_0
    if-lt v1, v3, :cond_2

    .line 2672
    iget-object v0, p0, Landroid/support/v4/app/aR;->adQ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2673
    iget-object v0, p0, Landroid/support/v4/app/aR;->ads:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/aR;->adr:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2674
    monitor-exit p0

    .line 2675
    return v2

    .line 2670
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/aR;->adQ:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/aC;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/app/aC;->alK(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v0

    or-int/2addr v2, v0

    .line 2669
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2674
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static apI(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2569
    :goto_0
    if-lt p2, p3, :cond_0

    .line 2583
    return-void

    .line 2570
    :cond_0
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/V;

    .line 2571
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 2572
    if-nez v1, :cond_1

    .line 2579
    invoke-virtual {v0, v3}, Landroid/support/v4/app/V;->anu(I)V

    .line 2580
    invoke-virtual {v0}, Landroid/support/v4/app/V;->anz()V

    .line 2569
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 2573
    :cond_1
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/V;->anu(I)V

    .line 2576
    add-int/lit8 v1, p3, -0x1

    if-eq p2, v1, :cond_2

    move v1, v2

    .line 2577
    :goto_2
    invoke-virtual {v0, v1}, Landroid/support/v4/app/V;->anD(Z)V

    goto :goto_1

    :cond_2
    move v1, v3

    .line 2576
    goto :goto_2
.end method

.method static apJ(Landroid/animation/Animator;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 721
    if-eqz p0, :cond_1

    .line 724
    instance-of v0, p0, Landroid/animation/ValueAnimator;

    if-nez v0, :cond_2

    .line 732
    instance-of v0, p0, Landroid/animation/AnimatorSet;

    if-nez v0, :cond_4

    .line 740
    :cond_0
    return v1

    .line 722
    :cond_1
    return v1

    .line 725
    :cond_2
    check-cast p0, Landroid/animation/ValueAnimator;

    .line 726
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    move v0, v1

    .line 727
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 728
    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "alpha"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 727
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 729
    :cond_3
    return v5

    .line 733
    :cond_4
    check-cast p0, Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v3

    move v2, v1

    .line 734
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 735
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-static {v0}, Landroid/support/v4/app/aR;->apJ(Landroid/animation/Animator;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 734
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 736
    :cond_5
    return v5
.end method

.method private apN(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2166
    iget-boolean v0, p0, Landroid/support/v4/app/aR;->adC:Z

    if-nez v0, :cond_0

    .line 2170
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/aR;->ads:Landroid/support/v4/app/r;

    invoke-virtual {v1}, Landroid/support/v4/app/r;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 2174
    if-eqz p1, :cond_2

    .line 2178
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/aR;->adK:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 2182
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/aR;->adC:Z

    .line 2184
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v0, v1}, Landroid/support/v4/app/aR;->apm(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2186
    iput-boolean v2, p0, Landroid/support/v4/app/aR;->adC:Z

    .line 2188
    return-void

    .line 2167
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "FragmentManager is already executing transactions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2171
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Must be called from main thread of fragment host"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2175
    :cond_2
    invoke-direct {p0}, Landroid/support/v4/app/aR;->aqg()V

    goto :goto_0

    .line 2179
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/aR;->adK:Ljava/util/ArrayList;

    .line 2180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/aR;->adH:Ljava/util/ArrayList;

    goto :goto_1

    .line 2186
    :catchall_0
    move-exception v0

    iput-boolean v2, p0, Landroid/support/v4/app/aR;->adC:Z

    throw v0
.end method

.method private apP(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 2292
    if-nez p1, :cond_1

    .line 2293
    :cond_0
    return-void

    .line 2292
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2296
    if-nez p2, :cond_3

    .line 2297
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Internal error with the back stack records"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2296
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 2301
    invoke-direct {p0, p1, p2}, Landroid/support/v4/app/aR;->apm(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2303
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    .line 2305
    :goto_0
    if-lt v2, v3, :cond_4

    .line 2327
    if-ne v1, v3, :cond_b

    .line 2330
    :goto_1
    return-void

    .line 2306
    :cond_4
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/V;

    iget-boolean v0, v0, Landroid/support/v4/app/V;->aao:Z

    .line 2307
    if-eqz v0, :cond_5

    move v0, v2

    .line 2305
    :goto_2
    add-int/lit8 v2, v0, 0x1

    goto :goto_0

    .line 2309
    :cond_5
    if-ne v1, v2, :cond_6

    .line 2314
    :goto_3
    add-int/lit8 v1, v2, 0x1

    .line 2315
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    .line 2322
    :goto_4
    invoke-direct {p0, p1, p2, v2, v0}, Landroid/support/v4/app/aR;->aqx(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 2324
    add-int/lit8 v1, v0, -0x1

    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_2

    .line 2310
    :cond_6
    invoke-direct {p0, p1, p2, v1, v2}, Landroid/support/v4/app/aR;->aqx(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    goto :goto_3

    .line 2319
    :cond_7
    add-int/lit8 v1, v1, 0x1

    .line 2316
    :cond_8
    if-lt v1, v3, :cond_9

    move v0, v1

    goto :goto_4

    .line 2317
    :cond_9
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v1

    goto :goto_4

    .line 2318
    :cond_a
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/V;

    iget-boolean v0, v0, Landroid/support/v4/app/V;->aao:Z

    if-eqz v0, :cond_7

    move v0, v1

    goto :goto_4

    .line 2328
    :cond_b
    invoke-direct {p0, p1, p2, v1, v3}, Landroid/support/v4/app/aR;->aqx(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    goto :goto_1
.end method

.method private static apR(Landroid/view/animation/Animation;)Landroid/view/animation/Animation$AnimationListener;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1264
    :try_start_0
    sget-object v0, Landroid/support/v4/app/aR;->adR:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    .line 1268
    :goto_0
    sget-object v0, Landroid/support/v4/app/aR;->adR:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation$AnimationListener;

    .line 1274
    :goto_1
    return-object v0

    .line 1265
    :cond_0
    const-class v0, Landroid/view/animation/Animation;

    const-string/jumbo v2, "mListener"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v4/app/aR;->adR:Ljava/lang/reflect/Field;

    .line 1266
    sget-object v0, Landroid/support/v4/app/aR;->adR:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1269
    :catch_0
    move-exception v0

    .line 1270
    const-string/jumbo v2, "FragmentManager"

    const-string/jumbo v3, "No field with the name mListener is found in Animation class"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 1273
    goto :goto_1

    .line 1271
    :catch_1
    move-exception v0

    .line 1272
    const-string/jumbo v2, "FragmentManager"

    const-string/jumbo v3, "Cannot access Animation\'s mListener field"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_1
.end method

.method static apT(Landroid/content/Context;FFFF)Landroid/support/v4/app/C;
    .locals 10

    .prologue
    .line 1102
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    invoke-direct {v9, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1103
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    move v1, p1

    move v2, p2

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1105
    sget-object v1, Landroid/support/v4/app/aR;->adz:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1106
    const-wide/16 v2, 0xdc

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1107
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1108
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p3, p4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1109
    sget-object v1, Landroid/support/v4/app/aR;->adV:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1110
    const-wide/16 v2, 0xdc

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1111
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1112
    new-instance v0, Landroid/support/v4/app/C;

    const/4 v1, 0x0

    invoke-direct {v0, v9, v1}, Landroid/support/v4/app/C;-><init>(Landroid/view/animation/Animation;Landroid/support/v4/app/I;)V

    return-object v0
.end method

.method private apU(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3216
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroid/support/v4/app/aR;->adC:Z

    .line 3217
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/app/aR;->apb(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3219
    iput-boolean v1, p0, Landroid/support/v4/app/aR;->adC:Z

    .line 3221
    invoke-virtual {p0}, Landroid/support/v4/app/aR;->aqa()Z

    .line 3222
    return-void

    .line 3219
    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Landroid/support/v4/app/aR;->adC:Z

    throw v0
.end method

.method static synthetic apY(Landroid/support/v4/app/aR;Landroid/support/v4/app/V;ZZZ)V
    .locals 0

    .prologue
    .line 641
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v4/app/aR;->aqf(Landroid/support/v4/app/V;ZZZ)V

    return-void
.end method

.method private apd()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 2626
    iget-object v0, p0, Landroid/support/v4/app/aR;->adO:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/aR;->adO:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    move v6, v0

    :goto_0
    move v7, v3

    .line 2627
    :goto_1
    if-lt v7, v6, :cond_1

    .line 2648
    return-void

    :cond_0
    move v6, v3

    .line 2626
    goto :goto_0

    .line 2628
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/aR;->adO:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/g;

    .line 2629
    if-nez v1, :cond_3

    .line 2627
    :cond_2
    :goto_2
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    .line 2630
    :cond_3
    invoke-virtual {v1}, Landroid/support/v4/app/g;->ajD()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_4

    .line 2643
    invoke-virtual {v1}, Landroid/support/v4/app/g;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2644
    invoke-virtual {v1}, Landroid/support/v4/app/g;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    goto :goto_2

    .line 2632
    :cond_4
    invoke-virtual {v1}, Landroid/support/v4/app/g;->akU()I

    move-result v2

    .line 2633
    invoke-virtual {v1}, Landroid/support/v4/app/g;->ajD()Landroid/view/View;

    move-result-object v0

    .line 2634
    invoke-virtual {v1, v8}, Landroid/support/v4/app/g;->akw(Landroid/view/View;)V

    .line 2635
    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v4

    .line 2636
    if-nez v4, :cond_5

    :goto_3
    move-object v0, p0

    move v4, v3

    move v5, v3

    .line 2642
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/aR;->apw(Landroid/support/v4/app/g;IIIZ)V

    goto :goto_2

    .line 2637
    :cond_5
    invoke-virtual {v4}, Landroid/view/animation/Animation;->cancel()V

    .line 2640
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_3
.end method

.method public static apg(IZ)I
    .locals 1

    .prologue
    .line 3607
    const/4 v0, -0x1

    .line 3608
    sparse-switch p0, :sswitch_data_0

    .line 3619
    :goto_0
    return v0

    .line 3610
    :sswitch_0
    if-nez p1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 3613
    :sswitch_1
    if-nez p1, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    goto :goto_0

    .line 3616
    :sswitch_2
    if-nez p1, :cond_2

    const/4 v0, 0x6

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    goto :goto_0

    .line 3608
    nop

    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1003 -> :sswitch_2
        0x2002 -> :sswitch_1
    .end sparse-switch
.end method

.method private apm(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v2, 0x0

    .line 2248
    iget-object v0, p0, Landroid/support/v4/app/aR;->adT:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/aR;->adT:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    move v3, v2

    move v4, v0

    .line 2249
    :goto_1
    if-lt v3, v4, :cond_1

    .line 2274
    return-void

    :cond_0
    move v0, v2

    .line 2248
    goto :goto_0

    .line 2250
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/aR;->adT:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/e;

    .line 2251
    if-nez p1, :cond_5

    .line 2258
    :cond_2
    invoke-virtual {v0}, Landroid/support/v4/app/e;->aju()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2260
    :cond_3
    iget-object v1, p0, Landroid/support/v4/app/aR;->adT:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2261
    add-int/lit8 v3, v3, -0x1

    .line 2262
    add-int/lit8 v4, v4, -0x1

    .line 2264
    if-nez p1, :cond_8

    .line 2270
    :cond_4
    invoke-virtual {v0}, Landroid/support/v4/app/e;->ajz()V

    move v0, v3

    move v1, v4

    .line 2249
    :goto_2
    add-int/lit8 v3, v0, 0x1

    move v4, v1

    goto :goto_1

    .line 2251
    :cond_5
    invoke-static {v0}, Landroid/support/v4/app/e;->ajw(Landroid/support/v4/app/e;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2252
    invoke-static {v0}, Landroid/support/v4/app/e;->ajy(Landroid/support/v4/app/e;)Landroid/support/v4/app/V;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 2253
    if-eq v1, v6, :cond_2

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2254
    invoke-virtual {v0}, Landroid/support/v4/app/e;->ajx()V

    move v0, v3

    move v1, v4

    .line 2255
    goto :goto_2

    .line 2258
    :cond_6
    if-nez p1, :cond_7

    move v0, v3

    move v1, v4

    goto :goto_2

    .line 2259
    :cond_7
    invoke-static {v0}, Landroid/support/v4/app/e;->ajy(Landroid/support/v4/app/e;)Landroid/support/v4/app/V;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v1, p1, v2, v5}, Landroid/support/v4/app/V;->anv(Ljava/util/ArrayList;II)Z

    move-result v1

    if-nez v1, :cond_3

    move v0, v3

    move v1, v4

    goto :goto_2

    .line 2264
    :cond_8
    invoke-static {v0}, Landroid/support/v4/app/e;->ajw(Landroid/support/v4/app/e;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2265
    invoke-static {v0}, Landroid/support/v4/app/e;->ajy(Landroid/support/v4/app/e;)Landroid/support/v4/app/V;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v6, :cond_4

    .line 2266
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2268
    invoke-virtual {v0}, Landroid/support/v4/app/e;->ajx()V

    move v0, v3

    move v1, v4

    goto :goto_2
.end method

.method private apo(Ljava/lang/String;II)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 834
    invoke-virtual {p0}, Landroid/support/v4/app/aR;->aqa()Z

    .line 835
    invoke-direct {p0, v6}, Landroid/support/v4/app/aR;->apN(Z)V

    .line 837
    iget-object v0, p0, Landroid/support/v4/app/aR;->adM:Landroid/support/v4/app/g;

    if-nez v0, :cond_1

    .line 847
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/aR;->adK:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v4/app/aR;->adH:Ljava/util/ArrayList;

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/aR;->aqZ(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result v0

    .line 848
    if-nez v0, :cond_2

    .line 857
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/app/aR;->apZ()V

    .line 858
    invoke-direct {p0}, Landroid/support/v4/app/aR;->apt()V

    .line 859
    return v0

    .line 837
    :cond_1
    if-gez p2, :cond_0

    if-nez p1, :cond_0

    .line 840
    iget-object v0, p0, Landroid/support/v4/app/aR;->adM:Landroid/support/v4/app/g;

    invoke-virtual {v0}, Landroid/support/v4/app/g;->akG()Landroid/support/v4/app/aW;

    move-result-object v0

    .line 841
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/aW;->apn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 843
    return v6

    .line 849
    :cond_2
    iput-boolean v6, p0, Landroid/support/v4/app/aR;->adC:Z

    .line 851
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/app/aR;->adK:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v4/app/aR;->adH:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2}, Landroid/support/v4/app/aR;->apP(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 853
    invoke-direct {p0}, Landroid/support/v4/app/aR;->aqy()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroid/support/v4/app/aR;->aqy()V

    throw v0
.end method

.method private apq(Landroid/support/v4/app/g;Landroid/support/v4/app/C;I)V
    .locals 4

    .prologue
    .line 1596
    iget-object v0, p1, Landroid/support/v4/app/g;->mView:Landroid/view/View;

    .line 1597
    invoke-virtual {p1, p3}, Landroid/support/v4/app/g;->aks(I)V

    .line 1598
    iget-object v1, p2, Landroid/support/v4/app/C;->ZE:Landroid/view/animation/Animation;

    if-nez v1, :cond_0

    .line 1615
    iget-object v1, p2, Landroid/support/v4/app/C;->ZD:Landroid/animation/Animator;

    .line 1616
    iget-object v2, p2, Landroid/support/v4/app/C;->ZD:Landroid/animation/Animator;

    invoke-virtual {p1, v2}, Landroid/support/v4/app/g;->akr(Landroid/animation/Animator;)V

    .line 1617
    iget-object v2, p1, Landroid/support/v4/app/g;->XT:Landroid/view/ViewGroup;

    .line 1618
    if-nez v2, :cond_1

    .line 1621
    :goto_0
    new-instance v3, Landroid/support/v4/app/d;

    invoke-direct {v3, p0, v2, v0, p1}, Landroid/support/v4/app/d;-><init>(Landroid/support/v4/app/aR;Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/v4/app/g;)V

    invoke-virtual {v1, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1633
    iget-object v0, p1, Landroid/support/v4/app/g;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1634
    iget-object v0, p1, Landroid/support/v4/app/g;->mView:Landroid/view/View;

    invoke-static {v0, p2}, Landroid/support/v4/app/aR;->aqC(Landroid/view/View;Landroid/support/v4/app/C;)V

    .line 1635
    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 1637
    :goto_1
    return-void

    .line 1599
    :cond_0
    iget-object v1, p2, Landroid/support/v4/app/C;->ZE:Landroid/view/animation/Animation;

    .line 1600
    iget-object v2, p1, Landroid/support/v4/app/g;->mView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/support/v4/app/g;->akw(Landroid/view/View;)V

    .line 1601
    invoke-static {v1}, Landroid/support/v4/app/aR;->apR(Landroid/view/animation/Animation;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v2

    .line 1602
    new-instance v3, Landroid/support/v4/app/p;

    invoke-direct {v3, p0, v2, p1}, Landroid/support/v4/app/p;-><init>(Landroid/support/v4/app/aR;Landroid/view/animation/Animation$AnimationListener;Landroid/support/v4/app/g;)V

    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1612
    invoke-static {v0, p2}, Landroid/support/v4/app/aR;->aqC(Landroid/view/View;Landroid/support/v4/app/C;)V

    .line 1613
    iget-object v0, p1, Landroid/support/v4/app/g;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 1619
    :cond_1
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    goto :goto_0
.end method

.method private aps(Ljava/util/ArrayList;Ljava/util/ArrayList;IILandroid/support/v4/a/c;)I
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 2434
    add-int/lit8 v0, p4, -0x1

    move v4, v0

    move v3, p4

    :goto_0
    if-ge v4, p3, :cond_0

    .line 2466
    return v3

    .line 2435
    :cond_0
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/V;

    .line 2436
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 2437
    invoke-virtual {v0}, Landroid/support/v4/app/V;->anE()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    move v1, v2

    .line 2439
    :goto_1
    if-nez v1, :cond_3

    move v0, v3

    .line 2434
    :goto_2
    add-int/lit8 v1, v4, -0x1

    move v4, v1

    move v3, v0

    goto :goto_0

    .line 2437
    :cond_2
    add-int/lit8 v1, v4, 0x1

    .line 2438
    invoke-virtual {v0, p1, v1, p4}, Landroid/support/v4/app/V;->anv(Ljava/util/ArrayList;II)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    .line 2440
    :cond_3
    iget-object v1, p0, Landroid/support/v4/app/aR;->adT:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    .line 2443
    :goto_3
    new-instance v1, Landroid/support/v4/app/e;

    invoke-direct {v1, v0, v5}, Landroid/support/v4/app/e;-><init>(Landroid/support/v4/app/V;Z)V

    .line 2445
    iget-object v6, p0, Landroid/support/v4/app/aR;->adT:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2446
    invoke-virtual {v0, v1}, Landroid/support/v4/app/V;->anp(Landroid/support/v4/app/ap;)V

    .line 2449
    if-nez v5, :cond_5

    .line 2452
    invoke-virtual {v0, v2}, Landroid/support/v4/app/V;->anD(Z)V

    .line 2456
    :goto_4
    add-int/lit8 v1, v3, -0x1

    .line 2457
    if-ne v4, v1, :cond_6

    .line 2463
    :goto_5
    invoke-direct {p0, p5}, Landroid/support/v4/app/aR;->are(Landroid/support/v4/a/c;)V

    move v0, v1

    goto :goto_2

    .line 2441
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/aR;->adT:Ljava/util/ArrayList;

    goto :goto_3

    .line 2450
    :cond_5
    invoke-virtual {v0}, Landroid/support/v4/app/V;->anz()V

    goto :goto_4

    .line 2458
    :cond_6
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2459
    invoke-virtual {p1, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_5
.end method

.method private apt()V
    .locals 3

    .prologue
    .line 3135
    iget-object v0, p0, Landroid/support/v4/app/aR;->adO:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 3142
    :cond_0
    return-void

    .line 3136
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/aR;->adO:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    :cond_2
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 3137
    iget-object v1, p0, Landroid/support/v4/app/aR;->adO:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 3138
    iget-object v1, p0, Landroid/support/v4/app/aR;->adO:Landroid/util/SparseArray;

    iget-object v2, p0, Landroid/support/v4/app/aR;->adO:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->delete(I)V

    goto :goto_0
.end method

.method private apx(Landroid/support/v4/a/c;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 2407
    invoke-virtual {p1}, Landroid/support/v4/a/c;->size()I

    move-result v2

    move v1, v0

    .line 2408
    :goto_0
    if-lt v1, v2, :cond_0

    .line 2416
    return-void

    .line 2409
    :cond_0
    invoke-virtual {p1, v1}, Landroid/support/v4/a/c;->aim(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/g;

    .line 2410
    iget-boolean v3, v0, Landroid/support/v4/app/g;->XW:Z

    if-eqz v3, :cond_1

    .line 2408
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2411
    :cond_1
    invoke-virtual {v0}, Landroid/support/v4/app/g;->akv()Landroid/view/View;

    move-result-object v3

    .line 2412
    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v4

    iput v4, v0, Landroid/support/v4/app/g;->YG:F

    .line 2413
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1
.end method

.method private static aqC(Landroid/view/View;Landroid/support/v4/app/C;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1240
    if-nez p0, :cond_1

    .line 1241
    :cond_0
    return-void

    .line 1240
    :cond_1
    if-eqz p1, :cond_0

    .line 1243
    invoke-static {p0, p1}, Landroid/support/v4/app/aR;->aqG(Landroid/view/View;Landroid/support/v4/app/C;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1256
    :goto_0
    return-void

    .line 1244
    :cond_2
    iget-object v0, p1, Landroid/support/v4/app/C;->ZD:Landroid/animation/Animator;

    if-nez v0, :cond_3

    .line 1247
    iget-object v0, p1, Landroid/support/v4/app/C;->ZE:Landroid/view/animation/Animation;

    invoke-static {v0}, Landroid/support/v4/app/aR;->apR(Landroid/view/animation/Animation;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    .line 1251
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1252
    iget-object v1, p1, Landroid/support/v4/app/C;->ZE:Landroid/view/animation/Animation;

    new-instance v2, Landroid/support/v4/app/E;

    invoke-direct {v2, p0, v0}, Landroid/support/v4/app/E;-><init>(Landroid/view/View;Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    .line 1245
    :cond_3
    iget-object v0, p1, Landroid/support/v4/app/C;->ZD:Landroid/animation/Animator;

    new-instance v1, Landroid/support/v4/app/aJ;

    invoke-direct {v1, p0}, Landroid/support/v4/app/aJ;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0
.end method

.method static aqG(Landroid/view/View;Landroid/support/v4/app/C;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 744
    if-nez p0, :cond_1

    .line 745
    :cond_0
    return v0

    .line 744
    :cond_1
    if-eqz p1, :cond_0

    .line 747
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v1, v2, :cond_3

    .line 750
    :cond_2
    :goto_0
    return v0

    .line 748
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result v1

    if-nez v1, :cond_2

    .line 749
    invoke-static {p0}, Landroid/support/v4/view/f;->agB(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 750
    invoke-static {p1}, Landroid/support/v4/app/aR;->aqj(Landroid/support/v4/app/C;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static aqK(I)I
    .locals 1

    .prologue
    .line 3583
    const/4 v0, 0x0

    .line 3584
    sparse-switch p0, :sswitch_data_0

    .line 3595
    :goto_0
    return v0

    .line 3586
    :sswitch_0
    const/16 v0, 0x2002

    goto :goto_0

    .line 3589
    :sswitch_1
    const/16 v0, 0x1001

    goto :goto_0

    .line 3592
    :sswitch_2
    const/16 v0, 0x1003

    goto :goto_0

    .line 3584
    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1003 -> :sswitch_2
        0x2002 -> :sswitch_1
    .end sparse-switch
.end method

.method private aqP()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2614
    iget-object v0, p0, Landroid/support/v4/app/aR;->adT:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 2619
    :goto_0
    return-void

    .line 2616
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/aR;->adT:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/e;

    invoke-virtual {v0}, Landroid/support/v4/app/e;->ajz()V

    .line 2615
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/aR;->adT:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method private static aqX(Landroid/support/v4/app/ax;)V
    .locals 3

    .prologue
    .line 2778
    if-eqz p0, :cond_2

    .line 2781
    invoke-virtual {p0}, Landroid/support/v4/app/ax;->anZ()Ljava/util/List;

    move-result-object v0

    .line 2782
    if-nez v0, :cond_3

    .line 2787
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/ax;->aoa()Ljava/util/List;

    move-result-object v0

    .line 2788
    if-nez v0, :cond_4

    .line 2793
    :cond_1
    return-void

    .line 2779
    :cond_2
    return-void

    .line 2783
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/g;

    .line 2784
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/support/v4/app/g;->XZ:Z

    goto :goto_0

    .line 2789
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/ax;

    .line 2790
    invoke-static {v0}, Landroid/support/v4/app/aR;->aqX(Landroid/support/v4/app/ax;)V

    goto :goto_1
.end method

.method private aqf(Landroid/support/v4/app/V;ZZZ)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2486
    if-nez p2, :cond_1

    .line 2489
    invoke-virtual {p1}, Landroid/support/v4/app/V;->anz()V

    .line 2491
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 2492
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 2493
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2494
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2495
    if-nez p3, :cond_2

    .line 2498
    :goto_1
    if-nez p4, :cond_3

    .line 2502
    :goto_2
    iget-object v0, p0, Landroid/support/v4/app/aR;->adO:Landroid/util/SparseArray;

    if-nez v0, :cond_4

    .line 2522
    :cond_0
    return-void

    .line 2487
    :cond_1
    invoke-virtual {p1, p4}, Landroid/support/v4/app/V;->anD(Z)V

    goto :goto_0

    :cond_2
    move-object v0, p0

    move v5, v4

    .line 2496
    invoke-static/range {v0 .. v5}, Landroid/support/v4/app/aL;->aoA(Landroid/support/v4/app/aR;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    goto :goto_1

    .line 2499
    :cond_3
    iget v0, p0, Landroid/support/v4/app/aR;->adP:I

    invoke-virtual {p0, v0, v4}, Landroid/support/v4/app/aR;->apb(IZ)V

    goto :goto_2

    .line 2503
    :cond_4
    iget-object v0, p0, Landroid/support/v4/app/aR;->adO:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    move v1, v3

    .line 2504
    :goto_3
    if-ge v1, v2, :cond_0

    .line 2507
    iget-object v0, p0, Landroid/support/v4/app/aR;->adO:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/g;

    .line 2508
    if-nez v0, :cond_6

    .line 2504
    :cond_5
    :goto_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 2508
    :cond_6
    iget-object v4, v0, Landroid/support/v4/app/g;->mView:Landroid/view/View;

    if-eqz v4, :cond_5

    iget-boolean v4, v0, Landroid/support/v4/app/g;->Yy:Z

    if-eqz v4, :cond_5

    iget v4, v0, Landroid/support/v4/app/g;->Yc:I

    .line 2509
    invoke-virtual {p1, v4}, Landroid/support/v4/app/V;->anq(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2510
    iget v4, v0, Landroid/support/v4/app/g;->YG:F

    cmpl-float v4, v4, v6

    if-lez v4, :cond_7

    .line 2511
    iget-object v4, v0, Landroid/support/v4/app/g;->mView:Landroid/view/View;

    iget v5, v0, Landroid/support/v4/app/g;->YG:F

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 2513
    :cond_7
    if-nez p4, :cond_8

    .line 2516
    const/high16 v4, -0x40800000    # -1.0f

    iput v4, v0, Landroid/support/v4/app/g;->YG:F

    .line 2517
    iput-boolean v3, v0, Landroid/support/v4/app/g;->Yy:Z

    goto :goto_4

    .line 2514
    :cond_8
    iput v6, v0, Landroid/support/v4/app/g;->YG:F

    goto :goto_4
.end method

.method private aqg()V
    .locals 3

    .prologue
    .line 2043
    iget-boolean v0, p0, Landroid/support/v4/app/aR;->adD:Z

    if-nez v0, :cond_0

    .line 2047
    iget-object v0, p0, Landroid/support/v4/app/aR;->adu:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2051
    return-void

    .line 2044
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can not perform this action after onSaveInstanceState"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2048
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can not perform this action inside of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/app/aR;->adu:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static aqj(Landroid/support/v4/app/C;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 705
    iget-object v0, p0, Landroid/support/v4/app/C;->ZE:Landroid/view/animation/Animation;

    instance-of v0, v0, Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_0

    .line 707
    iget-object v0, p0, Landroid/support/v4/app/C;->ZE:Landroid/view/animation/Animation;

    instance-of v0, v0, Landroid/view/animation/AnimationSet;

    if-nez v0, :cond_1

    .line 716
    iget-object v0, p0, Landroid/support/v4/app/C;->ZD:Landroid/animation/Animator;

    invoke-static {v0}, Landroid/support/v4/app/aR;->apJ(Landroid/animation/Animator;)Z

    move-result v0

    return v0

    .line 706
    :cond_0
    return v4

    .line 708
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/C;->ZE:Landroid/view/animation/Animation;

    check-cast v0, Landroid/view/animation/AnimationSet;

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v2

    move v0, v1

    .line 709
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_2

    .line 714
    return v1

    .line 710
    :cond_2
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Landroid/view/animation/AlphaAnimation;

    if-nez v3, :cond_3

    .line 709
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 711
    :cond_3
    return v4
.end method

.method static aqk(Landroid/content/Context;FF)Landroid/support/v4/app/C;
    .locals 4

    .prologue
    .line 1116
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p1, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1117
    sget-object v1, Landroid/support/v4/app/aR;->adV:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1118
    const-wide/16 v2, 0xdc

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1119
    new-instance v1, Landroid/support/v4/app/C;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/support/v4/app/C;-><init>(Landroid/view/animation/Animation;Landroid/support/v4/app/I;)V

    return-object v1
.end method

.method private aqn(Landroid/support/v4/app/g;)Landroid/support/v4/app/g;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2541
    iget-object v2, p1, Landroid/support/v4/app/g;->XT:Landroid/view/ViewGroup;

    .line 2542
    iget-object v0, p1, Landroid/support/v4/app/g;->mView:Landroid/view/View;

    .line 2544
    if-nez v2, :cond_1

    .line 2545
    :cond_0
    return-object v4

    .line 2544
    :cond_1
    if-eqz v0, :cond_0

    .line 2548
    iget-object v0, p0, Landroid/support/v4/app/aR;->adx:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 2549
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_2

    .line 2556
    return-object v4

    .line 2550
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/aR;->adx:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/g;

    .line 2551
    iget-object v3, v0, Landroid/support/v4/app/g;->XT:Landroid/view/ViewGroup;

    if-eq v3, v2, :cond_4

    .line 2549
    :cond_3
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 2551
    :cond_4
    iget-object v3, v0, Landroid/support/v4/app/g;->mView:Landroid/view/View;

    if-eqz v3, :cond_3

    .line 2553
    return-object v0
.end method

.method static synthetic aqs(Landroid/support/v4/app/aR;)V
    .locals 0

    .prologue
    .line 641
    invoke-direct {p0}, Landroid/support/v4/app/aR;->aqz()V

    return-void
.end method

.method private aqx(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2342
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/V;

    iget-boolean v8, v0, Landroid/support/v4/app/V;->aao:Z

    .line 2344
    iget-object v0, p0, Landroid/support/v4/app/aR;->adv:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 2347
    iget-object v0, p0, Landroid/support/v4/app/aR;->adv:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2349
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/aR;->adv:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/aR;->adx:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2350
    invoke-virtual {p0}, Landroid/support/v4/app/aR;->aqB()Landroid/support/v4/app/g;

    move-result-object v1

    move v2, p3

    move-object v3, v1

    move v7, v5

    .line 2351
    :goto_1
    if-lt v2, p4, :cond_2

    .line 2361
    iget-object v0, p0, Landroid/support/v4/app/aR;->adv:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2363
    if-eqz v8, :cond_6

    .line 2367
    :goto_2
    invoke-static {p1, p2, p3, p4}, Landroid/support/v4/app/aR;->apI(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 2370
    if-nez v8, :cond_7

    move v4, p4

    .line 2378
    :goto_3
    if-ne v4, p3, :cond_8

    .line 2385
    :cond_0
    :goto_4
    if-lt p3, p4, :cond_9

    .line 2394
    if-nez v7, :cond_c

    .line 2397
    :goto_5
    return-void

    .line 2345
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/aR;->adv:Ljava/util/ArrayList;

    goto :goto_0

    .line 2352
    :cond_2
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/V;

    .line 2353
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 2354
    if-eqz v1, :cond_4

    .line 2357
    iget-object v1, p0, Landroid/support/v4/app/aR;->adv:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v3}, Landroid/support/v4/app/V;->ans(Ljava/util/ArrayList;Landroid/support/v4/app/g;)Landroid/support/v4/app/g;

    move-result-object v1

    .line 2359
    :goto_6
    if-eqz v7, :cond_5

    :cond_3
    move v0, v6

    .line 2351
    :goto_7
    add-int/lit8 v2, v2, 0x1

    move-object v3, v1

    move v7, v0

    goto :goto_1

    .line 2355
    :cond_4
    iget-object v1, p0, Landroid/support/v4/app/aR;->adv:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v3}, Landroid/support/v4/app/V;->anr(Ljava/util/ArrayList;Landroid/support/v4/app/g;)Landroid/support/v4/app/g;

    move-result-object v1

    goto :goto_6

    .line 2359
    :cond_5
    iget-boolean v0, v0, Landroid/support/v4/app/V;->aaz:Z

    if-nez v0, :cond_3

    move v0, v5

    goto :goto_7

    :cond_6
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 2364
    invoke-static/range {v0 .. v5}, Landroid/support/v4/app/aL;->aoA(Landroid/support/v4/app/aR;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    goto :goto_2

    .line 2371
    :cond_7
    new-instance v5, Landroid/support/v4/a/c;

    invoke-direct {v5}, Landroid/support/v4/a/c;-><init>()V

    .line 2372
    invoke-direct {p0, v5}, Landroid/support/v4/app/aR;->are(Landroid/support/v4/a/c;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 2373
    invoke-direct/range {v0 .. v5}, Landroid/support/v4/app/aR;->aps(Ljava/util/ArrayList;Ljava/util/ArrayList;IILandroid/support/v4/a/c;)I

    move-result v4

    .line 2375
    invoke-direct {p0, v5}, Landroid/support/v4/app/aR;->apx(Landroid/support/v4/a/c;)V

    goto :goto_3

    .line 2378
    :cond_8
    if-eqz v8, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, v6

    .line 2380
    invoke-static/range {v0 .. v5}, Landroid/support/v4/app/aL;->aoA(Landroid/support/v4/app/aR;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    .line 2382
    iget v0, p0, Landroid/support/v4/app/aR;->adP:I

    invoke-virtual {p0, v0, v6}, Landroid/support/v4/app/aR;->apb(IZ)V

    goto :goto_4

    .line 2386
    :cond_9
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/V;

    .line 2387
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 2388
    if-nez v1, :cond_b

    .line 2392
    :cond_a
    :goto_8
    invoke-virtual {v0}, Landroid/support/v4/app/V;->anx()V

    .line 2385
    add-int/lit8 p3, p3, 0x1

    goto :goto_4

    .line 2388
    :cond_b
    iget v1, v0, Landroid/support/v4/app/V;->aaq:I

    if-ltz v1, :cond_a

    .line 2389
    iget v1, v0, Landroid/support/v4/app/V;->aaq:I

    invoke-virtual {p0, v1}, Landroid/support/v4/app/aR;->apu(I)V

    .line 2390
    const/4 v1, -0x1

    iput v1, v0, Landroid/support/v4/app/V;->aaq:I

    goto :goto_8

    .line 2395
    :cond_c
    invoke-virtual {p0}, Landroid/support/v4/app/aR;->apL()V

    goto/16 :goto_5
.end method

.method private aqy()V
    .locals 1

    .prologue
    .line 2214
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/aR;->adC:Z

    .line 2215
    iget-object v0, p0, Landroid/support/v4/app/aR;->adH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2216
    iget-object v0, p0, Landroid/support/v4/app/aR;->adK:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2217
    return-void
.end method

.method private aqz()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2092
    monitor-enter p0

    .line 2093
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/aR;->adT:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    :cond_0
    move v0, v2

    .line 2095
    :goto_0
    iget-object v3, p0, Landroid/support/v4/app/aR;->adQ:Ljava/util/ArrayList;

    if-nez v3, :cond_4

    :goto_1
    move v1, v2

    .line 2096
    :cond_1
    if-eqz v0, :cond_5

    .line 2097
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/aR;->ads:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/aR;->adr:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2098
    iget-object v0, p0, Landroid/support/v4/app/aR;->ads:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/aR;->adr:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2100
    :goto_2
    monitor-exit p0

    .line 2101
    return-void

    .line 2093
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/aR;->adT:Ljava/util/ArrayList;

    .line 2094
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 2095
    :cond_4
    iget-object v3, p0, Landroid/support/v4/app/aR;->adQ:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v3, v1, :cond_1

    goto :goto_1

    .line 2096
    :cond_5
    if-nez v1, :cond_2

    goto :goto_2

    .line 2100
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private ard(Ljava/lang/RuntimeException;)V
    .locals 5

    .prologue
    .line 754
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    const-string/jumbo v0, "FragmentManager"

    const-string/jumbo v1, "Activity state:"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    new-instance v0, Landroid/support/v4/a/p;

    const-string/jumbo v1, "FragmentManager"

    invoke-direct {v0, v1}, Landroid/support/v4/a/p;-><init>(Ljava/lang/String;)V

    .line 757
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 758
    iget-object v0, p0, Landroid/support/v4/app/aR;->ads:Landroid/support/v4/app/r;

    if-nez v0, :cond_0

    .line 766
    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v2, "  "

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v1, v0}, Landroid/support/v4/app/aR;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 771
    :goto_0
    throw p1

    .line 760
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/support/v4/app/aR;->ads:Landroid/support/v4/app/r;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "  "

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/support/v4/app/r;->alv(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 761
    :catch_0
    move-exception v0

    .line 762
    const-string/jumbo v1, "FragmentManager"

    const-string/jumbo v2, "Failed dumping state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 767
    :catch_1
    move-exception v0

    .line 768
    const-string/jumbo v1, "FragmentManager"

    const-string/jumbo v2, "Failed dumping state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private are(Landroid/support/v4/a/c;)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 2592
    iget v0, p0, Landroid/support/v4/app/aR;->adP:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 2596
    iget v0, p0, Landroid/support/v4/app/aR;->adP:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2597
    iget-object v0, p0, Landroid/support/v4/app/aR;->adx:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v6, v5

    .line 2598
    :goto_0
    if-lt v6, v7, :cond_1

    .line 2608
    return-void

    .line 2593
    :cond_0
    return-void

    .line 2599
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/aR;->adx:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/g;

    .line 2600
    iget v0, v1, Landroid/support/v4/app/g;->mState:I

    if-lt v0, v2, :cond_3

    .line 2598
    :cond_2
    :goto_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 2601
    :cond_3
    invoke-virtual {v1}, Landroid/support/v4/app/g;->akf()I

    move-result v3

    invoke-virtual {v1}, Landroid/support/v4/app/g;->ajY()I

    move-result v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/aR;->apw(Landroid/support/v4/app/g;IIIZ)V

    .line 2603
    iget-object v0, v1, Landroid/support/v4/app/g;->mView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-boolean v0, v1, Landroid/support/v4/app/g;->YI:Z

    if-nez v0, :cond_2

    iget-boolean v0, v1, Landroid/support/v4/app/g;->Yy:Z

    if-eqz v0, :cond_2

    .line 2604
    invoke-virtual {p1, v1}, Landroid/support/v4/a/c;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method public apA(Landroid/support/v4/app/g;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1939
    sget-boolean v1, Landroid/support/v4/app/aR;->DEBUG:Z

    if-nez v1, :cond_0

    .line 1940
    :goto_0
    iget-boolean v1, p1, Landroid/support/v4/app/g;->YI:Z

    if-nez v1, :cond_1

    .line 1946
    :goto_1
    return-void

    .line 1939
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "show: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "FragmentManager"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1941
    :cond_1
    iput-boolean v0, p1, Landroid/support/v4/app/g;->YI:Z

    .line 1944
    iget-boolean v1, p1, Landroid/support/v4/app/g;->Yo:Z

    if-eqz v1, :cond_2

    :goto_2
    iput-boolean v0, p1, Landroid/support/v4/app/g;->Yo:Z

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_2
.end method

.method apB()Landroid/view/LayoutInflater$Factory2;
    .locals 0

    .prologue
    .line 3724
    return-object p0
.end method

.method apC()V
    .locals 2

    .prologue
    .line 1840
    iget-object v0, p0, Landroid/support/v4/app/aR;->adO:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 1842
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/aR;->adO:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 1848
    return-void

    .line 1840
    :cond_0
    return-void

    .line 1843
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/aR;->adO:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/g;

    .line 1844
    if-nez v0, :cond_2

    .line 1842
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1845
    :cond_2
    invoke-virtual {p0, v0}, Landroid/support/v4/app/aR;->aqr(Landroid/support/v4/app/g;)V

    goto :goto_1
.end method

.method public apD(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    move v1, v2

    .line 3316
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/aR;->adx:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 3324
    return v2

    .line 3317
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/aR;->adx:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/g;

    .line 3318
    if-nez v0, :cond_2

    .line 3316
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 3319
    :cond_2
    invoke-virtual {v0, p1}, Landroid/support/v4/app/g;->akY(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3320
    const/4 v0, 0x1

    return v0
.end method

.method apF(Landroid/support/v4/app/g;Landroid/os/Bundle;Z)V
    .locals 3

    .prologue
    .line 3523
    iget-object v0, p0, Landroid/support/v4/app/aR;->adq:Landroid/support/v4/app/g;

    if-nez v0, :cond_1

    .line 3530
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/aR;->adJ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3535
    return-void

    .line 3524
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/aR;->adq:Landroid/support/v4/app/g;

    invoke-virtual {v0}, Landroid/support/v4/app/g;->alk()Landroid/support/v4/app/aW;

    move-result-object v0

    .line 3525
    instance-of v1, v0, Landroid/support/v4/app/aR;

    if-eqz v1, :cond_0

    .line 3526
    check-cast v0, Landroid/support/v4/app/aR;

    .line 3527
    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v4/app/aR;->apF(Landroid/support/v4/app/g;Landroid/os/Bundle;Z)V

    goto :goto_0

    .line 3530
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/i;

    .line 3531
    if-nez p3, :cond_4

    .line 3532
    :cond_3
    iget-object v0, v0, Landroid/support/v4/a/i;->Xk:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/app/aX;

    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v4/app/aX;->arF(Landroid/support/v4/app/aW;Landroid/support/v4/app/g;Landroid/os/Bundle;)V

    goto :goto_1

    .line 3531
    :cond_4
    iget-object v1, v0, Landroid/support/v4/a/i;->Xl:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1
.end method

.method public apG()V
    .locals 1

    .prologue
    .line 3192
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/aR;->adD:Z

    .line 3194
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/support/v4/app/aR;->apU(I)V

    .line 3195
    return-void
.end method

.method public apH()V
    .locals 1

    .prologue
    .line 3202
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/app/aR;->apU(I)V

    .line 3203
    return-void
.end method

.method apK(Landroid/support/v4/app/g;)V
    .locals 3

    .prologue
    .line 1864
    iget v0, p1, Landroid/support/v4/app/g;->Yb:I

    if-ltz v0, :cond_0

    .line 1868
    sget-boolean v0, Landroid/support/v4/app/aR;->DEBUG:Z

    if-nez v0, :cond_1

    .line 1871
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/aR;->adO:Landroid/util/SparseArray;

    iget v1, p1, Landroid/support/v4/app/g;->Yb:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1873
    iget-object v0, p0, Landroid/support/v4/app/aR;->ads:Landroid/support/v4/app/r;

    iget-object v1, p1, Landroid/support/v4/app/g;->XV:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/r;->alG(Ljava/lang/String;)V

    .line 1874
    invoke-virtual {p1}, Landroid/support/v4/app/g;->akW()V

    .line 1875
    return-void

    .line 1865
    :cond_0
    return-void

    .line 1868
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Freeing fragment index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method apL()V
    .locals 2

    .prologue
    .line 2695
    iget-object v0, p0, Landroid/support/v4/app/aR;->adG:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 2700
    :cond_0
    return-void

    .line 2696
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/aR;->adG:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 2697
    iget-object v0, p0, Landroid/support/v4/app/aR;->adG:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/aK;

    invoke-interface {v0}, Landroid/support/v4/app/aK;->aoq()V

    .line 2696
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public apM()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3206
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/aR;->mDestroyed:Z

    .line 3207
    invoke-virtual {p0}, Landroid/support/v4/app/aR;->aqa()Z

    .line 3208
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/app/aR;->apU(I)V

    .line 3209
    iput-object v1, p0, Landroid/support/v4/app/aR;->ads:Landroid/support/v4/app/r;

    .line 3210
    iput-object v1, p0, Landroid/support/v4/app/aR;->adB:Landroid/support/v4/app/ac;

    .line 3211
    iput-object v1, p0, Landroid/support/v4/app/aR;->adq:Landroid/support/v4/app/g;

    .line 3212
    return-void
.end method

.method public apO(Landroid/support/v4/app/aC;Z)V
    .locals 2

    .prologue
    .line 2066
    if-eqz p2, :cond_1

    .line 2069
    :goto_0
    monitor-enter p0

    .line 2070
    :try_start_0
    iget-boolean v0, p0, Landroid/support/v4/app/aR;->mDestroyed:Z

    if-eqz v0, :cond_2

    .line 2071
    :cond_0
    if-nez p2, :cond_3

    .line 2075
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Activity has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2082
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2067
    :cond_1
    invoke-direct {p0}, Landroid/support/v4/app/aR;->aqg()V

    goto :goto_0

    .line 2070
    :cond_2
    :try_start_1
    iget-object v0, p0, Landroid/support/v4/app/aR;->ads:Landroid/support/v4/app/r;

    if-eqz v0, :cond_0

    .line 2077
    iget-object v0, p0, Landroid/support/v4/app/aR;->adQ:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 2080
    :goto_1
    iget-object v0, p0, Landroid/support/v4/app/aR;->adQ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2081
    invoke-direct {p0}, Landroid/support/v4/app/aR;->aqz()V

    .line 2082
    monitor-exit p0

    .line 2083
    return-void

    .line 2073
    :cond_3
    monitor-exit p0

    return-void

    .line 2078
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/aR;->adQ:Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public apQ()V
    .locals 1

    .prologue
    .line 3198
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/support/v4/app/aR;->apU(I)V

    .line 3199
    return-void
.end method

.method apS()Landroid/support/v4/app/ax;
    .locals 1

    .prologue
    .line 2767
    iget-object v0, p0, Landroid/support/v4/app/aR;->ady:Landroid/support/v4/app/ax;

    invoke-static {v0}, Landroid/support/v4/app/aR;->aqX(Landroid/support/v4/app/ax;)V

    .line 2768
    iget-object v0, p0, Landroid/support/v4/app/aR;->ady:Landroid/support/v4/app/ax;

    return-object v0
.end method

.method public apV()V
    .locals 2

    .prologue
    .line 3252
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/aR;->adx:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 3258
    return-void

    .line 3253
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/aR;->adx:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/g;

    .line 3254
    if-nez v0, :cond_1

    .line 3252
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 3255
    :cond_1
    invoke-virtual {v0}, Landroid/support/v4/app/g;->ajG()V

    goto :goto_1
.end method

.method apW(Landroid/support/v4/app/g;IZI)Landroid/support/v4/app/C;
    .locals 10

    .prologue
    const v9, 0x3f79999a    # 0.975f

    const/4 v8, 0x0

    const/4 v0, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 1124
    invoke-virtual {p1}, Landroid/support/v4/app/g;->akf()I

    move-result v1

    .line 1125
    invoke-virtual {p1, p2, p3, v1}, Landroid/support/v4/app/g;->ali(IZI)Landroid/view/animation/Animation;

    move-result-object v2

    .line 1126
    if-nez v2, :cond_2

    .line 1130
    invoke-virtual {p1, p2, p3, v1}, Landroid/support/v4/app/g;->akQ(IZI)Landroid/animation/Animator;

    move-result-object v2

    .line 1131
    if-nez v2, :cond_3

    .line 1135
    if-nez v1, :cond_4

    .line 1175
    :cond_0
    if-eqz p2, :cond_8

    .line 1179
    invoke-static {p2, p3}, Landroid/support/v4/app/aR;->apg(IZ)I

    move-result v0

    .line 1180
    if-ltz v0, :cond_9

    .line 1184
    packed-switch v0, :pswitch_data_0

    .line 1200
    if-eqz p4, :cond_a

    .line 1203
    :cond_1
    :goto_0
    if-eqz p4, :cond_b

    .line 1217
    return-object v6

    .line 1127
    :cond_2
    new-instance v0, Landroid/support/v4/app/C;

    invoke-direct {v0, v2, v6}, Landroid/support/v4/app/C;-><init>(Landroid/view/animation/Animation;Landroid/support/v4/app/I;)V

    return-object v0

    .line 1132
    :cond_3
    new-instance v0, Landroid/support/v4/app/C;

    invoke-direct {v0, v2, v6}, Landroid/support/v4/app/C;-><init>(Landroid/animation/Animator;Landroid/support/v4/app/I;)V

    return-object v0

    .line 1136
    :cond_4
    iget-object v2, p0, Landroid/support/v4/app/aR;->ads:Landroid/support/v4/app/r;

    invoke-virtual {v2}, Landroid/support/v4/app/r;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v2

    .line 1137
    const-string/jumbo v3, "anim"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1139
    if-nez v2, :cond_5

    .line 1154
    :goto_1
    if-nez v0, :cond_0

    .line 1157
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/aR;->ads:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 1158
    if-eqz v0, :cond_0

    .line 1159
    new-instance v3, Landroid/support/v4/app/C;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Landroid/support/v4/app/C;-><init>(Landroid/animation/Animator;Landroid/support/v4/app/I;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v3

    .line 1142
    :cond_5
    :try_start_1
    iget-object v3, p0, Landroid/support/v4/app/aR;->ads:Landroid/support/v4/app/r;

    invoke-virtual {v3}, Landroid/support/v4/app/r;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 1143
    if-nez v3, :cond_6

    .line 1147
    const/4 v0, 0x1

    goto :goto_1

    .line 1144
    :cond_6
    new-instance v4, Landroid/support/v4/app/C;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Landroid/support/v4/app/C;-><init>(Landroid/view/animation/Animation;Landroid/support/v4/app/I;)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    return-object v4

    .line 1148
    :catch_0
    move-exception v0

    .line 1149
    throw v0

    .line 1161
    :catch_1
    move-exception v0

    .line 1162
    if-nez v2, :cond_7

    .line 1167
    iget-object v0, p0, Landroid/support/v4/app/aR;->ads:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1168
    if-eqz v0, :cond_0

    .line 1169
    new-instance v1, Landroid/support/v4/app/C;

    invoke-direct {v1, v0, v6}, Landroid/support/v4/app/C;-><init>(Landroid/view/animation/Animation;Landroid/support/v4/app/I;)V

    return-object v1

    .line 1164
    :cond_7
    throw v0

    .line 1176
    :cond_8
    return-object v6

    .line 1181
    :cond_9
    return-object v6

    .line 1186
    :pswitch_0
    iget-object v0, p0, Landroid/support/v4/app/aR;->ads:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x3f900000    # 1.125f

    invoke-static {v0, v1, v7, v8, v7}, Landroid/support/v4/app/aR;->apT(Landroid/content/Context;FFFF)Landroid/support/v4/app/C;

    move-result-object v0

    return-object v0

    .line 1188
    :pswitch_1
    iget-object v0, p0, Landroid/support/v4/app/aR;->ads:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v7, v9, v7, v8}, Landroid/support/v4/app/aR;->apT(Landroid/content/Context;FFFF)Landroid/support/v4/app/C;

    move-result-object v0

    return-object v0

    .line 1190
    :pswitch_2
    iget-object v0, p0, Landroid/support/v4/app/aR;->ads:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v9, v7, v8, v7}, Landroid/support/v4/app/aR;->apT(Landroid/content/Context;FFFF)Landroid/support/v4/app/C;

    move-result-object v0

    return-object v0

    .line 1192
    :pswitch_3
    iget-object v0, p0, Landroid/support/v4/app/aR;->ads:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x3f89999a    # 1.075f

    invoke-static {v0, v7, v1, v7, v8}, Landroid/support/v4/app/aR;->apT(Landroid/content/Context;FFFF)Landroid/support/v4/app/C;

    move-result-object v0

    return-object v0

    .line 1194
    :pswitch_4
    iget-object v0, p0, Landroid/support/v4/app/aR;->ads:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v8, v7}, Landroid/support/v4/app/aR;->aqk(Landroid/content/Context;FF)Landroid/support/v4/app/C;

    move-result-object v0

    return-object v0

    .line 1196
    :pswitch_5
    iget-object v0, p0, Landroid/support/v4/app/aR;->ads:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v7, v8}, Landroid/support/v4/app/aR;->aqk(Landroid/content/Context;FF)Landroid/support/v4/app/C;

    move-result-object v0

    return-object v0

    .line 1200
    :cond_a
    iget-object v0, p0, Landroid/support/v4/app/aR;->ads:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->alF()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1201
    iget-object v0, p0, Landroid/support/v4/app/aR;->ads:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->alB()I

    move-result p4

    goto/16 :goto_0

    .line 1204
    :cond_b
    return-object v6

    .line 1150
    :catch_2
    move-exception v3

    goto/16 :goto_1

    .line 1184
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method apX(Landroid/os/Parcelable;Landroid/support/v4/app/ax;)V
    .locals 11

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 3006
    if-eqz p1, :cond_3

    .line 3007
    check-cast p1, Landroid/support/v4/app/FragmentManagerState;

    .line 3008
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->acm:[Landroid/support/v4/app/FragmentState;

    if-eqz v0, :cond_4

    .line 3014
    if-nez p2, :cond_5

    move-object v1, v4

    .line 3047
    :goto_0
    new-instance v0, Landroid/util/SparseArray;

    iget-object v3, p1, Landroid/support/v4/app/FragmentManagerState;->acm:[Landroid/support/v4/app/FragmentState;

    array-length v3, v3

    invoke-direct {v0, v3}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/app/aR;->adO:Landroid/util/SparseArray;

    move v3, v2

    .line 3048
    :goto_1
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->acm:[Landroid/support/v4/app/FragmentState;

    array-length v0, v0

    if-lt v3, v0, :cond_d

    .line 3066
    if-nez p2, :cond_12

    .line 3082
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/aR;->adx:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3083
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->acj:[I

    if-nez v0, :cond_16

    .line 3102
    :cond_1
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->ack:[Landroid/support/v4/app/BackStackState;

    if-nez v0, :cond_1a

    .line 3120
    iput-object v4, p0, Landroid/support/v4/app/aR;->adI:Ljava/util/ArrayList;

    .line 3123
    :cond_2
    iget v0, p1, Landroid/support/v4/app/FragmentManagerState;->acl:I

    if-gez v0, :cond_1d

    .line 3126
    :goto_2
    iget v0, p1, Landroid/support/v4/app/FragmentManagerState;->acn:I

    iput v0, p0, Landroid/support/v4/app/aR;->adN:I

    .line 3127
    return-void

    .line 3006
    :cond_3
    return-void

    .line 3008
    :cond_4
    return-void

    .line 3015
    :cond_5
    invoke-virtual {p2}, Landroid/support/v4/app/ax;->anZ()Ljava/util/List;

    move-result-object v7

    .line 3016
    invoke-virtual {p2}, Landroid/support/v4/app/ax;->aoa()Ljava/util/List;

    move-result-object v5

    .line 3017
    if-nez v7, :cond_6

    move v1, v2

    :goto_3
    move v6, v2

    .line 3018
    :goto_4
    if-lt v6, v1, :cond_7

    move-object v1, v5

    goto :goto_0

    .line 3017
    :cond_6
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    goto :goto_3

    .line 3019
    :cond_7
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/g;

    .line 3020
    sget-boolean v3, Landroid/support/v4/app/aR;->DEBUG:Z

    if-nez v3, :cond_9

    :goto_5
    move v3, v2

    .line 3022
    :goto_6
    iget-object v8, p1, Landroid/support/v4/app/FragmentManagerState;->acm:[Landroid/support/v4/app/FragmentState;

    array-length v8, v8

    if-lt v3, v8, :cond_a

    .line 3025
    :cond_8
    iget-object v8, p1, Landroid/support/v4/app/FragmentManagerState;->acm:[Landroid/support/v4/app/FragmentState;

    array-length v8, v8

    if-eq v3, v8, :cond_b

    .line 3029
    :goto_7
    iget-object v8, p1, Landroid/support/v4/app/FragmentManagerState;->acm:[Landroid/support/v4/app/FragmentState;

    aget-object v3, v8, v3

    .line 3030
    iput-object v0, v3, Landroid/support/v4/app/FragmentState;->adg:Landroid/support/v4/app/g;

    .line 3031
    iput-object v4, v0, Landroid/support/v4/app/g;->Yk:Landroid/util/SparseArray;

    .line 3032
    iput v2, v0, Landroid/support/v4/app/g;->Yl:I

    .line 3033
    iput-boolean v2, v0, Landroid/support/v4/app/g;->Yi:Z

    .line 3034
    iput-boolean v2, v0, Landroid/support/v4/app/g;->XW:Z

    .line 3035
    iput-object v4, v0, Landroid/support/v4/app/g;->YE:Landroid/support/v4/app/g;

    .line 3036
    iget-object v8, v3, Landroid/support/v4/app/FragmentState;->acX:Landroid/os/Bundle;

    if-nez v8, :cond_c

    .line 3018
    :goto_8
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_4

    .line 3020
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "restoreAllState: re-attaching retained "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v8, "FragmentManager"

    invoke-static {v8, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 3022
    :cond_a
    iget-object v8, p1, Landroid/support/v4/app/FragmentManagerState;->acm:[Landroid/support/v4/app/FragmentState;

    aget-object v8, v8, v3

    iget v8, v8, Landroid/support/v4/app/FragmentState;->adc:I

    iget v9, v0, Landroid/support/v4/app/g;->Yb:I

    if-eq v8, v9, :cond_8

    .line 3023
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 3026
    :cond_b
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Could not find active fragment with index "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Landroid/support/v4/app/g;->Yb:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v8}, Landroid/support/v4/app/aR;->ard(Ljava/lang/RuntimeException;)V

    goto :goto_7

    .line 3037
    :cond_c
    iget-object v8, v3, Landroid/support/v4/app/FragmentState;->acX:Landroid/os/Bundle;

    iget-object v9, p0, Landroid/support/v4/app/aR;->ads:Landroid/support/v4/app/r;

    invoke-virtual {v9}, Landroid/support/v4/app/r;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 3038
    iget-object v8, v3, Landroid/support/v4/app/FragmentState;->acX:Landroid/os/Bundle;

    const-string/jumbo v9, "android:view_state"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v8

    iput-object v8, v0, Landroid/support/v4/app/g;->Yk:Landroid/util/SparseArray;

    .line 3040
    iget-object v3, v3, Landroid/support/v4/app/FragmentState;->acX:Landroid/os/Bundle;

    iput-object v3, v0, Landroid/support/v4/app/g;->Ys:Landroid/os/Bundle;

    goto :goto_8

    .line 3049
    :cond_d
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->acm:[Landroid/support/v4/app/FragmentState;

    aget-object v5, v0, v3

    .line 3050
    if-nez v5, :cond_e

    .line 3048
    :goto_9
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_1

    .line 3052
    :cond_e
    if-nez v1, :cond_10

    :cond_f
    move-object v0, v4

    .line 3055
    :goto_a
    iget-object v6, p0, Landroid/support/v4/app/aR;->ads:Landroid/support/v4/app/r;

    iget-object v7, p0, Landroid/support/v4/app/aR;->adB:Landroid/support/v4/app/ac;

    iget-object v8, p0, Landroid/support/v4/app/aR;->adq:Landroid/support/v4/app/g;

    invoke-virtual {v5, v6, v7, v8, v0}, Landroid/support/v4/app/FragmentState;->aoX(Landroid/support/v4/app/r;Landroid/support/v4/app/ac;Landroid/support/v4/app/g;Landroid/support/v4/app/ax;)Landroid/support/v4/app/g;

    move-result-object v0

    .line 3056
    sget-boolean v6, Landroid/support/v4/app/aR;->DEBUG:Z

    if-nez v6, :cond_11

    .line 3057
    :goto_b
    iget-object v6, p0, Landroid/support/v4/app/aR;->adO:Landroid/util/SparseArray;

    iget v7, v0, Landroid/support/v4/app/g;->Yb:I

    invoke-virtual {v6, v7, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3061
    iput-object v4, v5, Landroid/support/v4/app/FragmentState;->adg:Landroid/support/v4/app/g;

    goto :goto_9

    .line 3052
    :cond_10
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_f

    .line 3053
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/ax;

    goto :goto_a

    .line 3056
    :cond_11
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "restoreAllState: active #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "FragmentManager"

    invoke-static {v7, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 3067
    :cond_12
    invoke-virtual {p2}, Landroid/support/v4/app/ax;->anZ()Ljava/util/List;

    move-result-object v6

    .line 3068
    if-nez v6, :cond_14

    move v3, v2

    :goto_c
    move v5, v2

    .line 3069
    :goto_d
    if-ge v5, v3, :cond_0

    .line 3070
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/g;

    .line 3071
    iget v1, v0, Landroid/support/v4/app/g;->Yu:I

    if-gez v1, :cond_15

    .line 3069
    :cond_13
    :goto_e
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_d

    .line 3068
    :cond_14
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    move v3, v0

    goto :goto_c

    .line 3072
    :cond_15
    iget-object v1, p0, Landroid/support/v4/app/aR;->adO:Landroid/util/SparseArray;

    iget v7, v0, Landroid/support/v4/app/g;->Yu:I

    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/g;

    iput-object v1, v0, Landroid/support/v4/app/g;->YE:Landroid/support/v4/app/g;

    .line 3073
    iget-object v1, v0, Landroid/support/v4/app/g;->YE:Landroid/support/v4/app/g;

    if-nez v1, :cond_13

    .line 3074
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Re-attaching retained fragment "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v7, " target no longer exists: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Landroid/support/v4/app/g;->Yu:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :cond_16
    move v1, v2

    .line 3084
    :goto_f
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->acj:[I

    array-length v0, v0

    if-ge v1, v0, :cond_1

    .line 3085
    iget-object v0, p0, Landroid/support/v4/app/aR;->adO:Landroid/util/SparseArray;

    iget-object v3, p1, Landroid/support/v4/app/FragmentManagerState;->acj:[I

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/g;

    .line 3086
    if-eqz v0, :cond_17

    .line 3090
    :goto_10
    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/support/v4/app/g;->XW:Z

    .line 3091
    sget-boolean v3, Landroid/support/v4/app/aR;->DEBUG:Z

    if-nez v3, :cond_18

    .line 3092
    :goto_11
    iget-object v3, p0, Landroid/support/v4/app/aR;->adx:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 3095
    iget-object v3, p0, Landroid/support/v4/app/aR;->adx:Ljava/util/ArrayList;

    monitor-enter v3

    .line 3096
    :try_start_0
    iget-object v5, p0, Landroid/support/v4/app/aR;->adx:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3097
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3084
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f

    .line 3087
    :cond_17
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "No instantiated fragment for index #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/support/v4/app/FragmentManagerState;->acj:[I

    aget v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Landroid/support/v4/app/aR;->ard(Ljava/lang/RuntimeException;)V

    goto :goto_10

    .line 3091
    :cond_18
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "restoreAllState: added #"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "FragmentManager"

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 3093
    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already added!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3097
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 3103
    :cond_1a
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->ack:[Landroid/support/v4/app/BackStackState;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/app/aR;->adI:Ljava/util/ArrayList;

    move v0, v2

    .line 3104
    :goto_12
    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->ack:[Landroid/support/v4/app/BackStackState;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 3105
    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->ack:[Landroid/support/v4/app/BackStackState;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Landroid/support/v4/app/BackStackState;->arJ(Landroid/support/v4/app/aR;)Landroid/support/v4/app/V;

    move-result-object v1

    .line 3106
    sget-boolean v3, Landroid/support/v4/app/aR;->DEBUG:Z

    if-nez v3, :cond_1b

    .line 3114
    :goto_13
    iget-object v3, p0, Landroid/support/v4/app/aR;->adI:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3115
    iget v3, v1, Landroid/support/v4/app/V;->aaq:I

    if-gez v3, :cond_1c

    .line 3104
    :goto_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 3107
    :cond_1b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "restoreAllState: back stack #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " (index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/support/v4/app/V;->aaq:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "FragmentManager"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3109
    new-instance v3, Landroid/support/v4/a/p;

    const-string/jumbo v4, "FragmentManager"

    invoke-direct {v3, v4}, Landroid/support/v4/a/p;-><init>(Ljava/lang/String;)V

    .line 3110
    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 3111
    const-string/jumbo v3, "  "

    invoke-virtual {v1, v3, v4, v2}, Landroid/support/v4/app/V;->any(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 3112
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V

    goto :goto_13

    .line 3116
    :cond_1c
    iget v3, v1, Landroid/support/v4/app/V;->aaq:I

    invoke-virtual {p0, v3, v1}, Landroid/support/v4/app/aR;->aqD(ILandroid/support/v4/app/V;)V

    goto :goto_14

    .line 3124
    :cond_1d
    iget-object v0, p0, Landroid/support/v4/app/aR;->adO:Landroid/util/SparseArray;

    iget v1, p1, Landroid/support/v4/app/FragmentManagerState;->acl:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/g;

    iput-object v0, p0, Landroid/support/v4/app/aR;->adM:Landroid/support/v4/app/g;

    goto/16 :goto_2
.end method

.method apZ()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 2679
    iget-boolean v0, p0, Landroid/support/v4/app/aR;->adU:Z

    if-nez v0, :cond_1

    .line 2692
    :cond_0
    :goto_0
    return-void

    :cond_1
    move v1, v2

    move v3, v2

    .line 2681
    :goto_1
    iget-object v0, p0, Landroid/support/v4/app/aR;->adO:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    .line 2687
    if-nez v3, :cond_0

    .line 2688
    iput-boolean v2, p0, Landroid/support/v4/app/aR;->adU:Z

    .line 2689
    invoke-virtual {p0}, Landroid/support/v4/app/aR;->apC()V

    goto :goto_0

    .line 2682
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/aR;->adO:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/g;

    .line 2683
    if-nez v0, :cond_4

    .line 2681
    :cond_3
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 2683
    :cond_4
    iget-object v4, v0, Landroid/support/v4/app/g;->YC:Landroid/support/v4/app/aU;

    if-eqz v4, :cond_3

    .line 2684
    iget-object v0, v0, Landroid/support/v4/app/g;->YC:Landroid/support/v4/app/aU;

    invoke-virtual {v0}, Landroid/support/v4/app/aU;->aru()Z

    move-result v0

    or-int/2addr v3, v0

    goto :goto_2
.end method

.method apa(Landroid/support/v4/app/V;)V
    .locals 1

    .prologue
    .line 2703
    iget-object v0, p0, Landroid/support/v4/app/aR;->adI:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2706
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/aR;->adI:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2707
    return-void

    .line 2704
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/aR;->adI:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method apb(IZ)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1792
    iget-object v0, p0, Landroid/support/v4/app/aR;->ads:Landroid/support/v4/app/r;

    if-eqz v0, :cond_3

    .line 1796
    :cond_0
    if-eqz p2, :cond_4

    .line 1800
    :cond_1
    iput p1, p0, Landroid/support/v4/app/aR;->adP:I

    .line 1802
    iget-object v0, p0, Landroid/support/v4/app/aR;->adO:Landroid/util/SparseArray;

    if-nez v0, :cond_5

    .line 1837
    :cond_2
    :goto_0
    return-void

    .line 1792
    :cond_3
    if-eqz p1, :cond_0

    .line 1793
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1796
    :cond_4
    iget v0, p0, Landroid/support/v4/app/aR;->adP:I

    if-ne p1, v0, :cond_1

    .line 1797
    return-void

    .line 1806
    :cond_5
    iget-object v0, p0, Landroid/support/v4/app/aR;->adx:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v3

    move v1, v3

    .line 1807
    :goto_1
    if-lt v2, v4, :cond_6

    .line 1817
    iget-object v0, p0, Landroid/support/v4/app/aR;->adO:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v4

    move v2, v3

    .line 1818
    :goto_2
    if-lt v2, v4, :cond_8

    .line 1828
    if-eqz v1, :cond_e

    .line 1832
    :goto_3
    iget-boolean v0, p0, Landroid/support/v4/app/aR;->adw:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/aR;->ads:Landroid/support/v4/app/r;

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/support/v4/app/aR;->adP:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 1833
    iget-object v0, p0, Landroid/support/v4/app/aR;->ads:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->alx()V

    .line 1834
    iput-boolean v3, p0, Landroid/support/v4/app/aR;->adw:Z

    goto :goto_0

    .line 1808
    :cond_6
    iget-object v0, p0, Landroid/support/v4/app/aR;->adx:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/g;

    .line 1809
    invoke-virtual {p0, v0}, Landroid/support/v4/app/aR;->apj(Landroid/support/v4/app/g;)V

    .line 1810
    iget-object v5, v0, Landroid/support/v4/app/g;->YC:Landroid/support/v4/app/aU;

    if-nez v5, :cond_7

    move v0, v1

    .line 1807
    :goto_4
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_1

    .line 1811
    :cond_7
    iget-object v0, v0, Landroid/support/v4/app/g;->YC:Landroid/support/v4/app/aU;

    invoke-virtual {v0}, Landroid/support/v4/app/aU;->aru()Z

    move-result v0

    or-int/2addr v0, v1

    goto :goto_4

    .line 1819
    :cond_8
    iget-object v0, p0, Landroid/support/v4/app/aR;->adO:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/g;

    .line 1820
    if-nez v0, :cond_a

    :cond_9
    :goto_5
    move v0, v1

    .line 1818
    :goto_6
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_2

    .line 1820
    :cond_a
    iget-boolean v5, v0, Landroid/support/v4/app/g;->Yx:Z

    if-eqz v5, :cond_c

    :cond_b
    iget-boolean v5, v0, Landroid/support/v4/app/g;->Yy:Z

    if-nez v5, :cond_9

    .line 1821
    invoke-virtual {p0, v0}, Landroid/support/v4/app/aR;->apj(Landroid/support/v4/app/g;)V

    .line 1822
    iget-object v5, v0, Landroid/support/v4/app/g;->YC:Landroid/support/v4/app/aU;

    if-nez v5, :cond_d

    move v0, v1

    goto :goto_6

    .line 1820
    :cond_c
    iget-boolean v5, v0, Landroid/support/v4/app/g;->YB:Z

    if-nez v5, :cond_b

    goto :goto_5

    .line 1823
    :cond_d
    iget-object v0, v0, Landroid/support/v4/app/g;->YC:Landroid/support/v4/app/aU;

    invoke-virtual {v0}, Landroid/support/v4/app/aU;->aru()Z

    move-result v0

    or-int/2addr v0, v1

    goto :goto_6

    .line 1829
    :cond_e
    invoke-virtual {p0}, Landroid/support/v4/app/aR;->apC()V

    goto :goto_3
.end method

.method public apc()V
    .locals 1

    .prologue
    .line 3175
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/aR;->adD:Z

    .line 3176
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/support/v4/app/aR;->apU(I)V

    .line 3177
    return-void
.end method

.method public ape(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    move v1, v2

    move-object v3, v0

    move v4, v2

    .line 3263
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/aR;->adx:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 3276
    iget-object v0, p0, Landroid/support/v4/app/aR;->adE:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    .line 3285
    :cond_0
    iput-object v3, p0, Landroid/support/v4/app/aR;->adE:Ljava/util/ArrayList;

    .line 3287
    return v4

    .line 3264
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/aR;->adx:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/g;

    .line 3265
    if-nez v0, :cond_3

    .line 3263
    :cond_2
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 3266
    :cond_3
    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/g;->akP(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3267
    const/4 v4, 0x1

    .line 3268
    if-eqz v3, :cond_4

    .line 3271
    :goto_2
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3269
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2

    .line 3279
    :cond_5
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3277
    :goto_3
    add-int/lit8 v2, v2, 0x1

    :cond_6
    iget-object v0, p0, Landroid/support/v4/app/aR;->adE:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 3278
    iget-object v0, p0, Landroid/support/v4/app/aR;->adE:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/g;

    .line 3279
    if-nez v3, :cond_5

    .line 3280
    :cond_7
    invoke-virtual {v0}, Landroid/support/v4/app/g;->ajS()V

    goto :goto_3
.end method

.method public apf(Landroid/support/v4/app/g;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1967
    sget-boolean v0, Landroid/support/v4/app/aR;->DEBUG:Z

    if-nez v0, :cond_1

    .line 1968
    :goto_0
    iget-boolean v0, p1, Landroid/support/v4/app/g;->YB:Z

    if-nez v0, :cond_2

    .line 1984
    :cond_0
    :goto_1
    return-void

    .line 1967
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "attach: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1969
    :cond_2
    iput-boolean v2, p1, Landroid/support/v4/app/g;->YB:Z

    .line 1970
    iget-boolean v0, p1, Landroid/support/v4/app/g;->XW:Z

    if-nez v0, :cond_0

    .line 1971
    iget-object v0, p0, Landroid/support/v4/app/aR;->adx:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1974
    sget-boolean v0, Landroid/support/v4/app/aR;->DEBUG:Z

    if-nez v0, :cond_4

    .line 1975
    :goto_2
    iget-object v1, p0, Landroid/support/v4/app/aR;->adx:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1976
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/aR;->adx:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1977
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1978
    iput-boolean v3, p1, Landroid/support/v4/app/g;->XW:Z

    .line 1979
    iget-boolean v0, p1, Landroid/support/v4/app/g;->Ye:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Landroid/support/v4/app/g;->YH:Z

    if-eqz v0, :cond_0

    .line 1980
    iput-boolean v3, p0, Landroid/support/v4/app/aR;->adw:Z

    goto :goto_1

    .line 1972
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment already added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1974
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "add from attach: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1977
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method aph()Landroid/os/Parcelable;
    .locals 11

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2893
    invoke-direct {p0}, Landroid/support/v4/app/aR;->aqP()V

    .line 2894
    invoke-direct {p0}, Landroid/support/v4/app/aR;->apd()V

    .line 2895
    invoke-virtual {p0}, Landroid/support/v4/app/aR;->aqa()Z

    .line 2897
    iput-boolean v2, p0, Landroid/support/v4/app/aR;->adD:Z

    .line 2898
    iput-object v3, p0, Landroid/support/v4/app/aR;->ady:Landroid/support/v4/app/ax;

    .line 2900
    iget-object v0, p0, Landroid/support/v4/app/aR;->adO:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 2901
    :cond_0
    return-object v3

    .line 2900
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/aR;->adO:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2905
    iget-object v0, p0, Landroid/support/v4/app/aR;->adO:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 2906
    new-array v7, v6, [Landroid/support/v4/app/FragmentState;

    move v5, v4

    move v1, v4

    .line 2908
    :goto_0
    if-lt v5, v6, :cond_4

    .line 2952
    if-eqz v1, :cond_d

    .line 2961
    iget-object v0, p0, Landroid/support/v4/app/aR;->adx:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 2962
    if-gtz v5, :cond_f

    move-object v1, v3

    .line 2979
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/aR;->adI:Ljava/util/ArrayList;

    if-nez v0, :cond_12

    .line 2991
    :cond_3
    new-instance v0, Landroid/support/v4/app/FragmentManagerState;

    invoke-direct {v0}, Landroid/support/v4/app/FragmentManagerState;-><init>()V

    .line 2992
    iput-object v7, v0, Landroid/support/v4/app/FragmentManagerState;->acm:[Landroid/support/v4/app/FragmentState;

    .line 2993
    iput-object v1, v0, Landroid/support/v4/app/FragmentManagerState;->acj:[I

    .line 2994
    iput-object v3, v0, Landroid/support/v4/app/FragmentManagerState;->ack:[Landroid/support/v4/app/BackStackState;

    .line 2995
    iget-object v1, p0, Landroid/support/v4/app/aR;->adM:Landroid/support/v4/app/g;

    if-nez v1, :cond_14

    .line 2998
    :goto_1
    iget v1, p0, Landroid/support/v4/app/aR;->adN:I

    iput v1, v0, Landroid/support/v4/app/FragmentManagerState;->acn:I

    .line 2999
    invoke-virtual {p0}, Landroid/support/v4/app/aR;->apv()V

    .line 3000
    return-object v0

    .line 2909
    :cond_4
    iget-object v0, p0, Landroid/support/v4/app/aR;->adO:Landroid/util/SparseArray;

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/g;

    .line 2910
    if-nez v0, :cond_5

    move v0, v1

    .line 2908
    :goto_2
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v1, v0

    goto :goto_0

    .line 2911
    :cond_5
    iget v1, v0, Landroid/support/v4/app/g;->Yb:I

    if-ltz v1, :cond_8

    .line 2919
    :goto_3
    new-instance v1, Landroid/support/v4/app/FragmentState;

    invoke-direct {v1, v0}, Landroid/support/v4/app/FragmentState;-><init>(Landroid/support/v4/app/g;)V

    .line 2920
    aput-object v1, v7, v5

    .line 2922
    iget v8, v0, Landroid/support/v4/app/g;->mState:I

    if-gtz v8, :cond_9

    .line 2944
    :cond_6
    iget-object v8, v0, Landroid/support/v4/app/g;->Ys:Landroid/os/Bundle;

    iput-object v8, v1, Landroid/support/v4/app/FragmentState;->acX:Landroid/os/Bundle;

    .line 2947
    :cond_7
    :goto_4
    sget-boolean v8, Landroid/support/v4/app/aR;->DEBUG:Z

    if-nez v8, :cond_c

    :goto_5
    move v0, v2

    goto :goto_2

    .line 2912
    :cond_8
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failure saving state: active "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " has cleared index: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Landroid/support/v4/app/g;->Yb:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Landroid/support/v4/app/aR;->ard(Ljava/lang/RuntimeException;)V

    goto :goto_3

    .line 2922
    :cond_9
    iget-object v8, v1, Landroid/support/v4/app/FragmentState;->acX:Landroid/os/Bundle;

    if-nez v8, :cond_6

    .line 2923
    invoke-virtual {p0, v0}, Landroid/support/v4/app/aR;->aqO(Landroid/support/v4/app/g;)Landroid/os/Bundle;

    move-result-object v8

    iput-object v8, v1, Landroid/support/v4/app/FragmentState;->acX:Landroid/os/Bundle;

    .line 2925
    iget-object v8, v0, Landroid/support/v4/app/g;->YE:Landroid/support/v4/app/g;

    if-eqz v8, :cond_7

    .line 2926
    iget-object v8, v0, Landroid/support/v4/app/g;->YE:Landroid/support/v4/app/g;

    iget v8, v8, Landroid/support/v4/app/g;->Yb:I

    if-ltz v8, :cond_a

    .line 2931
    :goto_6
    iget-object v8, v1, Landroid/support/v4/app/FragmentState;->acX:Landroid/os/Bundle;

    if-eqz v8, :cond_b

    .line 2934
    :goto_7
    iget-object v8, v1, Landroid/support/v4/app/FragmentState;->acX:Landroid/os/Bundle;

    iget-object v9, v0, Landroid/support/v4/app/g;->YE:Landroid/support/v4/app/g;

    const-string/jumbo v10, "android:target_state"

    invoke-virtual {p0, v8, v10, v9}, Landroid/support/v4/app/aR;->arf(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/g;)V

    .line 2936
    iget v8, v0, Landroid/support/v4/app/g;->YA:I

    if-eqz v8, :cond_7

    .line 2937
    iget-object v8, v1, Landroid/support/v4/app/FragmentState;->acX:Landroid/os/Bundle;

    iget v9, v0, Landroid/support/v4/app/g;->YA:I

    const-string/jumbo v10, "android:target_req_state"

    invoke-virtual {v8, v10, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_4

    .line 2927
    :cond_a
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Failure saving state: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " has target not in fragment manager: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Landroid/support/v4/app/g;->YE:Landroid/support/v4/app/g;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v8}, Landroid/support/v4/app/aR;->ard(Ljava/lang/RuntimeException;)V

    goto :goto_6

    .line 2932
    :cond_b
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    iput-object v8, v1, Landroid/support/v4/app/FragmentState;->acX:Landroid/os/Bundle;

    goto :goto_7

    .line 2947
    :cond_c
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Saved state of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v8, ": "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentState;->acX:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 2953
    :cond_d
    sget-boolean v0, Landroid/support/v4/app/aR;->DEBUG:Z

    if-nez v0, :cond_e

    .line 2954
    :goto_8
    return-object v3

    .line 2953
    :cond_e
    const-string/jumbo v0, "FragmentManager"

    const-string/jumbo v1, "saveAllState: no fragments!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 2963
    :cond_f
    new-array v1, v5, [I

    move v2, v4

    .line 2964
    :goto_9
    if-ge v2, v5, :cond_2

    .line 2965
    iget-object v0, p0, Landroid/support/v4/app/aR;->adx:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/g;

    iget v0, v0, Landroid/support/v4/app/g;->Yb:I

    aput v0, v1, v2

    .line 2966
    aget v0, v1, v2

    if-ltz v0, :cond_10

    .line 2971
    :goto_a
    sget-boolean v0, Landroid/support/v4/app/aR;->DEBUG:Z

    if-nez v0, :cond_11

    .line 2964
    :goto_b
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_9

    .line 2967
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failure saving state: active "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Landroid/support/v4/app/aR;->adx:Ljava/util/ArrayList;

    .line 2968
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " has cleared index: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v8, v1, v2

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 2967
    invoke-direct {p0, v0}, Landroid/support/v4/app/aR;->ard(Ljava/lang/RuntimeException;)V

    goto :goto_a

    .line 2972
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "saveAllState: adding fragment #"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, ": "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Landroid/support/v4/app/aR;->adx:Ljava/util/ArrayList;

    const-string/jumbo v8, "FragmentManager"

    .line 2973
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2972
    invoke-static {v8, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 2980
    :cond_12
    iget-object v0, p0, Landroid/support/v4/app/aR;->adI:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 2981
    if-lez v5, :cond_3

    .line 2982
    new-array v3, v5, [Landroid/support/v4/app/BackStackState;

    move v2, v4

    .line 2983
    :goto_c
    if-ge v2, v5, :cond_3

    .line 2984
    new-instance v4, Landroid/support/v4/app/BackStackState;

    iget-object v0, p0, Landroid/support/v4/app/aR;->adI:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/V;

    invoke-direct {v4, v0}, Landroid/support/v4/app/BackStackState;-><init>(Landroid/support/v4/app/V;)V

    aput-object v4, v3, v2

    .line 2985
    sget-boolean v0, Landroid/support/v4/app/aR;->DEBUG:Z

    if-nez v0, :cond_13

    .line 2983
    :goto_d
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_c

    .line 2985
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "saveAllState: adding back stack #"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ": "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Landroid/support/v4/app/aR;->adI:Ljava/util/ArrayList;

    const-string/jumbo v6, "FragmentManager"

    .line 2986
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2985
    invoke-static {v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 2996
    :cond_14
    iget-object v1, p0, Landroid/support/v4/app/aR;->adM:Landroid/support/v4/app/g;

    iget v1, v1, Landroid/support/v4/app/g;->Yb:I

    iput v1, v0, Landroid/support/v4/app/FragmentManagerState;->acl:I

    goto/16 :goto_1
.end method

.method api(Landroid/support/v4/app/g;Landroid/content/Context;Z)V
    .locals 3

    .prologue
    .line 3385
    iget-object v0, p0, Landroid/support/v4/app/aR;->adq:Landroid/support/v4/app/g;

    if-nez v0, :cond_1

    .line 3392
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/aR;->adJ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3397
    return-void

    .line 3386
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/aR;->adq:Landroid/support/v4/app/g;

    invoke-virtual {v0}, Landroid/support/v4/app/g;->alk()Landroid/support/v4/app/aW;

    move-result-object v0

    .line 3387
    instance-of v1, v0, Landroid/support/v4/app/aR;

    if-eqz v1, :cond_0

    .line 3388
    check-cast v0, Landroid/support/v4/app/aR;

    .line 3389
    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v4/app/aR;->api(Landroid/support/v4/app/g;Landroid/content/Context;Z)V

    goto :goto_0

    .line 3392
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/i;

    .line 3393
    if-nez p3, :cond_4

    .line 3394
    :cond_3
    iget-object v0, v0, Landroid/support/v4/a/i;->Xk:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/app/aX;

    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v4/app/aX;->arB(Landroid/support/v4/app/aW;Landroid/support/v4/app/g;Landroid/content/Context;)V

    goto :goto_1

    .line 3393
    :cond_4
    iget-object v1, v0, Landroid/support/v4/a/i;->Xl:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1
.end method

.method apj(Landroid/support/v4/app/g;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1729
    if-eqz p1, :cond_1

    .line 1732
    iget v2, p0, Landroid/support/v4/app/aR;->adP:I

    .line 1733
    iget-boolean v0, p1, Landroid/support/v4/app/g;->Yx:Z

    if-nez v0, :cond_2

    .line 1740
    :goto_0
    invoke-virtual {p1}, Landroid/support/v4/app/g;->ajY()I

    move-result v3

    invoke-virtual {p1}, Landroid/support/v4/app/g;->aka()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/aR;->apw(Landroid/support/v4/app/g;IIIZ)V

    .line 1742
    iget-object v0, p1, Landroid/support/v4/app/g;->mView:Landroid/view/View;

    if-nez v0, :cond_4

    .line 1777
    :cond_0
    :goto_1
    iget-boolean v0, p1, Landroid/support/v4/app/g;->Yo:Z

    if-nez v0, :cond_9

    .line 1780
    :goto_2
    return-void

    .line 1730
    :cond_1
    return-void

    .line 1734
    :cond_2
    invoke-virtual {p1}, Landroid/support/v4/app/g;->akk()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1737
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_0

    .line 1735
    :cond_3
    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_0

    .line 1744
    :cond_4
    invoke-direct {p0, p1}, Landroid/support/v4/app/aR;->aqn(Landroid/support/v4/app/g;)Landroid/support/v4/app/g;

    move-result-object v0

    .line 1745
    if-nez v0, :cond_7

    .line 1756
    :cond_5
    :goto_3
    iget-boolean v0, p1, Landroid/support/v4/app/g;->Yy:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/support/v4/app/g;->XT:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1758
    iget v0, p1, Landroid/support/v4/app/g;->YG:F

    cmpl-float v0, v0, v6

    if-lez v0, :cond_6

    .line 1759
    iget-object v0, p1, Landroid/support/v4/app/g;->mView:Landroid/view/View;

    iget v1, p1, Landroid/support/v4/app/g;->YG:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1761
    :cond_6
    iput v6, p1, Landroid/support/v4/app/g;->YG:F

    .line 1762
    iput-boolean v5, p1, Landroid/support/v4/app/g;->Yy:Z

    .line 1764
    invoke-virtual {p1}, Landroid/support/v4/app/g;->ajY()I

    move-result v0

    .line 1765
    invoke-virtual {p1}, Landroid/support/v4/app/g;->aka()I

    move-result v1

    .line 1764
    invoke-virtual {p0, p1, v0, v7, v1}, Landroid/support/v4/app/aR;->apW(Landroid/support/v4/app/g;IZI)Landroid/support/v4/app/C;

    move-result-object v0

    .line 1766
    if-eqz v0, :cond_0

    .line 1767
    iget-object v1, p1, Landroid/support/v4/app/g;->mView:Landroid/view/View;

    invoke-static {v1, v0}, Landroid/support/v4/app/aR;->aqC(Landroid/view/View;Landroid/support/v4/app/C;)V

    .line 1768
    iget-object v1, v0, Landroid/support/v4/app/C;->ZE:Landroid/view/animation/Animation;

    if-nez v1, :cond_8

    .line 1771
    iget-object v1, v0, Landroid/support/v4/app/C;->ZD:Landroid/animation/Animator;

    iget-object v2, p1, Landroid/support/v4/app/g;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1772
    iget-object v0, v0, Landroid/support/v4/app/C;->ZD:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_1

    .line 1746
    :cond_7
    iget-object v0, v0, Landroid/support/v4/app/g;->mView:Landroid/view/View;

    .line 1748
    iget-object v1, p1, Landroid/support/v4/app/g;->XT:Landroid/view/ViewGroup;

    .line 1749
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1750
    iget-object v2, p1, Landroid/support/v4/app/g;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 1751
    if-ge v2, v0, :cond_5

    .line 1752
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 1753
    iget-object v2, p1, Landroid/support/v4/app/g;->mView:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_3

    .line 1769
    :cond_8
    iget-object v1, p1, Landroid/support/v4/app/g;->mView:Landroid/view/View;

    iget-object v0, v0, Landroid/support/v4/app/C;->ZE:Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 1778
    :cond_9
    invoke-virtual {p0, p1}, Landroid/support/v4/app/aR;->aqc(Landroid/support/v4/app/g;)V

    goto :goto_2
.end method

.method public apk(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/g;
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 898
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 899
    if-eq v1, v0, :cond_0

    .line 902
    iget-object v0, p0, Landroid/support/v4/app/aR;->adO:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/g;

    .line 903
    if-eqz v0, :cond_1

    .line 907
    :goto_0
    return-object v0

    .line 900
    :cond_0
    return-object v2

    .line 904
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Fragment no longer exists for key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Landroid/support/v4/app/aR;->ard(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method apl(Landroid/support/v4/app/g;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1644
    iget-boolean v0, p1, Landroid/support/v4/app/g;->Ym:Z

    if-nez v0, :cond_1

    .line 1657
    :cond_0
    :goto_0
    return-void

    .line 1644
    :cond_1
    iget-boolean v0, p1, Landroid/support/v4/app/g;->Yp:Z

    if-nez v0, :cond_0

    .line 1645
    iget-object v0, p1, Landroid/support/v4/app/g;->Ys:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/g;->ajZ(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p1, Landroid/support/v4/app/g;->Ys:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v3, v1}, Landroid/support/v4/app/g;->akb(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/g;->mView:Landroid/view/View;

    .line 1647
    iget-object v0, p1, Landroid/support/v4/app/g;->mView:Landroid/view/View;

    if-nez v0, :cond_2

    .line 1654
    iput-object v3, p1, Landroid/support/v4/app/g;->Yv:Landroid/view/View;

    goto :goto_0

    .line 1648
    :cond_2
    iget-object v0, p1, Landroid/support/v4/app/g;->mView:Landroid/view/View;

    iput-object v0, p1, Landroid/support/v4/app/g;->Yv:Landroid/view/View;

    .line 1649
    iget-object v0, p1, Landroid/support/v4/app/g;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 1650
    iget-boolean v0, p1, Landroid/support/v4/app/g;->YI:Z

    if-nez v0, :cond_3

    .line 1651
    :goto_1
    iget-object v0, p1, Landroid/support/v4/app/g;->mView:Landroid/view/View;

    iget-object v1, p1, Landroid/support/v4/app/g;->Ys:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/g;->akA(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1652
    iget-object v0, p1, Landroid/support/v4/app/g;->mView:Landroid/view/View;

    iget-object v1, p1, Landroid/support/v4/app/g;->Ys:Landroid/os/Bundle;

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/support/v4/app/aR;->aqR(Landroid/support/v4/app/g;Landroid/view/View;Landroid/os/Bundle;Z)V

    goto :goto_0

    .line 1650
    :cond_3
    iget-object v0, p1, Landroid/support/v4/app/g;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public apn()Z
    .locals 3

    .prologue
    .line 793
    invoke-direct {p0}, Landroid/support/v4/app/aR;->aqg()V

    .line 794
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/support/v4/app/aR;->apo(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public app(Landroid/support/v4/app/V;)I
    .locals 3

    .prologue
    .line 2104
    monitor-enter p0

    .line 2105
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/aR;->adp:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 2106
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/aR;->adF:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 2109
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/aR;->adF:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2110
    sget-boolean v1, Landroid/support/v4/app/aR;->DEBUG:Z

    if-nez v1, :cond_3

    .line 2111
    :goto_1
    iget-object v1, p0, Landroid/support/v4/app/aR;->adF:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2112
    monitor-exit p0

    return v0

    .line 2105
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/aR;->adp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2115
    iget-object v0, p0, Landroid/support/v4/app/aR;->adp:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/aR;->adp:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2116
    sget-boolean v1, Landroid/support/v4/app/aR;->DEBUG:Z

    if-nez v1, :cond_4

    .line 2117
    :goto_2
    iget-object v1, p0, Landroid/support/v4/app/aR;->adF:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2118
    monitor-exit p0

    return v0

    .line 2107
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/aR;->adF:Ljava/util/ArrayList;

    goto :goto_0

    .line 2120
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2110
    :cond_3
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Setting back stack index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "FragmentManager"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2116
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Adding back stack index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "FragmentManager"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method apr(Landroid/support/v4/app/g;Z)V
    .locals 3

    .prologue
    .line 3553
    iget-object v0, p0, Landroid/support/v4/app/aR;->adq:Landroid/support/v4/app/g;

    if-nez v0, :cond_1

    .line 3560
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/aR;->adJ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3565
    return-void

    .line 3554
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/aR;->adq:Landroid/support/v4/app/g;

    invoke-virtual {v0}, Landroid/support/v4/app/g;->alk()Landroid/support/v4/app/aW;

    move-result-object v0

    .line 3555
    instance-of v1, v0, Landroid/support/v4/app/aR;

    if-eqz v1, :cond_0

    .line 3556
    check-cast v0, Landroid/support/v4/app/aR;

    .line 3557
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/aR;->apr(Landroid/support/v4/app/g;Z)V

    goto :goto_0

    .line 3560
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/i;

    .line 3561
    if-nez p2, :cond_4

    .line 3562
    :cond_3
    iget-object v0, v0, Landroid/support/v4/a/i;->Xk:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/app/aX;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/app/aX;->ary(Landroid/support/v4/app/aW;Landroid/support/v4/app/g;)V

    goto :goto_1

    .line 3561
    :cond_4
    iget-object v1, v0, Landroid/support/v4/a/i;->Xl:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1
.end method

.method public apu(I)V
    .locals 2

    .prologue
    .line 2149
    monitor-enter p0

    .line 2150
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/aR;->adF:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2151
    iget-object v0, p0, Landroid/support/v4/app/aR;->adp:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2154
    :goto_0
    sget-boolean v0, Landroid/support/v4/app/aR;->DEBUG:Z

    if-nez v0, :cond_1

    .line 2155
    :goto_1
    iget-object v0, p0, Landroid/support/v4/app/aR;->adp:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2156
    monitor-exit p0

    .line 2157
    return-void

    .line 2152
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/aR;->adp:Ljava/util/ArrayList;

    goto :goto_0

    .line 2156
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2154
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Freeing back stack index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method apv()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 2798
    iget-object v0, p0, Landroid/support/v4/app/aR;->adO:Landroid/util/SparseArray;

    if-nez v0, :cond_2

    move-object v3, v4

    move-object v5, v4

    .line 2833
    :cond_0
    if-eqz v5, :cond_c

    .line 2836
    :cond_1
    new-instance v0, Landroid/support/v4/app/ax;

    invoke-direct {v0, v5, v3}, Landroid/support/v4/app/ax;-><init>(Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Landroid/support/v4/app/aR;->ady:Landroid/support/v4/app/ax;

    .line 2838
    :goto_0
    return-void

    :cond_2
    move v1, v2

    move-object v3, v4

    move-object v5, v4

    .line 2799
    :goto_1
    iget-object v0, p0, Landroid/support/v4/app/aR;->adO:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 2800
    iget-object v0, p0, Landroid/support/v4/app/aR;->adO:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/g;

    .line 2801
    if-nez v0, :cond_4

    .line 2799
    :cond_3
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 2802
    :cond_4
    iget-boolean v6, v0, Landroid/support/v4/app/g;->Yz:Z

    if-nez v6, :cond_7

    .line 2811
    :cond_5
    :goto_3
    iget-object v6, v0, Landroid/support/v4/app/g;->Yr:Landroid/support/v4/app/aR;

    if-nez v6, :cond_a

    .line 2817
    iget-object v0, v0, Landroid/support/v4/app/g;->Yn:Landroid/support/v4/app/ax;

    move-object v6, v0

    .line 2820
    :goto_4
    if-eqz v3, :cond_b

    .line 2827
    :cond_6
    if-eqz v3, :cond_3

    .line 2828
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2803
    :cond_7
    if-eqz v5, :cond_8

    .line 2806
    :goto_5
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2807
    iget-object v6, v0, Landroid/support/v4/app/g;->YE:Landroid/support/v4/app/g;

    if-nez v6, :cond_9

    const/4 v6, -0x1

    :goto_6
    iput v6, v0, Landroid/support/v4/app/g;->Yu:I

    .line 2808
    sget-boolean v6, Landroid/support/v4/app/aR;->DEBUG:Z

    if-eqz v6, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "retainNonConfig: keeping retained "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "FragmentManager"

    invoke-static {v7, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2804
    :cond_8
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    goto :goto_5

    .line 2807
    :cond_9
    iget-object v6, v0, Landroid/support/v4/app/g;->YE:Landroid/support/v4/app/g;

    iget v6, v6, Landroid/support/v4/app/g;->Yb:I

    goto :goto_6

    .line 2812
    :cond_a
    iget-object v6, v0, Landroid/support/v4/app/g;->Yr:Landroid/support/v4/app/aR;

    invoke-virtual {v6}, Landroid/support/v4/app/aR;->apv()V

    .line 2813
    iget-object v0, v0, Landroid/support/v4/app/g;->Yr:Landroid/support/v4/app/aR;

    iget-object v0, v0, Landroid/support/v4/app/aR;->ady:Landroid/support/v4/app/ax;

    move-object v6, v0

    goto :goto_4

    .line 2820
    :cond_b
    if-eqz v6, :cond_6

    .line 2821
    new-instance v3, Ljava/util/ArrayList;

    iget-object v0, p0, Landroid/support/v4/app/aR;->adO:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v2

    .line 2822
    :goto_7
    if-ge v0, v1, :cond_6

    .line 2823
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2822
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 2833
    :cond_c
    if-nez v3, :cond_1

    .line 2834
    iput-object v4, p0, Landroid/support/v4/app/aR;->ady:Landroid/support/v4/app/ax;

    goto/16 :goto_0
.end method

.method apw(Landroid/support/v4/app/g;IIIZ)V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 1285
    iget-boolean v0, p1, Landroid/support/v4/app/g;->XW:Z

    if-nez v0, :cond_4

    :cond_0
    if-gt p2, v5, :cond_5

    .line 1288
    :goto_0
    iget-boolean v0, p1, Landroid/support/v4/app/g;->Yx:Z

    if-nez v0, :cond_6

    .line 1299
    :cond_1
    :goto_1
    iget-boolean v0, p1, Landroid/support/v4/app/g;->XX:Z

    if-nez v0, :cond_9

    .line 1302
    :cond_2
    :goto_2
    iget v0, p1, Landroid/support/v4/app/g;->mState:I

    if-le v0, p2, :cond_a

    .line 1471
    iget v0, p1, Landroid/support/v4/app/g;->mState:I

    if-gt v0, p2, :cond_2b

    .line 1579
    :cond_3
    :goto_3
    iget v0, p1, Landroid/support/v4/app/g;->mState:I

    if-ne v0, p2, :cond_45

    .line 1584
    :goto_4
    return-void

    .line 1285
    :cond_4
    iget-boolean v0, p1, Landroid/support/v4/app/g;->YB:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_5
    move p2, v5

    .line 1286
    goto :goto_0

    .line 1288
    :cond_6
    iget v0, p1, Landroid/support/v4/app/g;->mState:I

    if-le p2, v0, :cond_1

    .line 1289
    iget v0, p1, Landroid/support/v4/app/g;->mState:I

    if-eqz v0, :cond_8

    .line 1294
    :cond_7
    iget p2, p1, Landroid/support/v4/app/g;->mState:I

    goto :goto_1

    .line 1289
    :cond_8
    invoke-virtual {p1}, Landroid/support/v4/app/g;->akk()Z

    move-result v0

    if-eqz v0, :cond_7

    move p2, v5

    .line 1291
    goto :goto_1

    .line 1299
    :cond_9
    iget v0, p1, Landroid/support/v4/app/g;->mState:I

    if-ge v0, v9, :cond_2

    if-le p2, v6, :cond_2

    move p2, v6

    .line 1300
    goto :goto_2

    .line 1306
    :cond_a
    iget-boolean v0, p1, Landroid/support/v4/app/g;->Ym:Z

    if-nez v0, :cond_d

    .line 1309
    :cond_b
    invoke-virtual {p1}, Landroid/support/v4/app/g;->ajD()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 1314
    :cond_c
    invoke-virtual {p1, v7}, Landroid/support/v4/app/g;->akw(Landroid/view/View;)V

    .line 1315
    invoke-virtual {p1, v7}, Landroid/support/v4/app/g;->akr(Landroid/animation/Animator;)V

    .line 1316
    invoke-virtual {p1}, Landroid/support/v4/app/g;->akU()I

    move-result v2

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/aR;->apw(Landroid/support/v4/app/g;IIIZ)V

    .line 1318
    :goto_5
    iget v0, p1, Landroid/support/v4/app/g;->mState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_3

    .line 1320
    :pswitch_0
    if-gtz p2, :cond_f

    .line 1390
    :goto_6
    :pswitch_1
    invoke-virtual {p0, p1}, Landroid/support/v4/app/aR;->apl(Landroid/support/v4/app/g;)V

    .line 1392
    if-gt p2, v5, :cond_1b

    .line 1451
    :goto_7
    :pswitch_2
    const/4 v0, 0x2

    if-gt p2, v0, :cond_27

    .line 1456
    :goto_8
    :pswitch_3
    if-gt p2, v6, :cond_28

    .line 1463
    :goto_9
    :pswitch_4
    if-le p2, v9, :cond_3

    .line 1464
    sget-boolean v0, Landroid/support/v4/app/aR;->DEBUG:Z

    if-nez v0, :cond_2a

    .line 1465
    :goto_a
    invoke-virtual {p1}, Landroid/support/v4/app/g;->ajX()V

    .line 1466
    invoke-virtual {p0, p1, v3}, Landroid/support/v4/app/aR;->arc(Landroid/support/v4/app/g;Z)V

    .line 1467
    iput-object v7, p1, Landroid/support/v4/app/g;->Ys:Landroid/os/Bundle;

    .line 1468
    iput-object v7, p1, Landroid/support/v4/app/g;->Yk:Landroid/util/SparseArray;

    goto :goto_3

    .line 1306
    :cond_d
    iget-boolean v0, p1, Landroid/support/v4/app/g;->Yi:Z

    if-nez v0, :cond_b

    .line 1307
    return-void

    .line 1309
    :cond_e
    invoke-virtual {p1}, Landroid/support/v4/app/g;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_5

    .line 1321
    :cond_f
    sget-boolean v0, Landroid/support/v4/app/aR;->DEBUG:Z

    if-nez v0, :cond_12

    .line 1322
    :goto_b
    iget-object v0, p1, Landroid/support/v4/app/g;->Ys:Landroid/os/Bundle;

    if-nez v0, :cond_13

    .line 1343
    :cond_10
    :goto_c
    iget-object v0, p0, Landroid/support/v4/app/aR;->ads:Landroid/support/v4/app/r;

    iput-object v0, p1, Landroid/support/v4/app/g;->XU:Landroid/support/v4/app/r;

    .line 1344
    iget-object v0, p0, Landroid/support/v4/app/aR;->adq:Landroid/support/v4/app/g;

    iput-object v0, p1, Landroid/support/v4/app/g;->YF:Landroid/support/v4/app/g;

    .line 1345
    iget-object v0, p0, Landroid/support/v4/app/aR;->adq:Landroid/support/v4/app/g;

    if-nez v0, :cond_15

    iget-object v0, p0, Landroid/support/v4/app/aR;->ads:Landroid/support/v4/app/r;

    .line 1346
    invoke-virtual {v0}, Landroid/support/v4/app/r;->aly()Landroid/support/v4/app/aR;

    move-result-object v0

    :goto_d
    iput-object v0, p1, Landroid/support/v4/app/g;->Yg:Landroid/support/v4/app/aR;

    .line 1350
    iget-object v0, p1, Landroid/support/v4/app/g;->YE:Landroid/support/v4/app/g;

    if-nez v0, :cond_16

    .line 1361
    :cond_11
    :goto_e
    iget-object v0, p0, Landroid/support/v4/app/aR;->ads:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v3}, Landroid/support/v4/app/aR;->apz(Landroid/support/v4/app/g;Landroid/content/Context;Z)V

    .line 1362
    iput-boolean v3, p1, Landroid/support/v4/app/g;->mCalled:Z

    .line 1363
    iget-object v0, p0, Landroid/support/v4/app/aR;->ads:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/g;->ajF(Landroid/content/Context;)V

    .line 1364
    iget-boolean v0, p1, Landroid/support/v4/app/g;->mCalled:Z

    if-eqz v0, :cond_18

    .line 1368
    iget-object v0, p1, Landroid/support/v4/app/g;->YF:Landroid/support/v4/app/g;

    if-eqz v0, :cond_19

    .line 1371
    iget-object v0, p1, Landroid/support/v4/app/g;->YF:Landroid/support/v4/app/g;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/g;->ajN(Landroid/support/v4/app/g;)V

    .line 1373
    :goto_f
    iget-object v0, p0, Landroid/support/v4/app/aR;->ads:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v3}, Landroid/support/v4/app/aR;->api(Landroid/support/v4/app/g;Landroid/content/Context;Z)V

    .line 1375
    iget-boolean v0, p1, Landroid/support/v4/app/g;->XZ:Z

    if-eqz v0, :cond_1a

    .line 1380
    iget-object v0, p1, Landroid/support/v4/app/g;->Ys:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/g;->akz(Landroid/os/Bundle;)V

    .line 1381
    iput v5, p1, Landroid/support/v4/app/g;->mState:I

    .line 1383
    :goto_10
    iput-boolean v3, p1, Landroid/support/v4/app/g;->XZ:Z

    goto :goto_6

    .line 1321
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "moveto CREATED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 1323
    :cond_13
    iget-object v0, p1, Landroid/support/v4/app/g;->Ys:Landroid/os/Bundle;

    iget-object v1, p0, Landroid/support/v4/app/aR;->ads:Landroid/support/v4/app/r;

    invoke-virtual {v1}, Landroid/support/v4/app/r;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1324
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 1323
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1325
    iget-object v0, p1, Landroid/support/v4/app/g;->Ys:Landroid/os/Bundle;

    const-string/jumbo v1, "android:view_state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/g;->Yk:Landroid/util/SparseArray;

    .line 1327
    iget-object v0, p1, Landroid/support/v4/app/g;->Ys:Landroid/os/Bundle;

    const-string/jumbo v1, "android:target_state"

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/aR;->apk(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/g;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/g;->YE:Landroid/support/v4/app/g;

    .line 1329
    iget-object v0, p1, Landroid/support/v4/app/g;->YE:Landroid/support/v4/app/g;

    if-nez v0, :cond_14

    .line 1333
    :goto_11
    iget-object v0, p1, Landroid/support/v4/app/g;->Ys:Landroid/os/Bundle;

    const-string/jumbo v1, "android:user_visible_hint"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroid/support/v4/app/g;->Yj:Z

    .line 1335
    iget-boolean v0, p1, Landroid/support/v4/app/g;->Yj:Z

    if-nez v0, :cond_10

    .line 1336
    iput-boolean v5, p1, Landroid/support/v4/app/g;->XX:Z

    .line 1337
    if-le p2, v6, :cond_10

    move p2, v6

    .line 1338
    goto/16 :goto_c

    .line 1330
    :cond_14
    iget-object v0, p1, Landroid/support/v4/app/g;->Ys:Landroid/os/Bundle;

    const-string/jumbo v1, "android:target_req_state"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroid/support/v4/app/g;->YA:I

    goto :goto_11

    .line 1345
    :cond_15
    iget-object v0, p0, Landroid/support/v4/app/aR;->adq:Landroid/support/v4/app/g;

    iget-object v0, v0, Landroid/support/v4/app/g;->Yr:Landroid/support/v4/app/aR;

    goto/16 :goto_d

    .line 1351
    :cond_16
    iget-object v0, p0, Landroid/support/v4/app/aR;->adO:Landroid/util/SparseArray;

    iget-object v1, p1, Landroid/support/v4/app/g;->YE:Landroid/support/v4/app/g;

    iget v1, v1, Landroid/support/v4/app/g;->Yb:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p1, Landroid/support/v4/app/g;->YE:Landroid/support/v4/app/g;

    if-ne v0, v1, :cond_17

    .line 1356
    iget-object v0, p1, Landroid/support/v4/app/g;->YE:Landroid/support/v4/app/g;

    iget v0, v0, Landroid/support/v4/app/g;->mState:I

    if-ge v0, v5, :cond_11

    .line 1357
    iget-object v1, p1, Landroid/support/v4/app/g;->YE:Landroid/support/v4/app/g;

    move-object v0, p0

    move v2, v5

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/aR;->apw(Landroid/support/v4/app/g;IIIZ)V

    goto/16 :goto_e

    .line 1352
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " declared target fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/support/v4/app/g;->YE:Landroid/support/v4/app/g;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " that does not belong to this FragmentManager!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1365
    :cond_18
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not call through to super.onAttach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1369
    :cond_19
    iget-object v0, p0, Landroid/support/v4/app/aR;->ads:Landroid/support/v4/app/r;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/r;->alE(Landroid/support/v4/app/g;)V

    goto/16 :goto_f

    .line 1376
    :cond_1a
    iget-object v0, p1, Landroid/support/v4/app/g;->Ys:Landroid/os/Bundle;

    invoke-virtual {p0, p1, v0, v3}, Landroid/support/v4/app/aR;->aqN(Landroid/support/v4/app/g;Landroid/os/Bundle;Z)V

    .line 1377
    iget-object v0, p1, Landroid/support/v4/app/g;->Ys:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/g;->akE(Landroid/os/Bundle;)V

    .line 1378
    iget-object v0, p1, Landroid/support/v4/app/g;->Ys:Landroid/os/Bundle;

    invoke-virtual {p0, p1, v0, v3}, Landroid/support/v4/app/aR;->arb(Landroid/support/v4/app/g;Landroid/os/Bundle;Z)V

    goto/16 :goto_10

    .line 1393
    :cond_1b
    sget-boolean v0, Landroid/support/v4/app/aR;->DEBUG:Z

    if-nez v0, :cond_1c

    .line 1394
    :goto_12
    iget-boolean v0, p1, Landroid/support/v4/app/g;->Ym:Z

    if-eqz v0, :cond_1d

    .line 1442
    :goto_13
    iget-object v0, p1, Landroid/support/v4/app/g;->Ys:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/g;->ajE(Landroid/os/Bundle;)V

    .line 1443
    iget-object v0, p1, Landroid/support/v4/app/g;->Ys:Landroid/os/Bundle;

    invoke-virtual {p0, p1, v0, v3}, Landroid/support/v4/app/aR;->aqW(Landroid/support/v4/app/g;Landroid/os/Bundle;Z)V

    .line 1444
    iget-object v0, p1, Landroid/support/v4/app/g;->mView:Landroid/view/View;

    if-nez v0, :cond_26

    .line 1447
    :goto_14
    iput-object v7, p1, Landroid/support/v4/app/g;->Ys:Landroid/os/Bundle;

    goto/16 :goto_7

    .line 1393
    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "moveto ACTIVITY_CREATED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 1396
    :cond_1d
    iget v0, p1, Landroid/support/v4/app/g;->Yc:I

    if-nez v0, :cond_1f

    move-object v0, v7

    .line 1418
    :cond_1e
    :goto_15
    iput-object v0, p1, Landroid/support/v4/app/g;->XT:Landroid/view/ViewGroup;

    .line 1419
    iget-object v1, p1, Landroid/support/v4/app/g;->Ys:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Landroid/support/v4/app/g;->ajZ(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p1, Landroid/support/v4/app/g;->Ys:Landroid/os/Bundle;

    invoke-virtual {p1, v1, v0, v2}, Landroid/support/v4/app/g;->akb(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p1, Landroid/support/v4/app/g;->mView:Landroid/view/View;

    .line 1421
    iget-object v1, p1, Landroid/support/v4/app/g;->mView:Landroid/view/View;

    if-nez v1, :cond_21

    .line 1438
    iput-object v7, p1, Landroid/support/v4/app/g;->Yv:Landroid/view/View;

    goto :goto_13

    .line 1397
    :cond_1f
    iget v0, p1, Landroid/support/v4/app/g;->Yc:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_20

    .line 1403
    :goto_16
    iget-object v0, p0, Landroid/support/v4/app/aR;->adB:Landroid/support/v4/app/ac;

    iget v1, p1, Landroid/support/v4/app/g;->Yc:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ac;->alH(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1404
    if-nez v0, :cond_1e

    iget-boolean v1, p1, Landroid/support/v4/app/g;->Yd:Z

    if-nez v1, :cond_1e

    .line 1407
    :try_start_0
    invoke-virtual {p1}, Landroid/support/v4/app/g;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p1, Landroid/support/v4/app/g;->Yc:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1411
    :goto_17
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "No view found for id 0x"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v8, p1, Landroid/support/v4/app/g;->Yc:I

    .line 1413
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, " ("

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ") for fragment "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1411
    invoke-direct {p0, v2}, Landroid/support/v4/app/aR;->ard(Ljava/lang/RuntimeException;)V

    goto :goto_15

    .line 1398
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot create fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " for a container view with no id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/support/v4/app/aR;->ard(Ljava/lang/RuntimeException;)V

    goto :goto_16

    .line 1408
    :catch_0
    move-exception v1

    .line 1409
    const-string/jumbo v1, "unknown"

    goto :goto_17

    .line 1422
    :cond_21
    iget-object v1, p1, Landroid/support/v4/app/g;->mView:Landroid/view/View;

    iput-object v1, p1, Landroid/support/v4/app/g;->Yv:Landroid/view/View;

    .line 1423
    iget-object v1, p1, Landroid/support/v4/app/g;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 1424
    if-nez v0, :cond_23

    .line 1427
    :goto_18
    iget-boolean v0, p1, Landroid/support/v4/app/g;->YI:Z

    if-nez v0, :cond_24

    .line 1430
    :goto_19
    iget-object v0, p1, Landroid/support/v4/app/g;->mView:Landroid/view/View;

    iget-object v1, p1, Landroid/support/v4/app/g;->Ys:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/g;->akA(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1431
    iget-object v0, p1, Landroid/support/v4/app/g;->mView:Landroid/view/View;

    iget-object v1, p1, Landroid/support/v4/app/g;->Ys:Landroid/os/Bundle;

    invoke-virtual {p0, p1, v0, v1, v3}, Landroid/support/v4/app/aR;->aqR(Landroid/support/v4/app/g;Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 1435
    iget-object v0, p1, Landroid/support/v4/app/g;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_25

    :goto_1a
    move v5, v3

    :cond_22
    iput-boolean v5, p1, Landroid/support/v4/app/g;->Yy:Z

    goto/16 :goto_13

    .line 1425
    :cond_23
    iget-object v1, p1, Landroid/support/v4/app/g;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_18

    .line 1428
    :cond_24
    iget-object v0, p1, Landroid/support/v4/app/g;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_19

    .line 1435
    :cond_25
    iget-object v0, p1, Landroid/support/v4/app/g;->XT:Landroid/view/ViewGroup;

    if-nez v0, :cond_22

    goto :goto_1a

    .line 1445
    :cond_26
    iget-object v0, p1, Landroid/support/v4/app/g;->Ys:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/g;->akR(Landroid/os/Bundle;)V

    goto/16 :goto_14

    .line 1452
    :cond_27
    iput v6, p1, Landroid/support/v4/app/g;->mState:I

    goto/16 :goto_8

    .line 1457
    :cond_28
    sget-boolean v0, Landroid/support/v4/app/aR;->DEBUG:Z

    if-nez v0, :cond_29

    .line 1458
    :goto_1b
    invoke-virtual {p1}, Landroid/support/v4/app/g;->aky()V

    .line 1459
    invoke-virtual {p0, p1, v3}, Landroid/support/v4/app/aR;->aqY(Landroid/support/v4/app/g;Z)V

    goto/16 :goto_9

    .line 1457
    :cond_29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "moveto STARTED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 1464
    :cond_2a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "moveto RESUMED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 1472
    :cond_2b
    iget v0, p1, Landroid/support/v4/app/g;->mState:I

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_3

    .line 1529
    :cond_2c
    :goto_1c
    :pswitch_5
    if-ge p2, v5, :cond_3

    .line 1530
    iget-boolean v0, p0, Landroid/support/v4/app/aR;->mDestroyed:Z

    if-nez v0, :cond_3f

    .line 1547
    :cond_2d
    :goto_1d
    invoke-virtual {p1}, Landroid/support/v4/app/g;->ajD()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 1552
    :cond_2e
    invoke-virtual {p1, p2}, Landroid/support/v4/app/g;->aks(I)V

    move p2, v5

    .line 1553
    goto/16 :goto_3

    .line 1474
    :pswitch_6
    const/4 v0, 0x5

    if-lt p2, v0, :cond_31

    .line 1481
    :goto_1e
    :pswitch_7
    if-lt p2, v9, :cond_33

    .line 1488
    :goto_1f
    :pswitch_8
    if-lt p2, v6, :cond_35

    .line 1494
    :goto_20
    :pswitch_9
    const/4 v0, 0x2

    if-ge p2, v0, :cond_2c

    .line 1495
    sget-boolean v0, Landroid/support/v4/app/aR;->DEBUG:Z

    if-nez v0, :cond_37

    .line 1496
    :goto_21
    iget-object v0, p1, Landroid/support/v4/app/g;->mView:Landroid/view/View;

    if-nez v0, :cond_38

    .line 1503
    :cond_2f
    :goto_22
    invoke-virtual {p1}, Landroid/support/v4/app/g;->alh()V

    .line 1504
    invoke-virtual {p0, p1, v3}, Landroid/support/v4/app/aR;->aqb(Landroid/support/v4/app/g;Z)V

    .line 1505
    iget-object v0, p1, Landroid/support/v4/app/g;->mView:Landroid/view/View;

    if-nez v0, :cond_39

    .line 1522
    :cond_30
    :goto_23
    iput-object v7, p1, Landroid/support/v4/app/g;->XT:Landroid/view/ViewGroup;

    .line 1523
    iput-object v7, p1, Landroid/support/v4/app/g;->mView:Landroid/view/View;

    .line 1524
    iput-object v7, p1, Landroid/support/v4/app/g;->Yv:Landroid/view/View;

    .line 1525
    iput-boolean v3, p1, Landroid/support/v4/app/g;->Yi:Z

    goto :goto_1c

    .line 1475
    :cond_31
    sget-boolean v0, Landroid/support/v4/app/aR;->DEBUG:Z

    if-nez v0, :cond_32

    .line 1476
    :goto_24
    invoke-virtual {p1}, Landroid/support/v4/app/g;->ajL()V

    .line 1477
    invoke-virtual {p0, p1, v3}, Landroid/support/v4/app/aR;->apy(Landroid/support/v4/app/g;Z)V

    goto :goto_1e

    .line 1475
    :cond_32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "movefrom RESUMED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 1482
    :cond_33
    sget-boolean v0, Landroid/support/v4/app/aR;->DEBUG:Z

    if-nez v0, :cond_34

    .line 1483
    :goto_25
    invoke-virtual {p1}, Landroid/support/v4/app/g;->akx()V

    .line 1484
    invoke-virtual {p0, p1, v3}, Landroid/support/v4/app/aR;->aqU(Landroid/support/v4/app/g;Z)V

    goto :goto_1f

    .line 1482
    :cond_34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "movefrom STARTED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 1489
    :cond_35
    sget-boolean v0, Landroid/support/v4/app/aR;->DEBUG:Z

    if-nez v0, :cond_36

    .line 1490
    :goto_26
    invoke-virtual {p1}, Landroid/support/v4/app/g;->akS()V

    goto :goto_20

    .line 1489
    :cond_36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "movefrom STOPPED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 1495
    :cond_37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "movefrom ACTIVITY_CREATED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21

    .line 1499
    :cond_38
    iget-object v0, p0, Landroid/support/v4/app/aR;->ads:Landroid/support/v4/app/r;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/r;->alC(Landroid/support/v4/app/g;)Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p1, Landroid/support/v4/app/g;->Yk:Landroid/util/SparseArray;

    if-nez v0, :cond_2f

    .line 1500
    invoke-virtual {p0, p1}, Landroid/support/v4/app/aR;->aqp(Landroid/support/v4/app/g;)V

    goto/16 :goto_22

    .line 1505
    :cond_39
    iget-object v0, p1, Landroid/support/v4/app/g;->XT:Landroid/view/ViewGroup;

    if-eqz v0, :cond_30

    .line 1507
    iget-object v0, p1, Landroid/support/v4/app/g;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 1508
    iget-object v0, p1, Landroid/support/v4/app/g;->XT:Landroid/view/ViewGroup;

    iget-object v1, p1, Landroid/support/v4/app/g;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 1510
    iget v0, p0, Landroid/support/v4/app/aR;->adP:I

    if-gtz v0, :cond_3b

    :cond_3a
    move-object v0, v7

    .line 1516
    :goto_27
    const/4 v1, 0x0

    iput v1, p1, Landroid/support/v4/app/g;->YG:F

    .line 1517
    if-nez v0, :cond_3e

    .line 1520
    :goto_28
    iget-object v0, p1, Landroid/support/v4/app/g;->XT:Landroid/view/ViewGroup;

    iget-object v1, p1, Landroid/support/v4/app/g;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto/16 :goto_23

    .line 1510
    :cond_3b
    iget-boolean v0, p0, Landroid/support/v4/app/aR;->mDestroyed:Z

    if-nez v0, :cond_3a

    iget-object v0, p1, Landroid/support/v4/app/g;->mView:Landroid/view/View;

    .line 1511
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3d

    :cond_3c
    move-object v0, v7

    goto :goto_27

    :cond_3d
    iget v0, p1, Landroid/support/v4/app/g;->YG:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3c

    .line 1513
    invoke-virtual {p0, p1, p3, v3, p4}, Landroid/support/v4/app/aR;->apW(Landroid/support/v4/app/g;IZI)Landroid/support/v4/app/C;

    move-result-object v0

    goto :goto_27

    .line 1518
    :cond_3e
    invoke-direct {p0, p1, v0, p2}, Landroid/support/v4/app/aR;->apq(Landroid/support/v4/app/g;Landroid/support/v4/app/C;I)V

    goto :goto_28

    .line 1537
    :cond_3f
    invoke-virtual {p1}, Landroid/support/v4/app/g;->ajD()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_40

    .line 1541
    invoke-virtual {p1}, Landroid/support/v4/app/g;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 1542
    invoke-virtual {p1}, Landroid/support/v4/app/g;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    .line 1543
    invoke-virtual {p1, v7}, Landroid/support/v4/app/g;->akr(Landroid/animation/Animator;)V

    .line 1544
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    goto/16 :goto_1d

    .line 1538
    :cond_40
    invoke-virtual {p1}, Landroid/support/v4/app/g;->ajD()Landroid/view/View;

    move-result-object v0

    .line 1539
    invoke-virtual {p1, v7}, Landroid/support/v4/app/g;->akw(Landroid/view/View;)V

    .line 1540
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto/16 :goto_1d

    .line 1547
    :cond_41
    invoke-virtual {p1}, Landroid/support/v4/app/g;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    if-nez v0, :cond_2e

    .line 1555
    sget-boolean v0, Landroid/support/v4/app/aR;->DEBUG:Z

    if-nez v0, :cond_42

    .line 1556
    :goto_29
    iget-boolean v0, p1, Landroid/support/v4/app/g;->XZ:Z

    if-eqz v0, :cond_43

    .line 1560
    iput v3, p1, Landroid/support/v4/app/g;->mState:I

    .line 1563
    :goto_2a
    invoke-virtual {p1}, Landroid/support/v4/app/g;->akg()V

    .line 1564
    invoke-virtual {p0, p1, v3}, Landroid/support/v4/app/aR;->aqo(Landroid/support/v4/app/g;Z)V

    .line 1565
    if-nez p5, :cond_3

    .line 1566
    iget-boolean v0, p1, Landroid/support/v4/app/g;->XZ:Z

    if-eqz v0, :cond_44

    .line 1569
    iput-object v7, p1, Landroid/support/v4/app/g;->XU:Landroid/support/v4/app/r;

    .line 1570
    iput-object v7, p1, Landroid/support/v4/app/g;->YF:Landroid/support/v4/app/g;

    .line 1571
    iput-object v7, p1, Landroid/support/v4/app/g;->Yg:Landroid/support/v4/app/aR;

    goto/16 :goto_3

    .line 1555
    :cond_42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "movefrom CREATED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 1557
    :cond_43
    invoke-virtual {p1}, Landroid/support/v4/app/g;->akn()V

    .line 1558
    invoke-virtual {p0, p1, v3}, Landroid/support/v4/app/aR;->apr(Landroid/support/v4/app/g;Z)V

    goto :goto_2a

    .line 1567
    :cond_44
    invoke-virtual {p0, p1}, Landroid/support/v4/app/aR;->apK(Landroid/support/v4/app/g;)V

    goto/16 :goto_3

    .line 1580
    :cond_45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "moveToState: Fragment state for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " not updated inline; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "expected state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/support/v4/app/g;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    iput p2, p1, Landroid/support/v4/app/g;->mState:I

    goto/16 :goto_4

    .line 1318
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 1472
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method apy(Landroid/support/v4/app/g;Z)V
    .locals 3

    .prologue
    .line 3493
    iget-object v0, p0, Landroid/support/v4/app/aR;->adq:Landroid/support/v4/app/g;

    if-nez v0, :cond_1

    .line 3500
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/aR;->adJ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3505
    return-void

    .line 3494
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/aR;->adq:Landroid/support/v4/app/g;

    invoke-virtual {v0}, Landroid/support/v4/app/g;->alk()Landroid/support/v4/app/aW;

    move-result-object v0

    .line 3495
    instance-of v1, v0, Landroid/support/v4/app/aR;

    if-eqz v1, :cond_0

    .line 3496
    check-cast v0, Landroid/support/v4/app/aR;

    .line 3497
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/aR;->apy(Landroid/support/v4/app/g;Z)V

    goto :goto_0

    .line 3500
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/i;

    .line 3501
    if-nez p2, :cond_4

    .line 3502
    :cond_3
    iget-object v0, v0, Landroid/support/v4/a/i;->Xk:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/app/aX;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/app/aX;->arE(Landroid/support/v4/app/aW;Landroid/support/v4/app/g;)V

    goto :goto_1

    .line 3501
    :cond_4
    iget-object v1, v0, Landroid/support/v4/a/i;->Xl:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1
.end method

.method apz(Landroid/support/v4/app/g;Landroid/content/Context;Z)V
    .locals 3

    .prologue
    .line 3370
    iget-object v0, p0, Landroid/support/v4/app/aR;->adq:Landroid/support/v4/app/g;

    if-nez v0, :cond_1

    .line 3377
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/aR;->adJ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3382
    return-void

    .line 3371
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/aR;->adq:Landroid/support/v4/app/g;

    invoke-virtual {v0}, Landroid/support/v4/app/g;->alk()Landroid/support/v4/app/aW;

    move-result-object v0

    .line 3372
    instance-of v1, v0, Landroid/support/v4/app/aR;

    if-eqz v1, :cond_0

    .line 3373
    check-cast v0, Landroid/support/v4/app/aR;

    .line 3374
    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v4/app/aR;->apz(Landroid/support/v4/app/g;Landroid/content/Context;Z)V

    goto :goto_0

    .line 3377
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/i;

    .line 3378
    if-nez p3, :cond_4

    .line 3379
    :cond_3
    iget-object v0, v0, Landroid/support/v4/a/i;->Xk:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/app/aX;

    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v4/app/aX;->arG(Landroid/support/v4/app/aW;Landroid/support/v4/app/g;Landroid/content/Context;)V

    goto :goto_1

    .line 3378
    :cond_4
    iget-object v1, v0, Landroid/support/v4/a/i;->Xl:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1
.end method

.method public aqA(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 3243
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/aR;->adx:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 3249
    return-void

    .line 3244
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/aR;->adx:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/g;

    .line 3245
    if-nez v0, :cond_1

    .line 3243
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 3246
    :cond_1
    invoke-virtual {v0, p1}, Landroid/support/v4/app/g;->akj(Landroid/content/res/Configuration;)V

    goto :goto_1
.end method

.method public aqB()Landroid/support/v4/app/g;
    .locals 1

    .prologue
    .line 3348
    iget-object v0, p0, Landroid/support/v4/app/aR;->adM:Landroid/support/v4/app/g;

    return-object v0
.end method

.method public aqD(ILandroid/support/v4/app/V;)V
    .locals 3

    .prologue
    .line 2124
    monitor-enter p0

    .line 2125
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/aR;->adF:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2128
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/aR;->adF:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2129
    if-lt p1, v0, :cond_1

    .line 2133
    :goto_1
    if-lt v0, p1, :cond_3

    .line 2142
    sget-boolean v0, Landroid/support/v4/app/aR;->DEBUG:Z

    if-nez v0, :cond_6

    .line 2143
    :goto_2
    iget-object v0, p0, Landroid/support/v4/app/aR;->adF:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2145
    :goto_3
    monitor-exit p0

    .line 2146
    return-void

    .line 2126
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/aR;->adF:Ljava/util/ArrayList;

    goto :goto_0

    .line 2145
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2130
    :cond_1
    :try_start_1
    sget-boolean v0, Landroid/support/v4/app/aR;->DEBUG:Z

    if-nez v0, :cond_2

    .line 2131
    :goto_4
    iget-object v0, p0, Landroid/support/v4/app/aR;->adF:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 2130
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Setting back stack index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 2134
    :cond_3
    iget-object v1, p0, Landroid/support/v4/app/aR;->adF:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2135
    iget-object v1, p0, Landroid/support/v4/app/aR;->adp:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    .line 2138
    :goto_5
    sget-boolean v1, Landroid/support/v4/app/aR;->DEBUG:Z

    if-nez v1, :cond_5

    .line 2139
    :goto_6
    iget-object v1, p0, Landroid/support/v4/app/aR;->adp:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2140
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2136
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/aR;->adp:Ljava/util/ArrayList;

    goto :goto_5

    .line 2138
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Adding available back stack index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "FragmentManager"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 2142
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Adding back stack index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2
.end method

.method public aqE(II)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 810
    if-ltz p1, :cond_0

    .line 813
    new-instance v0, Landroid/support/v4/app/s;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, Landroid/support/v4/app/s;-><init>(Landroid/support/v4/app/aR;Ljava/lang/String;II)V

    invoke-virtual {p0, v0, v2}, Landroid/support/v4/app/aR;->apO(Landroid/support/v4/app/aC;Z)V

    .line 814
    return-void

    .line 811
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public aqF(Z)V
    .locals 2

    .prologue
    .line 3234
    iget-object v0, p0, Landroid/support/v4/app/aR;->adx:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_0

    .line 3240
    return-void

    .line 3235
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/aR;->adx:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/g;

    .line 3236
    if-nez v0, :cond_1

    .line 3234
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 3237
    :cond_1
    invoke-virtual {v0, p1}, Landroid/support/v4/app/g;->akB(Z)V

    goto :goto_1
.end method

.method public aqH(Ljava/lang/String;)Landroid/support/v4/app/g;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2031
    iget-object v0, p0, Landroid/support/v4/app/aR;->adO:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 2039
    :cond_0
    return-object v2

    .line 2031
    :cond_1
    if-eqz p1, :cond_0

    .line 2032
    iget-object v0, p0, Landroid/support/v4/app/aR;->adO:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 2033
    iget-object v0, p0, Landroid/support/v4/app/aR;->adO:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/g;

    .line 2034
    if-nez v0, :cond_3

    .line 2032
    :cond_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 2034
    :cond_3
    invoke-virtual {v0, p1}, Landroid/support/v4/app/g;->akK(Ljava/lang/String;)Landroid/support/v4/app/g;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2035
    return-object v0
.end method

.method public aqI(Landroid/support/v4/app/g;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1923
    sget-boolean v2, Landroid/support/v4/app/aR;->DEBUG:Z

    if-nez v2, :cond_0

    .line 1924
    :goto_0
    iget-boolean v2, p1, Landroid/support/v4/app/g;->YI:Z

    if-eqz v2, :cond_1

    .line 1930
    :goto_1
    return-void

    .line 1923
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "hide: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "FragmentManager"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1925
    :cond_1
    iput-boolean v1, p1, Landroid/support/v4/app/g;->YI:Z

    .line 1928
    iget-boolean v2, p1, Landroid/support/v4/app/g;->Yo:Z

    if-eqz v2, :cond_2

    :goto_2
    iput-boolean v0, p1, Landroid/support/v4/app/g;->Yo:Z

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public aqJ(Landroid/view/Menu;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    move v1, v0

    move v2, v0

    .line 3292
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/aR;->adx:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 3300
    return v2

    .line 3293
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/aR;->adx:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/g;

    .line 3294
    if-nez v0, :cond_2

    .line 3292
    :cond_1
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 3295
    :cond_2
    invoke-virtual {v0, p1}, Landroid/support/v4/app/g;->akc(Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3296
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public aqL(Landroid/support/v4/app/g;)V
    .locals 3

    .prologue
    .line 3338
    if-nez p1, :cond_1

    .line 3343
    :cond_0
    :goto_0
    iput-object p1, p0, Landroid/support/v4/app/aR;->adM:Landroid/support/v4/app/g;

    .line 3344
    return-void

    .line 3338
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/aR;->adO:Landroid/util/SparseArray;

    iget v1, p1, Landroid/support/v4/app/g;->Yb:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_3

    .line 3340
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not an active fragment of FragmentManager "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3338
    :cond_3
    iget-object v0, p1, Landroid/support/v4/app/g;->XU:Landroid/support/v4/app/r;

    if-eqz v0, :cond_0

    .line 3339
    invoke-virtual {p1}, Landroid/support/v4/app/g;->alk()Landroid/support/v4/app/aW;

    move-result-object v0

    if-ne v0, p0, :cond_2

    goto :goto_0
.end method

.method public aqM()V
    .locals 1

    .prologue
    .line 3165
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/aR;->adD:Z

    .line 3166
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/app/aR;->apU(I)V

    .line 3167
    return-void
.end method

.method aqN(Landroid/support/v4/app/g;Landroid/os/Bundle;Z)V
    .locals 3

    .prologue
    .line 3401
    iget-object v0, p0, Landroid/support/v4/app/aR;->adq:Landroid/support/v4/app/g;

    if-nez v0, :cond_1

    .line 3408
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/aR;->adJ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3413
    return-void

    .line 3402
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/aR;->adq:Landroid/support/v4/app/g;

    invoke-virtual {v0}, Landroid/support/v4/app/g;->alk()Landroid/support/v4/app/aW;

    move-result-object v0

    .line 3403
    instance-of v1, v0, Landroid/support/v4/app/aR;

    if-eqz v1, :cond_0

    .line 3404
    check-cast v0, Landroid/support/v4/app/aR;

    .line 3405
    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v4/app/aR;->aqN(Landroid/support/v4/app/g;Landroid/os/Bundle;Z)V

    goto :goto_0

    .line 3408
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/i;

    .line 3409
    if-nez p3, :cond_4

    .line 3410
    :cond_3
    iget-object v0, v0, Landroid/support/v4/a/i;->Xk:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/app/aX;

    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v4/app/aX;->arA(Landroid/support/v4/app/aW;Landroid/support/v4/app/g;Landroid/os/Bundle;)V

    goto :goto_1

    .line 3409
    :cond_4
    iget-object v1, v0, Landroid/support/v4/a/i;->Xl:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1
.end method

.method aqO(Landroid/support/v4/app/g;)Landroid/os/Bundle;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 2859
    iget-object v1, p0, Landroid/support/v4/app/aR;->adt:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 2862
    :goto_0
    iget-object v1, p0, Landroid/support/v4/app/aR;->adt:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Landroid/support/v4/app/g;->ale(Landroid/os/Bundle;)V

    .line 2863
    iget-object v1, p0, Landroid/support/v4/app/aR;->adt:Landroid/os/Bundle;

    invoke-virtual {p0, p1, v1, v2}, Landroid/support/v4/app/aR;->apF(Landroid/support/v4/app/g;Landroid/os/Bundle;Z)V

    .line 2864
    iget-object v1, p0, Landroid/support/v4/app/aR;->adt:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2869
    :goto_1
    iget-object v1, p1, Landroid/support/v4/app/g;->mView:Landroid/view/View;

    if-nez v1, :cond_2

    .line 2872
    :goto_2
    iget-object v1, p1, Landroid/support/v4/app/g;->Yk:Landroid/util/SparseArray;

    if-nez v1, :cond_3

    .line 2879
    :goto_3
    iget-boolean v1, p1, Landroid/support/v4/app/g;->Yj:Z

    if-eqz v1, :cond_5

    .line 2887
    :goto_4
    return-object v0

    .line 2860
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/aR;->adt:Landroid/os/Bundle;

    goto :goto_0

    .line 2865
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/aR;->adt:Landroid/os/Bundle;

    .line 2866
    iput-object v0, p0, Landroid/support/v4/app/aR;->adt:Landroid/os/Bundle;

    move-object v0, v1

    goto :goto_1

    .line 2870
    :cond_2
    invoke-virtual {p0, p1}, Landroid/support/v4/app/aR;->aqp(Landroid/support/v4/app/g;)V

    goto :goto_2

    .line 2873
    :cond_3
    if-eqz v0, :cond_4

    .line 2876
    :goto_5
    iget-object v1, p1, Landroid/support/v4/app/g;->Yk:Landroid/util/SparseArray;

    const-string/jumbo v2, "android:view_state"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    goto :goto_3

    .line 2874
    :cond_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_5

    .line 2880
    :cond_5
    if-eqz v0, :cond_6

    .line 2884
    :goto_6
    iget-boolean v1, p1, Landroid/support/v4/app/g;->Yj:Z

    const-string/jumbo v2, "android:user_visible_hint"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_4

    .line 2881
    :cond_6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_6
.end method

.method public aqQ(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    move v1, v2

    .line 3304
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/aR;->adx:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 3312
    return v2

    .line 3305
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/aR;->adx:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/g;

    .line 3306
    if-nez v0, :cond_2

    .line 3304
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 3307
    :cond_2
    invoke-virtual {v0, p1}, Landroid/support/v4/app/g;->akq(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3308
    const/4 v0, 0x1

    return v0
.end method

.method aqR(Landroid/support/v4/app/g;Landroid/view/View;Landroid/os/Bundle;Z)V
    .locals 3

    .prologue
    .line 3448
    iget-object v0, p0, Landroid/support/v4/app/aR;->adq:Landroid/support/v4/app/g;

    if-nez v0, :cond_1

    .line 3455
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/aR;->adJ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3460
    return-void

    .line 3449
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/aR;->adq:Landroid/support/v4/app/g;

    invoke-virtual {v0}, Landroid/support/v4/app/g;->alk()Landroid/support/v4/app/aW;

    move-result-object v0

    .line 3450
    instance-of v1, v0, Landroid/support/v4/app/aR;

    if-eqz v1, :cond_0

    .line 3451
    check-cast v0, Landroid/support/v4/app/aR;

    .line 3452
    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/support/v4/app/aR;->aqR(Landroid/support/v4/app/g;Landroid/view/View;Landroid/os/Bundle;Z)V

    goto :goto_0

    .line 3455
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/i;

    .line 3456
    if-nez p4, :cond_4

    .line 3457
    :cond_3
    iget-object v0, v0, Landroid/support/v4/a/i;->Xk:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/app/aX;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/support/v4/app/aX;->arw(Landroid/support/v4/app/aW;Landroid/support/v4/app/g;Landroid/view/View;Landroid/os/Bundle;)V

    goto :goto_1

    .line 3456
    :cond_4
    iget-object v1, v0, Landroid/support/v4/a/i;->Xl:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1
.end method

.method public aqS(Ljava/lang/String;)Landroid/support/v4/app/g;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2009
    if-nez p1, :cond_2

    .line 2018
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/aR;->adO:Landroid/util/SparseArray;

    if-nez v0, :cond_5

    .line 2027
    :cond_1
    return-object v3

    .line 2011
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/aR;->adx:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 2012
    iget-object v0, p0, Landroid/support/v4/app/aR;->adx:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/g;

    .line 2013
    if-nez v0, :cond_4

    .line 2011
    :cond_3
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 2013
    :cond_4
    iget-object v2, v0, Landroid/support/v4/app/g;->Yw:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2014
    return-object v0

    .line 2018
    :cond_5
    if-eqz p1, :cond_1

    .line 2020
    iget-object v0, p0, Landroid/support/v4/app/aR;->adO:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_1

    .line 2021
    iget-object v0, p0, Landroid/support/v4/app/aR;->adO:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/g;

    .line 2022
    if-nez v0, :cond_7

    .line 2020
    :cond_6
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 2022
    :cond_7
    iget-object v2, v0, Landroid/support/v4/app/g;->Yw:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2023
    return-object v0
.end method

.method public aqT()Z
    .locals 1

    .prologue
    .line 2055
    iget-boolean v0, p0, Landroid/support/v4/app/aR;->adD:Z

    return v0
.end method

.method aqU(Landroid/support/v4/app/g;Z)V
    .locals 3

    .prologue
    .line 3508
    iget-object v0, p0, Landroid/support/v4/app/aR;->adq:Landroid/support/v4/app/g;

    if-nez v0, :cond_1

    .line 3515
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/aR;->adJ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3520
    return-void

    .line 3509
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/aR;->adq:Landroid/support/v4/app/g;

    invoke-virtual {v0}, Landroid/support/v4/app/g;->alk()Landroid/support/v4/app/aW;

    move-result-object v0

    .line 3510
    instance-of v1, v0, Landroid/support/v4/app/aR;

    if-eqz v1, :cond_0

    .line 3511
    check-cast v0, Landroid/support/v4/app/aR;

    .line 3512
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/aR;->aqU(Landroid/support/v4/app/g;Z)V

    goto :goto_0

    .line 3515
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/i;

    .line 3516
    if-nez p2, :cond_4

    .line 3517
    :cond_3
    iget-object v0, v0, Landroid/support/v4/a/i;->Xk:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/app/aX;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/app/aX;->arx(Landroid/support/v4/app/aW;Landroid/support/v4/app/g;)V

    goto :goto_1

    .line 3516
    :cond_4
    iget-object v1, v0, Landroid/support/v4/a/i;->Xl:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1
.end method

.method public aqV()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 3153
    iput-object v1, p0, Landroid/support/v4/app/aR;->ady:Landroid/support/v4/app/ax;

    .line 3154
    iput-boolean v0, p0, Landroid/support/v4/app/aR;->adD:Z

    .line 3155
    iget-object v1, p0, Landroid/support/v4/app/aR;->adx:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    .line 3156
    :goto_0
    if-lt v1, v2, :cond_0

    .line 3162
    return-void

    .line 3157
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/aR;->adx:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/g;

    .line 3158
    if-nez v0, :cond_1

    .line 3156
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 3159
    :cond_1
    invoke-virtual {v0}, Landroid/support/v4/app/g;->akZ()V

    goto :goto_1
.end method

.method aqW(Landroid/support/v4/app/g;Landroid/os/Bundle;Z)V
    .locals 3

    .prologue
    .line 3432
    iget-object v0, p0, Landroid/support/v4/app/aR;->adq:Landroid/support/v4/app/g;

    if-nez v0, :cond_1

    .line 3439
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/aR;->adJ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3444
    return-void

    .line 3433
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/aR;->adq:Landroid/support/v4/app/g;

    invoke-virtual {v0}, Landroid/support/v4/app/g;->alk()Landroid/support/v4/app/aW;

    move-result-object v0

    .line 3434
    instance-of v1, v0, Landroid/support/v4/app/aR;

    if-eqz v1, :cond_0

    .line 3435
    check-cast v0, Landroid/support/v4/app/aR;

    .line 3436
    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v4/app/aR;->aqW(Landroid/support/v4/app/g;Landroid/os/Bundle;Z)V

    goto :goto_0

    .line 3439
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/i;

    .line 3440
    if-nez p3, :cond_4

    .line 3441
    :cond_3
    iget-object v0, v0, Landroid/support/v4/a/i;->Xk:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/app/aX;

    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v4/app/aX;->arH(Landroid/support/v4/app/aW;Landroid/support/v4/app/g;Landroid/os/Bundle;)V

    goto :goto_1

    .line 3440
    :cond_4
    iget-object v1, v0, Landroid/support/v4/a/i;->Xl:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1
.end method

.method aqY(Landroid/support/v4/app/g;Z)V
    .locals 3

    .prologue
    .line 3463
    iget-object v0, p0, Landroid/support/v4/app/aR;->adq:Landroid/support/v4/app/g;

    if-nez v0, :cond_1

    .line 3470
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/aR;->adJ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3475
    return-void

    .line 3464
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/aR;->adq:Landroid/support/v4/app/g;

    invoke-virtual {v0}, Landroid/support/v4/app/g;->alk()Landroid/support/v4/app/aW;

    move-result-object v0

    .line 3465
    instance-of v1, v0, Landroid/support/v4/app/aR;

    if-eqz v1, :cond_0

    .line 3466
    check-cast v0, Landroid/support/v4/app/aR;

    .line 3467
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/aR;->aqY(Landroid/support/v4/app/g;Z)V

    goto :goto_0

    .line 3470
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/i;

    .line 3471
    if-nez p2, :cond_4

    .line 3472
    :cond_3
    iget-object v0, v0, Landroid/support/v4/a/i;->Xk:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/app/aX;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/app/aX;->arI(Landroid/support/v4/app/aW;Landroid/support/v4/app/g;)V

    goto :goto_1

    .line 3471
    :cond_4
    iget-object v1, v0, Landroid/support/v4/a/i;->Xl:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1
.end method

.method aqZ(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2712
    iget-object v0, p0, Landroid/support/v4/app/aR;->adI:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 2715
    if-eqz p3, :cond_4

    .line 2723
    :cond_0
    const/4 v0, -0x1

    .line 2724
    if-eqz p3, :cond_6

    .line 2727
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/aR;->adI:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 2728
    :goto_0
    if-gez v1, :cond_7

    .line 2738
    :cond_2
    if-ltz v1, :cond_a

    .line 2741
    and-int/lit8 v0, p5, 0x1

    if-nez v0, :cond_b

    move v0, v1

    .line 2755
    :goto_1
    iget-object v1, p0, Landroid/support/v4/app/aR;->adI:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_11

    .line 2758
    iget-object v1, p0, Landroid/support/v4/app/aR;->adI:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_2
    add-int/lit8 v1, v1, -0x1

    if-gt v1, v0, :cond_12

    .line 2763
    :goto_3
    return v4

    .line 2713
    :cond_3
    return v3

    .line 2715
    :cond_4
    if-gez p4, :cond_0

    and-int/lit8 v0, p5, 0x1

    if-nez v0, :cond_0

    .line 2716
    iget-object v0, p0, Landroid/support/v4/app/aR;->adI:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 2717
    if-ltz v0, :cond_5

    .line 2720
    iget-object v1, p0, Landroid/support/v4/app/aR;->adI:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2721
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 2718
    :cond_5
    return v3

    .line 2724
    :cond_6
    if-gez p4, :cond_1

    goto :goto_1

    .line 2729
    :cond_7
    iget-object v0, p0, Landroid/support/v4/app/aR;->adI:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/V;

    .line 2730
    if-nez p3, :cond_8

    .line 2733
    :goto_4
    if-gez p4, :cond_9

    .line 2736
    :goto_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2730
    :cond_8
    invoke-virtual {v0}, Landroid/support/v4/app/V;->ant()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_4

    .line 2733
    :cond_9
    iget v0, v0, Landroid/support/v4/app/V;->aaq:I

    if-eq p4, v0, :cond_2

    goto :goto_5

    .line 2739
    :cond_a
    return v3

    .line 2742
    :cond_b
    add-int/lit8 v1, v1, -0x1

    .line 2744
    :goto_6
    if-gez v1, :cond_c

    move v0, v1

    goto :goto_1

    .line 2745
    :cond_c
    iget-object v0, p0, Landroid/support/v4/app/aR;->adI:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/V;

    .line 2746
    if-nez p3, :cond_e

    :cond_d
    if-gez p4, :cond_10

    :goto_7
    move v0, v1

    goto :goto_1

    :cond_e
    invoke-virtual {v0}, Landroid/support/v4/app/V;->ant()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2748
    :cond_f
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 2746
    :cond_10
    iget v0, v0, Landroid/support/v4/app/V;->aaq:I

    if-eq p4, v0, :cond_f

    goto :goto_7

    .line 2756
    :cond_11
    return v3

    .line 2759
    :cond_12
    iget-object v2, p0, Landroid/support/v4/app/aR;->adI:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2760
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2
.end method

.method public aqa()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2223
    invoke-direct {p0, v1}, Landroid/support/v4/app/aR;->apN(Z)V

    .line 2226
    :goto_0
    iget-object v2, p0, Landroid/support/v4/app/aR;->adK:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/support/v4/app/aR;->adH:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v3}, Landroid/support/v4/app/aR;->apE(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2236
    invoke-virtual {p0}, Landroid/support/v4/app/aR;->apZ()V

    .line 2237
    invoke-direct {p0}, Landroid/support/v4/app/aR;->apt()V

    .line 2239
    return v0

    .line 2227
    :cond_0
    iput-boolean v1, p0, Landroid/support/v4/app/aR;->adC:Z

    .line 2229
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/aR;->adK:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v4/app/aR;->adH:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v2}, Landroid/support/v4/app/aR;->apP(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2231
    invoke-direct {p0}, Landroid/support/v4/app/aR;->aqy()V

    move v0, v1

    .line 2233
    goto :goto_0

    .line 2231
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroid/support/v4/app/aR;->aqy()V

    throw v0
.end method

.method aqb(Landroid/support/v4/app/g;Z)V
    .locals 3

    .prologue
    .line 3538
    iget-object v0, p0, Landroid/support/v4/app/aR;->adq:Landroid/support/v4/app/g;

    if-nez v0, :cond_1

    .line 3545
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/aR;->adJ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3550
    return-void

    .line 3539
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/aR;->adq:Landroid/support/v4/app/g;

    invoke-virtual {v0}, Landroid/support/v4/app/g;->alk()Landroid/support/v4/app/aW;

    move-result-object v0

    .line 3540
    instance-of v1, v0, Landroid/support/v4/app/aR;

    if-eqz v1, :cond_0

    .line 3541
    check-cast v0, Landroid/support/v4/app/aR;

    .line 3542
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/aR;->aqb(Landroid/support/v4/app/g;Z)V

    goto :goto_0

    .line 3545
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/i;

    .line 3546
    if-nez p2, :cond_4

    .line 3547
    :cond_3
    iget-object v0, v0, Landroid/support/v4/a/i;->Xk:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/app/aX;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/app/aX;->arC(Landroid/support/v4/app/aW;Landroid/support/v4/app/g;)V

    goto :goto_1

    .line 3546
    :cond_4
    iget-object v1, v0, Landroid/support/v4/a/i;->Xl:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1
.end method

.method aqc(Landroid/support/v4/app/g;)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1670
    iget-object v0, p1, Landroid/support/v4/app/g;->mView:Landroid/view/View;

    if-nez v0, :cond_2

    .line 1715
    :cond_0
    :goto_0
    iget-boolean v0, p1, Landroid/support/v4/app/g;->XW:Z

    if-nez v0, :cond_b

    .line 1718
    :cond_1
    :goto_1
    iput-boolean v1, p1, Landroid/support/v4/app/g;->Yo:Z

    .line 1719
    iget-boolean v0, p1, Landroid/support/v4/app/g;->YI:Z

    invoke-virtual {p1, v0}, Landroid/support/v4/app/g;->alf(Z)V

    .line 1720
    return-void

    .line 1671
    :cond_2
    invoke-virtual {p1}, Landroid/support/v4/app/g;->ajY()I

    move-result v3

    iget-boolean v0, p1, Landroid/support/v4/app/g;->YI:Z

    if-eqz v0, :cond_5

    move v0, v1

    .line 1672
    :goto_2
    invoke-virtual {p1}, Landroid/support/v4/app/g;->aka()I

    move-result v4

    .line 1671
    invoke-virtual {p0, p1, v3, v0, v4}, Landroid/support/v4/app/aR;->apW(Landroid/support/v4/app/g;IZI)Landroid/support/v4/app/C;

    move-result-object v0

    .line 1673
    if-nez v0, :cond_6

    .line 1701
    :cond_3
    if-nez v0, :cond_9

    .line 1706
    :goto_3
    iget-boolean v0, p1, Landroid/support/v4/app/g;->YI:Z

    if-nez v0, :cond_a

    :cond_4
    move v0, v1

    .line 1709
    :goto_4
    iget-object v3, p1, Landroid/support/v4/app/g;->mView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1710
    invoke-virtual {p1}, Landroid/support/v4/app/g;->ajK()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1711
    invoke-virtual {p1, v1}, Landroid/support/v4/app/g;->akJ(Z)V

    goto :goto_0

    :cond_5
    move v0, v2

    .line 1671
    goto :goto_2

    .line 1673
    :cond_6
    iget-object v3, v0, Landroid/support/v4/app/C;->ZD:Landroid/animation/Animator;

    if-eqz v3, :cond_3

    .line 1674
    iget-object v3, v0, Landroid/support/v4/app/C;->ZD:Landroid/animation/Animator;

    iget-object v4, p1, Landroid/support/v4/app/g;->mView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1675
    iget-boolean v3, p1, Landroid/support/v4/app/g;->YI:Z

    if-nez v3, :cond_7

    .line 1696
    iget-object v3, p1, Landroid/support/v4/app/g;->mView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1698
    :goto_5
    iget-object v3, p1, Landroid/support/v4/app/g;->mView:Landroid/view/View;

    invoke-static {v3, v0}, Landroid/support/v4/app/aR;->aqC(Landroid/view/View;Landroid/support/v4/app/C;)V

    .line 1699
    iget-object v0, v0, Landroid/support/v4/app/C;->ZD:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 1676
    :cond_7
    invoke-virtual {p1}, Landroid/support/v4/app/g;->ajK()Z

    move-result v3

    if-nez v3, :cond_8

    .line 1679
    iget-object v3, p1, Landroid/support/v4/app/g;->XT:Landroid/view/ViewGroup;

    .line 1680
    iget-object v4, p1, Landroid/support/v4/app/g;->mView:Landroid/view/View;

    .line 1681
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 1684
    iget-object v5, v0, Landroid/support/v4/app/C;->ZD:Landroid/animation/Animator;

    new-instance v6, Landroid/support/v4/app/aG;

    invoke-direct {v6, p0, v3, v4, p1}, Landroid/support/v4/app/aG;-><init>(Landroid/support/v4/app/aR;Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/v4/app/g;)V

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_5

    .line 1677
    :cond_8
    invoke-virtual {p1, v1}, Landroid/support/v4/app/g;->akJ(Z)V

    goto :goto_5

    .line 1702
    :cond_9
    iget-object v3, p1, Landroid/support/v4/app/g;->mView:Landroid/view/View;

    invoke-static {v3, v0}, Landroid/support/v4/app/aR;->aqC(Landroid/view/View;Landroid/support/v4/app/C;)V

    .line 1703
    iget-object v3, p1, Landroid/support/v4/app/g;->mView:Landroid/view/View;

    iget-object v4, v0, Landroid/support/v4/app/C;->ZE:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1704
    iget-object v0, v0, Landroid/support/v4/app/C;->ZE:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    goto :goto_3

    .line 1706
    :cond_a
    invoke-virtual {p1}, Landroid/support/v4/app/g;->ajK()Z

    move-result v0

    if-nez v0, :cond_4

    const/16 v0, 0x8

    goto :goto_4

    .line 1715
    :cond_b
    iget-boolean v0, p1, Landroid/support/v4/app/g;->Ye:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Landroid/support/v4/app/g;->YH:Z

    if-eqz v0, :cond_1

    .line 1716
    iput-boolean v2, p0, Landroid/support/v4/app/aR;->adw:Z

    goto/16 :goto_1
.end method

.method public aqd(Landroid/view/Menu;)V
    .locals 2

    .prologue
    .line 3328
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/aR;->adx:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 3334
    return-void

    .line 3329
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/aR;->adx:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/g;

    .line 3330
    if-nez v0, :cond_1

    .line 3328
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 3331
    :cond_1
    invoke-virtual {v0, p1}, Landroid/support/v4/app/g;->ajU(Landroid/view/Menu;)V

    goto :goto_1
.end method

.method public aqe(Landroid/support/v4/app/g;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1902
    sget-boolean v0, Landroid/support/v4/app/aR;->DEBUG:Z

    if-nez v0, :cond_2

    .line 1903
    :goto_0
    invoke-virtual {p1}, Landroid/support/v4/app/g;->akk()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 1904
    :goto_1
    iget-boolean v3, p1, Landroid/support/v4/app/g;->YB:Z

    if-nez v3, :cond_4

    .line 1905
    :cond_0
    iget-object v3, p0, Landroid/support/v4/app/aR;->adx:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1906
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/aR;->adx:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1907
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1908
    iget-boolean v0, p1, Landroid/support/v4/app/g;->Ye:Z

    if-nez v0, :cond_5

    .line 1911
    :cond_1
    :goto_2
    iput-boolean v1, p1, Landroid/support/v4/app/g;->XW:Z

    .line 1912
    iput-boolean v2, p1, Landroid/support/v4/app/g;->Yx:Z

    .line 1914
    :goto_3
    return-void

    .line 1902
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "remove: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " nesting="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p1, Landroid/support/v4/app/g;->Yl:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "FragmentManager"

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move v0, v2

    .line 1903
    goto :goto_1

    .line 1904
    :cond_4
    if-nez v0, :cond_0

    goto :goto_3

    .line 1907
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1908
    :cond_5
    iget-boolean v0, p1, Landroid/support/v4/app/g;->YH:Z

    if-eqz v0, :cond_1

    .line 1909
    iput-boolean v2, p0, Landroid/support/v4/app/aR;->adw:Z

    goto :goto_2
.end method

.method public aqh()Landroid/support/v4/app/z;
    .locals 1

    .prologue
    .line 776
    new-instance v0, Landroid/support/v4/app/V;

    invoke-direct {v0, p0}, Landroid/support/v4/app/V;-><init>(Landroid/support/v4/app/aR;)V

    return-object v0
.end method

.method public aqi(Landroid/support/v4/app/g;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1949
    sget-boolean v0, Landroid/support/v4/app/aR;->DEBUG:Z

    if-nez v0, :cond_1

    .line 1950
    :goto_0
    iget-boolean v0, p1, Landroid/support/v4/app/g;->YB:Z

    if-eqz v0, :cond_2

    .line 1964
    :cond_0
    :goto_1
    return-void

    .line 1949
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "detach: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1951
    :cond_2
    iput-boolean v3, p1, Landroid/support/v4/app/g;->YB:Z

    .line 1952
    iget-boolean v0, p1, Landroid/support/v4/app/g;->XW:Z

    if-eqz v0, :cond_0

    .line 1954
    sget-boolean v0, Landroid/support/v4/app/aR;->DEBUG:Z

    if-nez v0, :cond_4

    .line 1955
    :goto_2
    iget-object v1, p0, Landroid/support/v4/app/aR;->adx:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1956
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/aR;->adx:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1957
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1958
    iget-boolean v0, p1, Landroid/support/v4/app/g;->Ye:Z

    if-nez v0, :cond_5

    .line 1961
    :cond_3
    :goto_3
    iput-boolean v2, p1, Landroid/support/v4/app/g;->XW:Z

    goto :goto_1

    .line 1954
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "remove from detach: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1957
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1958
    :cond_5
    iget-boolean v0, p1, Landroid/support/v4/app/g;->YH:Z

    if-eqz v0, :cond_3

    .line 1959
    iput-boolean v3, p0, Landroid/support/v4/app/aR;->adw:Z

    goto :goto_3
.end method

.method public aql(I)Landroid/support/v4/app/g;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1989
    iget-object v0, p0, Landroid/support/v4/app/aR;->adx:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_1

    .line 1995
    iget-object v0, p0, Landroid/support/v4/app/aR;->adO:Landroid/util/SparseArray;

    if-nez v0, :cond_4

    .line 2004
    :cond_0
    return-object v3

    .line 1990
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/aR;->adx:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/g;

    .line 1991
    if-nez v0, :cond_3

    .line 1989
    :cond_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1991
    :cond_3
    iget v2, v0, Landroid/support/v4/app/g;->Yh:I

    if-ne v2, p1, :cond_2

    .line 1992
    return-object v0

    .line 1997
    :cond_4
    iget-object v0, p0, Landroid/support/v4/app/aR;->adO:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_0

    .line 1998
    iget-object v0, p0, Landroid/support/v4/app/aR;->adO:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/g;

    .line 1999
    if-nez v0, :cond_6

    .line 1997
    :cond_5
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 1999
    :cond_6
    iget v2, v0, Landroid/support/v4/app/g;->Yh:I

    if-ne v2, p1, :cond_5

    .line 2000
    return-object v0
.end method

.method public aqm()V
    .locals 1

    .prologue
    .line 3185
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/support/v4/app/aR;->apU(I)V

    .line 3186
    return-void
.end method

.method aqo(Landroid/support/v4/app/g;Z)V
    .locals 3

    .prologue
    .line 3568
    iget-object v0, p0, Landroid/support/v4/app/aR;->adq:Landroid/support/v4/app/g;

    if-nez v0, :cond_1

    .line 3575
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/aR;->adJ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3580
    return-void

    .line 3569
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/aR;->adq:Landroid/support/v4/app/g;

    invoke-virtual {v0}, Landroid/support/v4/app/g;->alk()Landroid/support/v4/app/aW;

    move-result-object v0

    .line 3570
    instance-of v1, v0, Landroid/support/v4/app/aR;

    if-eqz v1, :cond_0

    .line 3571
    check-cast v0, Landroid/support/v4/app/aR;

    .line 3572
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/aR;->aqo(Landroid/support/v4/app/g;Z)V

    goto :goto_0

    .line 3575
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/i;

    .line 3576
    if-nez p2, :cond_4

    .line 3577
    :cond_3
    iget-object v0, v0, Landroid/support/v4/a/i;->Xk:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/app/aX;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/app/aX;->arz(Landroid/support/v4/app/aW;Landroid/support/v4/app/g;)V

    goto :goto_1

    .line 3576
    :cond_4
    iget-object v1, v0, Landroid/support/v4/a/i;->Xl:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1
.end method

.method aqp(Landroid/support/v4/app/g;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2841
    iget-object v0, p1, Landroid/support/v4/app/g;->Yv:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2844
    iget-object v0, p0, Landroid/support/v4/app/aR;->adS:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    .line 2847
    iget-object v0, p0, Landroid/support/v4/app/aR;->adS:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2849
    :goto_0
    iget-object v0, p1, Landroid/support/v4/app/g;->Yv:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/app/aR;->adS:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 2850
    iget-object v0, p0, Landroid/support/v4/app/aR;->adS:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 2854
    :goto_1
    return-void

    .line 2842
    :cond_0
    return-void

    .line 2845
    :cond_1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/aR;->adS:Landroid/util/SparseArray;

    goto :goto_0

    .line 2851
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/aR;->adS:Landroid/util/SparseArray;

    iput-object v0, p1, Landroid/support/v4/app/g;->Yk:Landroid/util/SparseArray;

    .line 2852
    iput-object v2, p0, Landroid/support/v4/app/aR;->adS:Landroid/util/SparseArray;

    goto :goto_1
.end method

.method public aqq(Landroid/support/v4/app/g;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1878
    sget-boolean v0, Landroid/support/v4/app/aR;->DEBUG:Z

    if-nez v0, :cond_1

    .line 1879
    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v4/app/aR;->aqu(Landroid/support/v4/app/g;)V

    .line 1880
    iget-boolean v0, p1, Landroid/support/v4/app/g;->YB:Z

    if-eqz v0, :cond_2

    .line 1899
    :cond_0
    :goto_1
    return-void

    .line 1878
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "add: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1881
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/aR;->adx:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1884
    iget-object v1, p0, Landroid/support/v4/app/aR;->adx:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1885
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/aR;->adx:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1886
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1887
    iput-boolean v3, p1, Landroid/support/v4/app/g;->XW:Z

    .line 1888
    iput-boolean v2, p1, Landroid/support/v4/app/g;->Yx:Z

    .line 1889
    iget-object v0, p1, Landroid/support/v4/app/g;->mView:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 1892
    :goto_2
    iget-boolean v0, p1, Landroid/support/v4/app/g;->Ye:Z

    if-nez v0, :cond_6

    .line 1895
    :cond_3
    :goto_3
    if-eqz p2, :cond_0

    .line 1896
    invoke-virtual {p0, p1}, Landroid/support/v4/app/aR;->aqv(Landroid/support/v4/app/g;)V

    goto :goto_1

    .line 1882
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment already added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1886
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1890
    :cond_5
    iput-boolean v2, p1, Landroid/support/v4/app/g;->Yo:Z

    goto :goto_2

    .line 1892
    :cond_6
    iget-boolean v0, p1, Landroid/support/v4/app/g;->YH:Z

    if-eqz v0, :cond_3

    .line 1893
    iput-boolean v3, p0, Landroid/support/v4/app/aR;->adw:Z

    goto :goto_3
.end method

.method public aqr(Landroid/support/v4/app/g;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1221
    iget-boolean v0, p1, Landroid/support/v4/app/g;->XX:Z

    if-nez v0, :cond_0

    .line 1230
    :goto_0
    return-void

    .line 1222
    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/app/aR;->adC:Z

    if-nez v0, :cond_1

    .line 1227
    iput-boolean v3, p1, Landroid/support/v4/app/g;->XX:Z

    .line 1228
    iget v2, p0, Landroid/support/v4/app/aR;->adP:I

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/aR;->apw(Landroid/support/v4/app/g;IIIZ)V

    goto :goto_0

    .line 1224
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/aR;->adU:Z

    .line 1225
    return-void
.end method

.method public aqt(Landroid/support/v4/app/r;Landroid/support/v4/app/ac;Landroid/support/v4/app/g;)V
    .locals 2

    .prologue
    .line 3146
    iget-object v0, p0, Landroid/support/v4/app/aR;->ads:Landroid/support/v4/app/r;

    if-nez v0, :cond_0

    .line 3147
    iput-object p1, p0, Landroid/support/v4/app/aR;->ads:Landroid/support/v4/app/r;

    .line 3148
    iput-object p2, p0, Landroid/support/v4/app/aR;->adB:Landroid/support/v4/app/ac;

    .line 3149
    iput-object p3, p0, Landroid/support/v4/app/aR;->adq:Landroid/support/v4/app/g;

    .line 3150
    return-void

    .line 3146
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already attached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method aqu(Landroid/support/v4/app/g;)V
    .locals 2

    .prologue
    .line 1851
    iget v0, p1, Landroid/support/v4/app/g;->Yb:I

    if-gez v0, :cond_0

    .line 1855
    iget v0, p0, Landroid/support/v4/app/aR;->adN:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/support/v4/app/aR;->adN:I

    iget-object v1, p0, Landroid/support/v4/app/aR;->adq:Landroid/support/v4/app/g;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/g;->akL(ILandroid/support/v4/app/g;)V

    .line 1856
    iget-object v0, p0, Landroid/support/v4/app/aR;->adO:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    .line 1859
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/aR;->adO:Landroid/util/SparseArray;

    iget v1, p1, Landroid/support/v4/app/g;->Yb:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1860
    sget-boolean v0, Landroid/support/v4/app/aR;->DEBUG:Z

    if-nez v0, :cond_2

    .line 1861
    :goto_1
    return-void

    .line 1852
    :cond_0
    return-void

    .line 1857
    :cond_1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/aR;->adO:Landroid/util/SparseArray;

    goto :goto_0

    .line 1860
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Allocated fragment index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method aqv(Landroid/support/v4/app/g;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1640
    iget v2, p0, Landroid/support/v4/app/aR;->adP:I

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/aR;->apw(Landroid/support/v4/app/g;IIIZ)V

    .line 1641
    return-void
.end method

.method public aqw()V
    .locals 1

    .prologue
    .line 3170
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/aR;->adD:Z

    .line 3171
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/support/v4/app/aR;->apU(I)V

    .line 3172
    return-void
.end method

.method ara(I)Z
    .locals 1

    .prologue
    .line 1278
    iget v0, p0, Landroid/support/v4/app/aR;->adP:I

    if-ge v0, p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method arb(Landroid/support/v4/app/g;Landroid/os/Bundle;Z)V
    .locals 3

    .prologue
    .line 3416
    iget-object v0, p0, Landroid/support/v4/app/aR;->adq:Landroid/support/v4/app/g;

    if-nez v0, :cond_1

    .line 3423
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/aR;->adJ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3428
    return-void

    .line 3417
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/aR;->adq:Landroid/support/v4/app/g;

    invoke-virtual {v0}, Landroid/support/v4/app/g;->alk()Landroid/support/v4/app/aW;

    move-result-object v0

    .line 3418
    instance-of v1, v0, Landroid/support/v4/app/aR;

    if-eqz v1, :cond_0

    .line 3419
    check-cast v0, Landroid/support/v4/app/aR;

    .line 3420
    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v4/app/aR;->arb(Landroid/support/v4/app/g;Landroid/os/Bundle;Z)V

    goto :goto_0

    .line 3423
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/i;

    .line 3424
    if-nez p3, :cond_4

    .line 3425
    :cond_3
    iget-object v0, v0, Landroid/support/v4/a/i;->Xk:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/app/aX;

    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v4/app/aX;->arD(Landroid/support/v4/app/aW;Landroid/support/v4/app/g;Landroid/os/Bundle;)V

    goto :goto_1

    .line 3424
    :cond_4
    iget-object v1, v0, Landroid/support/v4/a/i;->Xl:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1
.end method

.method arc(Landroid/support/v4/app/g;Z)V
    .locals 3

    .prologue
    .line 3478
    iget-object v0, p0, Landroid/support/v4/app/aR;->adq:Landroid/support/v4/app/g;

    if-nez v0, :cond_1

    .line 3485
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/aR;->adJ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3490
    return-void

    .line 3479
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/aR;->adq:Landroid/support/v4/app/g;

    invoke-virtual {v0}, Landroid/support/v4/app/g;->alk()Landroid/support/v4/app/aW;

    move-result-object v0

    .line 3480
    instance-of v1, v0, Landroid/support/v4/app/aR;

    if-eqz v1, :cond_0

    .line 3481
    check-cast v0, Landroid/support/v4/app/aR;

    .line 3482
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/aR;->arc(Landroid/support/v4/app/g;Z)V

    goto :goto_0

    .line 3485
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/i;

    .line 3486
    if-nez p2, :cond_4

    .line 3487
    :cond_3
    iget-object v0, v0, Landroid/support/v4/a/i;->Xk:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/app/aX;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/app/aX;->arv(Landroid/support/v4/app/aW;Landroid/support/v4/app/g;)V

    goto :goto_1

    .line 3486
    :cond_4
    iget-object v1, v0, Landroid/support/v4/a/i;->Xl:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1
.end method

.method public arf(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/g;)V
    .locals 3

    .prologue
    .line 889
    iget v0, p3, Landroid/support/v4/app/g;->Yb:I

    if-ltz v0, :cond_0

    .line 893
    :goto_0
    iget v0, p3, Landroid/support/v4/app/g;->Yb:I

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 894
    return-void

    .line 890
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not currently in the FragmentManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/support/v4/app/aR;->ard(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public arg()V
    .locals 1

    .prologue
    .line 3180
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/aR;->adD:Z

    .line 3181
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/support/v4/app/aR;->apU(I)V

    .line 3182
    return-void
.end method

.method public arh(Z)V
    .locals 2

    .prologue
    .line 3225
    iget-object v0, p0, Landroid/support/v4/app/aR;->adx:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_0

    .line 3231
    return-void

    .line 3226
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/aR;->adx:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/g;

    .line 3227
    if-nez v0, :cond_1

    .line 3225
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 3228
    :cond_1
    invoke-virtual {v0, p1}, Landroid/support/v4/app/g;->akl(Z)V

    goto :goto_1
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 985
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "    "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 988
    iget-object v0, p0, Landroid/support/v4/app/aR;->adO:Landroid/util/SparseArray;

    if-nez v0, :cond_7

    .line 1005
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/aR;->adx:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1006
    if-gtz v4, :cond_9

    .line 1018
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/aR;->adE:Ljava/util/ArrayList;

    if-nez v0, :cond_a

    .line 1030
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/aR;->adI:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 1043
    :cond_3
    monitor-enter p0

    .line 1044
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/aR;->adF:Ljava/util/ArrayList;

    if-nez v0, :cond_c

    .line 1056
    :cond_4
    iget-object v0, p0, Landroid/support/v4/app/aR;->adp:Ljava/util/ArrayList;

    if-nez v0, :cond_d

    .line 1060
    :cond_5
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1062
    iget-object v0, p0, Landroid/support/v4/app/aR;->adQ:Ljava/util/ArrayList;

    if-nez v0, :cond_e

    .line 1074
    :cond_6
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "FragmentManager misc state:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1075
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "  mHost="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/aR;->ads:Landroid/support/v4/app/r;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1076
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "  mContainer="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/aR;->adB:Landroid/support/v4/app/ac;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1077
    iget-object v0, p0, Landroid/support/v4/app/aR;->adq:Landroid/support/v4/app/g;

    if-nez v0, :cond_f

    .line 1080
    :goto_1
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "  mCurState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/aR;->adP:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1081
    const-string/jumbo v0, " mStateSaved="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/aR;->adD:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1082
    const-string/jumbo v0, " mDestroyed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/aR;->mDestroyed:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1083
    iget-boolean v0, p0, Landroid/support/v4/app/aR;->adw:Z

    if-nez v0, :cond_10

    .line 1087
    :goto_2
    iget-object v0, p0, Landroid/support/v4/app/aR;->adu:Ljava/lang/String;

    if-nez v0, :cond_11

    .line 1091
    :goto_3
    return-void

    .line 989
    :cond_7
    iget-object v0, p0, Landroid/support/v4/app/aR;->adO:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 990
    if-lez v4, :cond_0

    .line 991
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Active Fragments in "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 992
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 993
    const-string/jumbo v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    .line 994
    :goto_4
    if-ge v2, v4, :cond_0

    .line 995
    iget-object v0, p0, Landroid/support/v4/app/aR;->adO:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/g;

    .line 996
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 997
    const-string/jumbo v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 998
    if-nez v0, :cond_8

    .line 994
    :goto_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    .line 999
    :cond_8
    invoke-virtual {v0, v3, p2, p3, p4}, Landroid/support/v4/app/g;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_5

    .line 1007
    :cond_9
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Added Fragments:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    .line 1008
    :goto_6
    if-ge v2, v4, :cond_1

    .line 1009
    iget-object v0, p0, Landroid/support/v4/app/aR;->adx:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/g;

    .line 1010
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1011
    const-string/jumbo v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1012
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1013
    const-string/jumbo v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1014
    invoke-virtual {v0}, Landroid/support/v4/app/g;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1008
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6

    .line 1019
    :cond_a
    iget-object v0, p0, Landroid/support/v4/app/aR;->adE:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1020
    if-lez v4, :cond_2

    .line 1021
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Fragments Created Menus:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    .line 1022
    :goto_7
    if-ge v2, v4, :cond_2

    .line 1023
    iget-object v0, p0, Landroid/support/v4/app/aR;->adE:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/g;

    .line 1024
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1025
    const-string/jumbo v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/g;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1022
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_7

    .line 1031
    :cond_b
    iget-object v0, p0, Landroid/support/v4/app/aR;->adI:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1032
    if-lez v4, :cond_3

    .line 1033
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Back Stack:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    .line 1034
    :goto_8
    if-ge v2, v4, :cond_3

    .line 1035
    iget-object v0, p0, Landroid/support/v4/app/aR;->adI:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/V;

    .line 1036
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1037
    const-string/jumbo v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/V;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1038
    invoke-virtual {v0, v3, p2, p3, p4}, Landroid/support/v4/app/V;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1034
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_8

    .line 1045
    :cond_c
    :try_start_1
    iget-object v0, p0, Landroid/support/v4/app/aR;->adF:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1046
    if-lez v3, :cond_4

    .line 1047
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Back Stack Indices:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    .line 1048
    :goto_9
    if-ge v2, v3, :cond_4

    .line 1049
    iget-object v0, p0, Landroid/support/v4/app/aR;->adF:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/V;

    .line 1050
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "  #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1051
    const-string/jumbo v4, ": "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1048
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_9

    .line 1056
    :cond_d
    iget-object v0, p0, Landroid/support/v4/app/aR;->adp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 1057
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAvailBackStackIndices: "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1058
    iget-object v0, p0, Landroid/support/v4/app/aR;->adp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1060
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1063
    :cond_e
    iget-object v0, p0, Landroid/support/v4/app/aR;->adQ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1064
    if-lez v2, :cond_6

    .line 1065
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Pending Actions:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1066
    :goto_a
    if-ge v1, v2, :cond_6

    .line 1067
    iget-object v0, p0, Landroid/support/v4/app/aR;->adQ:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/aC;

    .line 1068
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1069
    const-string/jumbo v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1066
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    .line 1078
    :cond_f
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "  mParent="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/aR;->adq:Landroid/support/v4/app/g;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1084
    :cond_10
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "  mNeedMenuInvalidate="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1085
    iget-boolean v0, p0, Landroid/support/v4/app/aR;->adw:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    goto/16 :goto_2

    .line 1088
    :cond_11
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "  mNoTransactionsBecause="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1089
    iget-object v0, p0, Landroid/support/v4/app/aR;->adu:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 11

    .prologue
    const/4 v5, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 3624
    const-string/jumbo v0, "fragment"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3628
    const-string/jumbo v0, "class"

    invoke-interface {p4, v4, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3629
    sget-object v1, Landroid/support/v4/app/ad;->abO:[I

    invoke-virtual {p3, p4, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 3630
    if-eqz v0, :cond_5

    move-object v6, v0

    .line 3633
    :goto_0
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 3634
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 3635
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 3637
    iget-object v0, p0, Landroid/support/v4/app/aR;->ads:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v6}, Landroid/support/v4/app/g;->ajP(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3643
    if-nez p1, :cond_7

    move v0, v3

    .line 3644
    :goto_1
    if-eq v0, v5, :cond_8

    .line 3652
    :cond_0
    if-ne v7, v5, :cond_9

    move-object v1, v4

    .line 3653
    :goto_2
    if-eqz v1, :cond_a

    .line 3656
    :cond_1
    :goto_3
    if-eqz v1, :cond_b

    .line 3660
    :cond_2
    :goto_4
    sget-boolean v5, Landroid/support/v4/app/aR;->DEBUG:Z

    if-nez v5, :cond_c

    .line 3663
    :goto_5
    if-eqz v1, :cond_d

    .line 3675
    iget-boolean v4, v1, Landroid/support/v4/app/g;->Yi:Z

    if-nez v4, :cond_f

    .line 3685
    iput-boolean v2, v1, Landroid/support/v4/app/g;->Yi:Z

    .line 3686
    iget-object v0, p0, Landroid/support/v4/app/aR;->ads:Landroid/support/v4/app/r;

    iput-object v0, v1, Landroid/support/v4/app/g;->XU:Landroid/support/v4/app/r;

    .line 3690
    iget-boolean v0, v1, Landroid/support/v4/app/g;->XZ:Z

    if-eqz v0, :cond_10

    .line 3699
    :goto_6
    iget v0, p0, Landroid/support/v4/app/aR;->adP:I

    if-lt v0, v2, :cond_11

    .line 3702
    :cond_3
    invoke-virtual {p0, v1}, Landroid/support/v4/app/aR;->aqv(Landroid/support/v4/app/g;)V

    .line 3705
    :goto_7
    iget-object v0, v1, Landroid/support/v4/app/g;->mView:Landroid/view/View;

    if-eqz v0, :cond_12

    .line 3709
    if-nez v7, :cond_13

    .line 3712
    :goto_8
    iget-object v0, v1, Landroid/support/v4/app/g;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 3715
    :goto_9
    iget-object v0, v1, Landroid/support/v4/app/g;->mView:Landroid/view/View;

    return-object v0

    .line 3625
    :cond_4
    return-object v4

    .line 3631
    :cond_5
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_0

    .line 3640
    :cond_6
    return-object v4

    .line 3643
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    goto :goto_1

    .line 3644
    :cond_8
    if-ne v7, v5, :cond_0

    if-nez v8, :cond_0

    .line 3645
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": Must specify unique android:id, android:tag, or have a parent with an id for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3652
    :cond_9
    invoke-virtual {p0, v7}, Landroid/support/v4/app/aR;->aql(I)Landroid/support/v4/app/g;

    move-result-object v1

    goto :goto_2

    .line 3653
    :cond_a
    if-eqz v8, :cond_1

    .line 3654
    invoke-virtual {p0, v8}, Landroid/support/v4/app/aR;->aqS(Ljava/lang/String;)Landroid/support/v4/app/g;

    move-result-object v1

    goto :goto_3

    .line 3656
    :cond_b
    if-eq v0, v5, :cond_2

    .line 3657
    invoke-virtual {p0, v0}, Landroid/support/v4/app/aR;->aql(I)Landroid/support/v4/app/g;

    move-result-object v1

    goto :goto_4

    .line 3660
    :cond_c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onCreateView: id=0x"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v9, "FragmentManager"

    .line 3661
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v10, " fname="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v10, " existing="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3660
    invoke-static {v9, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 3664
    :cond_d
    iget-object v1, p0, Landroid/support/v4/app/aR;->adB:Landroid/support/v4/app/ac;

    invoke-virtual {v1, p3, v6, v4}, Landroid/support/v4/app/ac;->anU(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/g;

    move-result-object v4

    .line 3665
    iput-boolean v2, v4, Landroid/support/v4/app/g;->Ym:Z

    .line 3666
    if-nez v7, :cond_e

    move v1, v0

    :goto_a
    iput v1, v4, Landroid/support/v4/app/g;->Yh:I

    .line 3667
    iput v0, v4, Landroid/support/v4/app/g;->Yc:I

    .line 3668
    iput-object v8, v4, Landroid/support/v4/app/g;->Yw:Ljava/lang/String;

    .line 3669
    iput-boolean v2, v4, Landroid/support/v4/app/g;->Yi:Z

    .line 3670
    iput-object p0, v4, Landroid/support/v4/app/g;->Yg:Landroid/support/v4/app/aR;

    .line 3671
    iget-object v0, p0, Landroid/support/v4/app/aR;->ads:Landroid/support/v4/app/r;

    iput-object v0, v4, Landroid/support/v4/app/g;->XU:Landroid/support/v4/app/r;

    .line 3672
    iget-object v0, p0, Landroid/support/v4/app/aR;->ads:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, v4, Landroid/support/v4/app/g;->Ys:Landroid/os/Bundle;

    invoke-virtual {v4, v0, p4, v1}, Landroid/support/v4/app/g;->akC(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 3673
    invoke-virtual {p0, v4, v2}, Landroid/support/v4/app/aR;->aqq(Landroid/support/v4/app/g;Z)V

    move-object v1, v4

    goto/16 :goto_6

    :cond_e
    move v1, v7

    .line 3666
    goto :goto_a

    .line 3678
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": Duplicate id 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3679
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", or parent id 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3680
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " with another fragment for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3691
    :cond_10
    iget-object v0, p0, Landroid/support/v4/app/aR;->ads:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v4, v1, Landroid/support/v4/app/g;->Ys:Landroid/os/Bundle;

    invoke-virtual {v1, v0, p4, v4}, Landroid/support/v4/app/g;->akC(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    goto/16 :goto_6

    .line 3699
    :cond_11
    iget-boolean v0, v1, Landroid/support/v4/app/g;->Ym:Z

    if-eqz v0, :cond_3

    move-object v0, p0

    move v4, v3

    move v5, v3

    .line 3700
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/aR;->apw(Landroid/support/v4/app/g;IIIZ)V

    goto/16 :goto_7

    .line 3706
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not create a view."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3710
    :cond_13
    iget-object v0, v1, Landroid/support/v4/app/g;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setId(I)V

    goto/16 :goto_8

    .line 3713
    :cond_14
    iget-object v0, v1, Landroid/support/v4/app/g;->mView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_9
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 3720
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/support/v4/app/aR;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 970
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 971
    const-string/jumbo v1, "FragmentManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 972
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 973
    const-string/jumbo v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 974
    iget-object v1, p0, Landroid/support/v4/app/aR;->adq:Landroid/support/v4/app/g;

    if-nez v1, :cond_0

    .line 977
    iget-object v1, p0, Landroid/support/v4/app/aR;->ads:Landroid/support/v4/app/r;

    invoke-static {v1, v0}, Landroid/support/v4/a/k;->aix(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 979
    :goto_0
    const-string/jumbo v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 980
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 975
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/aR;->adq:Landroid/support/v4/app/g;

    invoke-static {v1, v0}, Landroid/support/v4/a/k;->aix(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    goto :goto_0
.end method
