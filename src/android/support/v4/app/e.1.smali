.class public Landroid/support/v4/app/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;


# static fields
.field private static final WG:Landroid/support/v4/a/k;

.field static final Wo:Ljava/lang/Object;


# instance fields
.field WA:Landroid/util/SparseArray;

.field WB:I

.field WC:Z

.field WD:Landroid/support/v4/app/az;

.field WE:Z

.field WF:Z

.field WH:Landroid/support/v4/app/aV;

.field WI:Landroid/os/Bundle;

.field WJ:Landroid/os/Bundle;

.field WK:I

.field WL:Landroid/view/View;

.field WM:Ljava/lang/String;

.field WN:Z

.field WO:Z

.field WP:Z

.field WQ:I

.field WR:Z

.field WS:Landroid/support/v4/app/aY;

.field WT:Landroid/support/v4/app/aD;

.field WU:Landroid/support/v4/app/e;

.field WV:Landroid/support/v4/app/e;

.field WW:F

.field WX:Z

.field WY:Z

.field Wj:Landroid/view/ViewGroup;

.field Wk:Landroid/support/v4/app/p;

.field Wl:Ljava/lang/String;

.field Wm:Z

.field Wn:Z

.field Wp:Z

.field Wq:Z

.field Wr:I

.field Ws:I

.field Wt:Z

.field Wu:Z

.field Wv:Z

.field Ww:Landroid/support/v4/app/aV;

.field Wx:I

.field Wy:Z

.field Wz:Z

.field mCalled:Z

.field mLayoutInflater:Landroid/view/LayoutInflater;

.field mState:I

.field mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 189
    new-instance v0, Landroid/support/v4/a/k;

    invoke-direct {v0}, Landroid/support/v4/a/k;-><init>()V

    sput-object v0, Landroid/support/v4/app/e;->WG:Landroid/support/v4/a/k;

    .line 192
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/app/e;->Wo:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/e;->mState:I

    .line 208
    iput v1, p0, Landroid/support/v4/app/e;->Wr:I

    .line 220
    iput v1, p0, Landroid/support/v4/app/e;->WK:I

    .line 296
    iput-boolean v2, p0, Landroid/support/v4/app/e;->WX:Z

    .line 315
    iput-boolean v2, p0, Landroid/support/v4/app/e;->Wz:Z

    .line 412
    return-void
.end method

.method static synthetic aiB(Landroid/support/v4/app/e;)V
    .locals 0

    .prologue
    .line 188
    invoke-direct {p0}, Landroid/support/v4/app/e;->aiG()V

    return-void
.end method

.method static aiC(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 481
    :try_start_0
    sget-object v0, Landroid/support/v4/app/e;->WG:Landroid/support/v4/a/k;

    invoke-virtual {v0, p1}, Landroid/support/v4/a/k;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 482
    if-eqz v0, :cond_0

    .line 487
    :goto_0
    const-class v1, Landroid/support/v4/app/e;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0

    .line 484
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 485
    sget-object v1, Landroid/support/v4/app/e;->WG:Landroid/support/v4/a/k;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/a/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 488
    :catch_0
    move-exception v0

    .line 489
    const/4 v0, 0x0

    return v0
.end method

.method private aiG()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2181
    iget-object v0, p0, Landroid/support/v4/app/e;->WT:Landroid/support/v4/app/aD;

    if-eqz v0, :cond_0

    .line 2184
    iget-object v0, p0, Landroid/support/v4/app/e;->WT:Landroid/support/v4/app/aD;

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/support/v4/app/aD;->abj:Z

    .line 2185
    iget-object v0, p0, Landroid/support/v4/app/e;->WT:Landroid/support/v4/app/aD;

    iget-object v0, v0, Landroid/support/v4/app/aD;->abf:Landroid/support/v4/app/aq;

    .line 2186
    iget-object v2, p0, Landroid/support/v4/app/e;->WT:Landroid/support/v4/app/aD;

    iput-object v1, v2, Landroid/support/v4/app/aD;->abf:Landroid/support/v4/app/aq;

    .line 2188
    :goto_0
    if-nez v0, :cond_1

    .line 2191
    :goto_1
    return-void

    :cond_0
    move-object v0, v1

    .line 2182
    goto :goto_0

    .line 2189
    :cond_1
    invoke-interface {v0}, Landroid/support/v4/app/aq;->aih()V

    goto :goto_1
.end method

.method public static aiU(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/e;
    .locals 4

    .prologue
    .line 438
    :try_start_0
    sget-object v0, Landroid/support/v4/app/e;->WG:Landroid/support/v4/a/k;

    invoke-virtual {v0, p1}, Landroid/support/v4/a/k;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 439
    if-eqz v0, :cond_0

    .line 444
    :goto_0
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/e;

    .line 445
    if-nez p2, :cond_1

    .line 449
    :goto_1
    return-object v0

    .line 441
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 442
    sget-object v1, Landroid/support/v4/app/e;->WG:Landroid/support/v4/a/k;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/a/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    .line 450
    :catch_0
    move-exception v0

    .line 451
    new-instance v1, Landroid/support/v4/app/Fragment$InstantiationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to instantiate fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": make sure class name exists, is public, and has an"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " empty constructor that is public"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/support/v4/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 446
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 447
    invoke-virtual {v0, p2}, Landroid/support/v4/app/e;->ajg(Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_1

    .line 454
    :catch_1
    move-exception v0

    .line 455
    new-instance v1, Landroid/support/v4/app/Fragment$InstantiationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to instantiate fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": make sure class name exists, is public, and has an"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " empty constructor that is public"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/support/v4/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 458
    :catch_2
    move-exception v0

    .line 459
    new-instance v1, Landroid/support/v4/app/Fragment$InstantiationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to instantiate fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": make sure class name exists, is public, and has an"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " empty constructor that is public"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/support/v4/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 462
    :catch_3
    move-exception v0

    .line 463
    new-instance v1, Landroid/support/v4/app/Fragment$InstantiationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to instantiate fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": could not find Fragment constructor"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/support/v4/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 465
    :catch_4
    move-exception v0

    .line 466
    new-instance v1, Landroid/support/v4/app/Fragment$InstantiationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to instantiate fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": calling Fragment constructor caused an exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/support/v4/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method private ajb()Landroid/support/v4/app/aD;
    .locals 1

    .prologue
    .line 2634
    iget-object v0, p0, Landroid/support/v4/app/e;->WT:Landroid/support/v4/app/aD;

    if-eqz v0, :cond_0

    .line 2637
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/e;->WT:Landroid/support/v4/app/aD;

    return-object v0

    .line 2635
    :cond_0
    new-instance v0, Landroid/support/v4/app/aD;

    invoke-direct {v0}, Landroid/support/v4/app/aD;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/e;->WT:Landroid/support/v4/app/aD;

    goto :goto_0
.end method


# virtual methods
.method public aiA(Landroid/support/v4/app/e;)V
    .locals 0

    .prologue
    .line 1317
    return-void
.end method

.method public aiD(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 2

    .prologue
    .line 1233
    iget-object v0, p0, Landroid/support/v4/app/e;->Wk:Landroid/support/v4/app/p;

    if-eqz v0, :cond_0

    .line 1237
    iget-object v0, p0, Landroid/support/v4/app/e;->Wk:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->akx()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1238
    invoke-virtual {p0}, Landroid/support/v4/app/e;->aiJ()Landroid/support/v4/app/bb;

    .line 1239
    iget-object v1, p0, Landroid/support/v4/app/e;->WH:Landroid/support/v4/app/aV;

    invoke-virtual {v1}, Landroid/support/v4/app/aV;->aoA()Landroid/view/LayoutInflater$Factory2;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/view/C;->agq(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    .line 1240
    return-object v0

    .line 1234
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public aiE()Ljava/lang/Object;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1921
    iget-object v0, p0, Landroid/support/v4/app/e;->WT:Landroid/support/v4/app/aD;

    if-eqz v0, :cond_0

    .line 1924
    iget-object v0, p0, Landroid/support/v4/app/e;->WT:Landroid/support/v4/app/aD;

    invoke-static {v0}, Landroid/support/v4/app/aD;->ang(Landroid/support/v4/app/aD;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroid/support/v4/app/e;->Wo:Ljava/lang/Object;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/e;->WT:Landroid/support/v4/app/aD;

    .line 1925
    invoke-static {v0}, Landroid/support/v4/app/aD;->ang(Landroid/support/v4/app/aD;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1922
    :cond_0
    return-object v1

    .line 1924
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/e;->ajG()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public aiF()V
    .locals 0

    .prologue
    .line 1736
    return-void
.end method

.method aiH(Landroid/view/Menu;)V
    .locals 1

    .prologue
    .line 2496
    iget-boolean v0, p0, Landroid/support/v4/app/e;->WY:Z

    if-eqz v0, :cond_1

    .line 2504
    :cond_0
    :goto_0
    return-void

    .line 2497
    :cond_1
    iget-boolean v0, p0, Landroid/support/v4/app/e;->Wu:Z

    if-nez v0, :cond_3

    .line 2500
    :cond_2
    :goto_1
    iget-object v0, p0, Landroid/support/v4/app/e;->WH:Landroid/support/v4/app/aV;

    if-eqz v0, :cond_0

    .line 2501
    iget-object v0, p0, Landroid/support/v4/app/e;->WH:Landroid/support/v4/app/aV;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/aV;->apc(Landroid/view/Menu;)V

    goto :goto_0

    .line 2497
    :cond_3
    iget-boolean v0, p0, Landroid/support/v4/app/e;->WX:Z

    if-eqz v0, :cond_2

    .line 2498
    invoke-virtual {p0, p1}, Landroid/support/v4/app/e;->ajq(Landroid/view/Menu;)V

    goto :goto_1
.end method

.method aiI()Z
    .locals 1

    .prologue
    .line 2725
    iget-object v0, p0, Landroid/support/v4/app/e;->WT:Landroid/support/v4/app/aD;

    if-eqz v0, :cond_0

    .line 2728
    iget-object v0, p0, Landroid/support/v4/app/e;->WT:Landroid/support/v4/app/aD;

    iget-boolean v0, v0, Landroid/support/v4/app/aD;->abj:Z

    return v0

    .line 2726
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final aiJ()Landroid/support/v4/app/bb;
    .locals 2

    .prologue
    .line 757
    iget-object v0, p0, Landroid/support/v4/app/e;->WH:Landroid/support/v4/app/aV;

    if-eqz v0, :cond_1

    .line 769
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/e;->WH:Landroid/support/v4/app/aV;

    return-object v0

    .line 758
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/e;->aio()V

    .line 759
    iget v0, p0, Landroid/support/v4/app/e;->mState:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_2

    .line 761
    iget v0, p0, Landroid/support/v4/app/e;->mState:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_3

    .line 763
    iget v0, p0, Landroid/support/v4/app/e;->mState:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_4

    .line 765
    iget v0, p0, Landroid/support/v4/app/e;->mState:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 766
    iget-object v0, p0, Landroid/support/v4/app/e;->WH:Landroid/support/v4/app/aV;

    invoke-virtual {v0}, Landroid/support/v4/app/aV;->apL()V

    goto :goto_0

    .line 760
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/e;->WH:Landroid/support/v4/app/aV;

    invoke-virtual {v0}, Landroid/support/v4/app/aV;->aqf()V

    goto :goto_0

    .line 762
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/e;->WH:Landroid/support/v4/app/aV;

    invoke-virtual {v0}, Landroid/support/v4/app/aV;->aob()V

    goto :goto_0

    .line 764
    :cond_4
    iget-object v0, p0, Landroid/support/v4/app/e;->WH:Landroid/support/v4/app/aV;

    invoke-virtual {v0}, Landroid/support/v4/app/aV;->apv()V

    goto :goto_0
.end method

.method aiK()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2377
    iget-object v0, p0, Landroid/support/v4/app/e;->WH:Landroid/support/v4/app/aV;

    if-nez v0, :cond_0

    .line 2381
    :goto_0
    const/4 v0, 0x5

    iput v0, p0, Landroid/support/v4/app/e;->mState:I

    .line 2382
    iput-boolean v1, p0, Landroid/support/v4/app/e;->mCalled:Z

    .line 2383
    invoke-virtual {p0}, Landroid/support/v4/app/e;->onResume()V

    .line 2384
    iget-boolean v0, p0, Landroid/support/v4/app/e;->mCalled:Z

    if-eqz v0, :cond_1

    .line 2388
    iget-object v0, p0, Landroid/support/v4/app/e;->WH:Landroid/support/v4/app/aV;

    if-nez v0, :cond_2

    .line 2392
    :goto_1
    return-void

    .line 2378
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/e;->WH:Landroid/support/v4/app/aV;

    invoke-virtual {v0}, Landroid/support/v4/app/aV;->apU()V

    .line 2379
    iget-object v0, p0, Landroid/support/v4/app/e;->WH:Landroid/support/v4/app/aV;

    invoke-virtual {v0}, Landroid/support/v4/app/aV;->aoZ()Z

    goto :goto_0

    .line 2385
    :cond_1
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not call through to super.onResume()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2389
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/e;->WH:Landroid/support/v4/app/aV;

    invoke-virtual {v0}, Landroid/support/v4/app/aV;->aqf()V

    .line 2390
    iget-object v0, p0, Landroid/support/v4/app/e;->WH:Landroid/support/v4/app/aV;

    invoke-virtual {v0}, Landroid/support/v4/app/aV;->aoZ()Z

    goto :goto_1
.end method

.method aiL()I
    .locals 1

    .prologue
    .line 2655
    iget-object v0, p0, Landroid/support/v4/app/e;->WT:Landroid/support/v4/app/aD;

    if-eqz v0, :cond_0

    .line 2658
    iget-object v0, p0, Landroid/support/v4/app/e;->WT:Landroid/support/v4/app/aD;

    iget v0, v0, Landroid/support/v4/app/aD;->abn:I

    return v0

    .line 2656
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method aiM(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 1216
    invoke-virtual {p0, p1}, Landroid/support/v4/app/e;->aiw(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1217
    iput-object v0, p0, Landroid/support/v4/app/e;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 1218
    iget-object v0, p0, Landroid/support/v4/app/e;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method aiN()I
    .locals 1

    .prologue
    .line 2671
    iget-object v0, p0, Landroid/support/v4/app/e;->WT:Landroid/support/v4/app/aD;

    if-eqz v0, :cond_0

    .line 2674
    iget-object v0, p0, Landroid/support/v4/app/e;->WT:Landroid/support/v4/app/aD;

    iget v0, v0, Landroid/support/v4/app/aD;->aaY:I

    return v0

    .line 2672
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method aiO(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .prologue
    .line 2333
    iget-object v0, p0, Landroid/support/v4/app/e;->WH:Landroid/support/v4/app/aV;

    if-nez v0, :cond_0

    .line 2336
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/e;->WF:Z

    .line 2337
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/app/e;->ajz(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 2334
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/e;->WH:Landroid/support/v4/app/aV;

    invoke-virtual {v0}, Landroid/support/v4/app/aV;->apU()V

    goto :goto_0
.end method

.method aiP(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2453
    iget-boolean v1, p0, Landroid/support/v4/app/e;->WY:Z

    if-eqz v1, :cond_1

    .line 2462
    :cond_0
    :goto_0
    return v0

    .line 2454
    :cond_1
    iget-boolean v1, p0, Landroid/support/v4/app/e;->Wu:Z

    if-nez v1, :cond_3

    .line 2458
    :cond_2
    :goto_1
    iget-object v1, p0, Landroid/support/v4/app/e;->WH:Landroid/support/v4/app/aV;

    if-eqz v1, :cond_0

    .line 2459
    iget-object v1, p0, Landroid/support/v4/app/e;->WH:Landroid/support/v4/app/aV;

    invoke-virtual {v1, p1}, Landroid/support/v4/app/aV;->apI(Landroid/view/Menu;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    .line 2454
    :cond_3
    iget-boolean v1, p0, Landroid/support/v4/app/e;->WX:Z

    if-eqz v1, :cond_2

    .line 2455
    const/4 v0, 0x1

    .line 2456
    invoke-virtual {p0, p1}, Landroid/support/v4/app/e;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    goto :goto_1
.end method

.method public aiQ()Ljava/lang/Object;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2059
    iget-object v0, p0, Landroid/support/v4/app/e;->WT:Landroid/support/v4/app/aD;

    if-eqz v0, :cond_0

    .line 2062
    iget-object v0, p0, Landroid/support/v4/app/e;->WT:Landroid/support/v4/app/aD;

    invoke-static {v0}, Landroid/support/v4/app/aD;->ana(Landroid/support/v4/app/aD;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroid/support/v4/app/e;->Wo:Ljava/lang/Object;

    if-eq v0, v1, :cond_1

    .line 2063
    iget-object v0, p0, Landroid/support/v4/app/e;->WT:Landroid/support/v4/app/aD;

    .line 2064
    invoke-static {v0}, Landroid/support/v4/app/aD;->ana(Landroid/support/v4/app/aD;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 2060
    :cond_0
    return-object v1

    .line 2063
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/e;->ajh()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public aiR()Z
    .locals 1

    .prologue
    .line 2088
    iget-object v0, p0, Landroid/support/v4/app/e;->WT:Landroid/support/v4/app/aD;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 2089
    :goto_0
    return v0

    .line 2088
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/e;->WT:Landroid/support/v4/app/aD;

    invoke-static {v0}, Landroid/support/v4/app/aD;->anc(Landroid/support/v4/app/aD;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/e;->WT:Landroid/support/v4/app/aD;

    .line 2089
    invoke-static {v0}, Landroid/support/v4/app/aD;->anc(Landroid/support/v4/app/aD;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method aiS()I
    .locals 1

    .prologue
    .line 2641
    iget-object v0, p0, Landroid/support/v4/app/e;->WT:Landroid/support/v4/app/aD;

    if-eqz v0, :cond_0

    .line 2644
    iget-object v0, p0, Landroid/support/v4/app/e;->WT:Landroid/support/v4/app/aD;

    iget v0, v0, Landroid/support/v4/app/aD;->abd:I

    return v0

    .line 2642
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method aiT()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 2595
    iput-boolean v0, p0, Landroid/support/v4/app/e;->mCalled:Z

    .line 2596
    invoke-virtual {p0}, Landroid/support/v4/app/e;->ajK()V

    .line 2597
    iput-object v1, p0, Landroid/support/v4/app/e;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 2598
    iget-boolean v0, p0, Landroid/support/v4/app/e;->mCalled:Z

    if-eqz v0, :cond_0

    .line 2606
    iget-object v0, p0, Landroid/support/v4/app/e;->WH:Landroid/support/v4/app/aV;

    if-nez v0, :cond_1

    .line 2614
    :goto_0
    return-void

    .line 2599
    :cond_0
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not call through to super.onDetach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2607
    :cond_1
    iget-boolean v0, p0, Landroid/support/v4/app/e;->Wp:Z

    if-eqz v0, :cond_2

    .line 2611
    iget-object v0, p0, Landroid/support/v4/app/e;->WH:Landroid/support/v4/app/aV;

    invoke-virtual {v0}, Landroid/support/v4/app/aV;->aoL()V

    .line 2612
    iput-object v1, p0, Landroid/support/v4/app/e;->WH:Landroid/support/v4/app/aV;

    goto :goto_0

    .line 2608
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Child FragmentManager of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " was not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " destroyed and this fragment is not retaining instance"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public aiV(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 1835
    const/4 v0, 0x0

    return v0
.end method

.method aiW(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 2415
    invoke-virtual {p0, p1}, Landroid/support/v4/app/e;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2416
    iget-object v0, p0, Landroid/support/v4/app/e;->WH:Landroid/support/v4/app/aV;

    if-nez v0, :cond_0

    .line 2419
    :goto_0
    return-void

    .line 2417
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/e;->WH:Landroid/support/v4/app/aV;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/aV;->apz(Landroid/content/res/Configuration;)V

    goto :goto_0
.end method

.method final aiX()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 516
    iget v1, p0, Landroid/support/v4/app/e;->WB:I

    if-gtz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method aiY(Z)V
    .locals 1

    .prologue
    .line 2401
    invoke-virtual {p0, p1}, Landroid/support/v4/app/e;->onMultiWindowModeChanged(Z)V

    .line 2402
    iget-object v0, p0, Landroid/support/v4/app/e;->WH:Landroid/support/v4/app/aV;

    if-nez v0, :cond_0

    .line 2405
    :goto_0
    return-void

    .line 2403
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/e;->WH:Landroid/support/v4/app/aV;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/aV;->aqg(Z)V

    goto :goto_0
.end method

.method public aiZ(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    .prologue
    .line 1709
    return-void
.end method

.method aio()V
    .locals 3

    .prologue
    .line 2292
    iget-object v0, p0, Landroid/support/v4/app/e;->Wk:Landroid/support/v4/app/p;

    if-eqz v0, :cond_0

    .line 2295
    new-instance v0, Landroid/support/v4/app/aV;

    invoke-direct {v0}, Landroid/support/v4/app/aV;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/e;->WH:Landroid/support/v4/app/aV;

    .line 2296
    iget-object v0, p0, Landroid/support/v4/app/e;->WH:Landroid/support/v4/app/aV;

    iget-object v1, p0, Landroid/support/v4/app/e;->Wk:Landroid/support/v4/app/p;

    new-instance v2, Landroid/support/v4/app/Z;

    invoke-direct {v2, p0}, Landroid/support/v4/app/Z;-><init>(Landroid/support/v4/app/e;)V

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/aV;->aps(Landroid/support/v4/app/p;Landroid/support/v4/app/ac;Landroid/support/v4/app/e;)V

    .line 2316
    return-void

    .line 2293
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Fragment has not been attached yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method aip()Landroid/support/v4/app/bd;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2685
    iget-object v0, p0, Landroid/support/v4/app/e;->WT:Landroid/support/v4/app/aD;

    if-eqz v0, :cond_0

    .line 2688
    iget-object v0, p0, Landroid/support/v4/app/e;->WT:Landroid/support/v4/app/aD;

    iget-object v0, v0, Landroid/support/v4/app/aD;->aba:Landroid/support/v4/app/bd;

    return-object v0

    .line 2686
    :cond_0
    return-object v1
.end method

.method aiq()Landroid/view/View;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2692
    iget-object v0, p0, Landroid/support/v4/app/e;->WT:Landroid/support/v4/app/aD;

    if-eqz v0, :cond_0

    .line 2695
    iget-object v0, p0, Landroid/support/v4/app/e;->WT:Landroid/support/v4/app/aD;

    iget-object v0, v0, Landroid/support/v4/app/aD;->abb:Landroid/view/View;

    return-object v0

    .line 2693
    :cond_0
    return-object v1
.end method

.method air(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2341
    iget-object v0, p0, Landroid/support/v4/app/e;->WH:Landroid/support/v4/app/aV;

    if-nez v0, :cond_0

    .line 2344
    :goto_0
    const/4 v0, 0x2

    iput v0, p0, Landroid/support/v4/app/e;->mState:I

    .line 2345
    iput-boolean v1, p0, Landroid/support/v4/app/e;->mCalled:Z

    .line 2346
    invoke-virtual {p0, p1}, Landroid/support/v4/app/e;->aiu(Landroid/os/Bundle;)V

    .line 2347
    iget-boolean v0, p0, Landroid/support/v4/app/e;->mCalled:Z

    if-eqz v0, :cond_1

    .line 2351
    iget-object v0, p0, Landroid/support/v4/app/e;->WH:Landroid/support/v4/app/aV;

    if-nez v0, :cond_2

    .line 2354
    :goto_1
    return-void

    .line 2342
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/e;->WH:Landroid/support/v4/app/aV;

    invoke-virtual {v0}, Landroid/support/v4/app/aV;->apU()V

    goto :goto_0

    .line 2348
    :cond_1
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not call through to super.onActivityCreated()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2352
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/e;->WH:Landroid/support/v4/app/aV;

    invoke-virtual {v0}, Landroid/support/v4/app/aV;->apv()V

    goto :goto_1
.end method

.method public ais(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1325
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/app/e;->mCalled:Z

    .line 1326
    iget-object v1, p0, Landroid/support/v4/app/e;->Wk:Landroid/support/v4/app/p;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/e;->Wk:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1327
    :cond_0
    if-nez v0, :cond_1

    .line 1331
    :goto_0
    return-void

    .line 1328
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/app/e;->mCalled:Z

    .line 1329
    invoke-virtual {p0, v0}, Landroid/support/v4/app/e;->ajN(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method ait()V
    .locals 1

    .prologue
    .line 2422
    invoke-virtual {p0}, Landroid/support/v4/app/e;->onLowMemory()V

    .line 2423
    iget-object v0, p0, Landroid/support/v4/app/e;->WH:Landroid/support/v4/app/aV;

    if-nez v0, :cond_0

    .line 2426
    :goto_0
    return-void

    .line 2424
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/e;->WH:Landroid/support/v4/app/aV;

    invoke-virtual {v0}, Landroid/support/v4/app/aV;->aoU()V

    goto :goto_0
.end method

.method public aiu(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 1502
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/e;->mCalled:Z

    .line 1503
    return-void
.end method

.method public final aiv()Z
    .locals 1

    .prologue
    .line 810
    iget-boolean v0, p0, Landroid/support/v4/app/e;->WN:Z

    return v0
.end method

.method public aiw(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 1186
    invoke-virtual {p0, p1}, Landroid/support/v4/app/e;->aiD(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method aix()Z
    .locals 1

    .prologue
    .line 2732
    iget-object v0, p0, Landroid/support/v4/app/e;->WT:Landroid/support/v4/app/aD;

    if-eqz v0, :cond_0

    .line 2735
    iget-object v0, p0, Landroid/support/v4/app/e;->WT:Landroid/support/v4/app/aD;

    iget-boolean v0, v0, Landroid/support/v4/app/aD;->abm:Z

    return v0

    .line 2733
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method aiy()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2517
    iget-object v0, p0, Landroid/support/v4/app/e;->WH:Landroid/support/v4/app/aV;

    if-nez v0, :cond_0

    .line 2520
    :goto_0
    const/4 v0, 0x4

    iput v0, p0, Landroid/support/v4/app/e;->mState:I

    .line 2521
    iput-boolean v1, p0, Landroid/support/v4/app/e;->mCalled:Z

    .line 2522
    invoke-virtual {p0}, Landroid/support/v4/app/e;->onPause()V

    .line 2523
    iget-boolean v0, p0, Landroid/support/v4/app/e;->mCalled:Z

    if-eqz v0, :cond_1

    .line 2527
    return-void

    .line 2518
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/e;->WH:Landroid/support/v4/app/aV;

    invoke-virtual {v0}, Landroid/support/v4/app/aV;->apl()V

    goto :goto_0

    .line 2524
    :cond_1
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not call through to super.onPause()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method aiz()Landroid/support/v4/app/bd;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2678
    iget-object v0, p0, Landroid/support/v4/app/e;->WT:Landroid/support/v4/app/aD;

    if-eqz v0, :cond_0

    .line 2681
    iget-object v0, p0, Landroid/support/v4/app/e;->WT:Landroid/support/v4/app/aD;

    iget-object v0, v0, Landroid/support/v4/app/aD;->aaZ:Landroid/support/v4/app/bd;

    return-object v0

    .line 2679
    :cond_0
    return-object v1
.end method

.method public ajA(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 1518
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/e;->mCalled:Z

    .line 1519
    return-void
.end method

.method public ajB()Ljava/lang/Object;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1994
    iget-object v0, p0, Landroid/support/v4/app/e;->WT:Landroid/support/v4/app/aD;

    if-eqz v0, :cond_0

    .line 1997
    iget-object v0, p0, Landroid/support/v4/app/e;->WT:Landroid/support/v4/app/aD;

    invoke-static {v0}, Landroid/support/v4/app/aD;->ane(Landroid/support/v4/app/aD;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroid/support/v4/app/e;->Wo:Ljava/lang/Object;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/e;->WT:Landroid/support/v4/app/aD;

    .line 1998
    invoke-static {v0}, Landroid/support/v4/app/aD;->ane(Landroid/support/v4/app/aD;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1995
    :cond_0
    return-object v1

    .line 1997
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/e;->aju()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method ajC(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2439
    iget-boolean v1, p0, Landroid/support/v4/app/e;->WY:Z

    if-eqz v1, :cond_1

    .line 2448
    :cond_0
    :goto_0
    return v0

    .line 2440
    :cond_1
    iget-boolean v1, p0, Landroid/support/v4/app/e;->Wu:Z

    if-nez v1, :cond_3

    .line 2444
    :cond_2
    :goto_1
    iget-object v1, p0, Landroid/support/v4/app/e;->WH:Landroid/support/v4/app/aV;

    if-eqz v1, :cond_0

    .line 2445
    iget-object v1, p0, Landroid/support/v4/app/e;->WH:Landroid/support/v4/app/aV;

    invoke-virtual {v1, p1, p2}, Landroid/support/v4/app/aV;->aod(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    .line 2440
    :cond_3
    iget-boolean v1, p0, Landroid/support/v4/app/e;->WX:Z

    if-eqz v1, :cond_2

    .line 2441
    const/4 v0, 0x1

    .line 2442
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/app/e;->aiZ(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    goto :goto_1
.end method

.method public ajD(IZI)Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 1381
    const/4 v0, 0x0

    return-object v0
.end method

.method final ajE(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 494
    iget-object v0, p0, Landroid/support/v4/app/e;->WA:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 498
    :goto_0
    iput-boolean v2, p0, Landroid/support/v4/app/e;->mCalled:Z

    .line 499
    invoke-virtual {p0, p1}, Landroid/support/v4/app/e;->ajA(Landroid/os/Bundle;)V

    .line 500
    iget-boolean v0, p0, Landroid/support/v4/app/e;->mCalled:Z

    if-eqz v0, :cond_1

    .line 504
    return-void

    .line 495
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/e;->WL:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/app/e;->WA:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 496
    iput-object v3, p0, Landroid/support/v4/app/e;->WA:Landroid/util/SparseArray;

    goto :goto_0

    .line 501
    :cond_1
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not call through to super.onViewStateRestored()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method ajF()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2543
    iget-object v0, p0, Landroid/support/v4/app/e;->WH:Landroid/support/v4/app/aV;

    if-nez v0, :cond_1

    .line 2546
    :goto_0
    const/4 v0, 0x2

    iput v0, p0, Landroid/support/v4/app/e;->mState:I

    .line 2547
    iget-boolean v0, p0, Landroid/support/v4/app/e;->Wq:Z

    if-nez v0, :cond_2

    .line 2561
    :cond_0
    :goto_1
    return-void

    .line 2544
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/e;->WH:Landroid/support/v4/app/aV;

    invoke-virtual {v0}, Landroid/support/v4/app/aV;->aoP()V

    goto :goto_0

    .line 2548
    :cond_2
    iput-boolean v3, p0, Landroid/support/v4/app/e;->Wq:Z

    .line 2549
    iget-boolean v0, p0, Landroid/support/v4/app/e;->Wv:Z

    if-eqz v0, :cond_3

    .line 2553
    :goto_2
    iget-object v0, p0, Landroid/support/v4/app/e;->WS:Landroid/support/v4/app/aY;

    if-eqz v0, :cond_0

    .line 2554
    iget-object v0, p0, Landroid/support/v4/app/e;->Wk:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->ako()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2557
    iget-object v0, p0, Landroid/support/v4/app/e;->WS:Landroid/support/v4/app/aY;

    invoke-virtual {v0}, Landroid/support/v4/app/aY;->aqr()V

    goto :goto_1

    .line 2550
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/e;->Wv:Z

    .line 2551
    iget-object v0, p0, Landroid/support/v4/app/e;->Wk:Landroid/support/v4/app/p;

    iget-object v1, p0, Landroid/support/v4/app/e;->Wl:Ljava/lang/String;

    iget-boolean v2, p0, Landroid/support/v4/app/e;->Wq:Z

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/p;->akj(Ljava/lang/String;ZZ)Landroid/support/v4/app/aY;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/e;->WS:Landroid/support/v4/app/aY;

    goto :goto_2

    .line 2555
    :cond_4
    iget-object v0, p0, Landroid/support/v4/app/e;->WS:Landroid/support/v4/app/aY;

    invoke-virtual {v0}, Landroid/support/v4/app/aY;->aqn()V

    goto :goto_1
.end method

.method public ajG()Ljava/lang/Object;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1884
    iget-object v0, p0, Landroid/support/v4/app/e;->WT:Landroid/support/v4/app/aD;

    if-eqz v0, :cond_0

    .line 1887
    iget-object v0, p0, Landroid/support/v4/app/e;->WT:Landroid/support/v4/app/aD;

    invoke-static {v0}, Landroid/support/v4/app/aD;->anf(Landroid/support/v4/app/aD;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1885
    :cond_0
    return-object v1
.end method

.method ajH()I
    .locals 1

    .prologue
    .line 2714
    iget-object v0, p0, Landroid/support/v4/app/e;->WT:Landroid/support/v4/app/aD;

    if-eqz v0, :cond_0

    .line 2717
    iget-object v0, p0, Landroid/support/v4/app/e;->WT:Landroid/support/v4/app/aD;

    iget v0, v0, Landroid/support/v4/app/aD;->abe:I

    return v0

    .line 2715
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ajI()Z
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Landroid/support/v4/app/e;->Ww:Landroid/support/v4/app/aV;

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Landroid/support/v4/app/e;->Ww:Landroid/support/v4/app/aV;

    invoke-virtual {v0}, Landroid/support/v4/app/aV;->apS()Z

    move-result v0

    return v0

    .line 601
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method ajJ()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1664
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/e;->Wr:I

    .line 1665
    iput-object v2, p0, Landroid/support/v4/app/e;->Wl:Ljava/lang/String;

    .line 1666
    iput-boolean v1, p0, Landroid/support/v4/app/e;->Wm:Z

    .line 1667
    iput-boolean v1, p0, Landroid/support/v4/app/e;->WN:Z

    .line 1668
    iput-boolean v1, p0, Landroid/support/v4/app/e;->WC:Z

    .line 1669
    iput-boolean v1, p0, Landroid/support/v4/app/e;->Wy:Z

    .line 1670
    iput-boolean v1, p0, Landroid/support/v4/app/e;->Wt:Z

    .line 1671
    iput v1, p0, Landroid/support/v4/app/e;->WB:I

    .line 1672
    iput-object v2, p0, Landroid/support/v4/app/e;->Ww:Landroid/support/v4/app/aV;

    .line 1673
    iput-object v2, p0, Landroid/support/v4/app/e;->WH:Landroid/support/v4/app/aV;

    .line 1674
    iput-object v2, p0, Landroid/support/v4/app/e;->Wk:Landroid/support/v4/app/p;

    .line 1675
    iput v1, p0, Landroid/support/v4/app/e;->Wx:I

    .line 1676
    iput v1, p0, Landroid/support/v4/app/e;->Ws:I

    .line 1677
    iput-object v2, p0, Landroid/support/v4/app/e;->WM:Ljava/lang/String;

    .line 1678
    iput-boolean v1, p0, Landroid/support/v4/app/e;->WY:Z

    .line 1679
    iput-boolean v1, p0, Landroid/support/v4/app/e;->WR:Z

    .line 1680
    iput-boolean v1, p0, Landroid/support/v4/app/e;->Wp:Z

    .line 1681
    iput-object v2, p0, Landroid/support/v4/app/e;->WS:Landroid/support/v4/app/aY;

    .line 1682
    iput-boolean v1, p0, Landroid/support/v4/app/e;->Wq:Z

    .line 1683
    iput-boolean v1, p0, Landroid/support/v4/app/e;->Wv:Z

    .line 1684
    return-void
.end method

.method public ajK()V
    .locals 1

    .prologue
    .line 1692
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/e;->mCalled:Z

    .line 1693
    return-void
.end method

.method ajL(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2482
    iget-boolean v0, p0, Landroid/support/v4/app/e;->WY:Z

    if-eqz v0, :cond_1

    .line 2492
    :cond_0
    return v1

    .line 2483
    :cond_1
    invoke-virtual {p0, p1}, Landroid/support/v4/app/e;->aiV(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2486
    iget-object v0, p0, Landroid/support/v4/app/e;->WH:Landroid/support/v4/app/aV;

    if-eqz v0, :cond_0

    .line 2487
    iget-object v0, p0, Landroid/support/v4/app/e;->WH:Landroid/support/v4/app/aV;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/aV;->aoC(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2488
    return v2

    .line 2484
    :cond_2
    return v2
.end method

.method ajM()V
    .locals 1

    .prologue
    .line 2395
    iget-object v0, p0, Landroid/support/v4/app/e;->WH:Landroid/support/v4/app/aV;

    if-nez v0, :cond_0

    .line 2398
    :goto_0
    return-void

    .line 2396
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/e;->WH:Landroid/support/v4/app/aV;

    invoke-virtual {v0}, Landroid/support/v4/app/aV;->apU()V

    goto :goto_0
.end method

.method public ajN(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 1342
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/e;->mCalled:Z

    .line 1343
    return-void
.end method

.method public ajO(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 1757
    const/4 v0, 0x0

    return v0
.end method

.method ajP(II)V
    .locals 1

    .prologue
    .line 2662
    iget-object v0, p0, Landroid/support/v4/app/e;->WT:Landroid/support/v4/app/aD;

    if-eqz v0, :cond_1

    .line 2665
    :cond_0
    invoke-direct {p0}, Landroid/support/v4/app/e;->ajb()Landroid/support/v4/app/aD;

    .line 2666
    iget-object v0, p0, Landroid/support/v4/app/e;->WT:Landroid/support/v4/app/aD;

    iput p1, v0, Landroid/support/v4/app/aD;->abn:I

    .line 2667
    iget-object v0, p0, Landroid/support/v4/app/e;->WT:Landroid/support/v4/app/aD;

    iput p2, v0, Landroid/support/v4/app/aD;->aaY:I

    .line 2668
    return-void

    .line 2662
    :cond_1
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 2663
    return-void
.end method

.method public ajQ()V
    .locals 2

    .prologue
    .line 2162
    iget-object v0, p0, Landroid/support/v4/app/e;->Ww:Landroid/support/v4/app/aV;

    if-nez v0, :cond_1

    .line 2163
    :cond_0
    invoke-direct {p0}, Landroid/support/v4/app/e;->ajb()Landroid/support/v4/app/aD;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v4/app/aD;->abj:Z

    .line 2174
    :goto_0
    return-void

    .line 2162
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/e;->Ww:Landroid/support/v4/app/aV;

    iget-object v0, v0, Landroid/support/v4/app/aV;->abY:Landroid/support/v4/app/p;

    if-eqz v0, :cond_0

    .line 2164
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/e;->Ww:Landroid/support/v4/app/aV;

    iget-object v1, v1, Landroid/support/v4/app/aV;->abY:Landroid/support/v4/app/p;

    invoke-virtual {v1}, Landroid/support/v4/app/p;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 2172
    invoke-direct {p0}, Landroid/support/v4/app/e;->aiG()V

    goto :goto_0

    .line 2165
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/e;->Ww:Landroid/support/v4/app/aV;

    iget-object v0, v0, Landroid/support/v4/app/aV;->abY:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/support/v4/app/P;

    invoke-direct {v1, p0}, Landroid/support/v4/app/P;-><init>(Landroid/support/v4/app/e;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method ajR(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 2507
    invoke-virtual {p0, p1}, Landroid/support/v4/app/e;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2508
    iget-object v0, p0, Landroid/support/v4/app/e;->WH:Landroid/support/v4/app/aV;

    if-nez v0, :cond_1

    .line 2514
    :cond_0
    :goto_0
    return-void

    .line 2509
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/e;->WH:Landroid/support/v4/app/aV;

    invoke-virtual {v0}, Landroid/support/v4/app/aV;->aog()Landroid/os/Parcelable;

    move-result-object v0

    .line 2510
    if-eqz v0, :cond_0

    .line 2511
    const-string/jumbo v1, "android:support:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method public ajS(Z)V
    .locals 0

    .prologue
    .line 872
    return-void
.end method

.method public ajT()Z
    .locals 1

    .prologue
    .line 2113
    iget-object v0, p0, Landroid/support/v4/app/e;->WT:Landroid/support/v4/app/aD;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 2114
    :goto_0
    return v0

    .line 2113
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/e;->WT:Landroid/support/v4/app/aD;

    invoke-static {v0}, Landroid/support/v4/app/aD;->anh(Landroid/support/v4/app/aD;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/e;->WT:Landroid/support/v4/app/aD;

    .line 2114
    invoke-static {v0}, Landroid/support/v4/app/aD;->anh(Landroid/support/v4/app/aD;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method ajU()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2564
    iget-object v0, p0, Landroid/support/v4/app/e;->WH:Landroid/support/v4/app/aV;

    if-nez v0, :cond_0

    .line 2567
    :goto_0
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v4/app/e;->mState:I

    .line 2568
    iput-boolean v1, p0, Landroid/support/v4/app/e;->mCalled:Z

    .line 2569
    invoke-virtual {p0}, Landroid/support/v4/app/e;->ajs()V

    .line 2570
    iget-boolean v0, p0, Landroid/support/v4/app/e;->mCalled:Z

    if-eqz v0, :cond_1

    .line 2574
    iget-object v0, p0, Landroid/support/v4/app/e;->WS:Landroid/support/v4/app/aY;

    if-nez v0, :cond_2

    .line 2577
    :goto_1
    iput-boolean v1, p0, Landroid/support/v4/app/e;->WF:Z

    .line 2578
    return-void

    .line 2565
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/e;->WH:Landroid/support/v4/app/aV;

    invoke-virtual {v0}, Landroid/support/v4/app/aV;->aoG()V

    goto :goto_0

    .line 2571
    :cond_1
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not call through to super.onDestroyView()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2575
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/e;->WS:Landroid/support/v4/app/aY;

    invoke-virtual {v0}, Landroid/support/v4/app/aY;->aqp()V

    goto :goto_1
.end method

.method public ajV(IZI)Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 1361
    const/4 v0, 0x0

    return-object v0
.end method

.method ajW(Landroid/support/v4/app/aq;)V
    .locals 3

    .prologue
    .line 2617
    invoke-direct {p0}, Landroid/support/v4/app/e;->ajb()Landroid/support/v4/app/aD;

    .line 2618
    iget-object v0, p0, Landroid/support/v4/app/e;->WT:Landroid/support/v4/app/aD;

    iget-object v0, v0, Landroid/support/v4/app/aD;->abf:Landroid/support/v4/app/aq;

    if-eq p1, v0, :cond_1

    .line 2621
    if-nez p1, :cond_2

    .line 2625
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/e;->WT:Landroid/support/v4/app/aD;

    iget-boolean v0, v0, Landroid/support/v4/app/aD;->abj:Z

    if-nez v0, :cond_3

    .line 2628
    :goto_0
    if-nez p1, :cond_4

    .line 2631
    :goto_1
    return-void

    .line 2619
    :cond_1
    return-void

    .line 2621
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/e;->WT:Landroid/support/v4/app/aD;

    iget-object v0, v0, Landroid/support/v4/app/aD;->abf:Landroid/support/v4/app/aq;

    if-eqz v0, :cond_0

    .line 2622
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Trying to set a replacement startPostponedEnterTransition on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2626
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/e;->WT:Landroid/support/v4/app/aD;

    iput-object p1, v0, Landroid/support/v4/app/aD;->abf:Landroid/support/v4/app/aq;

    goto :goto_0

    .line 2629
    :cond_4
    invoke-interface {p1}, Landroid/support/v4/app/aq;->startListening()V

    goto :goto_1
.end method

.method public final ajX()Landroid/support/v4/app/bb;
    .locals 1

    .prologue
    .line 749
    iget-object v0, p0, Landroid/support/v4/app/e;->Ww:Landroid/support/v4/app/aV;

    return-object v0
.end method

.method aja()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2581
    iget-object v0, p0, Landroid/support/v4/app/e;->WH:Landroid/support/v4/app/aV;

    if-nez v0, :cond_0

    .line 2584
    :goto_0
    iput v1, p0, Landroid/support/v4/app/e;->mState:I

    .line 2585
    iput-boolean v1, p0, Landroid/support/v4/app/e;->mCalled:Z

    .line 2586
    invoke-virtual {p0}, Landroid/support/v4/app/e;->onDestroy()V

    .line 2587
    iget-boolean v0, p0, Landroid/support/v4/app/e;->mCalled:Z

    if-eqz v0, :cond_1

    .line 2591
    iput-object v2, p0, Landroid/support/v4/app/e;->WH:Landroid/support/v4/app/aV;

    .line 2592
    return-void

    .line 2582
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/e;->WH:Landroid/support/v4/app/aV;

    invoke-virtual {v0}, Landroid/support/v4/app/aV;->aoL()V

    goto :goto_0

    .line 2588
    :cond_1
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not call through to super.onDestroy()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ajc(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 1304
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/e;->mCalled:Z

    .line 1305
    return-void
.end method

.method ajd(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2466
    iget-boolean v0, p0, Landroid/support/v4/app/e;->WY:Z

    if-eqz v0, :cond_1

    .line 2478
    :cond_0
    return v1

    .line 2467
    :cond_1
    iget-boolean v0, p0, Landroid/support/v4/app/e;->Wu:Z

    if-nez v0, :cond_3

    .line 2472
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/e;->WH:Landroid/support/v4/app/aV;

    if-eqz v0, :cond_0

    .line 2473
    iget-object v0, p0, Landroid/support/v4/app/e;->WH:Landroid/support/v4/app/aV;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/aV;->apP(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2474
    return v2

    .line 2467
    :cond_3
    iget-boolean v0, p0, Landroid/support/v4/app/e;->WX:Z

    if-eqz v0, :cond_2

    .line 2468
    invoke-virtual {p0, p1}, Landroid/support/v4/app/e;->ajO(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2469
    return v2
.end method

.method aje(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 2703
    invoke-direct {p0}, Landroid/support/v4/app/e;->ajb()Landroid/support/v4/app/aD;

    move-result-object v0

    iput-object p1, v0, Landroid/support/v4/app/aD;->abl:Landroid/animation/Animator;

    .line 2704
    return-void
.end method

.method ajf(I)V
    .locals 1

    .prologue
    .line 2721
    invoke-direct {p0}, Landroid/support/v4/app/e;->ajb()Landroid/support/v4/app/aD;

    move-result-object v0

    iput p1, v0, Landroid/support/v4/app/aD;->abe:I

    .line 2722
    return-void
.end method

.method public ajg(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 577
    iget v0, p0, Landroid/support/v4/app/e;->Wr:I

    if-gez v0, :cond_1

    .line 580
    :cond_0
    iput-object p1, p0, Landroid/support/v4/app/e;->WJ:Landroid/os/Bundle;

    .line 581
    return-void

    .line 577
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/e;->ajI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Fragment already active and state has been saved"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ajh()Ljava/lang/Object;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2024
    iget-object v0, p0, Landroid/support/v4/app/e;->WT:Landroid/support/v4/app/aD;

    if-eqz v0, :cond_0

    .line 2027
    iget-object v0, p0, Landroid/support/v4/app/e;->WT:Landroid/support/v4/app/aD;

    invoke-static {v0}, Landroid/support/v4/app/aD;->anb(Landroid/support/v4/app/aD;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 2025
    :cond_0
    return-object v1
.end method

.method public aji()Landroid/view/View;
    .locals 1

    .prologue
    .line 1484
    iget-object v0, p0, Landroid/support/v4/app/e;->mView:Landroid/view/View;

    return-object v0
.end method

.method ajj(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 2699
    invoke-direct {p0}, Landroid/support/v4/app/e;->ajb()Landroid/support/v4/app/aD;

    move-result-object v0

    iput-object p1, v0, Landroid/support/v4/app/aD;->abb:Landroid/view/View;

    .line 2700
    return-void
.end method

.method ajk()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2530
    iget-object v0, p0, Landroid/support/v4/app/e;->WH:Landroid/support/v4/app/aV;

    if-nez v0, :cond_0

    .line 2533
    :goto_0
    const/4 v0, 0x3

    iput v0, p0, Landroid/support/v4/app/e;->mState:I

    .line 2534
    iput-boolean v1, p0, Landroid/support/v4/app/e;->mCalled:Z

    .line 2535
    invoke-virtual {p0}, Landroid/support/v4/app/e;->onStop()V

    .line 2536
    iget-boolean v0, p0, Landroid/support/v4/app/e;->mCalled:Z

    if-eqz v0, :cond_1

    .line 2540
    return-void

    .line 2531
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/e;->WH:Landroid/support/v4/app/aV;

    invoke-virtual {v0}, Landroid/support/v4/app/aV;->aoF()V

    goto :goto_0

    .line 2537
    :cond_1
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not call through to super.onStop()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method ajl()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2357
    iget-object v0, p0, Landroid/support/v4/app/e;->WH:Landroid/support/v4/app/aV;

    if-nez v0, :cond_0

    .line 2361
    :goto_0
    const/4 v0, 0x4

    iput v0, p0, Landroid/support/v4/app/e;->mState:I

    .line 2362
    iput-boolean v1, p0, Landroid/support/v4/app/e;->mCalled:Z

    .line 2363
    invoke-virtual {p0}, Landroid/support/v4/app/e;->onStart()V

    .line 2364
    iget-boolean v0, p0, Landroid/support/v4/app/e;->mCalled:Z

    if-eqz v0, :cond_1

    .line 2368
    iget-object v0, p0, Landroid/support/v4/app/e;->WH:Landroid/support/v4/app/aV;

    if-nez v0, :cond_2

    .line 2371
    :goto_1
    iget-object v0, p0, Landroid/support/v4/app/e;->WS:Landroid/support/v4/app/aY;

    if-nez v0, :cond_3

    .line 2374
    :goto_2
    return-void

    .line 2358
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/e;->WH:Landroid/support/v4/app/aV;

    invoke-virtual {v0}, Landroid/support/v4/app/aV;->apU()V

    .line 2359
    iget-object v0, p0, Landroid/support/v4/app/e;->WH:Landroid/support/v4/app/aV;

    invoke-virtual {v0}, Landroid/support/v4/app/aV;->aoZ()Z

    goto :goto_0

    .line 2365
    :cond_1
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not call through to super.onStart()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2369
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/e;->WH:Landroid/support/v4/app/aV;

    invoke-virtual {v0}, Landroid/support/v4/app/aV;->aob()V

    goto :goto_1

    .line 2372
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/e;->WS:Landroid/support/v4/app/aY;

    invoke-virtual {v0}, Landroid/support/v4/app/aY;->aqs()V

    goto :goto_2
.end method

.method ajm(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1424
    if-nez p1, :cond_1

    .line 1436
    :cond_0
    :goto_0
    return-void

    .line 1425
    :cond_1
    const-string/jumbo v0, "android:support:fragments"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 1427
    if-eqz v0, :cond_0

    .line 1428
    iget-object v1, p0, Landroid/support/v4/app/e;->WH:Landroid/support/v4/app/aV;

    if-eqz v1, :cond_2

    .line 1431
    :goto_1
    iget-object v1, p0, Landroid/support/v4/app/e;->WH:Landroid/support/v4/app/aV;

    iget-object v2, p0, Landroid/support/v4/app/e;->WD:Landroid/support/v4/app/az;

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/aV;->aoW(Landroid/os/Parcelable;Landroid/support/v4/app/az;)V

    .line 1432
    iput-object v3, p0, Landroid/support/v4/app/e;->WD:Landroid/support/v4/app/az;

    .line 1433
    iget-object v0, p0, Landroid/support/v4/app/e;->WH:Landroid/support/v4/app/aV;

    invoke-virtual {v0}, Landroid/support/v4/app/aV;->apL()V

    goto :goto_0

    .line 1429
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/app/e;->aio()V

    goto :goto_1
.end method

.method public ajn(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1474
    return-void
.end method

.method ajo(Z)V
    .locals 1

    .prologue
    .line 2408
    invoke-virtual {p0, p1}, Landroid/support/v4/app/e;->onPictureInPictureModeChanged(Z)V

    .line 2409
    iget-object v0, p0, Landroid/support/v4/app/e;->WH:Landroid/support/v4/app/aV;

    if-nez v0, :cond_0

    .line 2412
    :goto_0
    return-void

    .line 2410
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/e;->WH:Landroid/support/v4/app/aV;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/aV;->apE(Z)V

    goto :goto_0
.end method

.method public ajp(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1287
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/app/e;->mCalled:Z

    .line 1288
    iget-object v1, p0, Landroid/support/v4/app/e;->Wk:Landroid/support/v4/app/p;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/e;->Wk:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1289
    :cond_0
    if-nez v0, :cond_1

    .line 1293
    :goto_0
    return-void

    .line 1290
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/app/e;->mCalled:Z

    .line 1291
    invoke-virtual {p0, v0, p2, p3}, Landroid/support/v4/app/e;->ajc(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public ajq(Landroid/view/Menu;)V
    .locals 0

    .prologue
    .line 1768
    return-void
.end method

.method ajr(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2319
    iget-object v0, p0, Landroid/support/v4/app/e;->WH:Landroid/support/v4/app/aV;

    if-nez v0, :cond_0

    .line 2322
    :goto_0
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v4/app/e;->mState:I

    .line 2323
    iput-boolean v1, p0, Landroid/support/v4/app/e;->mCalled:Z

    .line 2324
    invoke-virtual {p0, p1}, Landroid/support/v4/app/e;->onCreate(Landroid/os/Bundle;)V

    .line 2325
    iget-boolean v0, p0, Landroid/support/v4/app/e;->mCalled:Z

    if-eqz v0, :cond_1

    .line 2329
    return-void

    .line 2320
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/e;->WH:Landroid/support/v4/app/aV;

    invoke-virtual {v0}, Landroid/support/v4/app/aV;->apU()V

    goto :goto_0

    .line 2326
    :cond_1
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not call through to super.onCreate()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ajs()V
    .locals 1

    .prologue
    .line 1636
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/e;->mCalled:Z

    .line 1637
    return-void
.end method

.method ajt()Landroid/support/v4/app/bb;
    .locals 1

    .prologue
    .line 777
    iget-object v0, p0, Landroid/support/v4/app/e;->WH:Landroid/support/v4/app/aV;

    return-object v0
.end method

.method public aju()Ljava/lang/Object;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1958
    iget-object v0, p0, Landroid/support/v4/app/e;->WT:Landroid/support/v4/app/aD;

    if-eqz v0, :cond_0

    .line 1961
    iget-object v0, p0, Landroid/support/v4/app/e;->WT:Landroid/support/v4/app/aD;

    invoke-static {v0}, Landroid/support/v4/app/aD;->and(Landroid/support/v4/app/aD;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1959
    :cond_0
    return-object v1
.end method

.method ajv(I)V
    .locals 1

    .prologue
    .line 2648
    iget-object v0, p0, Landroid/support/v4/app/e;->WT:Landroid/support/v4/app/aD;

    if-eqz v0, :cond_1

    .line 2651
    :cond_0
    invoke-direct {p0}, Landroid/support/v4/app/e;->ajb()Landroid/support/v4/app/aD;

    move-result-object v0

    iput p1, v0, Landroid/support/v4/app/aD;->abd:I

    .line 2652
    return-void

    .line 2648
    :cond_1
    if-nez p1, :cond_0

    .line 2649
    return-void
.end method

.method ajw(Z)V
    .locals 1

    .prologue
    .line 2739
    invoke-direct {p0}, Landroid/support/v4/app/e;->ajb()Landroid/support/v4/app/aD;

    move-result-object v0

    iput-boolean p1, v0, Landroid/support/v4/app/aD;->abm:Z

    .line 2740
    return-void
.end method

.method ajx(Ljava/lang/String;)Landroid/support/v4/app/e;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2282
    iget-object v0, p0, Landroid/support/v4/app/e;->Wl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2285
    iget-object v0, p0, Landroid/support/v4/app/e;->WH:Landroid/support/v4/app/aV;

    if-nez v0, :cond_1

    .line 2288
    return-object v1

    .line 2283
    :cond_0
    return-object p0

    .line 2286
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/e;->WH:Landroid/support/v4/app/aV;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/aV;->apG(Ljava/lang/String;)Landroid/support/v4/app/e;

    move-result-object v0

    return-object v0
.end method

.method final ajy(ILandroid/support/v4/app/e;)V
    .locals 2

    .prologue
    .line 507
    iput p1, p0, Landroid/support/v4/app/e;->Wr:I

    .line 508
    if-nez p2, :cond_0

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "android:fragment:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/app/e;->Wr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/e;->Wl:Ljava/lang/String;

    .line 513
    :goto_0
    return-void

    .line 509
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Landroid/support/v4/app/e;->Wl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/app/e;->Wr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/e;->Wl:Ljava/lang/String;

    goto :goto_0
.end method

.method public ajz(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1460
    const/4 v0, 0x0

    return-object v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2203
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mFragmentId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2204
    iget v0, p0, Landroid/support/v4/app/e;->Wx:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2205
    const-string/jumbo v0, " mContainerId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2206
    iget v0, p0, Landroid/support/v4/app/e;->Ws:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2207
    const-string/jumbo v0, " mTag="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/e;->WM:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2208
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/e;->mState:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2209
    const-string/jumbo v0, " mIndex="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/e;->Wr:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2210
    const-string/jumbo v0, " mWho="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/e;->Wl:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2211
    const-string/jumbo v0, " mBackStackNesting="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/e;->WB:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2212
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAdded="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/e;->Wm:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2213
    const-string/jumbo v0, " mRemoving="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/e;->WN:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2214
    const-string/jumbo v0, " mFromLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/e;->WC:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2215
    const-string/jumbo v0, " mInLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/e;->Wy:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2216
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mHidden="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/e;->WY:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2217
    const-string/jumbo v0, " mDetached="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/e;->WR:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2218
    const-string/jumbo v0, " mMenuVisible="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/e;->WX:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2219
    const-string/jumbo v0, " mHasMenu="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/e;->Wu:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2220
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mRetainInstance="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/e;->WP:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2221
    const-string/jumbo v0, " mRetaining="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/e;->Wp:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2222
    const-string/jumbo v0, " mUserVisibleHint="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/e;->Wz:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2223
    iget-object v0, p0, Landroid/support/v4/app/e;->Ww:Landroid/support/v4/app/aV;

    if-nez v0, :cond_0

    .line 2227
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/e;->Wk:Landroid/support/v4/app/p;

    if-nez v0, :cond_1

    .line 2231
    :goto_1
    iget-object v0, p0, Landroid/support/v4/app/e;->WV:Landroid/support/v4/app/e;

    if-nez v0, :cond_2

    .line 2235
    :goto_2
    iget-object v0, p0, Landroid/support/v4/app/e;->WJ:Landroid/os/Bundle;

    if-nez v0, :cond_3

    .line 2238
    :goto_3
    iget-object v0, p0, Landroid/support/v4/app/e;->WI:Landroid/os/Bundle;

    if-nez v0, :cond_4

    .line 2242
    :goto_4
    iget-object v0, p0, Landroid/support/v4/app/e;->WA:Landroid/util/SparseArray;

    if-nez v0, :cond_5

    .line 2246
    :goto_5
    iget-object v0, p0, Landroid/support/v4/app/e;->WU:Landroid/support/v4/app/e;

    if-nez v0, :cond_6

    .line 2251
    :goto_6
    invoke-virtual {p0}, Landroid/support/v4/app/e;->aiS()I

    move-result v0

    if-nez v0, :cond_7

    .line 2254
    :goto_7
    iget-object v0, p0, Landroid/support/v4/app/e;->Wj:Landroid/view/ViewGroup;

    if-nez v0, :cond_8

    .line 2257
    :goto_8
    iget-object v0, p0, Landroid/support/v4/app/e;->mView:Landroid/view/View;

    if-nez v0, :cond_9

    .line 2260
    :goto_9
    iget-object v0, p0, Landroid/support/v4/app/e;->WL:Landroid/view/View;

    if-nez v0, :cond_a

    .line 2263
    :goto_a
    invoke-virtual {p0}, Landroid/support/v4/app/e;->aiq()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_b

    .line 2271
    :goto_b
    iget-object v0, p0, Landroid/support/v4/app/e;->WS:Landroid/support/v4/app/aY;

    if-nez v0, :cond_c

    .line 2275
    :goto_c
    iget-object v0, p0, Landroid/support/v4/app/e;->WH:Landroid/support/v4/app/aV;

    if-nez v0, :cond_d

    .line 2279
    :goto_d
    return-void

    .line 2224
    :cond_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mFragmentManager="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2225
    iget-object v0, p0, Landroid/support/v4/app/e;->Ww:Landroid/support/v4/app/aV;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_0

    .line 2228
    :cond_1
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mHost="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2229
    iget-object v0, p0, Landroid/support/v4/app/e;->Wk:Landroid/support/v4/app/p;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_1

    .line 2232
    :cond_2
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mParentFragment="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2233
    iget-object v0, p0, Landroid/support/v4/app/e;->WV:Landroid/support/v4/app/e;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_2

    .line 2236
    :cond_3
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mArguments="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/e;->WJ:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_3

    .line 2239
    :cond_4
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSavedFragmentState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2240
    iget-object v0, p0, Landroid/support/v4/app/e;->WI:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_4

    .line 2243
    :cond_5
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSavedViewState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2244
    iget-object v0, p0, Landroid/support/v4/app/e;->WA:Landroid/util/SparseArray;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_5

    .line 2247
    :cond_6
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mTarget="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/e;->WU:Landroid/support/v4/app/e;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2248
    const-string/jumbo v0, " mTargetRequestCode="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2249
    iget v0, p0, Landroid/support/v4/app/e;->WQ:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    goto/16 :goto_6

    .line 2252
    :cond_7
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAnim="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/support/v4/app/e;->aiS()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    goto/16 :goto_7

    .line 2255
    :cond_8
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mContainer="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/e;->Wj:Landroid/view/ViewGroup;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 2258
    :cond_9
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/e;->mView:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto/16 :goto_9

    .line 2261
    :cond_a
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mInnerView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/e;->mView:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto/16 :goto_a

    .line 2264
    :cond_b
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2265
    const-string/jumbo v0, "mAnimatingAway="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2266
    invoke-virtual {p0}, Landroid/support/v4/app/e;->aiq()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2267
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2268
    const-string/jumbo v0, "mStateAfterAnimating="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2269
    invoke-virtual {p0}, Landroid/support/v4/app/e;->ajH()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    goto/16 :goto_b

    .line 2272
    :cond_c
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Loader Manager:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2273
    iget-object v0, p0, Landroid/support/v4/app/e;->WS:Landroid/support/v4/app/aY;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/app/aY;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto/16 :goto_c

    .line 2276
    :cond_d
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Child "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/e;->WH:Landroid/support/v4/app/aV;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2277
    iget-object v0, p0, Landroid/support/v4/app/e;->WH:Landroid/support/v4/app/aV;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/app/aV;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto/16 :goto_d
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 523
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final getActivity()Landroid/support/v4/app/a;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 684
    iget-object v1, p0, Landroid/support/v4/app/e;->Wk:Landroid/support/v4/app/p;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/e;->Wk:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/a;

    :cond_0
    return-object v0
.end method

.method getAnimator()Landroid/animation/Animator;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2707
    iget-object v0, p0, Landroid/support/v4/app/e;->WT:Landroid/support/v4/app/aD;

    if-eqz v0, :cond_0

    .line 2710
    iget-object v0, p0, Landroid/support/v4/app/e;->WT:Landroid/support/v4/app/aD;

    iget-object v0, v0, Landroid/support/v4/app/aD;->abl:Landroid/animation/Animator;

    return-object v0

    .line 2708
    :cond_0
    return-object v1
.end method

.method public final getResources()Landroid/content/res/Resources;
    .locals 3

    .prologue
    .line 699
    iget-object v0, p0, Landroid/support/v4/app/e;->Wk:Landroid/support/v4/app/p;

    if-eqz v0, :cond_0

    .line 702
    iget-object v0, p0, Landroid/support/v4/app/e;->Wk:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0

    .line 700
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 530
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1045
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 1596
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/e;->mCalled:Z

    .line 1597
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1403
    iput-boolean v1, p0, Landroid/support/v4/app/e;->mCalled:Z

    .line 1404
    invoke-virtual {p0, p1}, Landroid/support/v4/app/e;->ajm(Landroid/os/Bundle;)V

    .line 1405
    iget-object v0, p0, Landroid/support/v4/app/e;->WH:Landroid/support/v4/app/aV;

    if-nez v0, :cond_1

    .line 1409
    :cond_0
    :goto_0
    return-void

    .line 1405
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/e;->WH:Landroid/support/v4/app/aV;

    .line 1406
    invoke-virtual {v0, v1}, Landroid/support/v4/app/aV;->apZ(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1407
    iget-object v0, p0, Landroid/support/v4/app/e;->WH:Landroid/support/v4/app/aV;

    invoke-virtual {v0}, Landroid/support/v4/app/aV;->apL()V

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    .prologue
    .line 1789
    invoke-virtual {p0}, Landroid/support/v4/app/e;->getActivity()Landroid/support/v4/app/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/a;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 1790
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 1645
    iput-boolean v1, p0, Landroid/support/v4/app/e;->mCalled:Z

    .line 1648
    iget-boolean v0, p0, Landroid/support/v4/app/e;->Wv:Z

    if-eqz v0, :cond_0

    .line 1652
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/e;->WS:Landroid/support/v4/app/aY;

    if-nez v0, :cond_1

    .line 1655
    :goto_1
    return-void

    .line 1649
    :cond_0
    iput-boolean v1, p0, Landroid/support/v4/app/e;->Wv:Z

    .line 1650
    iget-object v0, p0, Landroid/support/v4/app/e;->Wk:Landroid/support/v4/app/p;

    iget-object v1, p0, Landroid/support/v4/app/e;->Wl:Ljava/lang/String;

    iget-boolean v2, p0, Landroid/support/v4/app/e;->Wq:Z

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/p;->akj(Ljava/lang/String;ZZ)Landroid/support/v4/app/aY;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/e;->WS:Landroid/support/v4/app/aY;

    goto :goto_0

    .line 1653
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/e;->WS:Landroid/support/v4/app/aY;

    invoke-virtual {v0}, Landroid/support/v4/app/aY;->aql()V

    goto :goto_1
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 1622
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/e;->mCalled:Z

    .line 1623
    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    .prologue
    .line 1582
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 1606
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/e;->mCalled:Z

    .line 1607
    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 0

    .prologue
    .line 1591
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    .prologue
    .line 1726
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .prologue
    .line 1147
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 1549
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/e;->mCalled:Z

    .line 1550
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1572
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 1528
    iput-boolean v1, p0, Landroid/support/v4/app/e;->mCalled:Z

    .line 1530
    iget-boolean v0, p0, Landroid/support/v4/app/e;->Wq:Z

    if-eqz v0, :cond_1

    .line 1539
    :cond_0
    :goto_0
    return-void

    .line 1531
    :cond_1
    iput-boolean v1, p0, Landroid/support/v4/app/e;->Wq:Z

    .line 1532
    iget-boolean v0, p0, Landroid/support/v4/app/e;->Wv:Z

    if-eqz v0, :cond_2

    .line 1535
    iget-object v0, p0, Landroid/support/v4/app/e;->WS:Landroid/support/v4/app/aY;

    if-eqz v0, :cond_0

    .line 1536
    iget-object v0, p0, Landroid/support/v4/app/e;->WS:Landroid/support/v4/app/aY;

    invoke-virtual {v0}, Landroid/support/v4/app/aY;->aqq()V

    goto :goto_0

    .line 1533
    :cond_2
    iput-boolean v1, p0, Landroid/support/v4/app/e;->Wv:Z

    .line 1534
    iget-object v0, p0, Landroid/support/v4/app/e;->Wk:Landroid/support/v4/app/p;

    iget-object v1, p0, Landroid/support/v4/app/e;->Wl:Ljava/lang/String;

    iget-boolean v2, p0, Landroid/support/v4/app/e;->Wq:Z

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/p;->akj(Ljava/lang/String;ZZ)Landroid/support/v4/app/aY;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/e;->WS:Landroid/support/v4/app/aY;

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 1616
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/e;->mCalled:Z

    .line 1617
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    .prologue
    .line 1002
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/app/e;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 1003
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 1010
    iget-object v0, p0, Landroid/support/v4/app/e;->Wk:Landroid/support/v4/app/p;

    if-eqz v0, :cond_0

    .line 1013
    iget-object v0, p0, Landroid/support/v4/app/e;->Wk:Landroid/support/v4/app/p;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/support/v4/app/p;->aky(Landroid/support/v4/app/e;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 1014
    return-void

    .line 1011
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 536
    invoke-static {p0, v0}, Landroid/support/v4/a/j;->aha(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 537
    iget v1, p0, Landroid/support/v4/app/e;->Wr:I

    if-gez v1, :cond_0

    .line 541
    :goto_0
    iget v1, p0, Landroid/support/v4/app/e;->Wx:I

    if-nez v1, :cond_1

    .line 545
    :goto_1
    iget-object v1, p0, Landroid/support/v4/app/e;->WM:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 549
    :goto_2
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 550
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 538
    :cond_0
    const-string/jumbo v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    iget v1, p0, Landroid/support/v4/app/e;->Wr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 542
    :cond_1
    const-string/jumbo v1, " id=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    iget v1, p0, Landroid/support/v4/app/e;->Wx:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 546
    :cond_2
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    iget-object v1, p0, Landroid/support/v4/app/e;->WM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method
