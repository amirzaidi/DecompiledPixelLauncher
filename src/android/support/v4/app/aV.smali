.class final Landroid/support/v4/app/aV;
.super Landroid/support/v4/app/bb;
.source "SourceFile"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# static fields
.field static DEBUG:Z

.field static final acB:Landroid/view/animation/Interpolator;

.field static final acf:Landroid/view/animation/Interpolator;

.field static final acg:Landroid/view/animation/Interpolator;

.field static final acr:Landroid/view/animation/Interpolator;

.field static acx:Ljava/lang/reflect/Field;


# instance fields
.field abV:Ljava/util/ArrayList;

.field abW:Landroid/support/v4/app/e;

.field abX:Ljava/lang/Runnable;

.field abY:Landroid/support/v4/app/p;

.field abZ:Landroid/os/Bundle;

.field acA:Z

.field aca:Ljava/lang/String;

.field acb:Ljava/util/ArrayList;

.field acc:Z

.field acd:Ljava/util/ArrayList;

.field ace:Landroid/support/v4/app/az;

.field ach:Landroid/support/v4/app/ac;

.field aci:Z

.field acj:Z

.field ack:Ljava/util/ArrayList;

.field acl:Ljava/util/ArrayList;

.field acm:Ljava/util/ArrayList;

.field acn:Ljava/util/ArrayList;

.field aco:Ljava/util/ArrayList;

.field private acp:Ljava/util/concurrent/CopyOnWriteArrayList;

.field acq:Ljava/util/ArrayList;

.field acs:Landroid/support/v4/app/e;

.field act:I

.field acu:Landroid/util/SparseArray;

.field acv:I

.field acw:Ljava/util/ArrayList;

.field acy:Landroid/util/SparseArray;

.field acz:Ljava/util/ArrayList;

.field mDestroyed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/high16 v2, 0x40200000    # 2.5f

    const/high16 v1, 0x3fc00000    # 1.5f

    .line 642
    const/4 v0, 0x0

    sput-boolean v0, Landroid/support/v4/app/aV;->DEBUG:Z

    .line 673
    const/4 v0, 0x0

    sput-object v0, Landroid/support/v4/app/aV;->acx:Ljava/lang/reflect/Field;

    .line 1091
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/aV;->acf:Landroid/view/animation/Interpolator;

    .line 1092
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/aV;->acB:Landroid/view/animation/Interpolator;

    .line 1093
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/aV;->acr:Landroid/view/animation/Interpolator;

    .line 1094
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/aV;->acg:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 641
    invoke-direct {p0}, Landroid/support/v4/app/bb;-><init>()V

    .line 653
    iput v0, p0, Landroid/support/v4/app/aV;->act:I

    .line 667
    iput v0, p0, Landroid/support/v4/app/aV;->acv:I

    .line 687
    iput-object v1, p0, Landroid/support/v4/app/aV;->abZ:Landroid/os/Bundle;

    .line 688
    iput-object v1, p0, Landroid/support/v4/app/aV;->acy:Landroid/util/SparseArray;

    .line 696
    new-instance v0, Landroid/support/v4/app/I;

    invoke-direct {v0, p0}, Landroid/support/v4/app/I;-><init>(Landroid/support/v4/app/aV;)V

    iput-object v0, p0, Landroid/support/v4/app/aV;->abX:Ljava/lang/Runnable;

    .line 4042
    return-void
.end method

.method private aoD(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2673
    monitor-enter p0

    .line 2674
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/app/aV;->acw:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 2675
    :cond_0
    monitor-exit p0

    return v0

    .line 2674
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/aV;->acw:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 2678
    iget-object v1, p0, Landroid/support/v4/app/aV;->acw:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v0

    move v2, v0

    .line 2679
    :goto_0
    if-lt v1, v3, :cond_2

    .line 2682
    iget-object v0, p0, Landroid/support/v4/app/aV;->acw:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2683
    iget-object v0, p0, Landroid/support/v4/app/aV;->abY:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/aV;->abX:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2684
    monitor-exit p0

    .line 2685
    return v2

    .line 2680
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/aV;->acw:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/aF;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/app/aF;->akA(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v0

    or-int/2addr v2, v0

    .line 2679
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2684
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static aoH(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2579
    :goto_0
    if-lt p2, p3, :cond_0

    .line 2593
    return-void

    .line 2580
    :cond_0
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/U;

    .line 2581
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 2582
    if-nez v1, :cond_1

    .line 2589
    invoke-virtual {v0, v3}, Landroid/support/v4/app/U;->amf(I)V

    .line 2590
    invoke-virtual {v0}, Landroid/support/v4/app/U;->amk()V

    .line 2579
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 2583
    :cond_1
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/U;->amf(I)V

    .line 2586
    add-int/lit8 v1, p3, -0x1

    if-eq p2, v1, :cond_2

    move v1, v2

    .line 2587
    :goto_2
    invoke-virtual {v0, v1}, Landroid/support/v4/app/U;->amo(Z)V

    goto :goto_1

    :cond_2
    move v1, v3

    .line 2586
    goto :goto_2
.end method

.method static aoI(Landroid/animation/Animator;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 720
    if-eqz p0, :cond_1

    .line 723
    instance-of v0, p0, Landroid/animation/ValueAnimator;

    if-nez v0, :cond_2

    .line 731
    instance-of v0, p0, Landroid/animation/AnimatorSet;

    if-nez v0, :cond_4

    .line 739
    :cond_0
    return v1

    .line 721
    :cond_1
    return v1

    .line 724
    :cond_2
    check-cast p0, Landroid/animation/ValueAnimator;

    .line 725
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    move v0, v1

    .line 726
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 727
    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "alpha"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 726
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 728
    :cond_3
    return v5

    .line 732
    :cond_4
    check-cast p0, Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v3

    move v2, v1

    .line 733
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 734
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-static {v0}, Landroid/support/v4/app/aV;->aoI(Landroid/animation/Animator;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 733
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 735
    :cond_5
    return v5
.end method

.method private aoM(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2178
    iget-boolean v0, p0, Landroid/support/v4/app/aV;->aci:Z

    if-nez v0, :cond_0

    .line 2182
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/aV;->abY:Landroid/support/v4/app/p;

    invoke-virtual {v1}, Landroid/support/v4/app/p;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 2186
    if-eqz p1, :cond_2

    .line 2190
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/aV;->acq:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 2194
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/aV;->aci:Z

    .line 2196
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v0, v1}, Landroid/support/v4/app/aV;->aol(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2198
    iput-boolean v2, p0, Landroid/support/v4/app/aV;->aci:Z

    .line 2200
    return-void

    .line 2179
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "FragmentManager is already executing transactions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2183
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Must be called from main thread of fragment host"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2187
    :cond_2
    invoke-direct {p0}, Landroid/support/v4/app/aV;->apf()V

    goto :goto_0

    .line 2191
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/aV;->acq:Ljava/util/ArrayList;

    .line 2192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/aV;->acn:Ljava/util/ArrayList;

    goto :goto_1

    .line 2198
    :catchall_0
    move-exception v0

    iput-boolean v2, p0, Landroid/support/v4/app/aV;->aci:Z

    throw v0
.end method

.method private aoO(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 2304
    if-nez p1, :cond_1

    .line 2305
    :cond_0
    return-void

    .line 2304
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2308
    if-nez p2, :cond_3

    .line 2309
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Internal error with the back stack records"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2308
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 2313
    invoke-direct {p0, p1, p2}, Landroid/support/v4/app/aV;->aol(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2315
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    .line 2317
    :goto_0
    if-lt v2, v3, :cond_4

    .line 2339
    if-ne v1, v3, :cond_b

    .line 2342
    :goto_1
    return-void

    .line 2318
    :cond_4
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/U;

    iget-boolean v0, v0, Landroid/support/v4/app/U;->YJ:Z

    .line 2319
    if-eqz v0, :cond_5

    move v0, v2

    .line 2317
    :goto_2
    add-int/lit8 v2, v0, 0x1

    goto :goto_0

    .line 2321
    :cond_5
    if-ne v1, v2, :cond_6

    .line 2326
    :goto_3
    add-int/lit8 v1, v2, 0x1

    .line 2327
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    .line 2334
    :goto_4
    invoke-direct {p0, p1, p2, v2, v0}, Landroid/support/v4/app/aV;->apw(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 2336
    add-int/lit8 v1, v0, -0x1

    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_2

    .line 2322
    :cond_6
    invoke-direct {p0, p1, p2, v1, v2}, Landroid/support/v4/app/aV;->apw(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    goto :goto_3

    .line 2331
    :cond_7
    add-int/lit8 v1, v1, 0x1

    .line 2328
    :cond_8
    if-lt v1, v3, :cond_9

    move v0, v1

    goto :goto_4

    .line 2329
    :cond_9
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v1

    goto :goto_4

    .line 2330
    :cond_a
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/U;

    iget-boolean v0, v0, Landroid/support/v4/app/U;->YJ:Z

    if-eqz v0, :cond_7

    move v0, v1

    goto :goto_4

    .line 2340
    :cond_b
    invoke-direct {p0, p1, p2, v1, v3}, Landroid/support/v4/app/aV;->apw(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    goto :goto_1
.end method

.method private static aoQ(Landroid/view/animation/Animation;)Landroid/view/animation/Animation$AnimationListener;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1262
    :try_start_0
    sget-object v0, Landroid/support/v4/app/aV;->acx:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    .line 1266
    :goto_0
    sget-object v0, Landroid/support/v4/app/aV;->acx:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation$AnimationListener;

    .line 1272
    :goto_1
    return-object v0

    .line 1263
    :cond_0
    const-class v0, Landroid/view/animation/Animation;

    const-string/jumbo v2, "mListener"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v4/app/aV;->acx:Ljava/lang/reflect/Field;

    .line 1264
    sget-object v0, Landroid/support/v4/app/aV;->acx:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1267
    :catch_0
    move-exception v0

    .line 1268
    const-string/jumbo v2, "FragmentManager"

    const-string/jumbo v3, "No field with the name mListener is found in Animation class"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 1271
    goto :goto_1

    .line 1269
    :catch_1
    move-exception v0

    .line 1270
    const-string/jumbo v2, "FragmentManager"

    const-string/jumbo v3, "Cannot access Animation\'s mListener field"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_1
.end method

.method static aoS(Landroid/content/Context;FFFF)Landroid/support/v4/app/B;
    .locals 10

    .prologue
    .line 1100
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    invoke-direct {v9, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1101
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

    .line 1103
    sget-object v1, Landroid/support/v4/app/aV;->acf:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1104
    const-wide/16 v2, 0xdc

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1105
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1106
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p3, p4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1107
    sget-object v1, Landroid/support/v4/app/aV;->acB:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1108
    const-wide/16 v2, 0xdc

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1109
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1110
    new-instance v0, Landroid/support/v4/app/B;

    const/4 v1, 0x0

    invoke-direct {v0, v9, v1}, Landroid/support/v4/app/B;-><init>(Landroid/view/animation/Animation;Landroid/support/v4/app/I;)V

    return-object v0
.end method

.method private aoT(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3226
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroid/support/v4/app/aV;->aci:Z

    .line 3227
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/app/aV;->aoa(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3229
    iput-boolean v1, p0, Landroid/support/v4/app/aV;->aci:Z

    .line 3231
    invoke-virtual {p0}, Landroid/support/v4/app/aV;->aoZ()Z

    .line 3232
    return-void

    .line 3229
    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Landroid/support/v4/app/aV;->aci:Z

    throw v0
.end method

.method static synthetic aoX(Landroid/support/v4/app/aV;Landroid/support/v4/app/U;ZZZ)V
    .locals 0

    .prologue
    .line 641
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v4/app/aV;->ape(Landroid/support/v4/app/U;ZZZ)V

    return-void
.end method

.method private aoc()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 2636
    iget-object v0, p0, Landroid/support/v4/app/aV;->acu:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/aV;->acu:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    move v6, v0

    :goto_0
    move v7, v3

    .line 2637
    :goto_1
    if-lt v7, v6, :cond_1

    .line 2658
    return-void

    :cond_0
    move v6, v3

    .line 2636
    goto :goto_0

    .line 2638
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/aV;->acu:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/e;

    .line 2639
    if-nez v1, :cond_3

    .line 2637
    :cond_2
    :goto_2
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    .line 2640
    :cond_3
    invoke-virtual {v1}, Landroid/support/v4/app/e;->aiq()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_4

    .line 2653
    invoke-virtual {v1}, Landroid/support/v4/app/e;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2654
    invoke-virtual {v1}, Landroid/support/v4/app/e;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    goto :goto_2

    .line 2642
    :cond_4
    invoke-virtual {v1}, Landroid/support/v4/app/e;->ajH()I

    move-result v2

    .line 2643
    invoke-virtual {v1}, Landroid/support/v4/app/e;->aiq()Landroid/view/View;

    move-result-object v0

    .line 2644
    invoke-virtual {v1, v8}, Landroid/support/v4/app/e;->ajj(Landroid/view/View;)V

    .line 2645
    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v4

    .line 2646
    if-nez v4, :cond_5

    :goto_3
    move-object v0, p0

    move v4, v3

    move v5, v3

    .line 2652
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/aV;->aov(Landroid/support/v4/app/e;IIIZ)V

    goto :goto_2

    .line 2647
    :cond_5
    invoke-virtual {v4}, Landroid/view/animation/Animation;->cancel()V

    .line 2650
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_3
.end method

.method public static aof(IZ)I
    .locals 1

    .prologue
    .line 3686
    const/4 v0, -0x1

    .line 3687
    sparse-switch p0, :sswitch_data_0

    .line 3698
    :goto_0
    return v0

    .line 3689
    :sswitch_0
    if-nez p1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 3692
    :sswitch_1
    if-nez p1, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    goto :goto_0

    .line 3695
    :sswitch_2
    if-nez p1, :cond_2

    const/4 v0, 0x6

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    goto :goto_0

    .line 3687
    nop

    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1003 -> :sswitch_2
        0x2002 -> :sswitch_1
    .end sparse-switch
.end method

.method private aol(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v2, 0x0

    .line 2260
    iget-object v0, p0, Landroid/support/v4/app/aV;->acz:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/aV;->acz:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    move v3, v2

    move v4, v0

    .line 2261
    :goto_1
    if-lt v3, v4, :cond_1

    .line 2286
    return-void

    :cond_0
    move v0, v2

    .line 2260
    goto :goto_0

    .line 2262
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/aV;->acz:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/c;

    .line 2263
    if-nez p1, :cond_5

    .line 2270
    :cond_2
    invoke-virtual {v0}, Landroid/support/v4/app/c;->aig()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2272
    :cond_3
    iget-object v1, p0, Landroid/support/v4/app/aV;->acz:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2273
    add-int/lit8 v3, v3, -0x1

    .line 2274
    add-int/lit8 v4, v4, -0x1

    .line 2276
    if-nez p1, :cond_8

    .line 2282
    :cond_4
    invoke-virtual {v0}, Landroid/support/v4/app/c;->ail()V

    move v0, v3

    move v1, v4

    .line 2261
    :goto_2
    add-int/lit8 v3, v0, 0x1

    move v4, v1

    goto :goto_1

    .line 2263
    :cond_5
    invoke-static {v0}, Landroid/support/v4/app/c;->aii(Landroid/support/v4/app/c;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2264
    invoke-static {v0}, Landroid/support/v4/app/c;->aik(Landroid/support/v4/app/c;)Landroid/support/v4/app/U;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 2265
    if-eq v1, v6, :cond_2

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2266
    invoke-virtual {v0}, Landroid/support/v4/app/c;->aij()V

    move v0, v3

    move v1, v4

    .line 2267
    goto :goto_2

    .line 2270
    :cond_6
    if-nez p1, :cond_7

    move v0, v3

    move v1, v4

    goto :goto_2

    .line 2271
    :cond_7
    invoke-static {v0}, Landroid/support/v4/app/c;->aik(Landroid/support/v4/app/c;)Landroid/support/v4/app/U;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v1, p1, v2, v5}, Landroid/support/v4/app/U;->amg(Ljava/util/ArrayList;II)Z

    move-result v1

    if-nez v1, :cond_3

    move v0, v3

    move v1, v4

    goto :goto_2

    .line 2276
    :cond_8
    invoke-static {v0}, Landroid/support/v4/app/c;->aii(Landroid/support/v4/app/c;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2277
    invoke-static {v0}, Landroid/support/v4/app/c;->aik(Landroid/support/v4/app/c;)Landroid/support/v4/app/U;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v6, :cond_4

    .line 2278
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2280
    invoke-virtual {v0}, Landroid/support/v4/app/c;->aij()V

    move v0, v3

    move v1, v4

    goto :goto_2
.end method

.method private aon(Ljava/lang/String;II)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 833
    invoke-virtual {p0}, Landroid/support/v4/app/aV;->aoZ()Z

    .line 834
    invoke-direct {p0, v6}, Landroid/support/v4/app/aV;->aoM(Z)V

    .line 836
    iget-object v0, p0, Landroid/support/v4/app/aV;->acs:Landroid/support/v4/app/e;

    if-nez v0, :cond_1

    .line 846
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/aV;->acq:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v4/app/aV;->acn:Ljava/util/ArrayList;

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/aV;->apY(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result v0

    .line 847
    if-nez v0, :cond_2

    .line 856
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/app/aV;->aoY()V

    .line 857
    invoke-direct {p0}, Landroid/support/v4/app/aV;->aos()V

    .line 858
    return v0

    .line 836
    :cond_1
    if-gez p2, :cond_0

    if-nez p1, :cond_0

    .line 839
    iget-object v0, p0, Landroid/support/v4/app/aV;->acs:Landroid/support/v4/app/e;

    invoke-virtual {v0}, Landroid/support/v4/app/e;->ajt()Landroid/support/v4/app/bb;

    move-result-object v0

    .line 840
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/bb;->aom()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 842
    return v6

    .line 848
    :cond_2
    iput-boolean v6, p0, Landroid/support/v4/app/aV;->aci:Z

    .line 850
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/app/aV;->acq:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v4/app/aV;->acn:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2}, Landroid/support/v4/app/aV;->aoO(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 852
    invoke-direct {p0}, Landroid/support/v4/app/aV;->apx()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroid/support/v4/app/aV;->apx()V

    throw v0
.end method

.method private aop(Landroid/support/v4/app/e;Landroid/support/v4/app/B;I)V
    .locals 4

    .prologue
    .line 1594
    iget-object v0, p1, Landroid/support/v4/app/e;->mView:Landroid/view/View;

    .line 1595
    invoke-virtual {p1, p3}, Landroid/support/v4/app/e;->ajf(I)V

    .line 1596
    iget-object v1, p2, Landroid/support/v4/app/B;->XZ:Landroid/view/animation/Animation;

    if-nez v1, :cond_0

    .line 1613
    iget-object v1, p2, Landroid/support/v4/app/B;->XY:Landroid/animation/Animator;

    .line 1614
    iget-object v2, p2, Landroid/support/v4/app/B;->XY:Landroid/animation/Animator;

    invoke-virtual {p1, v2}, Landroid/support/v4/app/e;->aje(Landroid/animation/Animator;)V

    .line 1615
    iget-object v2, p1, Landroid/support/v4/app/e;->Wj:Landroid/view/ViewGroup;

    .line 1616
    if-nez v2, :cond_1

    .line 1619
    :goto_0
    new-instance v3, Landroid/support/v4/app/b;

    invoke-direct {v3, p0, v2, v0, p1}, Landroid/support/v4/app/b;-><init>(Landroid/support/v4/app/aV;Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/v4/app/e;)V

    invoke-virtual {v1, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1631
    iget-object v0, p1, Landroid/support/v4/app/e;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1632
    iget-object v0, p1, Landroid/support/v4/app/e;->mView:Landroid/view/View;

    invoke-static {v0, p2}, Landroid/support/v4/app/aV;->apB(Landroid/view/View;Landroid/support/v4/app/B;)V

    .line 1633
    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 1635
    :goto_1
    return-void

    .line 1597
    :cond_0
    iget-object v1, p2, Landroid/support/v4/app/B;->XZ:Landroid/view/animation/Animation;

    .line 1598
    iget-object v2, p1, Landroid/support/v4/app/e;->mView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/support/v4/app/e;->ajj(Landroid/view/View;)V

    .line 1599
    invoke-static {v1}, Landroid/support/v4/app/aV;->aoQ(Landroid/view/animation/Animation;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v2

    .line 1600
    new-instance v3, Landroid/support/v4/app/m;

    invoke-direct {v3, p0, v2, p1}, Landroid/support/v4/app/m;-><init>(Landroid/support/v4/app/aV;Landroid/view/animation/Animation$AnimationListener;Landroid/support/v4/app/e;)V

    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1610
    invoke-static {v0, p2}, Landroid/support/v4/app/aV;->apB(Landroid/view/View;Landroid/support/v4/app/B;)V

    .line 1611
    iget-object v0, p1, Landroid/support/v4/app/e;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 1617
    :cond_1
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    goto :goto_0
.end method

.method private aor(Ljava/util/ArrayList;Ljava/util/ArrayList;IILandroid/support/v4/a/c;)I
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 2448
    add-int/lit8 v0, p4, -0x1

    move v4, v0

    move v3, p4

    :goto_0
    if-ge v4, p3, :cond_0

    .line 2480
    return v3

    .line 2449
    :cond_0
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/U;

    .line 2450
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 2451
    invoke-virtual {v0}, Landroid/support/v4/app/U;->amp()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    move v1, v2

    .line 2453
    :goto_1
    if-nez v1, :cond_3

    move v0, v3

    .line 2448
    :goto_2
    add-int/lit8 v1, v4, -0x1

    move v4, v1

    move v3, v0

    goto :goto_0

    .line 2451
    :cond_2
    add-int/lit8 v1, v4, 0x1

    .line 2452
    invoke-virtual {v0, p1, v1, p4}, Landroid/support/v4/app/U;->amg(Ljava/util/ArrayList;II)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    .line 2454
    :cond_3
    iget-object v1, p0, Landroid/support/v4/app/aV;->acz:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    .line 2457
    :goto_3
    new-instance v1, Landroid/support/v4/app/c;

    invoke-direct {v1, v0, v5}, Landroid/support/v4/app/c;-><init>(Landroid/support/v4/app/U;Z)V

    .line 2459
    iget-object v6, p0, Landroid/support/v4/app/aV;->acz:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2460
    invoke-virtual {v0, v1}, Landroid/support/v4/app/U;->ama(Landroid/support/v4/app/aq;)V

    .line 2463
    if-nez v5, :cond_5

    .line 2466
    invoke-virtual {v0, v2}, Landroid/support/v4/app/U;->amo(Z)V

    .line 2470
    :goto_4
    add-int/lit8 v1, v3, -0x1

    .line 2471
    if-ne v4, v1, :cond_6

    .line 2477
    :goto_5
    invoke-direct {p0, p5}, Landroid/support/v4/app/aV;->aqd(Landroid/support/v4/a/c;)V

    move v0, v1

    goto :goto_2

    .line 2455
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/aV;->acz:Ljava/util/ArrayList;

    goto :goto_3

    .line 2464
    :cond_5
    invoke-virtual {v0}, Landroid/support/v4/app/U;->amk()V

    goto :goto_4

    .line 2472
    :cond_6
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2473
    invoke-virtual {p1, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_5
.end method

.method private aos()V
    .locals 3

    .prologue
    .line 3145
    iget-object v0, p0, Landroid/support/v4/app/aV;->acu:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 3152
    :cond_0
    return-void

    .line 3146
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/aV;->acu:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    :cond_2
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 3147
    iget-object v1, p0, Landroid/support/v4/app/aV;->acu:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 3148
    iget-object v1, p0, Landroid/support/v4/app/aV;->acu:Landroid/util/SparseArray;

    iget-object v2, p0, Landroid/support/v4/app/aV;->acu:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->delete(I)V

    goto :goto_0
.end method

.method private aow(Landroid/support/v4/a/c;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 2421
    invoke-virtual {p1}, Landroid/support/v4/a/c;->size()I

    move-result v2

    move v1, v0

    .line 2422
    :goto_0
    if-lt v1, v2, :cond_0

    .line 2430
    return-void

    .line 2423
    :cond_0
    invoke-virtual {p1, v1}, Landroid/support/v4/a/c;->agQ(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/e;

    .line 2424
    iget-boolean v3, v0, Landroid/support/v4/app/e;->Wm:Z

    if-eqz v3, :cond_1

    .line 2422
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2425
    :cond_1
    invoke-virtual {v0}, Landroid/support/v4/app/e;->aji()Landroid/view/View;

    move-result-object v3

    .line 2426
    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v4

    iput v4, v0, Landroid/support/v4/app/e;->WW:F

    .line 2427
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1
.end method

.method private static apB(Landroid/view/View;Landroid/support/v4/app/B;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1238
    if-nez p0, :cond_1

    .line 1239
    :cond_0
    return-void

    .line 1238
    :cond_1
    if-eqz p1, :cond_0

    .line 1241
    invoke-static {p0, p1}, Landroid/support/v4/app/aV;->apF(Landroid/view/View;Landroid/support/v4/app/B;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1254
    :goto_0
    return-void

    .line 1242
    :cond_2
    iget-object v0, p1, Landroid/support/v4/app/B;->XY:Landroid/animation/Animator;

    if-nez v0, :cond_3

    .line 1245
    iget-object v0, p1, Landroid/support/v4/app/B;->XZ:Landroid/view/animation/Animation;

    invoke-static {v0}, Landroid/support/v4/app/aV;->aoQ(Landroid/view/animation/Animation;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    .line 1249
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1250
    iget-object v1, p1, Landroid/support/v4/app/B;->XZ:Landroid/view/animation/Animation;

    new-instance v2, Landroid/support/v4/app/D;

    invoke-direct {v2, p0, v0}, Landroid/support/v4/app/D;-><init>(Landroid/view/View;Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    .line 1243
    :cond_3
    iget-object v0, p1, Landroid/support/v4/app/B;->XY:Landroid/animation/Animator;

    new-instance v1, Landroid/support/v4/app/aN;

    invoke-direct {v1, p0}, Landroid/support/v4/app/aN;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0
.end method

.method static apF(Landroid/view/View;Landroid/support/v4/app/B;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 743
    if-nez p0, :cond_1

    .line 744
    :cond_0
    return v0

    .line 743
    :cond_1
    if-eqz p1, :cond_0

    .line 746
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v1, v2, :cond_3

    .line 749
    :cond_2
    :goto_0
    return v0

    .line 747
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result v1

    if-nez v1, :cond_2

    .line 748
    invoke-static {p0}, Landroid/support/v4/view/f;->afz(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 749
    invoke-static {p1}, Landroid/support/v4/app/aV;->api(Landroid/support/v4/app/B;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static apJ(I)I
    .locals 1

    .prologue
    .line 3662
    const/4 v0, 0x0

    .line 3663
    sparse-switch p0, :sswitch_data_0

    .line 3674
    :goto_0
    return v0

    .line 3665
    :sswitch_0
    const/16 v0, 0x2002

    goto :goto_0

    .line 3668
    :sswitch_1
    const/16 v0, 0x1001

    goto :goto_0

    .line 3671
    :sswitch_2
    const/16 v0, 0x1003

    goto :goto_0

    .line 3663
    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1003 -> :sswitch_2
        0x2002 -> :sswitch_1
    .end sparse-switch
.end method

.method private apO()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2624
    iget-object v0, p0, Landroid/support/v4/app/aV;->acz:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 2629
    :goto_0
    return-void

    .line 2626
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/aV;->acz:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/c;

    invoke-virtual {v0}, Landroid/support/v4/app/c;->ail()V

    .line 2625
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/aV;->acz:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method private static apW(Landroid/support/v4/app/az;)V
    .locals 3

    .prologue
    .line 2788
    if-eqz p0, :cond_2

    .line 2791
    invoke-virtual {p0}, Landroid/support/v4/app/az;->amV()Ljava/util/List;

    move-result-object v0

    .line 2792
    if-nez v0, :cond_3

    .line 2797
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/az;->amW()Ljava/util/List;

    move-result-object v0

    .line 2798
    if-nez v0, :cond_4

    .line 2803
    :cond_1
    return-void

    .line 2789
    :cond_2
    return-void

    .line 2793
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/e;

    .line 2794
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/support/v4/app/e;->Wp:Z

    goto :goto_0

    .line 2799
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/az;

    .line 2800
    invoke-static {v0}, Landroid/support/v4/app/aV;->apW(Landroid/support/v4/app/az;)V

    goto :goto_1
.end method

.method private ape(Landroid/support/v4/app/U;ZZZ)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2500
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 2501
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 2502
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2503
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2504
    invoke-static {v1, v2, v3, v4}, Landroid/support/v4/app/aV;->aoH(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 2505
    if-nez p3, :cond_1

    .line 2508
    :goto_0
    if-nez p4, :cond_2

    .line 2512
    :goto_1
    iget-object v0, p0, Landroid/support/v4/app/aV;->acu:Landroid/util/SparseArray;

    if-nez v0, :cond_3

    .line 2532
    :cond_0
    return-void

    :cond_1
    move-object v0, p0

    move v5, v4

    .line 2506
    invoke-static/range {v0 .. v5}, Landroid/support/v4/app/aP;->anz(Landroid/support/v4/app/aV;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    goto :goto_0

    .line 2509
    :cond_2
    iget v0, p0, Landroid/support/v4/app/aV;->acv:I

    invoke-virtual {p0, v0, v4}, Landroid/support/v4/app/aV;->aoa(IZ)V

    goto :goto_1

    .line 2513
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/aV;->acu:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    move v1, v3

    .line 2514
    :goto_2
    if-ge v1, v2, :cond_0

    .line 2517
    iget-object v0, p0, Landroid/support/v4/app/aV;->acu:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/e;

    .line 2518
    if-nez v0, :cond_5

    .line 2514
    :cond_4
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 2518
    :cond_5
    iget-object v4, v0, Landroid/support/v4/app/e;->mView:Landroid/view/View;

    if-eqz v4, :cond_4

    iget-boolean v4, v0, Landroid/support/v4/app/e;->WO:Z

    if-eqz v4, :cond_4

    iget v4, v0, Landroid/support/v4/app/e;->Ws:I

    .line 2519
    invoke-virtual {p1, v4}, Landroid/support/v4/app/U;->amb(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2520
    iget v4, v0, Landroid/support/v4/app/e;->WW:F

    cmpl-float v4, v4, v6

    if-lez v4, :cond_6

    .line 2521
    iget-object v4, v0, Landroid/support/v4/app/e;->mView:Landroid/view/View;

    iget v5, v0, Landroid/support/v4/app/e;->WW:F

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 2523
    :cond_6
    if-nez p4, :cond_7

    .line 2526
    const/high16 v4, -0x40800000    # -1.0f

    iput v4, v0, Landroid/support/v4/app/e;->WW:F

    .line 2527
    iput-boolean v3, v0, Landroid/support/v4/app/e;->WO:Z

    goto :goto_3

    .line 2524
    :cond_7
    iput v6, v0, Landroid/support/v4/app/e;->WW:F

    goto :goto_3
.end method

.method private apf()V
    .locals 3

    .prologue
    .line 2055
    iget-boolean v0, p0, Landroid/support/v4/app/aV;->acj:Z

    if-nez v0, :cond_0

    .line 2059
    iget-object v0, p0, Landroid/support/v4/app/aV;->aca:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2063
    return-void

    .line 2056
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can not perform this action after onSaveInstanceState"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2060
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can not perform this action inside of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/app/aV;->aca:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static api(Landroid/support/v4/app/B;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 704
    iget-object v0, p0, Landroid/support/v4/app/B;->XZ:Landroid/view/animation/Animation;

    instance-of v0, v0, Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_0

    .line 706
    iget-object v0, p0, Landroid/support/v4/app/B;->XZ:Landroid/view/animation/Animation;

    instance-of v0, v0, Landroid/view/animation/AnimationSet;

    if-nez v0, :cond_1

    .line 715
    iget-object v0, p0, Landroid/support/v4/app/B;->XY:Landroid/animation/Animator;

    invoke-static {v0}, Landroid/support/v4/app/aV;->aoI(Landroid/animation/Animator;)Z

    move-result v0

    return v0

    .line 705
    :cond_0
    return v4

    .line 707
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/B;->XZ:Landroid/view/animation/Animation;

    check-cast v0, Landroid/view/animation/AnimationSet;

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v2

    move v0, v1

    .line 708
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_2

    .line 713
    return v1

    .line 709
    :cond_2
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Landroid/view/animation/AlphaAnimation;

    if-nez v3, :cond_3

    .line 708
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 710
    :cond_3
    return v4
.end method

.method static apj(Landroid/content/Context;FF)Landroid/support/v4/app/B;
    .locals 4

    .prologue
    .line 1114
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p1, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1115
    sget-object v1, Landroid/support/v4/app/aV;->acB:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1116
    const-wide/16 v2, 0xdc

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1117
    new-instance v1, Landroid/support/v4/app/B;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/support/v4/app/B;-><init>(Landroid/view/animation/Animation;Landroid/support/v4/app/I;)V

    return-object v1
.end method

.method private apm(Landroid/support/v4/app/e;)Landroid/support/v4/app/e;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2551
    iget-object v2, p1, Landroid/support/v4/app/e;->Wj:Landroid/view/ViewGroup;

    .line 2552
    iget-object v0, p1, Landroid/support/v4/app/e;->mView:Landroid/view/View;

    .line 2554
    if-nez v2, :cond_1

    .line 2555
    :cond_0
    return-object v4

    .line 2554
    :cond_1
    if-eqz v0, :cond_0

    .line 2558
    iget-object v0, p0, Landroid/support/v4/app/aV;->acd:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 2559
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_2

    .line 2566
    return-object v4

    .line 2560
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/aV;->acd:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/e;

    .line 2561
    iget-object v3, v0, Landroid/support/v4/app/e;->Wj:Landroid/view/ViewGroup;

    if-eq v3, v2, :cond_4

    .line 2559
    :cond_3
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 2561
    :cond_4
    iget-object v3, v0, Landroid/support/v4/app/e;->mView:Landroid/view/View;

    if-eqz v3, :cond_3

    .line 2563
    return-object v0
.end method

.method static synthetic apr(Landroid/support/v4/app/aV;)V
    .locals 0

    .prologue
    .line 641
    invoke-direct {p0}, Landroid/support/v4/app/aV;->apy()V

    return-void
.end method

.method private apw(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2354
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/U;

    iget-boolean v8, v0, Landroid/support/v4/app/U;->YJ:Z

    .line 2356
    iget-object v0, p0, Landroid/support/v4/app/aV;->acb:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 2359
    iget-object v0, p0, Landroid/support/v4/app/aV;->acb:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2361
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/aV;->acd:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 2364
    :goto_1
    invoke-virtual {p0}, Landroid/support/v4/app/aV;->apA()Landroid/support/v4/app/e;

    move-result-object v1

    move v2, p3

    move-object v3, v1

    move v7, v5

    .line 2365
    :goto_2
    if-lt v2, p4, :cond_3

    .line 2375
    iget-object v0, p0, Landroid/support/v4/app/aV;->acb:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2377
    if-eqz v8, :cond_7

    .line 2381
    :goto_3
    invoke-static {p1, p2, p3, p4}, Landroid/support/v4/app/aV;->aoH(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 2384
    if-nez v8, :cond_8

    move v4, p4

    .line 2392
    :goto_4
    if-ne v4, p3, :cond_9

    .line 2399
    :cond_0
    :goto_5
    if-lt p3, p4, :cond_a

    .line 2408
    if-nez v7, :cond_d

    .line 2411
    :goto_6
    return-void

    .line 2357
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/aV;->acb:Ljava/util/ArrayList;

    goto :goto_0

    .line 2362
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/aV;->acb:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/aV;->acd:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 2366
    :cond_3
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/U;

    .line 2367
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 2368
    if-eqz v1, :cond_5

    .line 2371
    iget-object v1, p0, Landroid/support/v4/app/aV;->acb:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v3}, Landroid/support/v4/app/U;->amd(Ljava/util/ArrayList;Landroid/support/v4/app/e;)Landroid/support/v4/app/e;

    move-result-object v1

    .line 2373
    :goto_7
    if-eqz v7, :cond_6

    :cond_4
    move v0, v6

    .line 2365
    :goto_8
    add-int/lit8 v2, v2, 0x1

    move-object v3, v1

    move v7, v0

    goto :goto_2

    .line 2369
    :cond_5
    iget-object v1, p0, Landroid/support/v4/app/aV;->acb:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v3}, Landroid/support/v4/app/U;->amc(Ljava/util/ArrayList;Landroid/support/v4/app/e;)Landroid/support/v4/app/e;

    move-result-object v1

    goto :goto_7

    .line 2373
    :cond_6
    iget-boolean v0, v0, Landroid/support/v4/app/U;->YU:Z

    if-nez v0, :cond_4

    move v0, v5

    goto :goto_8

    :cond_7
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 2378
    invoke-static/range {v0 .. v5}, Landroid/support/v4/app/aP;->anz(Landroid/support/v4/app/aV;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    goto :goto_3

    .line 2385
    :cond_8
    new-instance v5, Landroid/support/v4/a/c;

    invoke-direct {v5}, Landroid/support/v4/a/c;-><init>()V

    .line 2386
    invoke-direct {p0, v5}, Landroid/support/v4/app/aV;->aqd(Landroid/support/v4/a/c;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 2387
    invoke-direct/range {v0 .. v5}, Landroid/support/v4/app/aV;->aor(Ljava/util/ArrayList;Ljava/util/ArrayList;IILandroid/support/v4/a/c;)I

    move-result v4

    .line 2389
    invoke-direct {p0, v5}, Landroid/support/v4/app/aV;->aow(Landroid/support/v4/a/c;)V

    goto :goto_4

    .line 2392
    :cond_9
    if-eqz v8, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, v6

    .line 2394
    invoke-static/range {v0 .. v5}, Landroid/support/v4/app/aP;->anz(Landroid/support/v4/app/aV;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    .line 2396
    iget v0, p0, Landroid/support/v4/app/aV;->acv:I

    invoke-virtual {p0, v0, v6}, Landroid/support/v4/app/aV;->aoa(IZ)V

    goto :goto_5

    .line 2400
    :cond_a
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/U;

    .line 2401
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 2402
    if-nez v1, :cond_c

    .line 2406
    :cond_b
    :goto_9
    invoke-virtual {v0}, Landroid/support/v4/app/U;->ami()V

    .line 2399
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_5

    .line 2402
    :cond_c
    iget v1, v0, Landroid/support/v4/app/U;->YL:I

    if-ltz v1, :cond_b

    .line 2403
    iget v1, v0, Landroid/support/v4/app/U;->YL:I

    invoke-virtual {p0, v1}, Landroid/support/v4/app/aV;->aot(I)V

    .line 2404
    const/4 v1, -0x1

    iput v1, v0, Landroid/support/v4/app/U;->YL:I

    goto :goto_9

    .line 2409
    :cond_d
    invoke-virtual {p0}, Landroid/support/v4/app/aV;->aoK()V

    goto/16 :goto_6
.end method

.method private apx()V
    .locals 1

    .prologue
    .line 2226
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/aV;->aci:Z

    .line 2227
    iget-object v0, p0, Landroid/support/v4/app/aV;->acn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2228
    iget-object v0, p0, Landroid/support/v4/app/aV;->acq:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2229
    return-void
.end method

.method private apy()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2104
    monitor-enter p0

    .line 2105
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/aV;->acz:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    :cond_0
    move v0, v2

    .line 2107
    :goto_0
    iget-object v3, p0, Landroid/support/v4/app/aV;->acw:Ljava/util/ArrayList;

    if-nez v3, :cond_4

    :goto_1
    move v1, v2

    .line 2108
    :cond_1
    if-eqz v0, :cond_5

    .line 2109
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/aV;->abY:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/aV;->abX:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2110
    iget-object v0, p0, Landroid/support/v4/app/aV;->abY:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/aV;->abX:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2112
    :goto_2
    monitor-exit p0

    .line 2113
    return-void

    .line 2105
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/aV;->acz:Ljava/util/ArrayList;

    .line 2106
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 2107
    :cond_4
    iget-object v3, p0, Landroid/support/v4/app/aV;->acw:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v3, v1, :cond_1

    goto :goto_1

    .line 2108
    :cond_5
    if-nez v1, :cond_2

    goto :goto_2

    .line 2112
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private aqc(Ljava/lang/RuntimeException;)V
    .locals 5

    .prologue
    .line 753
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    const-string/jumbo v0, "FragmentManager"

    const-string/jumbo v1, "Activity state:"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    new-instance v0, Landroid/support/v4/a/p;

    const-string/jumbo v1, "FragmentManager"

    invoke-direct {v0, v1}, Landroid/support/v4/a/p;-><init>(Ljava/lang/String;)V

    .line 756
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 757
    iget-object v0, p0, Landroid/support/v4/app/aV;->abY:Landroid/support/v4/app/p;

    if-nez v0, :cond_0

    .line 765
    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v2, "  "

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v1, v0}, Landroid/support/v4/app/aV;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 770
    :goto_0
    throw p1

    .line 759
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/support/v4/app/aV;->abY:Landroid/support/v4/app/p;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "  "

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/support/v4/app/p;->akk(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 760
    :catch_0
    move-exception v0

    .line 761
    const-string/jumbo v1, "FragmentManager"

    const-string/jumbo v2, "Failed dumping state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 766
    :catch_1
    move-exception v0

    .line 767
    const-string/jumbo v1, "FragmentManager"

    const-string/jumbo v2, "Failed dumping state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private aqd(Landroid/support/v4/a/c;)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 2602
    iget v0, p0, Landroid/support/v4/app/aV;->acv:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 2606
    iget v0, p0, Landroid/support/v4/app/aV;->acv:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2607
    iget-object v0, p0, Landroid/support/v4/app/aV;->acd:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/aV;->acd:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v6, v0

    :goto_0
    move v7, v5

    .line 2608
    :goto_1
    if-lt v7, v6, :cond_2

    .line 2618
    return-void

    .line 2603
    :cond_0
    return-void

    :cond_1
    move v6, v5

    .line 2607
    goto :goto_0

    .line 2609
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/aV;->acd:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/e;

    .line 2610
    iget v0, v1, Landroid/support/v4/app/e;->mState:I

    if-lt v0, v2, :cond_4

    .line 2608
    :cond_3
    :goto_2
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    .line 2611
    :cond_4
    invoke-virtual {v1}, Landroid/support/v4/app/e;->aiS()I

    move-result v3

    invoke-virtual {v1}, Landroid/support/v4/app/e;->aiL()I

    move-result v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/aV;->aov(Landroid/support/v4/app/e;IIIZ)V

    .line 2613
    iget-object v0, v1, Landroid/support/v4/app/e;->mView:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-boolean v0, v1, Landroid/support/v4/app/e;->WY:Z

    if-nez v0, :cond_3

    iget-boolean v0, v1, Landroid/support/v4/app/e;->WO:Z

    if-eqz v0, :cond_3

    .line 2614
    invoke-virtual {p1, v1}, Landroid/support/v4/a/c;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method


# virtual methods
.method anZ(Landroid/support/v4/app/U;)V
    .locals 1

    .prologue
    .line 2713
    iget-object v0, p0, Landroid/support/v4/app/aV;->aco:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2716
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/aV;->aco:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2717
    return-void

    .line 2714
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/aV;->aco:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method aoA()Landroid/view/LayoutInflater$Factory2;
    .locals 0

    .prologue
    .line 3803
    return-object p0
.end method

.method aoB()V
    .locals 2

    .prologue
    .line 1840
    iget-object v0, p0, Landroid/support/v4/app/aV;->acu:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 1842
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/aV;->acu:Landroid/util/SparseArray;

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
    iget-object v0, p0, Landroid/support/v4/app/aV;->acu:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/e;

    .line 1844
    if-nez v0, :cond_2

    .line 1842
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1845
    :cond_2
    invoke-virtual {p0, v0}, Landroid/support/v4/app/aV;->apq(Landroid/support/v4/app/e;)V

    goto :goto_1
.end method

.method public aoC(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3342
    iget-object v0, p0, Landroid/support/v4/app/aV;->acd:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 3352
    :cond_0
    return v2

    :cond_1
    move v1, v2

    .line 3343
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/aV;->acd:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 3344
    iget-object v0, p0, Landroid/support/v4/app/aV;->acd:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/e;

    .line 3345
    if-nez v0, :cond_3

    .line 3343
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 3346
    :cond_3
    invoke-virtual {v0, p1}, Landroid/support/v4/app/e;->ajL(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3347
    const/4 v0, 0x1

    return v0
.end method

.method aoE(Landroid/support/v4/app/e;Landroid/os/Bundle;Z)V
    .locals 3

    .prologue
    .line 3590
    iget-object v0, p0, Landroid/support/v4/app/aV;->abW:Landroid/support/v4/app/e;

    if-nez v0, :cond_1

    .line 3597
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/aV;->acp:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_2

    .line 3600
    iget-object v0, p0, Landroid/support/v4/app/aV;->acp:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3605
    return-void

    .line 3591
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/aV;->abW:Landroid/support/v4/app/e;

    invoke-virtual {v0}, Landroid/support/v4/app/e;->ajX()Landroid/support/v4/app/bb;

    move-result-object v0

    .line 3592
    instance-of v1, v0, Landroid/support/v4/app/aV;

    if-eqz v1, :cond_0

    .line 3593
    check-cast v0, Landroid/support/v4/app/aV;

    .line 3594
    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v4/app/aV;->aoE(Landroid/support/v4/app/e;Landroid/os/Bundle;Z)V

    goto :goto_0

    .line 3598
    :cond_2
    return-void

    .line 3600
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/b;

    .line 3601
    if-nez p3, :cond_5

    .line 3602
    :cond_4
    iget-object v0, v0, Landroid/support/v4/a/b;->UU:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/app/ba;

    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v4/app/ba;->aqE(Landroid/support/v4/app/bb;Landroid/support/v4/app/e;Landroid/os/Bundle;)V

    goto :goto_1

    .line 3601
    :cond_5
    iget-object v1, v0, Landroid/support/v4/a/b;->UV:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1
.end method

.method public aoF()V
    .locals 1

    .prologue
    .line 3202
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/aV;->acj:Z

    .line 3204
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/support/v4/app/aV;->aoT(I)V

    .line 3205
    return-void
.end method

.method public aoG()V
    .locals 1

    .prologue
    .line 3212
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/app/aV;->aoT(I)V

    .line 3213
    return-void
.end method

.method aoJ(Landroid/support/v4/app/e;)V
    .locals 3

    .prologue
    .line 1864
    iget v0, p1, Landroid/support/v4/app/e;->Wr:I

    if-ltz v0, :cond_0

    .line 1868
    sget-boolean v0, Landroid/support/v4/app/aV;->DEBUG:Z

    if-nez v0, :cond_1

    .line 1871
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/aV;->acu:Landroid/util/SparseArray;

    iget v1, p1, Landroid/support/v4/app/e;->Wr:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1873
    iget-object v0, p0, Landroid/support/v4/app/aV;->abY:Landroid/support/v4/app/p;

    iget-object v1, p1, Landroid/support/v4/app/e;->Wl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/p;->akv(Ljava/lang/String;)V

    .line 1874
    invoke-virtual {p1}, Landroid/support/v4/app/e;->ajJ()V

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

.method aoK()V
    .locals 2

    .prologue
    .line 2705
    iget-object v0, p0, Landroid/support/v4/app/aV;->acm:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 2710
    :cond_0
    return-void

    .line 2706
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/aV;->acm:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 2707
    iget-object v0, p0, Landroid/support/v4/app/aV;->acm:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/aO;

    invoke-interface {v0}, Landroid/support/v4/app/aO;->anp()V

    .line 2706
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public aoL()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3216
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/aV;->mDestroyed:Z

    .line 3217
    invoke-virtual {p0}, Landroid/support/v4/app/aV;->aoZ()Z

    .line 3218
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/app/aV;->aoT(I)V

    .line 3219
    iput-object v1, p0, Landroid/support/v4/app/aV;->abY:Landroid/support/v4/app/p;

    .line 3220
    iput-object v1, p0, Landroid/support/v4/app/aV;->ach:Landroid/support/v4/app/ac;

    .line 3221
    iput-object v1, p0, Landroid/support/v4/app/aV;->abW:Landroid/support/v4/app/e;

    .line 3222
    return-void
.end method

.method public aoN(Landroid/support/v4/app/aF;Z)V
    .locals 2

    .prologue
    .line 2078
    if-eqz p2, :cond_1

    .line 2081
    :goto_0
    monitor-enter p0

    .line 2082
    :try_start_0
    iget-boolean v0, p0, Landroid/support/v4/app/aV;->mDestroyed:Z

    if-eqz v0, :cond_2

    .line 2083
    :cond_0
    if-nez p2, :cond_3

    .line 2087
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Activity has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2094
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2079
    :cond_1
    invoke-direct {p0}, Landroid/support/v4/app/aV;->apf()V

    goto :goto_0

    .line 2082
    :cond_2
    :try_start_1
    iget-object v0, p0, Landroid/support/v4/app/aV;->abY:Landroid/support/v4/app/p;

    if-eqz v0, :cond_0

    .line 2089
    iget-object v0, p0, Landroid/support/v4/app/aV;->acw:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 2092
    :goto_1
    iget-object v0, p0, Landroid/support/v4/app/aV;->acw:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2093
    invoke-direct {p0}, Landroid/support/v4/app/aV;->apy()V

    .line 2094
    monitor-exit p0

    .line 2095
    return-void

    .line 2085
    :cond_3
    monitor-exit p0

    return-void

    .line 2090
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/aV;->acw:Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public aoP()V
    .locals 1

    .prologue
    .line 3208
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/support/v4/app/aV;->aoT(I)V

    .line 3209
    return-void
.end method

.method aoR()Landroid/support/v4/app/az;
    .locals 1

    .prologue
    .line 2777
    iget-object v0, p0, Landroid/support/v4/app/aV;->ace:Landroid/support/v4/app/az;

    invoke-static {v0}, Landroid/support/v4/app/aV;->apW(Landroid/support/v4/app/az;)V

    .line 2778
    iget-object v0, p0, Landroid/support/v4/app/aV;->ace:Landroid/support/v4/app/az;

    return-object v0
.end method

.method public aoU()V
    .locals 2

    .prologue
    .line 3270
    iget-object v0, p0, Landroid/support/v4/app/aV;->acd:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 3278
    :cond_0
    return-void

    .line 3271
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/aV;->acd:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 3272
    iget-object v0, p0, Landroid/support/v4/app/aV;->acd:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/e;

    .line 3273
    if-nez v0, :cond_2

    .line 3271
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 3274
    :cond_2
    invoke-virtual {v0}, Landroid/support/v4/app/e;->ait()V

    goto :goto_1
.end method

.method aoV(Landroid/support/v4/app/e;IZI)Landroid/support/v4/app/B;
    .locals 10

    .prologue
    const v9, 0x3f79999a    # 0.975f

    const/4 v8, 0x0

    const/4 v0, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 1122
    invoke-virtual {p1}, Landroid/support/v4/app/e;->aiS()I

    move-result v1

    .line 1123
    invoke-virtual {p1, p2, p3, v1}, Landroid/support/v4/app/e;->ajV(IZI)Landroid/view/animation/Animation;

    move-result-object v2

    .line 1124
    if-nez v2, :cond_2

    .line 1128
    invoke-virtual {p1, p2, p3, v1}, Landroid/support/v4/app/e;->ajD(IZI)Landroid/animation/Animator;

    move-result-object v2

    .line 1129
    if-nez v2, :cond_3

    .line 1133
    if-nez v1, :cond_4

    .line 1173
    :cond_0
    if-eqz p2, :cond_8

    .line 1177
    invoke-static {p2, p3}, Landroid/support/v4/app/aV;->aof(IZ)I

    move-result v0

    .line 1178
    if-ltz v0, :cond_9

    .line 1182
    packed-switch v0, :pswitch_data_0

    .line 1198
    if-eqz p4, :cond_a

    .line 1201
    :cond_1
    :goto_0
    if-eqz p4, :cond_b

    .line 1215
    return-object v6

    .line 1125
    :cond_2
    new-instance v0, Landroid/support/v4/app/B;

    invoke-direct {v0, v2, v6}, Landroid/support/v4/app/B;-><init>(Landroid/view/animation/Animation;Landroid/support/v4/app/I;)V

    return-object v0

    .line 1130
    :cond_3
    new-instance v0, Landroid/support/v4/app/B;

    invoke-direct {v0, v2, v6}, Landroid/support/v4/app/B;-><init>(Landroid/animation/Animator;Landroid/support/v4/app/I;)V

    return-object v0

    .line 1134
    :cond_4
    iget-object v2, p0, Landroid/support/v4/app/aV;->abY:Landroid/support/v4/app/p;

    invoke-virtual {v2}, Landroid/support/v4/app/p;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v2

    .line 1135
    const-string/jumbo v3, "anim"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1137
    if-nez v2, :cond_5

    .line 1152
    :goto_1
    if-nez v0, :cond_0

    .line 1155
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/aV;->abY:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 1156
    if-eqz v0, :cond_0

    .line 1157
    new-instance v3, Landroid/support/v4/app/B;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Landroid/support/v4/app/B;-><init>(Landroid/animation/Animator;Landroid/support/v4/app/I;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v3

    .line 1140
    :cond_5
    :try_start_1
    iget-object v3, p0, Landroid/support/v4/app/aV;->abY:Landroid/support/v4/app/p;

    invoke-virtual {v3}, Landroid/support/v4/app/p;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 1141
    if-nez v3, :cond_6

    .line 1145
    const/4 v0, 0x1

    goto :goto_1

    .line 1142
    :cond_6
    new-instance v4, Landroid/support/v4/app/B;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Landroid/support/v4/app/B;-><init>(Landroid/view/animation/Animation;Landroid/support/v4/app/I;)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    return-object v4

    .line 1146
    :catch_0
    move-exception v0

    .line 1147
    throw v0

    .line 1159
    :catch_1
    move-exception v0

    .line 1160
    if-nez v2, :cond_7

    .line 1165
    iget-object v0, p0, Landroid/support/v4/app/aV;->abY:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1166
    if-eqz v0, :cond_0

    .line 1167
    new-instance v1, Landroid/support/v4/app/B;

    invoke-direct {v1, v0, v6}, Landroid/support/v4/app/B;-><init>(Landroid/view/animation/Animation;Landroid/support/v4/app/I;)V

    return-object v1

    .line 1162
    :cond_7
    throw v0

    .line 1174
    :cond_8
    return-object v6

    .line 1179
    :cond_9
    return-object v6

    .line 1184
    :pswitch_0
    iget-object v0, p0, Landroid/support/v4/app/aV;->abY:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x3f900000    # 1.125f

    invoke-static {v0, v1, v7, v8, v7}, Landroid/support/v4/app/aV;->aoS(Landroid/content/Context;FFFF)Landroid/support/v4/app/B;

    move-result-object v0

    return-object v0

    .line 1186
    :pswitch_1
    iget-object v0, p0, Landroid/support/v4/app/aV;->abY:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v7, v9, v7, v8}, Landroid/support/v4/app/aV;->aoS(Landroid/content/Context;FFFF)Landroid/support/v4/app/B;

    move-result-object v0

    return-object v0

    .line 1188
    :pswitch_2
    iget-object v0, p0, Landroid/support/v4/app/aV;->abY:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v9, v7, v8, v7}, Landroid/support/v4/app/aV;->aoS(Landroid/content/Context;FFFF)Landroid/support/v4/app/B;

    move-result-object v0

    return-object v0

    .line 1190
    :pswitch_3
    iget-object v0, p0, Landroid/support/v4/app/aV;->abY:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x3f89999a    # 1.075f

    invoke-static {v0, v7, v1, v7, v8}, Landroid/support/v4/app/aV;->aoS(Landroid/content/Context;FFFF)Landroid/support/v4/app/B;

    move-result-object v0

    return-object v0

    .line 1192
    :pswitch_4
    iget-object v0, p0, Landroid/support/v4/app/aV;->abY:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v8, v7}, Landroid/support/v4/app/aV;->apj(Landroid/content/Context;FF)Landroid/support/v4/app/B;

    move-result-object v0

    return-object v0

    .line 1194
    :pswitch_5
    iget-object v0, p0, Landroid/support/v4/app/aV;->abY:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v7, v8}, Landroid/support/v4/app/aV;->apj(Landroid/content/Context;FF)Landroid/support/v4/app/B;

    move-result-object v0

    return-object v0

    .line 1198
    :cond_a
    iget-object v0, p0, Landroid/support/v4/app/aV;->abY:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->aku()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1199
    iget-object v0, p0, Landroid/support/v4/app/aV;->abY:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->akq()I

    move-result p4

    goto/16 :goto_0

    .line 1202
    :cond_b
    return-object v6

    .line 1148
    :catch_2
    move-exception v3

    goto/16 :goto_1

    .line 1182
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

.method aoW(Landroid/os/Parcelable;Landroid/support/v4/app/az;)V
    .locals 11

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 3014
    if-eqz p1, :cond_3

    .line 3015
    check-cast p1, Landroid/support/v4/app/FragmentManagerState;

    .line 3016
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->aaN:[Landroid/support/v4/app/FragmentState;

    if-eqz v0, :cond_4

    .line 3022
    if-nez p2, :cond_5

    move-object v1, v4

    .line 3055
    :goto_0
    new-instance v0, Landroid/util/SparseArray;

    iget-object v3, p1, Landroid/support/v4/app/FragmentManagerState;->aaN:[Landroid/support/v4/app/FragmentState;

    array-length v3, v3

    invoke-direct {v0, v3}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/app/aV;->acu:Landroid/util/SparseArray;

    move v3, v2

    .line 3056
    :goto_1
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->aaN:[Landroid/support/v4/app/FragmentState;

    array-length v0, v0

    if-lt v3, v0, :cond_d

    .line 3074
    if-nez p2, :cond_12

    .line 3090
    :cond_0
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->aaK:[I

    if-nez v0, :cond_16

    .line 3108
    iput-object v4, p0, Landroid/support/v4/app/aV;->acd:Ljava/util/ArrayList;

    .line 3112
    :cond_1
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->aaL:[Landroid/support/v4/app/BackStackState;

    if-nez v0, :cond_1a

    .line 3130
    iput-object v4, p0, Landroid/support/v4/app/aV;->aco:Ljava/util/ArrayList;

    .line 3133
    :cond_2
    iget v0, p1, Landroid/support/v4/app/FragmentManagerState;->aaM:I

    if-gez v0, :cond_1d

    .line 3136
    :goto_2
    iget v0, p1, Landroid/support/v4/app/FragmentManagerState;->aaO:I

    iput v0, p0, Landroid/support/v4/app/aV;->act:I

    .line 3137
    return-void

    .line 3014
    :cond_3
    return-void

    .line 3016
    :cond_4
    return-void

    .line 3023
    :cond_5
    invoke-virtual {p2}, Landroid/support/v4/app/az;->amV()Ljava/util/List;

    move-result-object v7

    .line 3024
    invoke-virtual {p2}, Landroid/support/v4/app/az;->amW()Ljava/util/List;

    move-result-object v5

    .line 3025
    if-nez v7, :cond_6

    move v1, v2

    :goto_3
    move v6, v2

    .line 3026
    :goto_4
    if-lt v6, v1, :cond_7

    move-object v1, v5

    goto :goto_0

    .line 3025
    :cond_6
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    goto :goto_3

    .line 3027
    :cond_7
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/e;

    .line 3028
    sget-boolean v3, Landroid/support/v4/app/aV;->DEBUG:Z

    if-nez v3, :cond_9

    :goto_5
    move v3, v2

    .line 3030
    :goto_6
    iget-object v8, p1, Landroid/support/v4/app/FragmentManagerState;->aaN:[Landroid/support/v4/app/FragmentState;

    array-length v8, v8

    if-lt v3, v8, :cond_a

    .line 3033
    :cond_8
    iget-object v8, p1, Landroid/support/v4/app/FragmentManagerState;->aaN:[Landroid/support/v4/app/FragmentState;

    array-length v8, v8

    if-eq v3, v8, :cond_b

    .line 3037
    :goto_7
    iget-object v8, p1, Landroid/support/v4/app/FragmentManagerState;->aaN:[Landroid/support/v4/app/FragmentState;

    aget-object v3, v8, v3

    .line 3038
    iput-object v0, v3, Landroid/support/v4/app/FragmentState;->abM:Landroid/support/v4/app/e;

    .line 3039
    iput-object v4, v0, Landroid/support/v4/app/e;->WA:Landroid/util/SparseArray;

    .line 3040
    iput v2, v0, Landroid/support/v4/app/e;->WB:I

    .line 3041
    iput-boolean v2, v0, Landroid/support/v4/app/e;->Wy:Z

    .line 3042
    iput-boolean v2, v0, Landroid/support/v4/app/e;->Wm:Z

    .line 3043
    iput-object v4, v0, Landroid/support/v4/app/e;->WU:Landroid/support/v4/app/e;

    .line 3044
    iget-object v8, v3, Landroid/support/v4/app/FragmentState;->abD:Landroid/os/Bundle;

    if-nez v8, :cond_c

    .line 3026
    :goto_8
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_4

    .line 3028
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

    .line 3030
    :cond_a
    iget-object v8, p1, Landroid/support/v4/app/FragmentManagerState;->aaN:[Landroid/support/v4/app/FragmentState;

    aget-object v8, v8, v3

    iget v8, v8, Landroid/support/v4/app/FragmentState;->abI:I

    iget v9, v0, Landroid/support/v4/app/e;->Wr:I

    if-eq v8, v9, :cond_8

    .line 3031
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 3034
    :cond_b
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Could not find active fragment with index "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Landroid/support/v4/app/e;->Wr:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v8}, Landroid/support/v4/app/aV;->aqc(Ljava/lang/RuntimeException;)V

    goto :goto_7

    .line 3045
    :cond_c
    iget-object v8, v3, Landroid/support/v4/app/FragmentState;->abD:Landroid/os/Bundle;

    iget-object v9, p0, Landroid/support/v4/app/aV;->abY:Landroid/support/v4/app/p;

    invoke-virtual {v9}, Landroid/support/v4/app/p;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 3046
    iget-object v8, v3, Landroid/support/v4/app/FragmentState;->abD:Landroid/os/Bundle;

    const-string/jumbo v9, "android:view_state"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v8

    iput-object v8, v0, Landroid/support/v4/app/e;->WA:Landroid/util/SparseArray;

    .line 3048
    iget-object v3, v3, Landroid/support/v4/app/FragmentState;->abD:Landroid/os/Bundle;

    iput-object v3, v0, Landroid/support/v4/app/e;->WI:Landroid/os/Bundle;

    goto :goto_8

    .line 3057
    :cond_d
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->aaN:[Landroid/support/v4/app/FragmentState;

    aget-object v5, v0, v3

    .line 3058
    if-nez v5, :cond_e

    .line 3056
    :goto_9
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_1

    .line 3060
    :cond_e
    if-nez v1, :cond_10

    :cond_f
    move-object v0, v4

    .line 3063
    :goto_a
    iget-object v6, p0, Landroid/support/v4/app/aV;->abY:Landroid/support/v4/app/p;

    iget-object v7, p0, Landroid/support/v4/app/aV;->ach:Landroid/support/v4/app/ac;

    iget-object v8, p0, Landroid/support/v4/app/aV;->abW:Landroid/support/v4/app/e;

    invoke-virtual {v5, v6, v7, v8, v0}, Landroid/support/v4/app/FragmentState;->anW(Landroid/support/v4/app/p;Landroid/support/v4/app/ac;Landroid/support/v4/app/e;Landroid/support/v4/app/az;)Landroid/support/v4/app/e;

    move-result-object v0

    .line 3064
    sget-boolean v6, Landroid/support/v4/app/aV;->DEBUG:Z

    if-nez v6, :cond_11

    .line 3065
    :goto_b
    iget-object v6, p0, Landroid/support/v4/app/aV;->acu:Landroid/util/SparseArray;

    iget v7, v0, Landroid/support/v4/app/e;->Wr:I

    invoke-virtual {v6, v7, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3069
    iput-object v4, v5, Landroid/support/v4/app/FragmentState;->abM:Landroid/support/v4/app/e;

    goto :goto_9

    .line 3060
    :cond_10
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_f

    .line 3061
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/az;

    goto :goto_a

    .line 3064
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

    .line 3075
    :cond_12
    invoke-virtual {p2}, Landroid/support/v4/app/az;->amV()Ljava/util/List;

    move-result-object v6

    .line 3076
    if-nez v6, :cond_14

    move v3, v2

    :goto_c
    move v5, v2

    .line 3077
    :goto_d
    if-ge v5, v3, :cond_0

    .line 3078
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/e;

    .line 3079
    iget v1, v0, Landroid/support/v4/app/e;->WK:I

    if-gez v1, :cond_15

    .line 3077
    :cond_13
    :goto_e
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_d

    .line 3076
    :cond_14
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    move v3, v0

    goto :goto_c

    .line 3080
    :cond_15
    iget-object v1, p0, Landroid/support/v4/app/aV;->acu:Landroid/util/SparseArray;

    iget v7, v0, Landroid/support/v4/app/e;->WK:I

    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/e;

    iput-object v1, v0, Landroid/support/v4/app/e;->WU:Landroid/support/v4/app/e;

    .line 3081
    iget-object v1, v0, Landroid/support/v4/app/e;->WU:Landroid/support/v4/app/e;

    if-nez v1, :cond_13

    .line 3082
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

    iget v0, v0, Landroid/support/v4/app/e;->WK:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 3091
    :cond_16
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->aaK:[I

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/app/aV;->acd:Ljava/util/ArrayList;

    move v1, v2

    .line 3092
    :goto_f
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->aaK:[I

    array-length v0, v0

    if-ge v1, v0, :cond_1

    .line 3093
    iget-object v0, p0, Landroid/support/v4/app/aV;->acu:Landroid/util/SparseArray;

    iget-object v3, p1, Landroid/support/v4/app/FragmentManagerState;->aaK:[I

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/e;

    .line 3094
    if-eqz v0, :cond_17

    .line 3098
    :goto_10
    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/support/v4/app/e;->Wm:Z

    .line 3099
    sget-boolean v3, Landroid/support/v4/app/aV;->DEBUG:Z

    if-nez v3, :cond_18

    .line 3100
    :goto_11
    iget-object v3, p0, Landroid/support/v4/app/aV;->acd:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 3103
    iget-object v3, p0, Landroid/support/v4/app/aV;->acd:Ljava/util/ArrayList;

    monitor-enter v3

    .line 3104
    :try_start_0
    iget-object v5, p0, Landroid/support/v4/app/aV;->acd:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3105
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3092
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f

    .line 3095
    :cond_17
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "No instantiated fragment for index #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/support/v4/app/FragmentManagerState;->aaK:[I

    aget v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Landroid/support/v4/app/aV;->aqc(Ljava/lang/RuntimeException;)V

    goto :goto_10

    .line 3099
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

    .line 3101
    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already added!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3105
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 3113
    :cond_1a
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->aaL:[Landroid/support/v4/app/BackStackState;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/app/aV;->aco:Ljava/util/ArrayList;

    move v0, v2

    .line 3114
    :goto_12
    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->aaL:[Landroid/support/v4/app/BackStackState;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 3115
    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->aaL:[Landroid/support/v4/app/BackStackState;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Landroid/support/v4/app/BackStackState;->aqI(Landroid/support/v4/app/aV;)Landroid/support/v4/app/U;

    move-result-object v1

    .line 3116
    sget-boolean v3, Landroid/support/v4/app/aV;->DEBUG:Z

    if-nez v3, :cond_1b

    .line 3124
    :goto_13
    iget-object v3, p0, Landroid/support/v4/app/aV;->aco:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3125
    iget v3, v1, Landroid/support/v4/app/U;->YL:I

    if-gez v3, :cond_1c

    .line 3114
    :goto_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 3117
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

    iget v4, v1, Landroid/support/v4/app/U;->YL:I

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

    .line 3119
    new-instance v3, Landroid/support/v4/a/p;

    const-string/jumbo v4, "FragmentManager"

    invoke-direct {v3, v4}, Landroid/support/v4/a/p;-><init>(Ljava/lang/String;)V

    .line 3120
    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 3121
    const-string/jumbo v3, "  "

    invoke-virtual {v1, v3, v4, v2}, Landroid/support/v4/app/U;->amj(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 3122
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V

    goto :goto_13

    .line 3126
    :cond_1c
    iget v3, v1, Landroid/support/v4/app/U;->YL:I

    invoke-virtual {p0, v3, v1}, Landroid/support/v4/app/aV;->apC(ILandroid/support/v4/app/U;)V

    goto :goto_14

    .line 3134
    :cond_1d
    iget-object v0, p0, Landroid/support/v4/app/aV;->acu:Landroid/util/SparseArray;

    iget v1, p1, Landroid/support/v4/app/FragmentManagerState;->aaM:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/e;

    iput-object v0, p0, Landroid/support/v4/app/aV;->acs:Landroid/support/v4/app/e;

    goto/16 :goto_2
.end method

.method aoY()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 2689
    iget-boolean v0, p0, Landroid/support/v4/app/aV;->acA:Z

    if-nez v0, :cond_1

    .line 2702
    :cond_0
    :goto_0
    return-void

    :cond_1
    move v1, v2

    move v3, v2

    .line 2691
    :goto_1
    iget-object v0, p0, Landroid/support/v4/app/aV;->acu:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    .line 2697
    if-nez v3, :cond_0

    .line 2698
    iput-boolean v2, p0, Landroid/support/v4/app/aV;->acA:Z

    .line 2699
    invoke-virtual {p0}, Landroid/support/v4/app/aV;->aoB()V

    goto :goto_0

    .line 2692
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/aV;->acu:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/e;

    .line 2693
    if-nez v0, :cond_4

    .line 2691
    :cond_3
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 2693
    :cond_4
    iget-object v4, v0, Landroid/support/v4/app/e;->WS:Landroid/support/v4/app/aY;

    if-eqz v4, :cond_3

    .line 2694
    iget-object v0, v0, Landroid/support/v4/app/e;->WS:Landroid/support/v4/app/aY;

    invoke-virtual {v0}, Landroid/support/v4/app/aY;->aqt()Z

    move-result v0

    or-int/2addr v3, v0

    goto :goto_2
.end method

.method public aoZ()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2235
    invoke-direct {p0, v1}, Landroid/support/v4/app/aV;->aoM(Z)V

    .line 2238
    :goto_0
    iget-object v2, p0, Landroid/support/v4/app/aV;->acq:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/support/v4/app/aV;->acn:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v3}, Landroid/support/v4/app/aV;->aoD(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2248
    invoke-virtual {p0}, Landroid/support/v4/app/aV;->aoY()V

    .line 2249
    invoke-direct {p0}, Landroid/support/v4/app/aV;->aos()V

    .line 2251
    return v0

    .line 2239
    :cond_0
    iput-boolean v1, p0, Landroid/support/v4/app/aV;->aci:Z

    .line 2241
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/aV;->acq:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v4/app/aV;->acn:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v2}, Landroid/support/v4/app/aV;->aoO(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2243
    invoke-direct {p0}, Landroid/support/v4/app/aV;->apx()V

    move v0, v1

    .line 2245
    goto :goto_0

    .line 2243
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroid/support/v4/app/aV;->apx()V

    throw v0
.end method

.method aoa(IZ)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1790
    iget-object v0, p0, Landroid/support/v4/app/aV;->abY:Landroid/support/v4/app/p;

    if-eqz v0, :cond_3

    .line 1794
    :cond_0
    if-eqz p2, :cond_4

    .line 1798
    :cond_1
    iput p1, p0, Landroid/support/v4/app/aV;->acv:I

    .line 1800
    iget-object v0, p0, Landroid/support/v4/app/aV;->acu:Landroid/util/SparseArray;

    if-nez v0, :cond_5

    .line 1837
    :cond_2
    :goto_0
    return-void

    .line 1790
    :cond_3
    if-eqz p1, :cond_0

    .line 1791
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1794
    :cond_4
    iget v0, p0, Landroid/support/v4/app/aV;->acv:I

    if-ne p1, v0, :cond_1

    .line 1795
    return-void

    .line 1804
    :cond_5
    iget-object v0, p0, Landroid/support/v4/app/aV;->acd:Ljava/util/ArrayList;

    if-nez v0, :cond_7

    move v1, v2

    .line 1817
    :cond_6
    iget-object v0, p0, Landroid/support/v4/app/aV;->acu:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v4

    move v3, v2

    .line 1818
    :goto_1
    if-lt v3, v4, :cond_9

    .line 1828
    if-eqz v1, :cond_f

    .line 1832
    :goto_2
    iget-boolean v0, p0, Landroid/support/v4/app/aV;->acc:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/aV;->abY:Landroid/support/v4/app/p;

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/support/v4/app/aV;->acv:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 1833
    iget-object v0, p0, Landroid/support/v4/app/aV;->abY:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->akm()V

    .line 1834
    iput-boolean v2, p0, Landroid/support/v4/app/aV;->acc:Z

    goto :goto_0

    .line 1805
    :cond_7
    iget-object v0, p0, Landroid/support/v4/app/aV;->acd:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v2

    move v1, v2

    .line 1806
    :goto_3
    if-ge v3, v4, :cond_6

    .line 1807
    iget-object v0, p0, Landroid/support/v4/app/aV;->acd:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/e;

    .line 1808
    invoke-virtual {p0, v0}, Landroid/support/v4/app/aV;->aoi(Landroid/support/v4/app/e;)V

    .line 1809
    iget-object v5, v0, Landroid/support/v4/app/e;->WS:Landroid/support/v4/app/aY;

    if-nez v5, :cond_8

    move v0, v1

    .line 1806
    :goto_4
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_3

    .line 1810
    :cond_8
    iget-object v0, v0, Landroid/support/v4/app/e;->WS:Landroid/support/v4/app/aY;

    invoke-virtual {v0}, Landroid/support/v4/app/aY;->aqt()Z

    move-result v0

    or-int/2addr v0, v1

    goto :goto_4

    .line 1819
    :cond_9
    iget-object v0, p0, Landroid/support/v4/app/aV;->acu:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/e;

    .line 1820
    if-nez v0, :cond_b

    :cond_a
    :goto_5
    move v0, v1

    .line 1818
    :goto_6
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_1

    .line 1820
    :cond_b
    iget-boolean v5, v0, Landroid/support/v4/app/e;->WN:Z

    if-eqz v5, :cond_d

    :cond_c
    iget-boolean v5, v0, Landroid/support/v4/app/e;->WO:Z

    if-nez v5, :cond_a

    .line 1821
    invoke-virtual {p0, v0}, Landroid/support/v4/app/aV;->aoi(Landroid/support/v4/app/e;)V

    .line 1822
    iget-object v5, v0, Landroid/support/v4/app/e;->WS:Landroid/support/v4/app/aY;

    if-nez v5, :cond_e

    move v0, v1

    goto :goto_6

    .line 1820
    :cond_d
    iget-boolean v5, v0, Landroid/support/v4/app/e;->WR:Z

    if-nez v5, :cond_c

    goto :goto_5

    .line 1823
    :cond_e
    iget-object v0, v0, Landroid/support/v4/app/e;->WS:Landroid/support/v4/app/aY;

    invoke-virtual {v0}, Landroid/support/v4/app/aY;->aqt()Z

    move-result v0

    or-int/2addr v0, v1

    goto :goto_6

    .line 1829
    :cond_f
    invoke-virtual {p0}, Landroid/support/v4/app/aV;->aoB()V

    goto :goto_2
.end method

.method public aob()V
    .locals 1

    .prologue
    .line 3185
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/aV;->acj:Z

    .line 3186
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/support/v4/app/aV;->aoT(I)V

    .line 3187
    return-void
.end method

.method public aod(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 3283
    iget-object v1, p0, Landroid/support/v4/app/aV;->acd:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    move-object v3, v0

    move v4, v2

    .line 3298
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/aV;->ack:Ljava/util/ArrayList;

    if-nez v0, :cond_7

    .line 3307
    :cond_1
    iput-object v3, p0, Landroid/support/v4/app/aV;->ack:Ljava/util/ArrayList;

    .line 3309
    return v4

    :cond_2
    move v1, v2

    move-object v3, v0

    move v4, v2

    .line 3284
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/aV;->acd:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 3285
    iget-object v0, p0, Landroid/support/v4/app/aV;->acd:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/e;

    .line 3286
    if-nez v0, :cond_4

    .line 3284
    :cond_3
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 3287
    :cond_4
    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/e;->ajC(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3288
    const/4 v4, 0x1

    .line 3289
    if-eqz v3, :cond_5

    .line 3292
    :goto_2
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3290
    :cond_5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2

    .line 3301
    :cond_6
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3299
    :goto_3
    add-int/lit8 v2, v2, 0x1

    :cond_7
    iget-object v0, p0, Landroid/support/v4/app/aV;->ack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 3300
    iget-object v0, p0, Landroid/support/v4/app/aV;->ack:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/e;

    .line 3301
    if-nez v3, :cond_6

    .line 3302
    :cond_8
    invoke-virtual {v0}, Landroid/support/v4/app/e;->aiF()V

    goto :goto_3
.end method

.method public aoe(Landroid/support/v4/app/e;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1974
    sget-boolean v0, Landroid/support/v4/app/aV;->DEBUG:Z

    if-nez v0, :cond_1

    .line 1975
    :goto_0
    iget-boolean v0, p1, Landroid/support/v4/app/e;->WR:Z

    if-nez v0, :cond_2

    .line 1994
    :cond_0
    :goto_1
    return-void

    .line 1974
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

    .line 1976
    :cond_2
    iput-boolean v2, p1, Landroid/support/v4/app/e;->WR:Z

    .line 1977
    iget-boolean v0, p1, Landroid/support/v4/app/e;->Wm:Z

    if-nez v0, :cond_0

    .line 1978
    iget-object v0, p0, Landroid/support/v4/app/aV;->acd:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 1981
    :goto_2
    iget-object v0, p0, Landroid/support/v4/app/aV;->acd:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1984
    sget-boolean v0, Landroid/support/v4/app/aV;->DEBUG:Z

    if-nez v0, :cond_5

    .line 1985
    :goto_3
    iget-object v1, p0, Landroid/support/v4/app/aV;->acd:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1986
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/aV;->acd:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1987
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1988
    iput-boolean v3, p1, Landroid/support/v4/app/e;->Wm:Z

    .line 1989
    iget-boolean v0, p1, Landroid/support/v4/app/e;->Wu:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Landroid/support/v4/app/e;->WX:Z

    if-eqz v0, :cond_0

    .line 1990
    iput-boolean v3, p0, Landroid/support/v4/app/aV;->acc:Z

    goto :goto_1

    .line 1979
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/aV;->acd:Ljava/util/ArrayList;

    goto :goto_2

    .line 1982
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

    .line 1984
    :cond_5
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

    goto :goto_3

    .line 1987
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method aog()Landroid/os/Parcelable;
    .locals 11

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2901
    invoke-direct {p0}, Landroid/support/v4/app/aV;->apO()V

    .line 2902
    invoke-direct {p0}, Landroid/support/v4/app/aV;->aoc()V

    .line 2903
    invoke-virtual {p0}, Landroid/support/v4/app/aV;->aoZ()Z

    .line 2905
    iput-boolean v2, p0, Landroid/support/v4/app/aV;->acj:Z

    .line 2906
    iput-object v3, p0, Landroid/support/v4/app/aV;->ace:Landroid/support/v4/app/az;

    .line 2908
    iget-object v0, p0, Landroid/support/v4/app/aV;->acu:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 2909
    :cond_0
    return-object v3

    .line 2908
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/aV;->acu:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2913
    iget-object v0, p0, Landroid/support/v4/app/aV;->acu:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 2914
    new-array v7, v6, [Landroid/support/v4/app/FragmentState;

    move v5, v4

    move v1, v4

    .line 2916
    :goto_0
    if-lt v5, v6, :cond_4

    .line 2960
    if-eqz v1, :cond_d

    .line 2969
    iget-object v0, p0, Landroid/support/v4/app/aV;->acd:Ljava/util/ArrayList;

    if-nez v0, :cond_f

    move-object v1, v3

    .line 2987
    :cond_2
    :goto_1
    iget-object v0, p0, Landroid/support/v4/app/aV;->aco:Ljava/util/ArrayList;

    if-nez v0, :cond_13

    .line 2999
    :cond_3
    new-instance v0, Landroid/support/v4/app/FragmentManagerState;

    invoke-direct {v0}, Landroid/support/v4/app/FragmentManagerState;-><init>()V

    .line 3000
    iput-object v7, v0, Landroid/support/v4/app/FragmentManagerState;->aaN:[Landroid/support/v4/app/FragmentState;

    .line 3001
    iput-object v1, v0, Landroid/support/v4/app/FragmentManagerState;->aaK:[I

    .line 3002
    iput-object v3, v0, Landroid/support/v4/app/FragmentManagerState;->aaL:[Landroid/support/v4/app/BackStackState;

    .line 3003
    iget-object v1, p0, Landroid/support/v4/app/aV;->acs:Landroid/support/v4/app/e;

    if-nez v1, :cond_15

    .line 3006
    :goto_2
    iget v1, p0, Landroid/support/v4/app/aV;->act:I

    iput v1, v0, Landroid/support/v4/app/FragmentManagerState;->aaO:I

    .line 3007
    invoke-virtual {p0}, Landroid/support/v4/app/aV;->aou()V

    .line 3008
    return-object v0

    .line 2917
    :cond_4
    iget-object v0, p0, Landroid/support/v4/app/aV;->acu:Landroid/util/SparseArray;

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/e;

    .line 2918
    if-nez v0, :cond_5

    move v0, v1

    .line 2916
    :goto_3
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v1, v0

    goto :goto_0

    .line 2919
    :cond_5
    iget v1, v0, Landroid/support/v4/app/e;->Wr:I

    if-ltz v1, :cond_8

    .line 2927
    :goto_4
    new-instance v1, Landroid/support/v4/app/FragmentState;

    invoke-direct {v1, v0}, Landroid/support/v4/app/FragmentState;-><init>(Landroid/support/v4/app/e;)V

    .line 2928
    aput-object v1, v7, v5

    .line 2930
    iget v8, v0, Landroid/support/v4/app/e;->mState:I

    if-gtz v8, :cond_9

    .line 2952
    :cond_6
    iget-object v8, v0, Landroid/support/v4/app/e;->WI:Landroid/os/Bundle;

    iput-object v8, v1, Landroid/support/v4/app/FragmentState;->abD:Landroid/os/Bundle;

    .line 2955
    :cond_7
    :goto_5
    sget-boolean v8, Landroid/support/v4/app/aV;->DEBUG:Z

    if-nez v8, :cond_c

    :goto_6
    move v0, v2

    goto :goto_3

    .line 2920
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

    iget v9, v0, Landroid/support/v4/app/e;->Wr:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Landroid/support/v4/app/aV;->aqc(Ljava/lang/RuntimeException;)V

    goto :goto_4

    .line 2930
    :cond_9
    iget-object v8, v1, Landroid/support/v4/app/FragmentState;->abD:Landroid/os/Bundle;

    if-nez v8, :cond_6

    .line 2931
    invoke-virtual {p0, v0}, Landroid/support/v4/app/aV;->apN(Landroid/support/v4/app/e;)Landroid/os/Bundle;

    move-result-object v8

    iput-object v8, v1, Landroid/support/v4/app/FragmentState;->abD:Landroid/os/Bundle;

    .line 2933
    iget-object v8, v0, Landroid/support/v4/app/e;->WU:Landroid/support/v4/app/e;

    if-eqz v8, :cond_7

    .line 2934
    iget-object v8, v0, Landroid/support/v4/app/e;->WU:Landroid/support/v4/app/e;

    iget v8, v8, Landroid/support/v4/app/e;->Wr:I

    if-ltz v8, :cond_a

    .line 2939
    :goto_7
    iget-object v8, v1, Landroid/support/v4/app/FragmentState;->abD:Landroid/os/Bundle;

    if-eqz v8, :cond_b

    .line 2942
    :goto_8
    iget-object v8, v1, Landroid/support/v4/app/FragmentState;->abD:Landroid/os/Bundle;

    iget-object v9, v0, Landroid/support/v4/app/e;->WU:Landroid/support/v4/app/e;

    const-string/jumbo v10, "android:target_state"

    invoke-virtual {p0, v8, v10, v9}, Landroid/support/v4/app/aV;->aqe(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/e;)V

    .line 2944
    iget v8, v0, Landroid/support/v4/app/e;->WQ:I

    if-eqz v8, :cond_7

    .line 2945
    iget-object v8, v1, Landroid/support/v4/app/FragmentState;->abD:Landroid/os/Bundle;

    iget v9, v0, Landroid/support/v4/app/e;->WQ:I

    const-string/jumbo v10, "android:target_req_state"

    invoke-virtual {v8, v10, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_5

    .line 2935
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

    iget-object v10, v0, Landroid/support/v4/app/e;->WU:Landroid/support/v4/app/e;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v8}, Landroid/support/v4/app/aV;->aqc(Ljava/lang/RuntimeException;)V

    goto :goto_7

    .line 2940
    :cond_b
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    iput-object v8, v1, Landroid/support/v4/app/FragmentState;->abD:Landroid/os/Bundle;

    goto :goto_8

    .line 2955
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

    iget-object v1, v1, Landroid/support/v4/app/FragmentState;->abD:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 2961
    :cond_d
    sget-boolean v0, Landroid/support/v4/app/aV;->DEBUG:Z

    if-nez v0, :cond_e

    .line 2962
    :goto_9
    return-object v3

    .line 2961
    :cond_e
    const-string/jumbo v0, "FragmentManager"

    const-string/jumbo v1, "saveAllState: no fragments!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 2970
    :cond_f
    iget-object v0, p0, Landroid/support/v4/app/aV;->acd:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 2971
    if-gtz v5, :cond_10

    move-object v1, v3

    goto/16 :goto_1

    .line 2972
    :cond_10
    new-array v1, v5, [I

    move v2, v4

    .line 2973
    :goto_a
    if-ge v2, v5, :cond_2

    .line 2974
    iget-object v0, p0, Landroid/support/v4/app/aV;->acd:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/e;

    iget v0, v0, Landroid/support/v4/app/e;->Wr:I

    aput v0, v1, v2

    .line 2975
    aget v0, v1, v2

    if-ltz v0, :cond_11

    .line 2980
    :goto_b
    sget-boolean v0, Landroid/support/v4/app/aV;->DEBUG:Z

    if-nez v0, :cond_12

    .line 2973
    :goto_c
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_a

    .line 2976
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failure saving state: active "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Landroid/support/v4/app/aV;->acd:Ljava/util/ArrayList;

    .line 2977
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

    .line 2976
    invoke-direct {p0, v0}, Landroid/support/v4/app/aV;->aqc(Ljava/lang/RuntimeException;)V

    goto :goto_b

    .line 2980
    :cond_12
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

    iget-object v6, p0, Landroid/support/v4/app/aV;->acd:Ljava/util/ArrayList;

    const-string/jumbo v8, "FragmentManager"

    .line 2981
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2980
    invoke-static {v8, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 2988
    :cond_13
    iget-object v0, p0, Landroid/support/v4/app/aV;->aco:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 2989
    if-lez v5, :cond_3

    .line 2990
    new-array v3, v5, [Landroid/support/v4/app/BackStackState;

    move v2, v4

    .line 2991
    :goto_d
    if-ge v2, v5, :cond_3

    .line 2992
    new-instance v4, Landroid/support/v4/app/BackStackState;

    iget-object v0, p0, Landroid/support/v4/app/aV;->aco:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/U;

    invoke-direct {v4, v0}, Landroid/support/v4/app/BackStackState;-><init>(Landroid/support/v4/app/U;)V

    aput-object v4, v3, v2

    .line 2993
    sget-boolean v0, Landroid/support/v4/app/aV;->DEBUG:Z

    if-nez v0, :cond_14

    .line 2991
    :goto_e
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_d

    .line 2993
    :cond_14
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

    iget-object v4, p0, Landroid/support/v4/app/aV;->aco:Ljava/util/ArrayList;

    const-string/jumbo v6, "FragmentManager"

    .line 2994
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2993
    invoke-static {v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 3004
    :cond_15
    iget-object v1, p0, Landroid/support/v4/app/aV;->acs:Landroid/support/v4/app/e;

    iget v1, v1, Landroid/support/v4/app/e;->Wr:I

    iput v1, v0, Landroid/support/v4/app/FragmentManagerState;->aaM:I

    goto/16 :goto_2
.end method

.method aoh(Landroid/support/v4/app/e;Landroid/content/Context;Z)V
    .locals 3

    .prologue
    .line 3425
    iget-object v0, p0, Landroid/support/v4/app/aV;->abW:Landroid/support/v4/app/e;

    if-nez v0, :cond_1

    .line 3432
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/aV;->acp:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_2

    .line 3435
    iget-object v0, p0, Landroid/support/v4/app/aV;->acp:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3440
    return-void

    .line 3426
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/aV;->abW:Landroid/support/v4/app/e;

    invoke-virtual {v0}, Landroid/support/v4/app/e;->ajX()Landroid/support/v4/app/bb;

    move-result-object v0

    .line 3427
    instance-of v1, v0, Landroid/support/v4/app/aV;

    if-eqz v1, :cond_0

    .line 3428
    check-cast v0, Landroid/support/v4/app/aV;

    .line 3429
    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v4/app/aV;->aoh(Landroid/support/v4/app/e;Landroid/content/Context;Z)V

    goto :goto_0

    .line 3433
    :cond_2
    return-void

    .line 3435
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/b;

    .line 3436
    if-nez p3, :cond_5

    .line 3437
    :cond_4
    iget-object v0, v0, Landroid/support/v4/a/b;->UU:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/app/ba;

    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v4/app/ba;->aqA(Landroid/support/v4/app/bb;Landroid/support/v4/app/e;Landroid/content/Context;)V

    goto :goto_1

    .line 3436
    :cond_5
    iget-object v1, v0, Landroid/support/v4/a/b;->UV:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1
.end method

.method aoi(Landroid/support/v4/app/e;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1727
    if-eqz p1, :cond_1

    .line 1730
    iget v2, p0, Landroid/support/v4/app/aV;->acv:I

    .line 1731
    iget-boolean v0, p1, Landroid/support/v4/app/e;->WN:Z

    if-nez v0, :cond_2

    .line 1738
    :goto_0
    invoke-virtual {p1}, Landroid/support/v4/app/e;->aiL()I

    move-result v3

    invoke-virtual {p1}, Landroid/support/v4/app/e;->aiN()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/aV;->aov(Landroid/support/v4/app/e;IIIZ)V

    .line 1740
    iget-object v0, p1, Landroid/support/v4/app/e;->mView:Landroid/view/View;

    if-nez v0, :cond_4

    .line 1775
    :cond_0
    :goto_1
    iget-boolean v0, p1, Landroid/support/v4/app/e;->WE:Z

    if-nez v0, :cond_9

    .line 1778
    :goto_2
    return-void

    .line 1728
    :cond_1
    return-void

    .line 1732
    :cond_2
    invoke-virtual {p1}, Landroid/support/v4/app/e;->aiX()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1735
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_0

    .line 1733
    :cond_3
    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_0

    .line 1742
    :cond_4
    invoke-direct {p0, p1}, Landroid/support/v4/app/aV;->apm(Landroid/support/v4/app/e;)Landroid/support/v4/app/e;

    move-result-object v0

    .line 1743
    if-nez v0, :cond_7

    .line 1754
    :cond_5
    :goto_3
    iget-boolean v0, p1, Landroid/support/v4/app/e;->WO:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/support/v4/app/e;->Wj:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1756
    iget v0, p1, Landroid/support/v4/app/e;->WW:F

    cmpl-float v0, v0, v6

    if-lez v0, :cond_6

    .line 1757
    iget-object v0, p1, Landroid/support/v4/app/e;->mView:Landroid/view/View;

    iget v1, p1, Landroid/support/v4/app/e;->WW:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1759
    :cond_6
    iput v6, p1, Landroid/support/v4/app/e;->WW:F

    .line 1760
    iput-boolean v5, p1, Landroid/support/v4/app/e;->WO:Z

    .line 1762
    invoke-virtual {p1}, Landroid/support/v4/app/e;->aiL()I

    move-result v0

    .line 1763
    invoke-virtual {p1}, Landroid/support/v4/app/e;->aiN()I

    move-result v1

    .line 1762
    invoke-virtual {p0, p1, v0, v7, v1}, Landroid/support/v4/app/aV;->aoV(Landroid/support/v4/app/e;IZI)Landroid/support/v4/app/B;

    move-result-object v0

    .line 1764
    if-eqz v0, :cond_0

    .line 1765
    iget-object v1, p1, Landroid/support/v4/app/e;->mView:Landroid/view/View;

    invoke-static {v1, v0}, Landroid/support/v4/app/aV;->apB(Landroid/view/View;Landroid/support/v4/app/B;)V

    .line 1766
    iget-object v1, v0, Landroid/support/v4/app/B;->XZ:Landroid/view/animation/Animation;

    if-nez v1, :cond_8

    .line 1769
    iget-object v1, v0, Landroid/support/v4/app/B;->XY:Landroid/animation/Animator;

    iget-object v2, p1, Landroid/support/v4/app/e;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1770
    iget-object v0, v0, Landroid/support/v4/app/B;->XY:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_1

    .line 1744
    :cond_7
    iget-object v0, v0, Landroid/support/v4/app/e;->mView:Landroid/view/View;

    .line 1746
    iget-object v1, p1, Landroid/support/v4/app/e;->Wj:Landroid/view/ViewGroup;

    .line 1747
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1748
    iget-object v2, p1, Landroid/support/v4/app/e;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 1749
    if-ge v2, v0, :cond_5

    .line 1750
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 1751
    iget-object v2, p1, Landroid/support/v4/app/e;->mView:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_3

    .line 1767
    :cond_8
    iget-object v1, p1, Landroid/support/v4/app/e;->mView:Landroid/view/View;

    iget-object v0, v0, Landroid/support/v4/app/B;->XZ:Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 1776
    :cond_9
    invoke-virtual {p0, p1}, Landroid/support/v4/app/aV;->apb(Landroid/support/v4/app/e;)V

    goto :goto_2
.end method

.method public aoj(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/e;
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 897
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 898
    if-eq v1, v0, :cond_0

    .line 901
    iget-object v0, p0, Landroid/support/v4/app/aV;->acu:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/e;

    .line 902
    if-eqz v0, :cond_1

    .line 906
    :goto_0
    return-object v0

    .line 899
    :cond_0
    return-object v2

    .line 903
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

    invoke-direct {p0, v2}, Landroid/support/v4/app/aV;->aqc(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method aok(Landroid/support/v4/app/e;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1642
    iget-boolean v0, p1, Landroid/support/v4/app/e;->WC:Z

    if-nez v0, :cond_1

    .line 1655
    :cond_0
    :goto_0
    return-void

    .line 1642
    :cond_1
    iget-boolean v0, p1, Landroid/support/v4/app/e;->WF:Z

    if-nez v0, :cond_0

    .line 1643
    iget-object v0, p1, Landroid/support/v4/app/e;->WI:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/e;->aiM(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p1, Landroid/support/v4/app/e;->WI:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v3, v1}, Landroid/support/v4/app/e;->aiO(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/e;->mView:Landroid/view/View;

    .line 1645
    iget-object v0, p1, Landroid/support/v4/app/e;->mView:Landroid/view/View;

    if-nez v0, :cond_2

    .line 1652
    iput-object v3, p1, Landroid/support/v4/app/e;->WL:Landroid/view/View;

    goto :goto_0

    .line 1646
    :cond_2
    iget-object v0, p1, Landroid/support/v4/app/e;->mView:Landroid/view/View;

    iput-object v0, p1, Landroid/support/v4/app/e;->WL:Landroid/view/View;

    .line 1647
    iget-object v0, p1, Landroid/support/v4/app/e;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 1648
    iget-boolean v0, p1, Landroid/support/v4/app/e;->WY:Z

    if-nez v0, :cond_3

    .line 1649
    :goto_1
    iget-object v0, p1, Landroid/support/v4/app/e;->mView:Landroid/view/View;

    iget-object v1, p1, Landroid/support/v4/app/e;->WI:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/e;->ajn(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1650
    iget-object v0, p1, Landroid/support/v4/app/e;->mView:Landroid/view/View;

    iget-object v1, p1, Landroid/support/v4/app/e;->WI:Landroid/os/Bundle;

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/support/v4/app/aV;->apQ(Landroid/support/v4/app/e;Landroid/view/View;Landroid/os/Bundle;Z)V

    goto :goto_0

    .line 1648
    :cond_3
    iget-object v0, p1, Landroid/support/v4/app/e;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public aom()Z
    .locals 3

    .prologue
    .line 792
    invoke-direct {p0}, Landroid/support/v4/app/aV;->apf()V

    .line 793
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/support/v4/app/aV;->aon(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public aoo(Landroid/support/v4/app/U;)I
    .locals 3

    .prologue
    .line 2116
    monitor-enter p0

    .line 2117
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/aV;->abV:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 2118
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/aV;->acl:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 2121
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/aV;->acl:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2122
    sget-boolean v1, Landroid/support/v4/app/aV;->DEBUG:Z

    if-nez v1, :cond_3

    .line 2123
    :goto_1
    iget-object v1, p0, Landroid/support/v4/app/aV;->acl:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2124
    monitor-exit p0

    return v0

    .line 2117
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/aV;->abV:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2127
    iget-object v0, p0, Landroid/support/v4/app/aV;->abV:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/aV;->abV:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2128
    sget-boolean v1, Landroid/support/v4/app/aV;->DEBUG:Z

    if-nez v1, :cond_4

    .line 2129
    :goto_2
    iget-object v1, p0, Landroid/support/v4/app/aV;->acl:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2130
    monitor-exit p0

    return v0

    .line 2119
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/aV;->acl:Ljava/util/ArrayList;

    goto :goto_0

    .line 2132
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2122
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

    .line 2128
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

.method aoq(Landroid/support/v4/app/e;Z)V
    .locals 3

    .prologue
    .line 3626
    iget-object v0, p0, Landroid/support/v4/app/aV;->abW:Landroid/support/v4/app/e;

    if-nez v0, :cond_1

    .line 3633
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/aV;->acp:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_2

    .line 3636
    iget-object v0, p0, Landroid/support/v4/app/aV;->acp:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3641
    return-void

    .line 3627
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/aV;->abW:Landroid/support/v4/app/e;

    invoke-virtual {v0}, Landroid/support/v4/app/e;->ajX()Landroid/support/v4/app/bb;

    move-result-object v0

    .line 3628
    instance-of v1, v0, Landroid/support/v4/app/aV;

    if-eqz v1, :cond_0

    .line 3629
    check-cast v0, Landroid/support/v4/app/aV;

    .line 3630
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/aV;->aoq(Landroid/support/v4/app/e;Z)V

    goto :goto_0

    .line 3634
    :cond_2
    return-void

    .line 3636
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/b;

    .line 3637
    if-nez p2, :cond_5

    .line 3638
    :cond_4
    iget-object v0, v0, Landroid/support/v4/a/b;->UU:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/app/ba;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/app/ba;->aqx(Landroid/support/v4/app/bb;Landroid/support/v4/app/e;)V

    goto :goto_1

    .line 3637
    :cond_5
    iget-object v1, v0, Landroid/support/v4/a/b;->UV:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1
.end method

.method public aot(I)V
    .locals 2

    .prologue
    .line 2161
    monitor-enter p0

    .line 2162
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/aV;->acl:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2163
    iget-object v0, p0, Landroid/support/v4/app/aV;->abV:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2166
    :goto_0
    sget-boolean v0, Landroid/support/v4/app/aV;->DEBUG:Z

    if-nez v0, :cond_1

    .line 2167
    :goto_1
    iget-object v0, p0, Landroid/support/v4/app/aV;->abV:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2168
    monitor-exit p0

    .line 2169
    return-void

    .line 2164
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/aV;->abV:Ljava/util/ArrayList;

    goto :goto_0

    .line 2168
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2166
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

.method aou()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 2808
    iget-object v0, p0, Landroid/support/v4/app/aV;->acu:Landroid/util/SparseArray;

    if-nez v0, :cond_2

    move-object v3, v4

    move-object v5, v4

    .line 2841
    :cond_0
    if-eqz v5, :cond_d

    .line 2844
    :cond_1
    new-instance v0, Landroid/support/v4/app/az;

    invoke-direct {v0, v5, v3}, Landroid/support/v4/app/az;-><init>(Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Landroid/support/v4/app/aV;->ace:Landroid/support/v4/app/az;

    .line 2846
    :goto_0
    return-void

    :cond_2
    move v1, v2

    move-object v3, v4

    move-object v5, v4

    .line 2809
    :goto_1
    iget-object v0, p0, Landroid/support/v4/app/aV;->acu:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 2810
    iget-object v0, p0, Landroid/support/v4/app/aV;->acu:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/e;

    .line 2811
    if-nez v0, :cond_4

    .line 2809
    :cond_3
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 2812
    :cond_4
    iget-boolean v6, v0, Landroid/support/v4/app/e;->WP:Z

    if-nez v6, :cond_6

    .line 2821
    :cond_5
    :goto_3
    iget-object v6, v0, Landroid/support/v4/app/e;->WH:Landroid/support/v4/app/aV;

    if-nez v6, :cond_9

    move v0, v2

    .line 2835
    :goto_4
    if-eqz v3, :cond_3

    if-nez v0, :cond_3

    .line 2836
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2813
    :cond_6
    if-eqz v5, :cond_7

    .line 2816
    :goto_5
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2817
    iget-object v6, v0, Landroid/support/v4/app/e;->WU:Landroid/support/v4/app/e;

    if-nez v6, :cond_8

    const/4 v6, -0x1

    :goto_6
    iput v6, v0, Landroid/support/v4/app/e;->WK:I

    .line 2818
    sget-boolean v6, Landroid/support/v4/app/aV;->DEBUG:Z

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

    .line 2814
    :cond_7
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    goto :goto_5

    .line 2817
    :cond_8
    iget-object v6, v0, Landroid/support/v4/app/e;->WU:Landroid/support/v4/app/e;

    iget v6, v6, Landroid/support/v4/app/e;->Wr:I

    goto :goto_6

    .line 2822
    :cond_9
    iget-object v6, v0, Landroid/support/v4/app/e;->WH:Landroid/support/v4/app/aV;

    invoke-virtual {v6}, Landroid/support/v4/app/aV;->aou()V

    .line 2823
    iget-object v0, v0, Landroid/support/v4/app/e;->WH:Landroid/support/v4/app/aV;

    iget-object v6, v0, Landroid/support/v4/app/aV;->ace:Landroid/support/v4/app/az;

    .line 2824
    if-nez v6, :cond_a

    move v0, v2

    goto :goto_4

    .line 2825
    :cond_a
    if-eqz v3, :cond_c

    .line 2831
    :cond_b
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2832
    const/4 v0, 0x1

    goto :goto_4

    .line 2826
    :cond_c
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, v2

    .line 2827
    :goto_7
    if-ge v0, v1, :cond_b

    .line 2828
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2827
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 2841
    :cond_d
    if-nez v3, :cond_1

    .line 2842
    iput-object v4, p0, Landroid/support/v4/app/aV;->ace:Landroid/support/v4/app/az;

    goto/16 :goto_0
.end method

.method aov(Landroid/support/v4/app/e;IIIZ)V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 1283
    iget-boolean v0, p1, Landroid/support/v4/app/e;->Wm:Z

    if-nez v0, :cond_4

    :cond_0
    if-gt p2, v5, :cond_5

    .line 1286
    :goto_0
    iget-boolean v0, p1, Landroid/support/v4/app/e;->WN:Z

    if-nez v0, :cond_6

    .line 1297
    :cond_1
    :goto_1
    iget-boolean v0, p1, Landroid/support/v4/app/e;->Wn:Z

    if-nez v0, :cond_9

    .line 1300
    :cond_2
    :goto_2
    iget v0, p1, Landroid/support/v4/app/e;->mState:I

    if-le v0, p2, :cond_a

    .line 1469
    iget v0, p1, Landroid/support/v4/app/e;->mState:I

    if-gt v0, p2, :cond_2b

    .line 1577
    :cond_3
    :goto_3
    iget v0, p1, Landroid/support/v4/app/e;->mState:I

    if-ne v0, p2, :cond_45

    .line 1582
    :goto_4
    return-void

    .line 1283
    :cond_4
    iget-boolean v0, p1, Landroid/support/v4/app/e;->WR:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_5
    move p2, v5

    .line 1284
    goto :goto_0

    .line 1286
    :cond_6
    iget v0, p1, Landroid/support/v4/app/e;->mState:I

    if-le p2, v0, :cond_1

    .line 1287
    iget v0, p1, Landroid/support/v4/app/e;->mState:I

    if-eqz v0, :cond_8

    .line 1292
    :cond_7
    iget p2, p1, Landroid/support/v4/app/e;->mState:I

    goto :goto_1

    .line 1287
    :cond_8
    invoke-virtual {p1}, Landroid/support/v4/app/e;->aiX()Z

    move-result v0

    if-eqz v0, :cond_7

    move p2, v5

    .line 1289
    goto :goto_1

    .line 1297
    :cond_9
    iget v0, p1, Landroid/support/v4/app/e;->mState:I

    if-ge v0, v9, :cond_2

    if-le p2, v6, :cond_2

    move p2, v6

    .line 1298
    goto :goto_2

    .line 1304
    :cond_a
    iget-boolean v0, p1, Landroid/support/v4/app/e;->WC:Z

    if-nez v0, :cond_d

    .line 1307
    :cond_b
    invoke-virtual {p1}, Landroid/support/v4/app/e;->aiq()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 1312
    :cond_c
    invoke-virtual {p1, v7}, Landroid/support/v4/app/e;->ajj(Landroid/view/View;)V

    .line 1313
    invoke-virtual {p1, v7}, Landroid/support/v4/app/e;->aje(Landroid/animation/Animator;)V

    .line 1314
    invoke-virtual {p1}, Landroid/support/v4/app/e;->ajH()I

    move-result v2

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/aV;->aov(Landroid/support/v4/app/e;IIIZ)V

    .line 1316
    :goto_5
    iget v0, p1, Landroid/support/v4/app/e;->mState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_3

    .line 1318
    :pswitch_0
    if-gtz p2, :cond_f

    .line 1388
    :goto_6
    :pswitch_1
    invoke-virtual {p0, p1}, Landroid/support/v4/app/aV;->aok(Landroid/support/v4/app/e;)V

    .line 1390
    if-gt p2, v5, :cond_1b

    .line 1449
    :goto_7
    :pswitch_2
    const/4 v0, 0x2

    if-gt p2, v0, :cond_27

    .line 1454
    :goto_8
    :pswitch_3
    if-gt p2, v6, :cond_28

    .line 1461
    :goto_9
    :pswitch_4
    if-le p2, v9, :cond_3

    .line 1462
    sget-boolean v0, Landroid/support/v4/app/aV;->DEBUG:Z

    if-nez v0, :cond_2a

    .line 1463
    :goto_a
    invoke-virtual {p1}, Landroid/support/v4/app/e;->aiK()V

    .line 1464
    invoke-virtual {p0, p1, v3}, Landroid/support/v4/app/aV;->aqb(Landroid/support/v4/app/e;Z)V

    .line 1465
    iput-object v7, p1, Landroid/support/v4/app/e;->WI:Landroid/os/Bundle;

    .line 1466
    iput-object v7, p1, Landroid/support/v4/app/e;->WA:Landroid/util/SparseArray;

    goto :goto_3

    .line 1304
    :cond_d
    iget-boolean v0, p1, Landroid/support/v4/app/e;->Wy:Z

    if-nez v0, :cond_b

    .line 1305
    return-void

    .line 1307
    :cond_e
    invoke-virtual {p1}, Landroid/support/v4/app/e;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_5

    .line 1319
    :cond_f
    sget-boolean v0, Landroid/support/v4/app/aV;->DEBUG:Z

    if-nez v0, :cond_12

    .line 1320
    :goto_b
    iget-object v0, p1, Landroid/support/v4/app/e;->WI:Landroid/os/Bundle;

    if-nez v0, :cond_13

    .line 1341
    :cond_10
    :goto_c
    iget-object v0, p0, Landroid/support/v4/app/aV;->abY:Landroid/support/v4/app/p;

    iput-object v0, p1, Landroid/support/v4/app/e;->Wk:Landroid/support/v4/app/p;

    .line 1342
    iget-object v0, p0, Landroid/support/v4/app/aV;->abW:Landroid/support/v4/app/e;

    iput-object v0, p1, Landroid/support/v4/app/e;->WV:Landroid/support/v4/app/e;

    .line 1343
    iget-object v0, p0, Landroid/support/v4/app/aV;->abW:Landroid/support/v4/app/e;

    if-nez v0, :cond_15

    iget-object v0, p0, Landroid/support/v4/app/aV;->abY:Landroid/support/v4/app/p;

    .line 1344
    invoke-virtual {v0}, Landroid/support/v4/app/p;->akn()Landroid/support/v4/app/aV;

    move-result-object v0

    :goto_d
    iput-object v0, p1, Landroid/support/v4/app/e;->Ww:Landroid/support/v4/app/aV;

    .line 1348
    iget-object v0, p1, Landroid/support/v4/app/e;->WU:Landroid/support/v4/app/e;

    if-nez v0, :cond_16

    .line 1359
    :cond_11
    :goto_e
    iget-object v0, p0, Landroid/support/v4/app/aV;->abY:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v3}, Landroid/support/v4/app/aV;->aoy(Landroid/support/v4/app/e;Landroid/content/Context;Z)V

    .line 1360
    iput-boolean v3, p1, Landroid/support/v4/app/e;->mCalled:Z

    .line 1361
    iget-object v0, p0, Landroid/support/v4/app/aV;->abY:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/e;->ais(Landroid/content/Context;)V

    .line 1362
    iget-boolean v0, p1, Landroid/support/v4/app/e;->mCalled:Z

    if-eqz v0, :cond_18

    .line 1366
    iget-object v0, p1, Landroid/support/v4/app/e;->WV:Landroid/support/v4/app/e;

    if-eqz v0, :cond_19

    .line 1369
    iget-object v0, p1, Landroid/support/v4/app/e;->WV:Landroid/support/v4/app/e;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/e;->aiA(Landroid/support/v4/app/e;)V

    .line 1371
    :goto_f
    iget-object v0, p0, Landroid/support/v4/app/aV;->abY:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v3}, Landroid/support/v4/app/aV;->aoh(Landroid/support/v4/app/e;Landroid/content/Context;Z)V

    .line 1373
    iget-boolean v0, p1, Landroid/support/v4/app/e;->Wp:Z

    if-eqz v0, :cond_1a

    .line 1378
    iget-object v0, p1, Landroid/support/v4/app/e;->WI:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/e;->ajm(Landroid/os/Bundle;)V

    .line 1379
    iput v5, p1, Landroid/support/v4/app/e;->mState:I

    .line 1381
    :goto_10
    iput-boolean v3, p1, Landroid/support/v4/app/e;->Wp:Z

    goto :goto_6

    .line 1319
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

    .line 1321
    :cond_13
    iget-object v0, p1, Landroid/support/v4/app/e;->WI:Landroid/os/Bundle;

    iget-object v1, p0, Landroid/support/v4/app/aV;->abY:Landroid/support/v4/app/p;

    invoke-virtual {v1}, Landroid/support/v4/app/p;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1322
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 1321
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1323
    iget-object v0, p1, Landroid/support/v4/app/e;->WI:Landroid/os/Bundle;

    const-string/jumbo v1, "android:view_state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/e;->WA:Landroid/util/SparseArray;

    .line 1325
    iget-object v0, p1, Landroid/support/v4/app/e;->WI:Landroid/os/Bundle;

    const-string/jumbo v1, "android:target_state"

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/aV;->aoj(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/e;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/e;->WU:Landroid/support/v4/app/e;

    .line 1327
    iget-object v0, p1, Landroid/support/v4/app/e;->WU:Landroid/support/v4/app/e;

    if-nez v0, :cond_14

    .line 1331
    :goto_11
    iget-object v0, p1, Landroid/support/v4/app/e;->WI:Landroid/os/Bundle;

    const-string/jumbo v1, "android:user_visible_hint"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroid/support/v4/app/e;->Wz:Z

    .line 1333
    iget-boolean v0, p1, Landroid/support/v4/app/e;->Wz:Z

    if-nez v0, :cond_10

    .line 1334
    iput-boolean v5, p1, Landroid/support/v4/app/e;->Wn:Z

    .line 1335
    if-le p2, v6, :cond_10

    move p2, v6

    .line 1336
    goto/16 :goto_c

    .line 1328
    :cond_14
    iget-object v0, p1, Landroid/support/v4/app/e;->WI:Landroid/os/Bundle;

    const-string/jumbo v1, "android:target_req_state"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroid/support/v4/app/e;->WQ:I

    goto :goto_11

    .line 1343
    :cond_15
    iget-object v0, p0, Landroid/support/v4/app/aV;->abW:Landroid/support/v4/app/e;

    iget-object v0, v0, Landroid/support/v4/app/e;->WH:Landroid/support/v4/app/aV;

    goto/16 :goto_d

    .line 1349
    :cond_16
    iget-object v0, p0, Landroid/support/v4/app/aV;->acu:Landroid/util/SparseArray;

    iget-object v1, p1, Landroid/support/v4/app/e;->WU:Landroid/support/v4/app/e;

    iget v1, v1, Landroid/support/v4/app/e;->Wr:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p1, Landroid/support/v4/app/e;->WU:Landroid/support/v4/app/e;

    if-ne v0, v1, :cond_17

    .line 1354
    iget-object v0, p1, Landroid/support/v4/app/e;->WU:Landroid/support/v4/app/e;

    iget v0, v0, Landroid/support/v4/app/e;->mState:I

    if-ge v0, v5, :cond_11

    .line 1355
    iget-object v1, p1, Landroid/support/v4/app/e;->WU:Landroid/support/v4/app/e;

    move-object v0, p0

    move v2, v5

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/aV;->aov(Landroid/support/v4/app/e;IIIZ)V

    goto/16 :goto_e

    .line 1350
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

    iget-object v2, p1, Landroid/support/v4/app/e;->WU:Landroid/support/v4/app/e;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " that does not belong to this FragmentManager!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1363
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

    .line 1367
    :cond_19
    iget-object v0, p0, Landroid/support/v4/app/aV;->abY:Landroid/support/v4/app/p;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/p;->akt(Landroid/support/v4/app/e;)V

    goto/16 :goto_f

    .line 1374
    :cond_1a
    iget-object v0, p1, Landroid/support/v4/app/e;->WI:Landroid/os/Bundle;

    invoke-virtual {p0, p1, v0, v3}, Landroid/support/v4/app/aV;->apM(Landroid/support/v4/app/e;Landroid/os/Bundle;Z)V

    .line 1375
    iget-object v0, p1, Landroid/support/v4/app/e;->WI:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/e;->ajr(Landroid/os/Bundle;)V

    .line 1376
    iget-object v0, p1, Landroid/support/v4/app/e;->WI:Landroid/os/Bundle;

    invoke-virtual {p0, p1, v0, v3}, Landroid/support/v4/app/aV;->aqa(Landroid/support/v4/app/e;Landroid/os/Bundle;Z)V

    goto/16 :goto_10

    .line 1391
    :cond_1b
    sget-boolean v0, Landroid/support/v4/app/aV;->DEBUG:Z

    if-nez v0, :cond_1c

    .line 1392
    :goto_12
    iget-boolean v0, p1, Landroid/support/v4/app/e;->WC:Z

    if-eqz v0, :cond_1d

    .line 1440
    :goto_13
    iget-object v0, p1, Landroid/support/v4/app/e;->WI:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/e;->air(Landroid/os/Bundle;)V

    .line 1441
    iget-object v0, p1, Landroid/support/v4/app/e;->WI:Landroid/os/Bundle;

    invoke-virtual {p0, p1, v0, v3}, Landroid/support/v4/app/aV;->apV(Landroid/support/v4/app/e;Landroid/os/Bundle;Z)V

    .line 1442
    iget-object v0, p1, Landroid/support/v4/app/e;->mView:Landroid/view/View;

    if-nez v0, :cond_26

    .line 1445
    :goto_14
    iput-object v7, p1, Landroid/support/v4/app/e;->WI:Landroid/os/Bundle;

    goto/16 :goto_7

    .line 1391
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

    .line 1394
    :cond_1d
    iget v0, p1, Landroid/support/v4/app/e;->Ws:I

    if-nez v0, :cond_1f

    move-object v0, v7

    .line 1416
    :cond_1e
    :goto_15
    iput-object v0, p1, Landroid/support/v4/app/e;->Wj:Landroid/view/ViewGroup;

    .line 1417
    iget-object v1, p1, Landroid/support/v4/app/e;->WI:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Landroid/support/v4/app/e;->aiM(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p1, Landroid/support/v4/app/e;->WI:Landroid/os/Bundle;

    invoke-virtual {p1, v1, v0, v2}, Landroid/support/v4/app/e;->aiO(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p1, Landroid/support/v4/app/e;->mView:Landroid/view/View;

    .line 1419
    iget-object v1, p1, Landroid/support/v4/app/e;->mView:Landroid/view/View;

    if-nez v1, :cond_21

    .line 1436
    iput-object v7, p1, Landroid/support/v4/app/e;->WL:Landroid/view/View;

    goto :goto_13

    .line 1395
    :cond_1f
    iget v0, p1, Landroid/support/v4/app/e;->Ws:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_20

    .line 1401
    :goto_16
    iget-object v0, p0, Landroid/support/v4/app/aV;->ach:Landroid/support/v4/app/ac;

    iget v1, p1, Landroid/support/v4/app/e;->Ws:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ac;->akw(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1402
    if-nez v0, :cond_1e

    iget-boolean v1, p1, Landroid/support/v4/app/e;->Wt:Z

    if-nez v1, :cond_1e

    .line 1405
    :try_start_0
    invoke-virtual {p1}, Landroid/support/v4/app/e;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p1, Landroid/support/v4/app/e;->Ws:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1409
    :goto_17
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "No view found for id 0x"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v8, p1, Landroid/support/v4/app/e;->Ws:I

    .line 1411
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

    .line 1409
    invoke-direct {p0, v2}, Landroid/support/v4/app/aV;->aqc(Ljava/lang/RuntimeException;)V

    goto :goto_15

    .line 1396
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

    invoke-direct {p0, v0}, Landroid/support/v4/app/aV;->aqc(Ljava/lang/RuntimeException;)V

    goto :goto_16

    .line 1406
    :catch_0
    move-exception v1

    .line 1407
    const-string/jumbo v1, "unknown"

    goto :goto_17

    .line 1420
    :cond_21
    iget-object v1, p1, Landroid/support/v4/app/e;->mView:Landroid/view/View;

    iput-object v1, p1, Landroid/support/v4/app/e;->WL:Landroid/view/View;

    .line 1421
    iget-object v1, p1, Landroid/support/v4/app/e;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 1422
    if-nez v0, :cond_23

    .line 1425
    :goto_18
    iget-boolean v0, p1, Landroid/support/v4/app/e;->WY:Z

    if-nez v0, :cond_24

    .line 1428
    :goto_19
    iget-object v0, p1, Landroid/support/v4/app/e;->mView:Landroid/view/View;

    iget-object v1, p1, Landroid/support/v4/app/e;->WI:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/e;->ajn(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1429
    iget-object v0, p1, Landroid/support/v4/app/e;->mView:Landroid/view/View;

    iget-object v1, p1, Landroid/support/v4/app/e;->WI:Landroid/os/Bundle;

    invoke-virtual {p0, p1, v0, v1, v3}, Landroid/support/v4/app/aV;->apQ(Landroid/support/v4/app/e;Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 1433
    iget-object v0, p1, Landroid/support/v4/app/e;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_25

    :goto_1a
    move v5, v3

    :cond_22
    iput-boolean v5, p1, Landroid/support/v4/app/e;->WO:Z

    goto/16 :goto_13

    .line 1423
    :cond_23
    iget-object v1, p1, Landroid/support/v4/app/e;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_18

    .line 1426
    :cond_24
    iget-object v0, p1, Landroid/support/v4/app/e;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_19

    .line 1433
    :cond_25
    iget-object v0, p1, Landroid/support/v4/app/e;->Wj:Landroid/view/ViewGroup;

    if-nez v0, :cond_22

    goto :goto_1a

    .line 1443
    :cond_26
    iget-object v0, p1, Landroid/support/v4/app/e;->WI:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/e;->ajE(Landroid/os/Bundle;)V

    goto/16 :goto_14

    .line 1450
    :cond_27
    iput v6, p1, Landroid/support/v4/app/e;->mState:I

    goto/16 :goto_8

    .line 1455
    :cond_28
    sget-boolean v0, Landroid/support/v4/app/aV;->DEBUG:Z

    if-nez v0, :cond_29

    .line 1456
    :goto_1b
    invoke-virtual {p1}, Landroid/support/v4/app/e;->ajl()V

    .line 1457
    invoke-virtual {p0, p1, v3}, Landroid/support/v4/app/aV;->apX(Landroid/support/v4/app/e;Z)V

    goto/16 :goto_9

    .line 1455
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

    .line 1462
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

    .line 1470
    :cond_2b
    iget v0, p1, Landroid/support/v4/app/e;->mState:I

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_3

    .line 1527
    :cond_2c
    :goto_1c
    :pswitch_5
    if-ge p2, v5, :cond_3

    .line 1528
    iget-boolean v0, p0, Landroid/support/v4/app/aV;->mDestroyed:Z

    if-nez v0, :cond_3f

    .line 1545
    :cond_2d
    :goto_1d
    invoke-virtual {p1}, Landroid/support/v4/app/e;->aiq()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 1550
    :cond_2e
    invoke-virtual {p1, p2}, Landroid/support/v4/app/e;->ajf(I)V

    move p2, v5

    .line 1551
    goto/16 :goto_3

    .line 1472
    :pswitch_6
    const/4 v0, 0x5

    if-lt p2, v0, :cond_31

    .line 1479
    :goto_1e
    :pswitch_7
    if-lt p2, v9, :cond_33

    .line 1486
    :goto_1f
    :pswitch_8
    if-lt p2, v6, :cond_35

    .line 1492
    :goto_20
    :pswitch_9
    const/4 v0, 0x2

    if-ge p2, v0, :cond_2c

    .line 1493
    sget-boolean v0, Landroid/support/v4/app/aV;->DEBUG:Z

    if-nez v0, :cond_37

    .line 1494
    :goto_21
    iget-object v0, p1, Landroid/support/v4/app/e;->mView:Landroid/view/View;

    if-nez v0, :cond_38

    .line 1501
    :cond_2f
    :goto_22
    invoke-virtual {p1}, Landroid/support/v4/app/e;->ajU()V

    .line 1502
    invoke-virtual {p0, p1, v3}, Landroid/support/v4/app/aV;->apa(Landroid/support/v4/app/e;Z)V

    .line 1503
    iget-object v0, p1, Landroid/support/v4/app/e;->mView:Landroid/view/View;

    if-nez v0, :cond_39

    .line 1520
    :cond_30
    :goto_23
    iput-object v7, p1, Landroid/support/v4/app/e;->Wj:Landroid/view/ViewGroup;

    .line 1521
    iput-object v7, p1, Landroid/support/v4/app/e;->mView:Landroid/view/View;

    .line 1522
    iput-object v7, p1, Landroid/support/v4/app/e;->WL:Landroid/view/View;

    .line 1523
    iput-boolean v3, p1, Landroid/support/v4/app/e;->Wy:Z

    goto :goto_1c

    .line 1473
    :cond_31
    sget-boolean v0, Landroid/support/v4/app/aV;->DEBUG:Z

    if-nez v0, :cond_32

    .line 1474
    :goto_24
    invoke-virtual {p1}, Landroid/support/v4/app/e;->aiy()V

    .line 1475
    invoke-virtual {p0, p1, v3}, Landroid/support/v4/app/aV;->aox(Landroid/support/v4/app/e;Z)V

    goto :goto_1e

    .line 1473
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

    .line 1480
    :cond_33
    sget-boolean v0, Landroid/support/v4/app/aV;->DEBUG:Z

    if-nez v0, :cond_34

    .line 1481
    :goto_25
    invoke-virtual {p1}, Landroid/support/v4/app/e;->ajk()V

    .line 1482
    invoke-virtual {p0, p1, v3}, Landroid/support/v4/app/aV;->apT(Landroid/support/v4/app/e;Z)V

    goto :goto_1f

    .line 1480
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

    .line 1487
    :cond_35
    sget-boolean v0, Landroid/support/v4/app/aV;->DEBUG:Z

    if-nez v0, :cond_36

    .line 1488
    :goto_26
    invoke-virtual {p1}, Landroid/support/v4/app/e;->ajF()V

    goto :goto_20

    .line 1487
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

    .line 1493
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

    .line 1497
    :cond_38
    iget-object v0, p0, Landroid/support/v4/app/aV;->abY:Landroid/support/v4/app/p;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/p;->akr(Landroid/support/v4/app/e;)Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p1, Landroid/support/v4/app/e;->WA:Landroid/util/SparseArray;

    if-nez v0, :cond_2f

    .line 1498
    invoke-virtual {p0, p1}, Landroid/support/v4/app/aV;->apo(Landroid/support/v4/app/e;)V

    goto/16 :goto_22

    .line 1503
    :cond_39
    iget-object v0, p1, Landroid/support/v4/app/e;->Wj:Landroid/view/ViewGroup;

    if-eqz v0, :cond_30

    .line 1505
    iget-object v0, p1, Landroid/support/v4/app/e;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 1506
    iget-object v0, p1, Landroid/support/v4/app/e;->Wj:Landroid/view/ViewGroup;

    iget-object v1, p1, Landroid/support/v4/app/e;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 1508
    iget v0, p0, Landroid/support/v4/app/aV;->acv:I

    if-gtz v0, :cond_3b

    :cond_3a
    move-object v0, v7

    .line 1514
    :goto_27
    const/4 v1, 0x0

    iput v1, p1, Landroid/support/v4/app/e;->WW:F

    .line 1515
    if-nez v0, :cond_3e

    .line 1518
    :goto_28
    iget-object v0, p1, Landroid/support/v4/app/e;->Wj:Landroid/view/ViewGroup;

    iget-object v1, p1, Landroid/support/v4/app/e;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto/16 :goto_23

    .line 1508
    :cond_3b
    iget-boolean v0, p0, Landroid/support/v4/app/aV;->mDestroyed:Z

    if-nez v0, :cond_3a

    iget-object v0, p1, Landroid/support/v4/app/e;->mView:Landroid/view/View;

    .line 1509
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3d

    :cond_3c
    move-object v0, v7

    goto :goto_27

    :cond_3d
    iget v0, p1, Landroid/support/v4/app/e;->WW:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3c

    .line 1511
    invoke-virtual {p0, p1, p3, v3, p4}, Landroid/support/v4/app/aV;->aoV(Landroid/support/v4/app/e;IZI)Landroid/support/v4/app/B;

    move-result-object v0

    goto :goto_27

    .line 1516
    :cond_3e
    invoke-direct {p0, p1, v0, p2}, Landroid/support/v4/app/aV;->aop(Landroid/support/v4/app/e;Landroid/support/v4/app/B;I)V

    goto :goto_28

    .line 1535
    :cond_3f
    invoke-virtual {p1}, Landroid/support/v4/app/e;->aiq()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_40

    .line 1539
    invoke-virtual {p1}, Landroid/support/v4/app/e;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 1540
    invoke-virtual {p1}, Landroid/support/v4/app/e;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    .line 1541
    invoke-virtual {p1, v7}, Landroid/support/v4/app/e;->aje(Landroid/animation/Animator;)V

    .line 1542
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    goto/16 :goto_1d

    .line 1536
    :cond_40
    invoke-virtual {p1}, Landroid/support/v4/app/e;->aiq()Landroid/view/View;

    move-result-object v0

    .line 1537
    invoke-virtual {p1, v7}, Landroid/support/v4/app/e;->ajj(Landroid/view/View;)V

    .line 1538
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto/16 :goto_1d

    .line 1545
    :cond_41
    invoke-virtual {p1}, Landroid/support/v4/app/e;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    if-nez v0, :cond_2e

    .line 1553
    sget-boolean v0, Landroid/support/v4/app/aV;->DEBUG:Z

    if-nez v0, :cond_42

    .line 1554
    :goto_29
    iget-boolean v0, p1, Landroid/support/v4/app/e;->Wp:Z

    if-eqz v0, :cond_43

    .line 1558
    iput v3, p1, Landroid/support/v4/app/e;->mState:I

    .line 1561
    :goto_2a
    invoke-virtual {p1}, Landroid/support/v4/app/e;->aiT()V

    .line 1562
    invoke-virtual {p0, p1, v3}, Landroid/support/v4/app/aV;->apn(Landroid/support/v4/app/e;Z)V

    .line 1563
    if-nez p5, :cond_3

    .line 1564
    iget-boolean v0, p1, Landroid/support/v4/app/e;->Wp:Z

    if-eqz v0, :cond_44

    .line 1567
    iput-object v7, p1, Landroid/support/v4/app/e;->Wk:Landroid/support/v4/app/p;

    .line 1568
    iput-object v7, p1, Landroid/support/v4/app/e;->WV:Landroid/support/v4/app/e;

    .line 1569
    iput-object v7, p1, Landroid/support/v4/app/e;->Ww:Landroid/support/v4/app/aV;

    goto/16 :goto_3

    .line 1553
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

    .line 1555
    :cond_43
    invoke-virtual {p1}, Landroid/support/v4/app/e;->aja()V

    .line 1556
    invoke-virtual {p0, p1, v3}, Landroid/support/v4/app/aV;->aoq(Landroid/support/v4/app/e;Z)V

    goto :goto_2a

    .line 1565
    :cond_44
    invoke-virtual {p0, p1}, Landroid/support/v4/app/aV;->aoJ(Landroid/support/v4/app/e;)V

    goto/16 :goto_3

    .line 1578
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

    iget v1, p1, Landroid/support/v4/app/e;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1580
    iput p2, p1, Landroid/support/v4/app/e;->mState:I

    goto/16 :goto_4

    .line 1316
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 1470
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method aox(Landroid/support/v4/app/e;Z)V
    .locals 3

    .prologue
    .line 3554
    iget-object v0, p0, Landroid/support/v4/app/aV;->abW:Landroid/support/v4/app/e;

    if-nez v0, :cond_1

    .line 3561
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/aV;->acp:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_2

    .line 3564
    iget-object v0, p0, Landroid/support/v4/app/aV;->acp:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3569
    return-void

    .line 3555
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/aV;->abW:Landroid/support/v4/app/e;

    invoke-virtual {v0}, Landroid/support/v4/app/e;->ajX()Landroid/support/v4/app/bb;

    move-result-object v0

    .line 3556
    instance-of v1, v0, Landroid/support/v4/app/aV;

    if-eqz v1, :cond_0

    .line 3557
    check-cast v0, Landroid/support/v4/app/aV;

    .line 3558
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/aV;->aox(Landroid/support/v4/app/e;Z)V

    goto :goto_0

    .line 3562
    :cond_2
    return-void

    .line 3564
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/b;

    .line 3565
    if-nez p2, :cond_5

    .line 3566
    :cond_4
    iget-object v0, v0, Landroid/support/v4/a/b;->UU:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/app/ba;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/app/ba;->aqD(Landroid/support/v4/app/bb;Landroid/support/v4/app/e;)V

    goto :goto_1

    .line 3565
    :cond_5
    iget-object v1, v0, Landroid/support/v4/a/b;->UV:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1
.end method

.method aoy(Landroid/support/v4/app/e;Landroid/content/Context;Z)V
    .locals 3

    .prologue
    .line 3407
    iget-object v0, p0, Landroid/support/v4/app/aV;->abW:Landroid/support/v4/app/e;

    if-nez v0, :cond_1

    .line 3414
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/aV;->acp:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_2

    .line 3417
    iget-object v0, p0, Landroid/support/v4/app/aV;->acp:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3422
    return-void

    .line 3408
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/aV;->abW:Landroid/support/v4/app/e;

    invoke-virtual {v0}, Landroid/support/v4/app/e;->ajX()Landroid/support/v4/app/bb;

    move-result-object v0

    .line 3409
    instance-of v1, v0, Landroid/support/v4/app/aV;

    if-eqz v1, :cond_0

    .line 3410
    check-cast v0, Landroid/support/v4/app/aV;

    .line 3411
    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v4/app/aV;->aoy(Landroid/support/v4/app/e;Landroid/content/Context;Z)V

    goto :goto_0

    .line 3415
    :cond_2
    return-void

    .line 3417
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/b;

    .line 3418
    if-nez p3, :cond_5

    .line 3419
    :cond_4
    iget-object v0, v0, Landroid/support/v4/a/b;->UU:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/app/ba;

    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v4/app/ba;->aqF(Landroid/support/v4/app/bb;Landroid/support/v4/app/e;Landroid/content/Context;)V

    goto :goto_1

    .line 3418
    :cond_5
    iget-object v1, v0, Landroid/support/v4/a/b;->UV:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1
.end method

.method public aoz(Landroid/support/v4/app/e;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1944
    sget-boolean v1, Landroid/support/v4/app/aV;->DEBUG:Z

    if-nez v1, :cond_0

    .line 1945
    :goto_0
    iget-boolean v1, p1, Landroid/support/v4/app/e;->WY:Z

    if-nez v1, :cond_1

    .line 1951
    :goto_1
    return-void

    .line 1944
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

    .line 1946
    :cond_1
    iput-boolean v0, p1, Landroid/support/v4/app/e;->WY:Z

    .line 1949
    iget-boolean v1, p1, Landroid/support/v4/app/e;->WE:Z

    if-eqz v1, :cond_2

    :goto_2
    iput-boolean v0, p1, Landroid/support/v4/app/e;->WE:Z

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_2
.end method

.method public apA()Landroid/support/v4/app/e;
    .locals 1

    .prologue
    .line 3378
    iget-object v0, p0, Landroid/support/v4/app/aV;->acs:Landroid/support/v4/app/e;

    return-object v0
.end method

.method public apC(ILandroid/support/v4/app/U;)V
    .locals 3

    .prologue
    .line 2136
    monitor-enter p0

    .line 2137
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/aV;->acl:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2140
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/aV;->acl:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2141
    if-lt p1, v0, :cond_1

    .line 2145
    :goto_1
    if-lt v0, p1, :cond_3

    .line 2154
    sget-boolean v0, Landroid/support/v4/app/aV;->DEBUG:Z

    if-nez v0, :cond_6

    .line 2155
    :goto_2
    iget-object v0, p0, Landroid/support/v4/app/aV;->acl:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2157
    :goto_3
    monitor-exit p0

    .line 2158
    return-void

    .line 2138
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/aV;->acl:Ljava/util/ArrayList;

    goto :goto_0

    .line 2157
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2142
    :cond_1
    :try_start_1
    sget-boolean v0, Landroid/support/v4/app/aV;->DEBUG:Z

    if-nez v0, :cond_2

    .line 2143
    :goto_4
    iget-object v0, p0, Landroid/support/v4/app/aV;->acl:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 2142
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

    .line 2146
    :cond_3
    iget-object v1, p0, Landroid/support/v4/app/aV;->acl:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2147
    iget-object v1, p0, Landroid/support/v4/app/aV;->abV:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    .line 2150
    :goto_5
    sget-boolean v1, Landroid/support/v4/app/aV;->DEBUG:Z

    if-nez v1, :cond_5

    .line 2151
    :goto_6
    iget-object v1, p0, Landroid/support/v4/app/aV;->abV:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2152
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2148
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/aV;->abV:Ljava/util/ArrayList;

    goto :goto_5

    .line 2150
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

    .line 2154
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

.method public apD(II)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 809
    if-ltz p1, :cond_0

    .line 812
    new-instance v0, Landroid/support/v4/app/s;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, Landroid/support/v4/app/s;-><init>(Landroid/support/v4/app/aV;Ljava/lang/String;II)V

    invoke-virtual {p0, v0, v2}, Landroid/support/v4/app/aV;->aoN(Landroid/support/v4/app/aF;Z)V

    .line 813
    return-void

    .line 810
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

.method public apE(Z)V
    .locals 2

    .prologue
    .line 3247
    iget-object v0, p0, Landroid/support/v4/app/aV;->acd:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 3250
    iget-object v0, p0, Landroid/support/v4/app/aV;->acd:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_1

    .line 3256
    return-void

    .line 3248
    :cond_0
    return-void

    .line 3251
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/aV;->acd:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/e;

    .line 3252
    if-nez v0, :cond_2

    .line 3250
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 3253
    :cond_2
    invoke-virtual {v0, p1}, Landroid/support/v4/app/e;->ajo(Z)V

    goto :goto_1
.end method

.method public apG(Ljava/lang/String;)Landroid/support/v4/app/e;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2043
    iget-object v0, p0, Landroid/support/v4/app/aV;->acu:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 2051
    :cond_0
    return-object v2

    .line 2043
    :cond_1
    if-eqz p1, :cond_0

    .line 2044
    iget-object v0, p0, Landroid/support/v4/app/aV;->acu:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 2045
    iget-object v0, p0, Landroid/support/v4/app/aV;->acu:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/e;

    .line 2046
    if-nez v0, :cond_3

    .line 2044
    :cond_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 2046
    :cond_3
    invoke-virtual {v0, p1}, Landroid/support/v4/app/e;->ajx(Ljava/lang/String;)Landroid/support/v4/app/e;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2047
    return-object v0
.end method

.method public apH(Landroid/support/v4/app/e;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1928
    sget-boolean v2, Landroid/support/v4/app/aV;->DEBUG:Z

    if-nez v2, :cond_0

    .line 1929
    :goto_0
    iget-boolean v2, p1, Landroid/support/v4/app/e;->WY:Z

    if-eqz v2, :cond_1

    .line 1935
    :goto_1
    return-void

    .line 1928
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

    .line 1930
    :cond_1
    iput-boolean v1, p1, Landroid/support/v4/app/e;->WY:Z

    .line 1933
    iget-boolean v2, p1, Landroid/support/v4/app/e;->WE:Z

    if-eqz v2, :cond_2

    :goto_2
    iput-boolean v0, p1, Landroid/support/v4/app/e;->WE:Z

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public apI(Landroid/view/Menu;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3314
    iget-object v1, p0, Landroid/support/v4/app/aV;->acd:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 3324
    :goto_0
    return v0

    :cond_0
    move v1, v0

    move v2, v0

    .line 3315
    :goto_1
    iget-object v0, p0, Landroid/support/v4/app/aV;->acd:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    move v0, v2

    goto :goto_0

    .line 3316
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/aV;->acd:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/e;

    .line 3317
    if-nez v0, :cond_3

    .line 3315
    :cond_2
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 3318
    :cond_3
    invoke-virtual {v0, p1}, Landroid/support/v4/app/e;->aiP(Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3319
    const/4 v2, 0x1

    goto :goto_2
.end method

.method public apK(Landroid/support/v4/app/e;)V
    .locals 3

    .prologue
    .line 3368
    if-nez p1, :cond_1

    .line 3373
    :cond_0
    :goto_0
    iput-object p1, p0, Landroid/support/v4/app/aV;->acs:Landroid/support/v4/app/e;

    .line 3374
    return-void

    .line 3368
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/aV;->acu:Landroid/util/SparseArray;

    iget v1, p1, Landroid/support/v4/app/e;->Wr:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_3

    .line 3370
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

    .line 3368
    :cond_3
    iget-object v0, p1, Landroid/support/v4/app/e;->Wk:Landroid/support/v4/app/p;

    if-eqz v0, :cond_0

    .line 3369
    invoke-virtual {p1}, Landroid/support/v4/app/e;->ajX()Landroid/support/v4/app/bb;

    move-result-object v0

    if-ne v0, p0, :cond_2

    goto :goto_0
.end method

.method public apL()V
    .locals 1

    .prologue
    .line 3175
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/aV;->acj:Z

    .line 3176
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/app/aV;->aoT(I)V

    .line 3177
    return-void
.end method

.method apM(Landroid/support/v4/app/e;Landroid/os/Bundle;Z)V
    .locals 3

    .prologue
    .line 3444
    iget-object v0, p0, Landroid/support/v4/app/aV;->abW:Landroid/support/v4/app/e;

    if-nez v0, :cond_1

    .line 3451
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/aV;->acp:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_2

    .line 3454
    iget-object v0, p0, Landroid/support/v4/app/aV;->acp:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3459
    return-void

    .line 3445
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/aV;->abW:Landroid/support/v4/app/e;

    invoke-virtual {v0}, Landroid/support/v4/app/e;->ajX()Landroid/support/v4/app/bb;

    move-result-object v0

    .line 3446
    instance-of v1, v0, Landroid/support/v4/app/aV;

    if-eqz v1, :cond_0

    .line 3447
    check-cast v0, Landroid/support/v4/app/aV;

    .line 3448
    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v4/app/aV;->apM(Landroid/support/v4/app/e;Landroid/os/Bundle;Z)V

    goto :goto_0

    .line 3452
    :cond_2
    return-void

    .line 3454
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/b;

    .line 3455
    if-nez p3, :cond_5

    .line 3456
    :cond_4
    iget-object v0, v0, Landroid/support/v4/a/b;->UU:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/app/ba;

    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v4/app/ba;->aqz(Landroid/support/v4/app/bb;Landroid/support/v4/app/e;Landroid/os/Bundle;)V

    goto :goto_1

    .line 3455
    :cond_5
    iget-object v1, v0, Landroid/support/v4/a/b;->UV:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1
.end method

.method apN(Landroid/support/v4/app/e;)Landroid/os/Bundle;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 2867
    iget-object v1, p0, Landroid/support/v4/app/aV;->abZ:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 2870
    :goto_0
    iget-object v1, p0, Landroid/support/v4/app/aV;->abZ:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Landroid/support/v4/app/e;->ajR(Landroid/os/Bundle;)V

    .line 2871
    iget-object v1, p0, Landroid/support/v4/app/aV;->abZ:Landroid/os/Bundle;

    invoke-virtual {p0, p1, v1, v2}, Landroid/support/v4/app/aV;->aoE(Landroid/support/v4/app/e;Landroid/os/Bundle;Z)V

    .line 2872
    iget-object v1, p0, Landroid/support/v4/app/aV;->abZ:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2877
    :goto_1
    iget-object v1, p1, Landroid/support/v4/app/e;->mView:Landroid/view/View;

    if-nez v1, :cond_2

    .line 2880
    :goto_2
    iget-object v1, p1, Landroid/support/v4/app/e;->WA:Landroid/util/SparseArray;

    if-nez v1, :cond_3

    .line 2887
    :goto_3
    iget-boolean v1, p1, Landroid/support/v4/app/e;->Wz:Z

    if-eqz v1, :cond_5

    .line 2895
    :goto_4
    return-object v0

    .line 2868
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/aV;->abZ:Landroid/os/Bundle;

    goto :goto_0

    .line 2873
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/aV;->abZ:Landroid/os/Bundle;

    .line 2874
    iput-object v0, p0, Landroid/support/v4/app/aV;->abZ:Landroid/os/Bundle;

    move-object v0, v1

    goto :goto_1

    .line 2878
    :cond_2
    invoke-virtual {p0, p1}, Landroid/support/v4/app/aV;->apo(Landroid/support/v4/app/e;)V

    goto :goto_2

    .line 2881
    :cond_3
    if-eqz v0, :cond_4

    .line 2884
    :goto_5
    iget-object v1, p1, Landroid/support/v4/app/e;->WA:Landroid/util/SparseArray;

    const-string/jumbo v2, "android:view_state"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    goto :goto_3

    .line 2882
    :cond_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_5

    .line 2888
    :cond_5
    if-eqz v0, :cond_6

    .line 2892
    :goto_6
    iget-boolean v1, p1, Landroid/support/v4/app/e;->Wz:Z

    const-string/jumbo v2, "android:user_visible_hint"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_4

    .line 2889
    :cond_6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_6
.end method

.method public apP(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3328
    iget-object v0, p0, Landroid/support/v4/app/aV;->acd:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 3338
    :cond_0
    return v2

    :cond_1
    move v1, v2

    .line 3329
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/aV;->acd:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 3330
    iget-object v0, p0, Landroid/support/v4/app/aV;->acd:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/e;

    .line 3331
    if-nez v0, :cond_3

    .line 3329
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 3332
    :cond_3
    invoke-virtual {v0, p1}, Landroid/support/v4/app/e;->ajd(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3333
    const/4 v0, 0x1

    return v0
.end method

.method apQ(Landroid/support/v4/app/e;Landroid/view/View;Landroid/os/Bundle;Z)V
    .locals 3

    .prologue
    .line 3500
    iget-object v0, p0, Landroid/support/v4/app/aV;->abW:Landroid/support/v4/app/e;

    if-nez v0, :cond_1

    .line 3507
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/aV;->acp:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_2

    .line 3510
    iget-object v0, p0, Landroid/support/v4/app/aV;->acp:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3515
    return-void

    .line 3501
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/aV;->abW:Landroid/support/v4/app/e;

    invoke-virtual {v0}, Landroid/support/v4/app/e;->ajX()Landroid/support/v4/app/bb;

    move-result-object v0

    .line 3502
    instance-of v1, v0, Landroid/support/v4/app/aV;

    if-eqz v1, :cond_0

    .line 3503
    check-cast v0, Landroid/support/v4/app/aV;

    .line 3504
    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/support/v4/app/aV;->apQ(Landroid/support/v4/app/e;Landroid/view/View;Landroid/os/Bundle;Z)V

    goto :goto_0

    .line 3508
    :cond_2
    return-void

    .line 3510
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/b;

    .line 3511
    if-nez p4, :cond_5

    .line 3512
    :cond_4
    iget-object v0, v0, Landroid/support/v4/a/b;->UU:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/app/ba;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/support/v4/app/ba;->aqv(Landroid/support/v4/app/bb;Landroid/support/v4/app/e;Landroid/view/View;Landroid/os/Bundle;)V

    goto :goto_1

    .line 3511
    :cond_5
    iget-object v1, v0, Landroid/support/v4/a/b;->UV:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1
.end method

.method public apR(Ljava/lang/String;)Landroid/support/v4/app/e;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2021
    iget-object v0, p0, Landroid/support/v4/app/aV;->acd:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 2030
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/aV;->acu:Landroid/util/SparseArray;

    if-nez v0, :cond_5

    .line 2039
    :cond_1
    return-object v3

    .line 2021
    :cond_2
    if-eqz p1, :cond_0

    .line 2023
    iget-object v0, p0, Landroid/support/v4/app/aV;->acd:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 2024
    iget-object v0, p0, Landroid/support/v4/app/aV;->acd:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/e;

    .line 2025
    if-nez v0, :cond_4

    .line 2023
    :cond_3
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 2025
    :cond_4
    iget-object v2, v0, Landroid/support/v4/app/e;->WM:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2026
    return-object v0

    .line 2030
    :cond_5
    if-eqz p1, :cond_1

    .line 2032
    iget-object v0, p0, Landroid/support/v4/app/aV;->acu:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_1

    .line 2033
    iget-object v0, p0, Landroid/support/v4/app/aV;->acu:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/e;

    .line 2034
    if-nez v0, :cond_7

    .line 2032
    :cond_6
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 2034
    :cond_7
    iget-object v2, v0, Landroid/support/v4/app/e;->WM:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2035
    return-object v0
.end method

.method public apS()Z
    .locals 1

    .prologue
    .line 2067
    iget-boolean v0, p0, Landroid/support/v4/app/aV;->acj:Z

    return v0
.end method

.method apT(Landroid/support/v4/app/e;Z)V
    .locals 3

    .prologue
    .line 3572
    iget-object v0, p0, Landroid/support/v4/app/aV;->abW:Landroid/support/v4/app/e;

    if-nez v0, :cond_1

    .line 3579
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/aV;->acp:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_2

    .line 3582
    iget-object v0, p0, Landroid/support/v4/app/aV;->acp:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3587
    return-void

    .line 3573
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/aV;->abW:Landroid/support/v4/app/e;

    invoke-virtual {v0}, Landroid/support/v4/app/e;->ajX()Landroid/support/v4/app/bb;

    move-result-object v0

    .line 3574
    instance-of v1, v0, Landroid/support/v4/app/aV;

    if-eqz v1, :cond_0

    .line 3575
    check-cast v0, Landroid/support/v4/app/aV;

    .line 3576
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/aV;->apT(Landroid/support/v4/app/e;Z)V

    goto :goto_0

    .line 3580
    :cond_2
    return-void

    .line 3582
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/b;

    .line 3583
    if-nez p2, :cond_5

    .line 3584
    :cond_4
    iget-object v0, v0, Landroid/support/v4/a/b;->UU:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/app/ba;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/app/ba;->aqw(Landroid/support/v4/app/bb;Landroid/support/v4/app/e;)V

    goto :goto_1

    .line 3583
    :cond_5
    iget-object v1, v0, Landroid/support/v4/a/b;->UV:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1
.end method

.method public apU()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 3163
    iput-object v0, p0, Landroid/support/v4/app/aV;->ace:Landroid/support/v4/app/az;

    .line 3164
    iput-boolean v2, p0, Landroid/support/v4/app/aV;->acj:Z

    .line 3165
    iget-object v0, p0, Landroid/support/v4/app/aV;->acd:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/aV;->acd:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, v0

    .line 3166
    :goto_0
    if-lt v2, v1, :cond_1

    .line 3172
    return-void

    :cond_0
    move v1, v2

    .line 3165
    goto :goto_0

    .line 3167
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/aV;->acd:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/e;

    .line 3168
    if-nez v0, :cond_2

    .line 3166
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3169
    :cond_2
    invoke-virtual {v0}, Landroid/support/v4/app/e;->ajM()V

    goto :goto_1
.end method

.method apV(Landroid/support/v4/app/e;Landroid/os/Bundle;Z)V
    .locals 3

    .prologue
    .line 3481
    iget-object v0, p0, Landroid/support/v4/app/aV;->abW:Landroid/support/v4/app/e;

    if-nez v0, :cond_1

    .line 3488
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/aV;->acp:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_2

    .line 3491
    iget-object v0, p0, Landroid/support/v4/app/aV;->acp:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3496
    return-void

    .line 3482
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/aV;->abW:Landroid/support/v4/app/e;

    invoke-virtual {v0}, Landroid/support/v4/app/e;->ajX()Landroid/support/v4/app/bb;

    move-result-object v0

    .line 3483
    instance-of v1, v0, Landroid/support/v4/app/aV;

    if-eqz v1, :cond_0

    .line 3484
    check-cast v0, Landroid/support/v4/app/aV;

    .line 3485
    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v4/app/aV;->apV(Landroid/support/v4/app/e;Landroid/os/Bundle;Z)V

    goto :goto_0

    .line 3489
    :cond_2
    return-void

    .line 3491
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/b;

    .line 3492
    if-nez p3, :cond_5

    .line 3493
    :cond_4
    iget-object v0, v0, Landroid/support/v4/a/b;->UU:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/app/ba;

    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v4/app/ba;->aqG(Landroid/support/v4/app/bb;Landroid/support/v4/app/e;Landroid/os/Bundle;)V

    goto :goto_1

    .line 3492
    :cond_5
    iget-object v1, v0, Landroid/support/v4/a/b;->UV:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1
.end method

.method apX(Landroid/support/v4/app/e;Z)V
    .locals 3

    .prologue
    .line 3518
    iget-object v0, p0, Landroid/support/v4/app/aV;->abW:Landroid/support/v4/app/e;

    if-nez v0, :cond_1

    .line 3525
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/aV;->acp:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_2

    .line 3528
    iget-object v0, p0, Landroid/support/v4/app/aV;->acp:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3533
    return-void

    .line 3519
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/aV;->abW:Landroid/support/v4/app/e;

    invoke-virtual {v0}, Landroid/support/v4/app/e;->ajX()Landroid/support/v4/app/bb;

    move-result-object v0

    .line 3520
    instance-of v1, v0, Landroid/support/v4/app/aV;

    if-eqz v1, :cond_0

    .line 3521
    check-cast v0, Landroid/support/v4/app/aV;

    .line 3522
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/aV;->apX(Landroid/support/v4/app/e;Z)V

    goto :goto_0

    .line 3526
    :cond_2
    return-void

    .line 3528
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/b;

    .line 3529
    if-nez p2, :cond_5

    .line 3530
    :cond_4
    iget-object v0, v0, Landroid/support/v4/a/b;->UU:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/app/ba;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/app/ba;->aqH(Landroid/support/v4/app/bb;Landroid/support/v4/app/e;)V

    goto :goto_1

    .line 3529
    :cond_5
    iget-object v1, v0, Landroid/support/v4/a/b;->UV:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1
.end method

.method apY(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2722
    iget-object v0, p0, Landroid/support/v4/app/aV;->aco:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 2725
    if-eqz p3, :cond_4

    .line 2733
    :cond_0
    const/4 v0, -0x1

    .line 2734
    if-eqz p3, :cond_6

    .line 2737
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/aV;->aco:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 2738
    :goto_0
    if-gez v1, :cond_7

    .line 2748
    :cond_2
    if-ltz v1, :cond_a

    .line 2751
    and-int/lit8 v0, p5, 0x1

    if-nez v0, :cond_b

    move v0, v1

    .line 2765
    :goto_1
    iget-object v1, p0, Landroid/support/v4/app/aV;->aco:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_11

    .line 2768
    iget-object v1, p0, Landroid/support/v4/app/aV;->aco:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_2
    add-int/lit8 v1, v1, -0x1

    if-gt v1, v0, :cond_12

    .line 2773
    :goto_3
    return v4

    .line 2723
    :cond_3
    return v3

    .line 2725
    :cond_4
    if-gez p4, :cond_0

    and-int/lit8 v0, p5, 0x1

    if-nez v0, :cond_0

    .line 2726
    iget-object v0, p0, Landroid/support/v4/app/aV;->aco:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 2727
    if-ltz v0, :cond_5

    .line 2730
    iget-object v1, p0, Landroid/support/v4/app/aV;->aco:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2731
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 2728
    :cond_5
    return v3

    .line 2734
    :cond_6
    if-gez p4, :cond_1

    goto :goto_1

    .line 2739
    :cond_7
    iget-object v0, p0, Landroid/support/v4/app/aV;->aco:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/U;

    .line 2740
    if-nez p3, :cond_8

    .line 2743
    :goto_4
    if-gez p4, :cond_9

    .line 2746
    :goto_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2740
    :cond_8
    invoke-virtual {v0}, Landroid/support/v4/app/U;->ame()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_4

    .line 2743
    :cond_9
    iget v0, v0, Landroid/support/v4/app/U;->YL:I

    if-eq p4, v0, :cond_2

    goto :goto_5

    .line 2749
    :cond_a
    return v3

    .line 2752
    :cond_b
    add-int/lit8 v1, v1, -0x1

    .line 2754
    :goto_6
    if-gez v1, :cond_c

    move v0, v1

    goto :goto_1

    .line 2755
    :cond_c
    iget-object v0, p0, Landroid/support/v4/app/aV;->aco:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/U;

    .line 2756
    if-nez p3, :cond_e

    :cond_d
    if-gez p4, :cond_10

    :goto_7
    move v0, v1

    goto :goto_1

    :cond_e
    invoke-virtual {v0}, Landroid/support/v4/app/U;->ame()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2758
    :cond_f
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 2756
    :cond_10
    iget v0, v0, Landroid/support/v4/app/U;->YL:I

    if-eq p4, v0, :cond_f

    goto :goto_7

    .line 2766
    :cond_11
    return v3

    .line 2769
    :cond_12
    iget-object v2, p0, Landroid/support/v4/app/aV;->aco:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2770
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2
.end method

.method apZ(I)Z
    .locals 1

    .prologue
    .line 1276
    iget v0, p0, Landroid/support/v4/app/aV;->acv:I

    if-ge v0, p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method apa(Landroid/support/v4/app/e;Z)V
    .locals 3

    .prologue
    .line 3608
    iget-object v0, p0, Landroid/support/v4/app/aV;->abW:Landroid/support/v4/app/e;

    if-nez v0, :cond_1

    .line 3615
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/aV;->acp:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_2

    .line 3618
    iget-object v0, p0, Landroid/support/v4/app/aV;->acp:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3623
    return-void

    .line 3609
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/aV;->abW:Landroid/support/v4/app/e;

    invoke-virtual {v0}, Landroid/support/v4/app/e;->ajX()Landroid/support/v4/app/bb;

    move-result-object v0

    .line 3610
    instance-of v1, v0, Landroid/support/v4/app/aV;

    if-eqz v1, :cond_0

    .line 3611
    check-cast v0, Landroid/support/v4/app/aV;

    .line 3612
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/aV;->apa(Landroid/support/v4/app/e;Z)V

    goto :goto_0

    .line 3616
    :cond_2
    return-void

    .line 3618
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/b;

    .line 3619
    if-nez p2, :cond_5

    .line 3620
    :cond_4
    iget-object v0, v0, Landroid/support/v4/a/b;->UU:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/app/ba;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/app/ba;->aqB(Landroid/support/v4/app/bb;Landroid/support/v4/app/e;)V

    goto :goto_1

    .line 3619
    :cond_5
    iget-object v1, v0, Landroid/support/v4/a/b;->UV:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1
.end method

.method apb(Landroid/support/v4/app/e;)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1668
    iget-object v0, p1, Landroid/support/v4/app/e;->mView:Landroid/view/View;

    if-nez v0, :cond_2

    .line 1713
    :cond_0
    :goto_0
    iget-boolean v0, p1, Landroid/support/v4/app/e;->Wm:Z

    if-nez v0, :cond_b

    .line 1716
    :cond_1
    :goto_1
    iput-boolean v1, p1, Landroid/support/v4/app/e;->WE:Z

    .line 1717
    iget-boolean v0, p1, Landroid/support/v4/app/e;->WY:Z

    invoke-virtual {p1, v0}, Landroid/support/v4/app/e;->ajS(Z)V

    .line 1718
    return-void

    .line 1669
    :cond_2
    invoke-virtual {p1}, Landroid/support/v4/app/e;->aiL()I

    move-result v3

    iget-boolean v0, p1, Landroid/support/v4/app/e;->WY:Z

    if-eqz v0, :cond_5

    move v0, v1

    .line 1670
    :goto_2
    invoke-virtual {p1}, Landroid/support/v4/app/e;->aiN()I

    move-result v4

    .line 1669
    invoke-virtual {p0, p1, v3, v0, v4}, Landroid/support/v4/app/aV;->aoV(Landroid/support/v4/app/e;IZI)Landroid/support/v4/app/B;

    move-result-object v0

    .line 1671
    if-nez v0, :cond_6

    .line 1699
    :cond_3
    if-nez v0, :cond_9

    .line 1704
    :goto_3
    iget-boolean v0, p1, Landroid/support/v4/app/e;->WY:Z

    if-nez v0, :cond_a

    :cond_4
    move v0, v1

    .line 1707
    :goto_4
    iget-object v3, p1, Landroid/support/v4/app/e;->mView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1708
    invoke-virtual {p1}, Landroid/support/v4/app/e;->aix()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1709
    invoke-virtual {p1, v1}, Landroid/support/v4/app/e;->ajw(Z)V

    goto :goto_0

    :cond_5
    move v0, v2

    .line 1669
    goto :goto_2

    .line 1671
    :cond_6
    iget-object v3, v0, Landroid/support/v4/app/B;->XY:Landroid/animation/Animator;

    if-eqz v3, :cond_3

    .line 1672
    iget-object v3, v0, Landroid/support/v4/app/B;->XY:Landroid/animation/Animator;

    iget-object v4, p1, Landroid/support/v4/app/e;->mView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1673
    iget-boolean v3, p1, Landroid/support/v4/app/e;->WY:Z

    if-nez v3, :cond_7

    .line 1694
    iget-object v3, p1, Landroid/support/v4/app/e;->mView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1696
    :goto_5
    iget-object v3, p1, Landroid/support/v4/app/e;->mView:Landroid/view/View;

    invoke-static {v3, v0}, Landroid/support/v4/app/aV;->apB(Landroid/view/View;Landroid/support/v4/app/B;)V

    .line 1697
    iget-object v0, v0, Landroid/support/v4/app/B;->XY:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 1674
    :cond_7
    invoke-virtual {p1}, Landroid/support/v4/app/e;->aix()Z

    move-result v3

    if-nez v3, :cond_8

    .line 1677
    iget-object v3, p1, Landroid/support/v4/app/e;->Wj:Landroid/view/ViewGroup;

    .line 1678
    iget-object v4, p1, Landroid/support/v4/app/e;->mView:Landroid/view/View;

    .line 1679
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 1682
    iget-object v5, v0, Landroid/support/v4/app/B;->XY:Landroid/animation/Animator;

    new-instance v6, Landroid/support/v4/app/aK;

    invoke-direct {v6, p0, v3, v4, p1}, Landroid/support/v4/app/aK;-><init>(Landroid/support/v4/app/aV;Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/v4/app/e;)V

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_5

    .line 1675
    :cond_8
    invoke-virtual {p1, v1}, Landroid/support/v4/app/e;->ajw(Z)V

    goto :goto_5

    .line 1700
    :cond_9
    iget-object v3, p1, Landroid/support/v4/app/e;->mView:Landroid/view/View;

    invoke-static {v3, v0}, Landroid/support/v4/app/aV;->apB(Landroid/view/View;Landroid/support/v4/app/B;)V

    .line 1701
    iget-object v3, p1, Landroid/support/v4/app/e;->mView:Landroid/view/View;

    iget-object v4, v0, Landroid/support/v4/app/B;->XZ:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1702
    iget-object v0, v0, Landroid/support/v4/app/B;->XZ:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    goto :goto_3

    .line 1704
    :cond_a
    invoke-virtual {p1}, Landroid/support/v4/app/e;->aix()Z

    move-result v0

    if-nez v0, :cond_4

    const/16 v0, 0x8

    goto :goto_4

    .line 1713
    :cond_b
    iget-boolean v0, p1, Landroid/support/v4/app/e;->Wu:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Landroid/support/v4/app/e;->WX:Z

    if-eqz v0, :cond_1

    .line 1714
    iput-boolean v2, p0, Landroid/support/v4/app/aV;->acc:Z

    goto/16 :goto_1
.end method

.method public apc(Landroid/view/Menu;)V
    .locals 2

    .prologue
    .line 3356
    iget-object v0, p0, Landroid/support/v4/app/aV;->acd:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 3364
    :cond_0
    return-void

    .line 3357
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/aV;->acd:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 3358
    iget-object v0, p0, Landroid/support/v4/app/aV;->acd:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/e;

    .line 3359
    if-nez v0, :cond_2

    .line 3357
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 3360
    :cond_2
    invoke-virtual {v0, p1}, Landroid/support/v4/app/e;->aiH(Landroid/view/Menu;)V

    goto :goto_1
.end method

.method public apd(Landroid/support/v4/app/e;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1905
    sget-boolean v0, Landroid/support/v4/app/aV;->DEBUG:Z

    if-nez v0, :cond_2

    .line 1906
    :goto_0
    invoke-virtual {p1}, Landroid/support/v4/app/e;->aiX()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 1907
    :goto_1
    iget-boolean v3, p1, Landroid/support/v4/app/e;->WR:Z

    if-nez v3, :cond_4

    .line 1908
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/aV;->acd:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 1913
    :goto_2
    iget-boolean v0, p1, Landroid/support/v4/app/e;->Wu:Z

    if-nez v0, :cond_6

    .line 1916
    :cond_1
    :goto_3
    iput-boolean v1, p1, Landroid/support/v4/app/e;->Wm:Z

    .line 1917
    iput-boolean v2, p1, Landroid/support/v4/app/e;->WN:Z

    .line 1919
    :goto_4
    return-void

    .line 1905
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

    iget v3, p1, Landroid/support/v4/app/e;->WB:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "FragmentManager"

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move v0, v2

    .line 1906
    goto :goto_1

    .line 1907
    :cond_4
    if-nez v0, :cond_0

    goto :goto_4

    .line 1909
    :cond_5
    iget-object v3, p0, Landroid/support/v4/app/aV;->acd:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1910
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/aV;->acd:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1911
    monitor-exit v3

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1913
    :cond_6
    iget-boolean v0, p1, Landroid/support/v4/app/e;->WX:Z

    if-eqz v0, :cond_1

    .line 1914
    iput-boolean v2, p0, Landroid/support/v4/app/aV;->acc:Z

    goto :goto_3
.end method

.method public apg()Landroid/support/v4/app/y;
    .locals 1

    .prologue
    .line 775
    new-instance v0, Landroid/support/v4/app/U;

    invoke-direct {v0, p0}, Landroid/support/v4/app/U;-><init>(Landroid/support/v4/app/aV;)V

    return-object v0
.end method

.method public aph(Landroid/support/v4/app/e;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1954
    sget-boolean v0, Landroid/support/v4/app/aV;->DEBUG:Z

    if-nez v0, :cond_1

    .line 1955
    :goto_0
    iget-boolean v0, p1, Landroid/support/v4/app/e;->WR:Z

    if-eqz v0, :cond_2

    .line 1971
    :cond_0
    :goto_1
    return-void

    .line 1954
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

    .line 1956
    :cond_2
    iput-boolean v3, p1, Landroid/support/v4/app/e;->WR:Z

    .line 1957
    iget-boolean v0, p1, Landroid/support/v4/app/e;->Wm:Z

    if-eqz v0, :cond_0

    .line 1959
    iget-object v0, p0, Landroid/support/v4/app/aV;->acd:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    .line 1965
    :goto_2
    iget-boolean v0, p1, Landroid/support/v4/app/e;->Wu:Z

    if-nez v0, :cond_6

    .line 1968
    :cond_3
    :goto_3
    iput-boolean v2, p1, Landroid/support/v4/app/e;->Wm:Z

    goto :goto_1

    .line 1960
    :cond_4
    sget-boolean v0, Landroid/support/v4/app/aV;->DEBUG:Z

    if-nez v0, :cond_5

    .line 1961
    :goto_4
    iget-object v1, p0, Landroid/support/v4/app/aV;->acd:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1962
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/aV;->acd:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1963
    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1960
    :cond_5
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

    goto :goto_4

    .line 1965
    :cond_6
    iget-boolean v0, p1, Landroid/support/v4/app/e;->WX:Z

    if-eqz v0, :cond_3

    .line 1966
    iput-boolean v3, p0, Landroid/support/v4/app/aV;->acc:Z

    goto :goto_3
.end method

.method public apk(I)Landroid/support/v4/app/e;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1998
    iget-object v0, p0, Landroid/support/v4/app/aV;->acd:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 2007
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/aV;->acu:Landroid/util/SparseArray;

    if-nez v0, :cond_5

    .line 2016
    :cond_1
    return-object v3

    .line 2000
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/aV;->acd:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 2001
    iget-object v0, p0, Landroid/support/v4/app/aV;->acd:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/e;

    .line 2002
    if-nez v0, :cond_4

    .line 2000
    :cond_3
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 2002
    :cond_4
    iget v2, v0, Landroid/support/v4/app/e;->Wx:I

    if-ne v2, p1, :cond_3

    .line 2003
    return-object v0

    .line 2009
    :cond_5
    iget-object v0, p0, Landroid/support/v4/app/aV;->acu:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_1

    .line 2010
    iget-object v0, p0, Landroid/support/v4/app/aV;->acu:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/e;

    .line 2011
    if-nez v0, :cond_7

    .line 2009
    :cond_6
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 2011
    :cond_7
    iget v2, v0, Landroid/support/v4/app/e;->Wx:I

    if-ne v2, p1, :cond_6

    .line 2012
    return-object v0
.end method

.method public apl()V
    .locals 1

    .prologue
    .line 3195
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/support/v4/app/aV;->aoT(I)V

    .line 3196
    return-void
.end method

.method apn(Landroid/support/v4/app/e;Z)V
    .locals 3

    .prologue
    .line 3644
    iget-object v0, p0, Landroid/support/v4/app/aV;->abW:Landroid/support/v4/app/e;

    if-nez v0, :cond_1

    .line 3651
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/aV;->acp:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_2

    .line 3654
    iget-object v0, p0, Landroid/support/v4/app/aV;->acp:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3659
    return-void

    .line 3645
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/aV;->abW:Landroid/support/v4/app/e;

    invoke-virtual {v0}, Landroid/support/v4/app/e;->ajX()Landroid/support/v4/app/bb;

    move-result-object v0

    .line 3646
    instance-of v1, v0, Landroid/support/v4/app/aV;

    if-eqz v1, :cond_0

    .line 3647
    check-cast v0, Landroid/support/v4/app/aV;

    .line 3648
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/aV;->apn(Landroid/support/v4/app/e;Z)V

    goto :goto_0

    .line 3652
    :cond_2
    return-void

    .line 3654
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/b;

    .line 3655
    if-nez p2, :cond_5

    .line 3656
    :cond_4
    iget-object v0, v0, Landroid/support/v4/a/b;->UU:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/app/ba;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/app/ba;->aqy(Landroid/support/v4/app/bb;Landroid/support/v4/app/e;)V

    goto :goto_1

    .line 3655
    :cond_5
    iget-object v1, v0, Landroid/support/v4/a/b;->UV:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1
.end method

.method apo(Landroid/support/v4/app/e;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2849
    iget-object v0, p1, Landroid/support/v4/app/e;->WL:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2852
    iget-object v0, p0, Landroid/support/v4/app/aV;->acy:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    .line 2855
    iget-object v0, p0, Landroid/support/v4/app/aV;->acy:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2857
    :goto_0
    iget-object v0, p1, Landroid/support/v4/app/e;->WL:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/app/aV;->acy:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 2858
    iget-object v0, p0, Landroid/support/v4/app/aV;->acy:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 2862
    :goto_1
    return-void

    .line 2850
    :cond_0
    return-void

    .line 2853
    :cond_1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/aV;->acy:Landroid/util/SparseArray;

    goto :goto_0

    .line 2859
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/aV;->acy:Landroid/util/SparseArray;

    iput-object v0, p1, Landroid/support/v4/app/e;->WA:Landroid/util/SparseArray;

    .line 2860
    iput-object v2, p0, Landroid/support/v4/app/aV;->acy:Landroid/util/SparseArray;

    goto :goto_1
.end method

.method public app(Landroid/support/v4/app/e;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1878
    iget-object v0, p0, Landroid/support/v4/app/aV;->acd:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1881
    :goto_0
    sget-boolean v0, Landroid/support/v4/app/aV;->DEBUG:Z

    if-nez v0, :cond_2

    .line 1882
    :goto_1
    invoke-virtual {p0, p1}, Landroid/support/v4/app/aV;->apt(Landroid/support/v4/app/e;)V

    .line 1883
    iget-boolean v0, p1, Landroid/support/v4/app/e;->WR:Z

    if-eqz v0, :cond_3

    .line 1902
    :cond_0
    :goto_2
    return-void

    .line 1879
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/aV;->acd:Ljava/util/ArrayList;

    goto :goto_0

    .line 1881
    :cond_2
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

    goto :goto_1

    .line 1884
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/aV;->acd:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1887
    iget-object v1, p0, Landroid/support/v4/app/aV;->acd:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1888
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/aV;->acd:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1889
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1890
    iput-boolean v3, p1, Landroid/support/v4/app/e;->Wm:Z

    .line 1891
    iput-boolean v2, p1, Landroid/support/v4/app/e;->WN:Z

    .line 1892
    iget-object v0, p1, Landroid/support/v4/app/e;->mView:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 1895
    :goto_3
    iget-boolean v0, p1, Landroid/support/v4/app/e;->Wu:Z

    if-nez v0, :cond_7

    .line 1898
    :cond_4
    :goto_4
    if-eqz p2, :cond_0

    .line 1899
    invoke-virtual {p0, p1}, Landroid/support/v4/app/aV;->apu(Landroid/support/v4/app/e;)V

    goto :goto_2

    .line 1885
    :cond_5
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

    .line 1889
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1893
    :cond_6
    iput-boolean v2, p1, Landroid/support/v4/app/e;->WE:Z

    goto :goto_3

    .line 1895
    :cond_7
    iget-boolean v0, p1, Landroid/support/v4/app/e;->WX:Z

    if-eqz v0, :cond_4

    .line 1896
    iput-boolean v3, p0, Landroid/support/v4/app/aV;->acc:Z

    goto :goto_4
.end method

.method public apq(Landroid/support/v4/app/e;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1219
    iget-boolean v0, p1, Landroid/support/v4/app/e;->Wn:Z

    if-nez v0, :cond_0

    .line 1228
    :goto_0
    return-void

    .line 1220
    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/app/aV;->aci:Z

    if-nez v0, :cond_1

    .line 1225
    iput-boolean v3, p1, Landroid/support/v4/app/e;->Wn:Z

    .line 1226
    iget v2, p0, Landroid/support/v4/app/aV;->acv:I

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/aV;->aov(Landroid/support/v4/app/e;IIIZ)V

    goto :goto_0

    .line 1222
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/aV;->acA:Z

    .line 1223
    return-void
.end method

.method public aps(Landroid/support/v4/app/p;Landroid/support/v4/app/ac;Landroid/support/v4/app/e;)V
    .locals 2

    .prologue
    .line 3156
    iget-object v0, p0, Landroid/support/v4/app/aV;->abY:Landroid/support/v4/app/p;

    if-nez v0, :cond_0

    .line 3157
    iput-object p1, p0, Landroid/support/v4/app/aV;->abY:Landroid/support/v4/app/p;

    .line 3158
    iput-object p2, p0, Landroid/support/v4/app/aV;->ach:Landroid/support/v4/app/ac;

    .line 3159
    iput-object p3, p0, Landroid/support/v4/app/aV;->abW:Landroid/support/v4/app/e;

    .line 3160
    return-void

    .line 3156
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already attached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method apt(Landroid/support/v4/app/e;)V
    .locals 2

    .prologue
    .line 1851
    iget v0, p1, Landroid/support/v4/app/e;->Wr:I

    if-gez v0, :cond_0

    .line 1855
    iget v0, p0, Landroid/support/v4/app/aV;->act:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/support/v4/app/aV;->act:I

    iget-object v1, p0, Landroid/support/v4/app/aV;->abW:Landroid/support/v4/app/e;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/e;->ajy(ILandroid/support/v4/app/e;)V

    .line 1856
    iget-object v0, p0, Landroid/support/v4/app/aV;->acu:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    .line 1859
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/aV;->acu:Landroid/util/SparseArray;

    iget v1, p1, Landroid/support/v4/app/e;->Wr:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1860
    sget-boolean v0, Landroid/support/v4/app/aV;->DEBUG:Z

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

    iput-object v0, p0, Landroid/support/v4/app/aV;->acu:Landroid/util/SparseArray;

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

.method apu(Landroid/support/v4/app/e;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1638
    iget v2, p0, Landroid/support/v4/app/aV;->acv:I

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/aV;->aov(Landroid/support/v4/app/e;IIIZ)V

    .line 1639
    return-void
.end method

.method public apv()V
    .locals 1

    .prologue
    .line 3180
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/aV;->acj:Z

    .line 3181
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/support/v4/app/aV;->aoT(I)V

    .line 3182
    return-void
.end method

.method public apz(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 3259
    iget-object v0, p0, Landroid/support/v4/app/aV;->acd:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 3267
    :cond_0
    return-void

    .line 3260
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/aV;->acd:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 3261
    iget-object v0, p0, Landroid/support/v4/app/aV;->acd:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/e;

    .line 3262
    if-nez v0, :cond_2

    .line 3260
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 3263
    :cond_2
    invoke-virtual {v0, p1}, Landroid/support/v4/app/e;->aiW(Landroid/content/res/Configuration;)V

    goto :goto_1
.end method

.method aqa(Landroid/support/v4/app/e;Landroid/os/Bundle;Z)V
    .locals 3

    .prologue
    .line 3462
    iget-object v0, p0, Landroid/support/v4/app/aV;->abW:Landroid/support/v4/app/e;

    if-nez v0, :cond_1

    .line 3469
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/aV;->acp:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_2

    .line 3472
    iget-object v0, p0, Landroid/support/v4/app/aV;->acp:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3477
    return-void

    .line 3463
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/aV;->abW:Landroid/support/v4/app/e;

    invoke-virtual {v0}, Landroid/support/v4/app/e;->ajX()Landroid/support/v4/app/bb;

    move-result-object v0

    .line 3464
    instance-of v1, v0, Landroid/support/v4/app/aV;

    if-eqz v1, :cond_0

    .line 3465
    check-cast v0, Landroid/support/v4/app/aV;

    .line 3466
    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v4/app/aV;->aqa(Landroid/support/v4/app/e;Landroid/os/Bundle;Z)V

    goto :goto_0

    .line 3470
    :cond_2
    return-void

    .line 3472
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/b;

    .line 3473
    if-nez p3, :cond_5

    .line 3474
    :cond_4
    iget-object v0, v0, Landroid/support/v4/a/b;->UU:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/app/ba;

    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v4/app/ba;->aqC(Landroid/support/v4/app/bb;Landroid/support/v4/app/e;Landroid/os/Bundle;)V

    goto :goto_1

    .line 3473
    :cond_5
    iget-object v1, v0, Landroid/support/v4/a/b;->UV:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1
.end method

.method aqb(Landroid/support/v4/app/e;Z)V
    .locals 3

    .prologue
    .line 3536
    iget-object v0, p0, Landroid/support/v4/app/aV;->abW:Landroid/support/v4/app/e;

    if-nez v0, :cond_1

    .line 3543
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/aV;->acp:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_2

    .line 3546
    iget-object v0, p0, Landroid/support/v4/app/aV;->acp:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3551
    return-void

    .line 3537
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/aV;->abW:Landroid/support/v4/app/e;

    invoke-virtual {v0}, Landroid/support/v4/app/e;->ajX()Landroid/support/v4/app/bb;

    move-result-object v0

    .line 3538
    instance-of v1, v0, Landroid/support/v4/app/aV;

    if-eqz v1, :cond_0

    .line 3539
    check-cast v0, Landroid/support/v4/app/aV;

    .line 3540
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/aV;->aqb(Landroid/support/v4/app/e;Z)V

    goto :goto_0

    .line 3544
    :cond_2
    return-void

    .line 3546
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/b;

    .line 3547
    if-nez p2, :cond_5

    .line 3548
    :cond_4
    iget-object v0, v0, Landroid/support/v4/a/b;->UU:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/app/ba;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/app/ba;->aqu(Landroid/support/v4/app/bb;Landroid/support/v4/app/e;)V

    goto :goto_1

    .line 3547
    :cond_5
    iget-object v1, v0, Landroid/support/v4/a/b;->UV:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1
.end method

.method public aqe(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/e;)V
    .locals 3

    .prologue
    .line 888
    iget v0, p3, Landroid/support/v4/app/e;->Wr:I

    if-ltz v0, :cond_0

    .line 892
    :goto_0
    iget v0, p3, Landroid/support/v4/app/e;->Wr:I

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 893
    return-void

    .line 889
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

    invoke-direct {p0, v0}, Landroid/support/v4/app/aV;->aqc(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public aqf()V
    .locals 1

    .prologue
    .line 3190
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/aV;->acj:Z

    .line 3191
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/support/v4/app/aV;->aoT(I)V

    .line 3192
    return-void
.end method

.method public aqg(Z)V
    .locals 2

    .prologue
    .line 3235
    iget-object v0, p0, Landroid/support/v4/app/aV;->acd:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 3238
    iget-object v0, p0, Landroid/support/v4/app/aV;->acd:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_1

    .line 3244
    return-void

    .line 3236
    :cond_0
    return-void

    .line 3239
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/aV;->acd:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/e;

    .line 3240
    if-nez v0, :cond_2

    .line 3238
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 3241
    :cond_2
    invoke-virtual {v0, p1}, Landroid/support/v4/app/e;->aiY(Z)V

    goto :goto_1
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 984
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "    "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 987
    iget-object v0, p0, Landroid/support/v4/app/aV;->acu:Landroid/util/SparseArray;

    if-nez v0, :cond_7

    .line 1004
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/aV;->acd:Ljava/util/ArrayList;

    if-nez v0, :cond_9

    .line 1016
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/aV;->ack:Ljava/util/ArrayList;

    if-nez v0, :cond_a

    .line 1028
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/aV;->aco:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 1041
    :cond_3
    monitor-enter p0

    .line 1042
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/aV;->acl:Ljava/util/ArrayList;

    if-nez v0, :cond_c

    .line 1054
    :cond_4
    iget-object v0, p0, Landroid/support/v4/app/aV;->abV:Ljava/util/ArrayList;

    if-nez v0, :cond_d

    .line 1058
    :cond_5
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1060
    iget-object v0, p0, Landroid/support/v4/app/aV;->acw:Ljava/util/ArrayList;

    if-nez v0, :cond_e

    .line 1072
    :cond_6
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "FragmentManager misc state:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1073
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "  mHost="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/aV;->abY:Landroid/support/v4/app/p;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1074
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "  mContainer="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/aV;->ach:Landroid/support/v4/app/ac;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1075
    iget-object v0, p0, Landroid/support/v4/app/aV;->abW:Landroid/support/v4/app/e;

    if-nez v0, :cond_f

    .line 1078
    :goto_1
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "  mCurState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/aV;->acv:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1079
    const-string/jumbo v0, " mStateSaved="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/aV;->acj:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1080
    const-string/jumbo v0, " mDestroyed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/aV;->mDestroyed:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1081
    iget-boolean v0, p0, Landroid/support/v4/app/aV;->acc:Z

    if-nez v0, :cond_10

    .line 1085
    :goto_2
    iget-object v0, p0, Landroid/support/v4/app/aV;->aca:Ljava/lang/String;

    if-nez v0, :cond_11

    .line 1089
    :goto_3
    return-void

    .line 988
    :cond_7
    iget-object v0, p0, Landroid/support/v4/app/aV;->acu:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 989
    if-lez v4, :cond_0

    .line 990
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Active Fragments in "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 991
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 992
    const-string/jumbo v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    .line 993
    :goto_4
    if-ge v2, v4, :cond_0

    .line 994
    iget-object v0, p0, Landroid/support/v4/app/aV;->acu:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/e;

    .line 995
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 996
    const-string/jumbo v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 997
    if-nez v0, :cond_8

    .line 993
    :goto_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    .line 998
    :cond_8
    invoke-virtual {v0, v3, p2, p3, p4}, Landroid/support/v4/app/e;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_5

    .line 1005
    :cond_9
    iget-object v0, p0, Landroid/support/v4/app/aV;->acd:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1006
    if-lez v4, :cond_1

    .line 1007
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Added Fragments:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    .line 1008
    :goto_6
    if-ge v2, v4, :cond_1

    .line 1009
    iget-object v0, p0, Landroid/support/v4/app/aV;->acd:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/e;

    .line 1010
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1011
    const-string/jumbo v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/e;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1008
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6

    .line 1017
    :cond_a
    iget-object v0, p0, Landroid/support/v4/app/aV;->ack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1018
    if-lez v4, :cond_2

    .line 1019
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Fragments Created Menus:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    .line 1020
    :goto_7
    if-ge v2, v4, :cond_2

    .line 1021
    iget-object v0, p0, Landroid/support/v4/app/aV;->ack:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/e;

    .line 1022
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1023
    const-string/jumbo v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/e;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1020
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_7

    .line 1029
    :cond_b
    iget-object v0, p0, Landroid/support/v4/app/aV;->aco:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1030
    if-lez v4, :cond_3

    .line 1031
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Back Stack:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    .line 1032
    :goto_8
    if-ge v2, v4, :cond_3

    .line 1033
    iget-object v0, p0, Landroid/support/v4/app/aV;->aco:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/U;

    .line 1034
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1035
    const-string/jumbo v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/U;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1036
    invoke-virtual {v0, v3, p2, p3, p4}, Landroid/support/v4/app/U;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1032
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_8

    .line 1043
    :cond_c
    :try_start_1
    iget-object v0, p0, Landroid/support/v4/app/aV;->acl:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1044
    if-lez v3, :cond_4

    .line 1045
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Back Stack Indices:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    .line 1046
    :goto_9
    if-ge v2, v3, :cond_4

    .line 1047
    iget-object v0, p0, Landroid/support/v4/app/aV;->acl:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/U;

    .line 1048
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "  #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1049
    const-string/jumbo v4, ": "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1046
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_9

    .line 1054
    :cond_d
    iget-object v0, p0, Landroid/support/v4/app/aV;->abV:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 1055
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAvailBackStackIndices: "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1056
    iget-object v0, p0, Landroid/support/v4/app/aV;->abV:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1058
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1061
    :cond_e
    iget-object v0, p0, Landroid/support/v4/app/aV;->acw:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1062
    if-lez v2, :cond_6

    .line 1063
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Pending Actions:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1064
    :goto_a
    if-ge v1, v2, :cond_6

    .line 1065
    iget-object v0, p0, Landroid/support/v4/app/aV;->acw:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/aF;

    .line 1066
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1067
    const-string/jumbo v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1064
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    .line 1076
    :cond_f
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "  mParent="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/aV;->abW:Landroid/support/v4/app/e;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1082
    :cond_10
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "  mNeedMenuInvalidate="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1083
    iget-boolean v0, p0, Landroid/support/v4/app/aV;->acc:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    goto/16 :goto_2

    .line 1086
    :cond_11
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "  mNoTransactionsBecause="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1087
    iget-object v0, p0, Landroid/support/v4/app/aV;->aca:Ljava/lang/String;

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

    .line 3703
    const-string/jumbo v0, "fragment"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3707
    const-string/jumbo v0, "class"

    invoke-interface {p4, v4, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3708
    sget-object v1, Landroid/support/v4/app/ad;->aaj:[I

    invoke-virtual {p3, p4, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 3709
    if-eqz v0, :cond_5

    move-object v6, v0

    .line 3712
    :goto_0
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 3713
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 3714
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 3716
    iget-object v0, p0, Landroid/support/v4/app/aV;->abY:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v6}, Landroid/support/v4/app/e;->aiC(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3722
    if-nez p1, :cond_7

    move v0, v3

    .line 3723
    :goto_1
    if-eq v0, v5, :cond_8

    .line 3731
    :cond_0
    if-ne v7, v5, :cond_9

    move-object v1, v4

    .line 3732
    :goto_2
    if-eqz v1, :cond_a

    .line 3735
    :cond_1
    :goto_3
    if-eqz v1, :cond_b

    .line 3739
    :cond_2
    :goto_4
    sget-boolean v5, Landroid/support/v4/app/aV;->DEBUG:Z

    if-nez v5, :cond_c

    .line 3742
    :goto_5
    if-eqz v1, :cond_d

    .line 3754
    iget-boolean v4, v1, Landroid/support/v4/app/e;->Wy:Z

    if-nez v4, :cond_f

    .line 3764
    iput-boolean v2, v1, Landroid/support/v4/app/e;->Wy:Z

    .line 3765
    iget-object v0, p0, Landroid/support/v4/app/aV;->abY:Landroid/support/v4/app/p;

    iput-object v0, v1, Landroid/support/v4/app/e;->Wk:Landroid/support/v4/app/p;

    .line 3769
    iget-boolean v0, v1, Landroid/support/v4/app/e;->Wp:Z

    if-eqz v0, :cond_10

    .line 3778
    :goto_6
    iget v0, p0, Landroid/support/v4/app/aV;->acv:I

    if-lt v0, v2, :cond_11

    .line 3781
    :cond_3
    invoke-virtual {p0, v1}, Landroid/support/v4/app/aV;->apu(Landroid/support/v4/app/e;)V

    .line 3784
    :goto_7
    iget-object v0, v1, Landroid/support/v4/app/e;->mView:Landroid/view/View;

    if-eqz v0, :cond_12

    .line 3788
    if-nez v7, :cond_13

    .line 3791
    :goto_8
    iget-object v0, v1, Landroid/support/v4/app/e;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 3794
    :goto_9
    iget-object v0, v1, Landroid/support/v4/app/e;->mView:Landroid/view/View;

    return-object v0

    .line 3704
    :cond_4
    return-object v4

    .line 3710
    :cond_5
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_0

    .line 3719
    :cond_6
    return-object v4

    .line 3722
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    goto :goto_1

    .line 3723
    :cond_8
    if-ne v7, v5, :cond_0

    if-nez v8, :cond_0

    .line 3724
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

    .line 3731
    :cond_9
    invoke-virtual {p0, v7}, Landroid/support/v4/app/aV;->apk(I)Landroid/support/v4/app/e;

    move-result-object v1

    goto :goto_2

    .line 3732
    :cond_a
    if-eqz v8, :cond_1

    .line 3733
    invoke-virtual {p0, v8}, Landroid/support/v4/app/aV;->apR(Ljava/lang/String;)Landroid/support/v4/app/e;

    move-result-object v1

    goto :goto_3

    .line 3735
    :cond_b
    if-eq v0, v5, :cond_2

    .line 3736
    invoke-virtual {p0, v0}, Landroid/support/v4/app/aV;->apk(I)Landroid/support/v4/app/e;

    move-result-object v1

    goto :goto_4

    .line 3739
    :cond_c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onCreateView: id=0x"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v9, "FragmentManager"

    .line 3740
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

    .line 3739
    invoke-static {v9, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 3743
    :cond_d
    iget-object v1, p0, Landroid/support/v4/app/aV;->ach:Landroid/support/v4/app/ac;

    invoke-virtual {v1, p3, v6, v4}, Landroid/support/v4/app/ac;->amH(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/e;

    move-result-object v4

    .line 3744
    iput-boolean v2, v4, Landroid/support/v4/app/e;->WC:Z

    .line 3745
    if-nez v7, :cond_e

    move v1, v0

    :goto_a
    iput v1, v4, Landroid/support/v4/app/e;->Wx:I

    .line 3746
    iput v0, v4, Landroid/support/v4/app/e;->Ws:I

    .line 3747
    iput-object v8, v4, Landroid/support/v4/app/e;->WM:Ljava/lang/String;

    .line 3748
    iput-boolean v2, v4, Landroid/support/v4/app/e;->Wy:Z

    .line 3749
    iput-object p0, v4, Landroid/support/v4/app/e;->Ww:Landroid/support/v4/app/aV;

    .line 3750
    iget-object v0, p0, Landroid/support/v4/app/aV;->abY:Landroid/support/v4/app/p;

    iput-object v0, v4, Landroid/support/v4/app/e;->Wk:Landroid/support/v4/app/p;

    .line 3751
    iget-object v0, p0, Landroid/support/v4/app/aV;->abY:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, v4, Landroid/support/v4/app/e;->WI:Landroid/os/Bundle;

    invoke-virtual {v4, v0, p4, v1}, Landroid/support/v4/app/e;->ajp(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 3752
    invoke-virtual {p0, v4, v2}, Landroid/support/v4/app/aV;->app(Landroid/support/v4/app/e;Z)V

    move-object v1, v4

    goto/16 :goto_6

    :cond_e
    move v1, v7

    .line 3745
    goto :goto_a

    .line 3757
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

    .line 3758
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

    .line 3759
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

    .line 3770
    :cond_10
    iget-object v0, p0, Landroid/support/v4/app/aV;->abY:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v4, v1, Landroid/support/v4/app/e;->WI:Landroid/os/Bundle;

    invoke-virtual {v1, v0, p4, v4}, Landroid/support/v4/app/e;->ajp(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    goto/16 :goto_6

    .line 3778
    :cond_11
    iget-boolean v0, v1, Landroid/support/v4/app/e;->WC:Z

    if-eqz v0, :cond_3

    move-object v0, p0

    move v4, v3

    move v5, v3

    .line 3779
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/aV;->aov(Landroid/support/v4/app/e;IIIZ)V

    goto/16 :goto_7

    .line 3785
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

    .line 3789
    :cond_13
    iget-object v0, v1, Landroid/support/v4/app/e;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setId(I)V

    goto/16 :goto_8

    .line 3792
    :cond_14
    iget-object v0, v1, Landroid/support/v4/app/e;->mView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_9
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 3799
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/support/v4/app/aV;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 969
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 970
    const-string/jumbo v1, "FragmentManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 971
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 972
    const-string/jumbo v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 973
    iget-object v1, p0, Landroid/support/v4/app/aV;->abW:Landroid/support/v4/app/e;

    if-nez v1, :cond_0

    .line 976
    iget-object v1, p0, Landroid/support/v4/app/aV;->abY:Landroid/support/v4/app/p;

    invoke-static {v1, v0}, Landroid/support/v4/a/j;->aha(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 978
    :goto_0
    const-string/jumbo v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 979
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 974
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/aV;->abW:Landroid/support/v4/app/e;

    invoke-static {v1, v0}, Landroid/support/v4/a/j;->aha(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    goto :goto_0
.end method
