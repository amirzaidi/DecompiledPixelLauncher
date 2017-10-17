.class public Landroid/support/v4/app/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;


# static fields
.field static final XY:Ljava/lang/Object;

.field private static final Yq:Landroid/support/v4/a/b;


# instance fields
.field XT:Landroid/view/ViewGroup;

.field XU:Landroid/support/v4/app/r;

.field XV:Ljava/lang/String;

.field XW:Z

.field XX:Z

.field XZ:Z

.field YA:I

.field YB:Z

.field YC:Landroid/support/v4/app/aU;

.field YD:Landroid/support/v4/app/aA;

.field YE:Landroid/support/v4/app/g;

.field YF:Landroid/support/v4/app/g;

.field YG:F

.field YH:Z

.field YI:Z

.field Ya:Z

.field Yb:I

.field Yc:I

.field Yd:Z

.field Ye:Z

.field Yf:Z

.field Yg:Landroid/support/v4/app/aR;

.field Yh:I

.field Yi:Z

.field Yj:Z

.field Yk:Landroid/util/SparseArray;

.field Yl:I

.field Ym:Z

.field Yn:Landroid/support/v4/app/ax;

.field Yo:Z

.field Yp:Z

.field Yr:Landroid/support/v4/app/aR;

.field Ys:Landroid/os/Bundle;

.field Yt:Landroid/os/Bundle;

.field Yu:I

.field Yv:Landroid/view/View;

.field Yw:Ljava/lang/String;

.field Yx:Z

.field Yy:Z

.field Yz:Z

.field mCalled:Z

.field mLayoutInflater:Landroid/view/LayoutInflater;

.field mState:I

.field mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 189
    new-instance v0, Landroid/support/v4/a/b;

    invoke-direct {v0}, Landroid/support/v4/a/b;-><init>()V

    sput-object v0, Landroid/support/v4/app/g;->Yq:Landroid/support/v4/a/b;

    .line 192
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/app/g;->XY:Ljava/lang/Object;

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

    iput v0, p0, Landroid/support/v4/app/g;->mState:I

    .line 208
    iput v1, p0, Landroid/support/v4/app/g;->Yb:I

    .line 220
    iput v1, p0, Landroid/support/v4/app/g;->Yu:I

    .line 296
    iput-boolean v2, p0, Landroid/support/v4/app/g;->YH:Z

    .line 315
    iput-boolean v2, p0, Landroid/support/v4/app/g;->Yj:Z

    .line 412
    return-void
.end method

.method static synthetic ajO(Landroid/support/v4/app/g;)V
    .locals 0

    .prologue
    .line 188
    invoke-direct {p0}, Landroid/support/v4/app/g;->ajT()V

    return-void
.end method

.method static ajP(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 481
    :try_start_0
    sget-object v0, Landroid/support/v4/app/g;->Yq:Landroid/support/v4/a/b;

    invoke-virtual {v0, p1}, Landroid/support/v4/a/b;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 482
    if-eqz v0, :cond_0

    .line 487
    :goto_0
    const-class v1, Landroid/support/v4/app/g;

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
    sget-object v1, Landroid/support/v4/app/g;->Yq:Landroid/support/v4/a/b;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/a/b;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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

.method private ajT()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2181
    iget-object v0, p0, Landroid/support/v4/app/g;->YD:Landroid/support/v4/app/aA;

    if-eqz v0, :cond_0

    .line 2184
    iget-object v0, p0, Landroid/support/v4/app/g;->YD:Landroid/support/v4/app/aA;

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/support/v4/app/aA;->acE:Z

    .line 2185
    iget-object v0, p0, Landroid/support/v4/app/g;->YD:Landroid/support/v4/app/aA;

    iget-object v0, v0, Landroid/support/v4/app/aA;->acA:Landroid/support/v4/app/ap;

    .line 2186
    iget-object v2, p0, Landroid/support/v4/app/g;->YD:Landroid/support/v4/app/aA;

    iput-object v1, v2, Landroid/support/v4/app/aA;->acA:Landroid/support/v4/app/ap;

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
    invoke-interface {v0}, Landroid/support/v4/app/ap;->ajv()V

    goto :goto_1
.end method

.method public static akh(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/g;
    .locals 4

    .prologue
    .line 438
    :try_start_0
    sget-object v0, Landroid/support/v4/app/g;->Yq:Landroid/support/v4/a/b;

    invoke-virtual {v0, p1}, Landroid/support/v4/a/b;->get(Ljava/lang/Object;)Ljava/lang/Object;

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

    check-cast v0, Landroid/support/v4/app/g;

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
    sget-object v1, Landroid/support/v4/app/g;->Yq:Landroid/support/v4/a/b;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/a/b;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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
    invoke-virtual {v0, p2}, Landroid/support/v4/app/g;->akt(Landroid/os/Bundle;)V
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

.method private ako()Landroid/support/v4/app/aA;
    .locals 1

    .prologue
    .line 2634
    iget-object v0, p0, Landroid/support/v4/app/g;->YD:Landroid/support/v4/app/aA;

    if-eqz v0, :cond_0

    .line 2637
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/g;->YD:Landroid/support/v4/app/aA;

    return-object v0

    .line 2635
    :cond_0
    new-instance v0, Landroid/support/v4/app/aA;

    invoke-direct {v0}, Landroid/support/v4/app/aA;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/g;->YD:Landroid/support/v4/app/aA;

    goto :goto_0
.end method


# virtual methods
.method ajB()V
    .locals 3

    .prologue
    .line 2292
    iget-object v0, p0, Landroid/support/v4/app/g;->XU:Landroid/support/v4/app/r;

    if-eqz v0, :cond_0

    .line 2295
    new-instance v0, Landroid/support/v4/app/aR;

    invoke-direct {v0}, Landroid/support/v4/app/aR;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/g;->Yr:Landroid/support/v4/app/aR;

    .line 2296
    iget-object v0, p0, Landroid/support/v4/app/g;->Yr:Landroid/support/v4/app/aR;

    iget-object v1, p0, Landroid/support/v4/app/g;->XU:Landroid/support/v4/app/r;

    new-instance v2, Landroid/support/v4/app/aa;

    invoke-direct {v2, p0}, Landroid/support/v4/app/aa;-><init>(Landroid/support/v4/app/g;)V

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/aR;->aqt(Landroid/support/v4/app/r;Landroid/support/v4/app/ac;Landroid/support/v4/app/g;)V

    .line 2316
    return-void

    .line 2293
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Fragment has not been attached yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method ajC()Landroid/support/v4/app/c;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2685
    iget-object v0, p0, Landroid/support/v4/app/g;->YD:Landroid/support/v4/app/aA;

    if-eqz v0, :cond_0

    .line 2688
    iget-object v0, p0, Landroid/support/v4/app/g;->YD:Landroid/support/v4/app/aA;

    iget-object v0, v0, Landroid/support/v4/app/aA;->acv:Landroid/support/v4/app/c;

    return-object v0

    .line 2686
    :cond_0
    return-object v1
.end method

.method ajD()Landroid/view/View;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2692
    iget-object v0, p0, Landroid/support/v4/app/g;->YD:Landroid/support/v4/app/aA;

    if-eqz v0, :cond_0

    .line 2695
    iget-object v0, p0, Landroid/support/v4/app/g;->YD:Landroid/support/v4/app/aA;

    iget-object v0, v0, Landroid/support/v4/app/aA;->acw:Landroid/view/View;

    return-object v0

    .line 2693
    :cond_0
    return-object v1
.end method

.method ajE(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2341
    iget-object v0, p0, Landroid/support/v4/app/g;->Yr:Landroid/support/v4/app/aR;

    if-nez v0, :cond_0

    .line 2344
    :goto_0
    const/4 v0, 0x2

    iput v0, p0, Landroid/support/v4/app/g;->mState:I

    .line 2345
    iput-boolean v1, p0, Landroid/support/v4/app/g;->mCalled:Z

    .line 2346
    invoke-virtual {p0, p1}, Landroid/support/v4/app/g;->ajH(Landroid/os/Bundle;)V

    .line 2347
    iget-boolean v0, p0, Landroid/support/v4/app/g;->mCalled:Z

    if-eqz v0, :cond_1

    .line 2351
    iget-object v0, p0, Landroid/support/v4/app/g;->Yr:Landroid/support/v4/app/aR;

    if-nez v0, :cond_2

    .line 2354
    :goto_1
    return-void

    .line 2342
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/g;->Yr:Landroid/support/v4/app/aR;

    invoke-virtual {v0}, Landroid/support/v4/app/aR;->aqV()V

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
    iget-object v0, p0, Landroid/support/v4/app/g;->Yr:Landroid/support/v4/app/aR;

    invoke-virtual {v0}, Landroid/support/v4/app/aR;->aqw()V

    goto :goto_1
.end method

.method public ajF(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1325
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/app/g;->mCalled:Z

    .line 1326
    iget-object v1, p0, Landroid/support/v4/app/g;->XU:Landroid/support/v4/app/r;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/g;->XU:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->getActivity()Landroid/app/Activity;

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

    iput-boolean v1, p0, Landroid/support/v4/app/g;->mCalled:Z

    .line 1329
    invoke-virtual {p0, v0}, Landroid/support/v4/app/g;->ala(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method ajG()V
    .locals 1

    .prologue
    .line 2422
    invoke-virtual {p0}, Landroid/support/v4/app/g;->onLowMemory()V

    .line 2423
    iget-object v0, p0, Landroid/support/v4/app/g;->Yr:Landroid/support/v4/app/aR;

    if-nez v0, :cond_0

    .line 2426
    :goto_0
    return-void

    .line 2424
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/g;->Yr:Landroid/support/v4/app/aR;

    invoke-virtual {v0}, Landroid/support/v4/app/aR;->apV()V

    goto :goto_0
.end method

.method public ajH(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 1502
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/g;->mCalled:Z

    .line 1503
    return-void
.end method

.method public final ajI()Z
    .locals 1

    .prologue
    .line 810
    iget-boolean v0, p0, Landroid/support/v4/app/g;->Yx:Z

    return v0
.end method

.method public ajJ(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 1186
    invoke-virtual {p0, p1}, Landroid/support/v4/app/g;->ajQ(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method ajK()Z
    .locals 1

    .prologue
    .line 2732
    iget-object v0, p0, Landroid/support/v4/app/g;->YD:Landroid/support/v4/app/aA;

    if-eqz v0, :cond_0

    .line 2735
    iget-object v0, p0, Landroid/support/v4/app/g;->YD:Landroid/support/v4/app/aA;

    iget-boolean v0, v0, Landroid/support/v4/app/aA;->acH:Z

    return v0

    .line 2733
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method ajL()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2517
    iget-object v0, p0, Landroid/support/v4/app/g;->Yr:Landroid/support/v4/app/aR;

    if-nez v0, :cond_0

    .line 2520
    :goto_0
    const/4 v0, 0x4

    iput v0, p0, Landroid/support/v4/app/g;->mState:I

    .line 2521
    iput-boolean v1, p0, Landroid/support/v4/app/g;->mCalled:Z

    .line 2522
    invoke-virtual {p0}, Landroid/support/v4/app/g;->onPause()V

    .line 2523
    iget-boolean v0, p0, Landroid/support/v4/app/g;->mCalled:Z

    if-eqz v0, :cond_1

    .line 2527
    return-void

    .line 2518
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/g;->Yr:Landroid/support/v4/app/aR;

    invoke-virtual {v0}, Landroid/support/v4/app/aR;->aqm()V

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

.method ajM()Landroid/support/v4/app/c;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2678
    iget-object v0, p0, Landroid/support/v4/app/g;->YD:Landroid/support/v4/app/aA;

    if-eqz v0, :cond_0

    .line 2681
    iget-object v0, p0, Landroid/support/v4/app/g;->YD:Landroid/support/v4/app/aA;

    iget-object v0, v0, Landroid/support/v4/app/aA;->acu:Landroid/support/v4/app/c;

    return-object v0

    .line 2679
    :cond_0
    return-object v1
.end method

.method public ajN(Landroid/support/v4/app/g;)V
    .locals 0

    .prologue
    .line 1317
    return-void
.end method

.method public ajQ(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 2

    .prologue
    .line 1233
    iget-object v0, p0, Landroid/support/v4/app/g;->XU:Landroid/support/v4/app/r;

    if-eqz v0, :cond_0

    .line 1237
    iget-object v0, p0, Landroid/support/v4/app/g;->XU:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->alI()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1238
    invoke-virtual {p0}, Landroid/support/v4/app/g;->ajW()Landroid/support/v4/app/aW;

    .line 1239
    iget-object v1, p0, Landroid/support/v4/app/g;->Yr:Landroid/support/v4/app/aR;

    invoke-virtual {v1}, Landroid/support/v4/app/aR;->apB()Landroid/view/LayoutInflater$Factory2;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/view/B;->ahz(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    .line 1240
    return-object v0

    .line 1234
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ajR()Ljava/lang/Object;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1921
    iget-object v0, p0, Landroid/support/v4/app/g;->YD:Landroid/support/v4/app/aA;

    if-eqz v0, :cond_0

    .line 1924
    iget-object v0, p0, Landroid/support/v4/app/g;->YD:Landroid/support/v4/app/aA;

    invoke-static {v0}, Landroid/support/v4/app/aA;->aok(Landroid/support/v4/app/aA;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroid/support/v4/app/g;->XY:Ljava/lang/Object;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/g;->YD:Landroid/support/v4/app/aA;

    .line 1925
    invoke-static {v0}, Landroid/support/v4/app/aA;->aok(Landroid/support/v4/app/aA;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1922
    :cond_0
    return-object v1

    .line 1924
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/g;->akT()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public ajS()V
    .locals 0

    .prologue
    .line 1736
    return-void
.end method

.method ajU(Landroid/view/Menu;)V
    .locals 1

    .prologue
    .line 2496
    iget-boolean v0, p0, Landroid/support/v4/app/g;->YI:Z

    if-eqz v0, :cond_1

    .line 2504
    :cond_0
    :goto_0
    return-void

    .line 2497
    :cond_1
    iget-boolean v0, p0, Landroid/support/v4/app/g;->Ye:Z

    if-nez v0, :cond_3

    .line 2500
    :cond_2
    :goto_1
    iget-object v0, p0, Landroid/support/v4/app/g;->Yr:Landroid/support/v4/app/aR;

    if-eqz v0, :cond_0

    .line 2501
    iget-object v0, p0, Landroid/support/v4/app/g;->Yr:Landroid/support/v4/app/aR;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/aR;->aqd(Landroid/view/Menu;)V

    goto :goto_0

    .line 2497
    :cond_3
    iget-boolean v0, p0, Landroid/support/v4/app/g;->YH:Z

    if-eqz v0, :cond_2

    .line 2498
    invoke-virtual {p0, p1}, Landroid/support/v4/app/g;->akD(Landroid/view/Menu;)V

    goto :goto_1
.end method

.method ajV()Z
    .locals 1

    .prologue
    .line 2725
    iget-object v0, p0, Landroid/support/v4/app/g;->YD:Landroid/support/v4/app/aA;

    if-eqz v0, :cond_0

    .line 2728
    iget-object v0, p0, Landroid/support/v4/app/g;->YD:Landroid/support/v4/app/aA;

    iget-boolean v0, v0, Landroid/support/v4/app/aA;->acE:Z

    return v0

    .line 2726
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ajW()Landroid/support/v4/app/aW;
    .locals 2

    .prologue
    .line 757
    iget-object v0, p0, Landroid/support/v4/app/g;->Yr:Landroid/support/v4/app/aR;

    if-eqz v0, :cond_1

    .line 769
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/g;->Yr:Landroid/support/v4/app/aR;

    return-object v0

    .line 758
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/g;->ajB()V

    .line 759
    iget v0, p0, Landroid/support/v4/app/g;->mState:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_2

    .line 761
    iget v0, p0, Landroid/support/v4/app/g;->mState:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_3

    .line 763
    iget v0, p0, Landroid/support/v4/app/g;->mState:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_4

    .line 765
    iget v0, p0, Landroid/support/v4/app/g;->mState:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 766
    iget-object v0, p0, Landroid/support/v4/app/g;->Yr:Landroid/support/v4/app/aR;

    invoke-virtual {v0}, Landroid/support/v4/app/aR;->aqM()V

    goto :goto_0

    .line 760
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/g;->Yr:Landroid/support/v4/app/aR;

    invoke-virtual {v0}, Landroid/support/v4/app/aR;->arg()V

    goto :goto_0

    .line 762
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/g;->Yr:Landroid/support/v4/app/aR;

    invoke-virtual {v0}, Landroid/support/v4/app/aR;->apc()V

    goto :goto_0

    .line 764
    :cond_4
    iget-object v0, p0, Landroid/support/v4/app/g;->Yr:Landroid/support/v4/app/aR;

    invoke-virtual {v0}, Landroid/support/v4/app/aR;->aqw()V

    goto :goto_0
.end method

.method ajX()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2377
    iget-object v0, p0, Landroid/support/v4/app/g;->Yr:Landroid/support/v4/app/aR;

    if-nez v0, :cond_0

    .line 2381
    :goto_0
    const/4 v0, 0x5

    iput v0, p0, Landroid/support/v4/app/g;->mState:I

    .line 2382
    iput-boolean v1, p0, Landroid/support/v4/app/g;->mCalled:Z

    .line 2383
    invoke-virtual {p0}, Landroid/support/v4/app/g;->onResume()V

    .line 2384
    iget-boolean v0, p0, Landroid/support/v4/app/g;->mCalled:Z

    if-eqz v0, :cond_1

    .line 2388
    iget-object v0, p0, Landroid/support/v4/app/g;->Yr:Landroid/support/v4/app/aR;

    if-nez v0, :cond_2

    .line 2392
    :goto_1
    return-void

    .line 2378
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/g;->Yr:Landroid/support/v4/app/aR;

    invoke-virtual {v0}, Landroid/support/v4/app/aR;->aqV()V

    .line 2379
    iget-object v0, p0, Landroid/support/v4/app/g;->Yr:Landroid/support/v4/app/aR;

    invoke-virtual {v0}, Landroid/support/v4/app/aR;->aqa()Z

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
    iget-object v0, p0, Landroid/support/v4/app/g;->Yr:Landroid/support/v4/app/aR;

    invoke-virtual {v0}, Landroid/support/v4/app/aR;->arg()V

    .line 2390
    iget-object v0, p0, Landroid/support/v4/app/g;->Yr:Landroid/support/v4/app/aR;

    invoke-virtual {v0}, Landroid/support/v4/app/aR;->aqa()Z

    goto :goto_1
.end method

.method ajY()I
    .locals 1

    .prologue
    .line 2655
    iget-object v0, p0, Landroid/support/v4/app/g;->YD:Landroid/support/v4/app/aA;

    if-eqz v0, :cond_0

    .line 2658
    iget-object v0, p0, Landroid/support/v4/app/g;->YD:Landroid/support/v4/app/aA;

    iget v0, v0, Landroid/support/v4/app/aA;->acI:I

    return v0

    .line 2656
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method ajZ(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 1216
    invoke-virtual {p0, p1}, Landroid/support/v4/app/g;->ajJ(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1217
    iput-object v0, p0, Landroid/support/v4/app/g;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 1218
    iget-object v0, p0, Landroid/support/v4/app/g;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public akA(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1474
    return-void
.end method

.method akB(Z)V
    .locals 1

    .prologue
    .line 2408
    invoke-virtual {p0, p1}, Landroid/support/v4/app/g;->onPictureInPictureModeChanged(Z)V

    .line 2409
    iget-object v0, p0, Landroid/support/v4/app/g;->Yr:Landroid/support/v4/app/aR;

    if-nez v0, :cond_0

    .line 2412
    :goto_0
    return-void

    .line 2410
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/g;->Yr:Landroid/support/v4/app/aR;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/aR;->aqF(Z)V

    goto :goto_0
.end method

.method public akC(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1287
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/app/g;->mCalled:Z

    .line 1288
    iget-object v1, p0, Landroid/support/v4/app/g;->XU:Landroid/support/v4/app/r;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/g;->XU:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->getActivity()Landroid/app/Activity;

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

    iput-boolean v1, p0, Landroid/support/v4/app/g;->mCalled:Z

    .line 1291
    invoke-virtual {p0, v0, p2, p3}, Landroid/support/v4/app/g;->akp(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public akD(Landroid/view/Menu;)V
    .locals 0

    .prologue
    .line 1768
    return-void
.end method

.method akE(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2319
    iget-object v0, p0, Landroid/support/v4/app/g;->Yr:Landroid/support/v4/app/aR;

    if-nez v0, :cond_0

    .line 2322
    :goto_0
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v4/app/g;->mState:I

    .line 2323
    iput-boolean v1, p0, Landroid/support/v4/app/g;->mCalled:Z

    .line 2324
    invoke-virtual {p0, p1}, Landroid/support/v4/app/g;->onCreate(Landroid/os/Bundle;)V

    .line 2325
    iget-boolean v0, p0, Landroid/support/v4/app/g;->mCalled:Z

    if-eqz v0, :cond_1

    .line 2329
    return-void

    .line 2320
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/g;->Yr:Landroid/support/v4/app/aR;

    invoke-virtual {v0}, Landroid/support/v4/app/aR;->aqV()V

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

.method public akF()V
    .locals 1

    .prologue
    .line 1636
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/g;->mCalled:Z

    .line 1637
    return-void
.end method

.method akG()Landroid/support/v4/app/aW;
    .locals 1

    .prologue
    .line 777
    iget-object v0, p0, Landroid/support/v4/app/g;->Yr:Landroid/support/v4/app/aR;

    return-object v0
.end method

.method public akH()Ljava/lang/Object;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1958
    iget-object v0, p0, Landroid/support/v4/app/g;->YD:Landroid/support/v4/app/aA;

    if-eqz v0, :cond_0

    .line 1961
    iget-object v0, p0, Landroid/support/v4/app/g;->YD:Landroid/support/v4/app/aA;

    invoke-static {v0}, Landroid/support/v4/app/aA;->aoh(Landroid/support/v4/app/aA;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1959
    :cond_0
    return-object v1
.end method

.method akI(I)V
    .locals 1

    .prologue
    .line 2648
    iget-object v0, p0, Landroid/support/v4/app/g;->YD:Landroid/support/v4/app/aA;

    if-eqz v0, :cond_1

    .line 2651
    :cond_0
    invoke-direct {p0}, Landroid/support/v4/app/g;->ako()Landroid/support/v4/app/aA;

    move-result-object v0

    iput p1, v0, Landroid/support/v4/app/aA;->acy:I

    .line 2652
    return-void

    .line 2648
    :cond_1
    if-nez p1, :cond_0

    .line 2649
    return-void
.end method

.method akJ(Z)V
    .locals 1

    .prologue
    .line 2739
    invoke-direct {p0}, Landroid/support/v4/app/g;->ako()Landroid/support/v4/app/aA;

    move-result-object v0

    iput-boolean p1, v0, Landroid/support/v4/app/aA;->acH:Z

    .line 2740
    return-void
.end method

.method akK(Ljava/lang/String;)Landroid/support/v4/app/g;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2282
    iget-object v0, p0, Landroid/support/v4/app/g;->XV:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2285
    iget-object v0, p0, Landroid/support/v4/app/g;->Yr:Landroid/support/v4/app/aR;

    if-nez v0, :cond_1

    .line 2288
    return-object v1

    .line 2283
    :cond_0
    return-object p0

    .line 2286
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/g;->Yr:Landroid/support/v4/app/aR;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/aR;->aqH(Ljava/lang/String;)Landroid/support/v4/app/g;

    move-result-object v0

    return-object v0
.end method

.method final akL(ILandroid/support/v4/app/g;)V
    .locals 2

    .prologue
    .line 507
    iput p1, p0, Landroid/support/v4/app/g;->Yb:I

    .line 508
    if-nez p2, :cond_0

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "android:fragment:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/app/g;->Yb:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/g;->XV:Ljava/lang/String;

    .line 513
    :goto_0
    return-void

    .line 509
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Landroid/support/v4/app/g;->XV:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/app/g;->Yb:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/g;->XV:Ljava/lang/String;

    goto :goto_0
.end method

.method public akM(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1460
    const/4 v0, 0x0

    return-object v0
.end method

.method public akN(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 1518
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/g;->mCalled:Z

    .line 1519
    return-void
.end method

.method public akO()Ljava/lang/Object;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1994
    iget-object v0, p0, Landroid/support/v4/app/g;->YD:Landroid/support/v4/app/aA;

    if-eqz v0, :cond_0

    .line 1997
    iget-object v0, p0, Landroid/support/v4/app/g;->YD:Landroid/support/v4/app/aA;

    invoke-static {v0}, Landroid/support/v4/app/aA;->aoi(Landroid/support/v4/app/aA;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroid/support/v4/app/g;->XY:Ljava/lang/Object;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/g;->YD:Landroid/support/v4/app/aA;

    .line 1998
    invoke-static {v0}, Landroid/support/v4/app/aA;->aoi(Landroid/support/v4/app/aA;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1995
    :cond_0
    return-object v1

    .line 1997
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/g;->akH()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method akP(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2439
    iget-boolean v1, p0, Landroid/support/v4/app/g;->YI:Z

    if-eqz v1, :cond_1

    .line 2448
    :cond_0
    :goto_0
    return v0

    .line 2440
    :cond_1
    iget-boolean v1, p0, Landroid/support/v4/app/g;->Ye:Z

    if-nez v1, :cond_3

    .line 2444
    :cond_2
    :goto_1
    iget-object v1, p0, Landroid/support/v4/app/g;->Yr:Landroid/support/v4/app/aR;

    if-eqz v1, :cond_0

    .line 2445
    iget-object v1, p0, Landroid/support/v4/app/g;->Yr:Landroid/support/v4/app/aR;

    invoke-virtual {v1, p1, p2}, Landroid/support/v4/app/aR;->ape(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    .line 2440
    :cond_3
    iget-boolean v1, p0, Landroid/support/v4/app/g;->YH:Z

    if-eqz v1, :cond_2

    .line 2441
    const/4 v0, 0x1

    .line 2442
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/app/g;->akm(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    goto :goto_1
.end method

.method public akQ(IZI)Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 1381
    const/4 v0, 0x0

    return-object v0
.end method

.method final akR(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 494
    iget-object v0, p0, Landroid/support/v4/app/g;->Yk:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 498
    :goto_0
    iput-boolean v2, p0, Landroid/support/v4/app/g;->mCalled:Z

    .line 499
    invoke-virtual {p0, p1}, Landroid/support/v4/app/g;->akN(Landroid/os/Bundle;)V

    .line 500
    iget-boolean v0, p0, Landroid/support/v4/app/g;->mCalled:Z

    if-eqz v0, :cond_1

    .line 504
    return-void

    .line 495
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/g;->Yv:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/app/g;->Yk:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 496
    iput-object v3, p0, Landroid/support/v4/app/g;->Yk:Landroid/util/SparseArray;

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

.method akS()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2543
    iget-object v0, p0, Landroid/support/v4/app/g;->Yr:Landroid/support/v4/app/aR;

    if-nez v0, :cond_1

    .line 2546
    :goto_0
    const/4 v0, 0x2

    iput v0, p0, Landroid/support/v4/app/g;->mState:I

    .line 2547
    iget-boolean v0, p0, Landroid/support/v4/app/g;->Ya:Z

    if-nez v0, :cond_2

    .line 2561
    :cond_0
    :goto_1
    return-void

    .line 2544
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/g;->Yr:Landroid/support/v4/app/aR;

    invoke-virtual {v0}, Landroid/support/v4/app/aR;->apQ()V

    goto :goto_0

    .line 2548
    :cond_2
    iput-boolean v3, p0, Landroid/support/v4/app/g;->Ya:Z

    .line 2549
    iget-boolean v0, p0, Landroid/support/v4/app/g;->Yf:Z

    if-eqz v0, :cond_3

    .line 2553
    :goto_2
    iget-object v0, p0, Landroid/support/v4/app/g;->YC:Landroid/support/v4/app/aU;

    if-eqz v0, :cond_0

    .line 2554
    iget-object v0, p0, Landroid/support/v4/app/g;->XU:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->alz()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2557
    iget-object v0, p0, Landroid/support/v4/app/g;->YC:Landroid/support/v4/app/aU;

    invoke-virtual {v0}, Landroid/support/v4/app/aU;->ars()V

    goto :goto_1

    .line 2550
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/g;->Yf:Z

    .line 2551
    iget-object v0, p0, Landroid/support/v4/app/g;->XU:Landroid/support/v4/app/r;

    iget-object v1, p0, Landroid/support/v4/app/g;->XV:Ljava/lang/String;

    iget-boolean v2, p0, Landroid/support/v4/app/g;->Ya:Z

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/r;->alu(Ljava/lang/String;ZZ)Landroid/support/v4/app/aU;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/g;->YC:Landroid/support/v4/app/aU;

    goto :goto_2

    .line 2555
    :cond_4
    iget-object v0, p0, Landroid/support/v4/app/g;->YC:Landroid/support/v4/app/aU;

    invoke-virtual {v0}, Landroid/support/v4/app/aU;->aro()V

    goto :goto_1
.end method

.method public akT()Ljava/lang/Object;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1884
    iget-object v0, p0, Landroid/support/v4/app/g;->YD:Landroid/support/v4/app/aA;

    if-eqz v0, :cond_0

    .line 1887
    iget-object v0, p0, Landroid/support/v4/app/g;->YD:Landroid/support/v4/app/aA;

    invoke-static {v0}, Landroid/support/v4/app/aA;->aoj(Landroid/support/v4/app/aA;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1885
    :cond_0
    return-object v1
.end method

.method akU()I
    .locals 1

    .prologue
    .line 2714
    iget-object v0, p0, Landroid/support/v4/app/g;->YD:Landroid/support/v4/app/aA;

    if-eqz v0, :cond_0

    .line 2717
    iget-object v0, p0, Landroid/support/v4/app/g;->YD:Landroid/support/v4/app/aA;

    iget v0, v0, Landroid/support/v4/app/aA;->acz:I

    return v0

    .line 2715
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final akV()Z
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Landroid/support/v4/app/g;->Yg:Landroid/support/v4/app/aR;

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Landroid/support/v4/app/g;->Yg:Landroid/support/v4/app/aR;

    invoke-virtual {v0}, Landroid/support/v4/app/aR;->aqT()Z

    move-result v0

    return v0

    .line 601
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method akW()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1664
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/g;->Yb:I

    .line 1665
    iput-object v2, p0, Landroid/support/v4/app/g;->XV:Ljava/lang/String;

    .line 1666
    iput-boolean v1, p0, Landroid/support/v4/app/g;->XW:Z

    .line 1667
    iput-boolean v1, p0, Landroid/support/v4/app/g;->Yx:Z

    .line 1668
    iput-boolean v1, p0, Landroid/support/v4/app/g;->Ym:Z

    .line 1669
    iput-boolean v1, p0, Landroid/support/v4/app/g;->Yi:Z

    .line 1670
    iput-boolean v1, p0, Landroid/support/v4/app/g;->Yd:Z

    .line 1671
    iput v1, p0, Landroid/support/v4/app/g;->Yl:I

    .line 1672
    iput-object v2, p0, Landroid/support/v4/app/g;->Yg:Landroid/support/v4/app/aR;

    .line 1673
    iput-object v2, p0, Landroid/support/v4/app/g;->Yr:Landroid/support/v4/app/aR;

    .line 1674
    iput-object v2, p0, Landroid/support/v4/app/g;->XU:Landroid/support/v4/app/r;

    .line 1675
    iput v1, p0, Landroid/support/v4/app/g;->Yh:I

    .line 1676
    iput v1, p0, Landroid/support/v4/app/g;->Yc:I

    .line 1677
    iput-object v2, p0, Landroid/support/v4/app/g;->Yw:Ljava/lang/String;

    .line 1678
    iput-boolean v1, p0, Landroid/support/v4/app/g;->YI:Z

    .line 1679
    iput-boolean v1, p0, Landroid/support/v4/app/g;->YB:Z

    .line 1680
    iput-boolean v1, p0, Landroid/support/v4/app/g;->XZ:Z

    .line 1681
    iput-object v2, p0, Landroid/support/v4/app/g;->YC:Landroid/support/v4/app/aU;

    .line 1682
    iput-boolean v1, p0, Landroid/support/v4/app/g;->Ya:Z

    .line 1683
    iput-boolean v1, p0, Landroid/support/v4/app/g;->Yf:Z

    .line 1684
    return-void
.end method

.method public akX()V
    .locals 1

    .prologue
    .line 1692
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/g;->mCalled:Z

    .line 1693
    return-void
.end method

.method akY(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2482
    iget-boolean v0, p0, Landroid/support/v4/app/g;->YI:Z

    if-eqz v0, :cond_1

    .line 2492
    :cond_0
    return v1

    .line 2483
    :cond_1
    invoke-virtual {p0, p1}, Landroid/support/v4/app/g;->aki(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2486
    iget-object v0, p0, Landroid/support/v4/app/g;->Yr:Landroid/support/v4/app/aR;

    if-eqz v0, :cond_0

    .line 2487
    iget-object v0, p0, Landroid/support/v4/app/g;->Yr:Landroid/support/v4/app/aR;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/aR;->apD(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2488
    return v2

    .line 2484
    :cond_2
    return v2
.end method

.method akZ()V
    .locals 1

    .prologue
    .line 2395
    iget-object v0, p0, Landroid/support/v4/app/g;->Yr:Landroid/support/v4/app/aR;

    if-nez v0, :cond_0

    .line 2398
    :goto_0
    return-void

    .line 2396
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/g;->Yr:Landroid/support/v4/app/aR;

    invoke-virtual {v0}, Landroid/support/v4/app/aR;->aqV()V

    goto :goto_0
.end method

.method aka()I
    .locals 1

    .prologue
    .line 2671
    iget-object v0, p0, Landroid/support/v4/app/g;->YD:Landroid/support/v4/app/aA;

    if-eqz v0, :cond_0

    .line 2674
    iget-object v0, p0, Landroid/support/v4/app/g;->YD:Landroid/support/v4/app/aA;

    iget v0, v0, Landroid/support/v4/app/aA;->act:I

    return v0

    .line 2672
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method akb(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .prologue
    .line 2333
    iget-object v0, p0, Landroid/support/v4/app/g;->Yr:Landroid/support/v4/app/aR;

    if-nez v0, :cond_0

    .line 2336
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/g;->Yp:Z

    .line 2337
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/app/g;->akM(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 2334
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/g;->Yr:Landroid/support/v4/app/aR;

    invoke-virtual {v0}, Landroid/support/v4/app/aR;->aqV()V

    goto :goto_0
.end method

.method akc(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2453
    iget-boolean v1, p0, Landroid/support/v4/app/g;->YI:Z

    if-eqz v1, :cond_1

    .line 2462
    :cond_0
    :goto_0
    return v0

    .line 2454
    :cond_1
    iget-boolean v1, p0, Landroid/support/v4/app/g;->Ye:Z

    if-nez v1, :cond_3

    .line 2458
    :cond_2
    :goto_1
    iget-object v1, p0, Landroid/support/v4/app/g;->Yr:Landroid/support/v4/app/aR;

    if-eqz v1, :cond_0

    .line 2459
    iget-object v1, p0, Landroid/support/v4/app/g;->Yr:Landroid/support/v4/app/aR;

    invoke-virtual {v1, p1}, Landroid/support/v4/app/aR;->aqJ(Landroid/view/Menu;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    .line 2454
    :cond_3
    iget-boolean v1, p0, Landroid/support/v4/app/g;->YH:Z

    if-eqz v1, :cond_2

    .line 2455
    const/4 v0, 0x1

    .line 2456
    invoke-virtual {p0, p1}, Landroid/support/v4/app/g;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    goto :goto_1
.end method

.method public akd()Ljava/lang/Object;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2059
    iget-object v0, p0, Landroid/support/v4/app/g;->YD:Landroid/support/v4/app/aA;

    if-eqz v0, :cond_0

    .line 2062
    iget-object v0, p0, Landroid/support/v4/app/g;->YD:Landroid/support/v4/app/aA;

    invoke-static {v0}, Landroid/support/v4/app/aA;->aoe(Landroid/support/v4/app/aA;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroid/support/v4/app/g;->XY:Ljava/lang/Object;

    if-eq v0, v1, :cond_1

    .line 2063
    iget-object v0, p0, Landroid/support/v4/app/g;->YD:Landroid/support/v4/app/aA;

    .line 2064
    invoke-static {v0}, Landroid/support/v4/app/aA;->aoe(Landroid/support/v4/app/aA;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 2060
    :cond_0
    return-object v1

    .line 2063
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/g;->aku()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public ake()Z
    .locals 1

    .prologue
    .line 2088
    iget-object v0, p0, Landroid/support/v4/app/g;->YD:Landroid/support/v4/app/aA;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 2089
    :goto_0
    return v0

    .line 2088
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/g;->YD:Landroid/support/v4/app/aA;

    invoke-static {v0}, Landroid/support/v4/app/aA;->aog(Landroid/support/v4/app/aA;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/g;->YD:Landroid/support/v4/app/aA;

    .line 2089
    invoke-static {v0}, Landroid/support/v4/app/aA;->aog(Landroid/support/v4/app/aA;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method akf()I
    .locals 1

    .prologue
    .line 2641
    iget-object v0, p0, Landroid/support/v4/app/g;->YD:Landroid/support/v4/app/aA;

    if-eqz v0, :cond_0

    .line 2644
    iget-object v0, p0, Landroid/support/v4/app/g;->YD:Landroid/support/v4/app/aA;

    iget v0, v0, Landroid/support/v4/app/aA;->acy:I

    return v0

    .line 2642
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method akg()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 2595
    iput-boolean v0, p0, Landroid/support/v4/app/g;->mCalled:Z

    .line 2596
    invoke-virtual {p0}, Landroid/support/v4/app/g;->akX()V

    .line 2597
    iput-object v1, p0, Landroid/support/v4/app/g;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 2598
    iget-boolean v0, p0, Landroid/support/v4/app/g;->mCalled:Z

    if-eqz v0, :cond_0

    .line 2606
    iget-object v0, p0, Landroid/support/v4/app/g;->Yr:Landroid/support/v4/app/aR;

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
    iget-boolean v0, p0, Landroid/support/v4/app/g;->XZ:Z

    if-eqz v0, :cond_2

    .line 2611
    iget-object v0, p0, Landroid/support/v4/app/g;->Yr:Landroid/support/v4/app/aR;

    invoke-virtual {v0}, Landroid/support/v4/app/aR;->apM()V

    .line 2612
    iput-object v1, p0, Landroid/support/v4/app/g;->Yr:Landroid/support/v4/app/aR;

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

.method public aki(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 1835
    const/4 v0, 0x0

    return v0
.end method

.method akj(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 2415
    invoke-virtual {p0, p1}, Landroid/support/v4/app/g;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2416
    iget-object v0, p0, Landroid/support/v4/app/g;->Yr:Landroid/support/v4/app/aR;

    if-nez v0, :cond_0

    .line 2419
    :goto_0
    return-void

    .line 2417
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/g;->Yr:Landroid/support/v4/app/aR;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/aR;->aqA(Landroid/content/res/Configuration;)V

    goto :goto_0
.end method

.method final akk()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 516
    iget v1, p0, Landroid/support/v4/app/g;->Yl:I

    if-gtz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method akl(Z)V
    .locals 1

    .prologue
    .line 2401
    invoke-virtual {p0, p1}, Landroid/support/v4/app/g;->onMultiWindowModeChanged(Z)V

    .line 2402
    iget-object v0, p0, Landroid/support/v4/app/g;->Yr:Landroid/support/v4/app/aR;

    if-nez v0, :cond_0

    .line 2405
    :goto_0
    return-void

    .line 2403
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/g;->Yr:Landroid/support/v4/app/aR;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/aR;->arh(Z)V

    goto :goto_0
.end method

.method public akm(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    .prologue
    .line 1709
    return-void
.end method

.method akn()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2581
    iget-object v0, p0, Landroid/support/v4/app/g;->Yr:Landroid/support/v4/app/aR;

    if-nez v0, :cond_0

    .line 2584
    :goto_0
    iput v1, p0, Landroid/support/v4/app/g;->mState:I

    .line 2585
    iput-boolean v1, p0, Landroid/support/v4/app/g;->mCalled:Z

    .line 2586
    invoke-virtual {p0}, Landroid/support/v4/app/g;->onDestroy()V

    .line 2587
    iget-boolean v0, p0, Landroid/support/v4/app/g;->mCalled:Z

    if-eqz v0, :cond_1

    .line 2591
    iput-object v2, p0, Landroid/support/v4/app/g;->Yr:Landroid/support/v4/app/aR;

    .line 2592
    return-void

    .line 2582
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/g;->Yr:Landroid/support/v4/app/aR;

    invoke-virtual {v0}, Landroid/support/v4/app/aR;->apM()V

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

.method public akp(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 1304
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/g;->mCalled:Z

    .line 1305
    return-void
.end method

.method akq(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2466
    iget-boolean v0, p0, Landroid/support/v4/app/g;->YI:Z

    if-eqz v0, :cond_1

    .line 2478
    :cond_0
    return v1

    .line 2467
    :cond_1
    iget-boolean v0, p0, Landroid/support/v4/app/g;->Ye:Z

    if-nez v0, :cond_3

    .line 2472
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/g;->Yr:Landroid/support/v4/app/aR;

    if-eqz v0, :cond_0

    .line 2473
    iget-object v0, p0, Landroid/support/v4/app/g;->Yr:Landroid/support/v4/app/aR;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/aR;->aqQ(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2474
    return v2

    .line 2467
    :cond_3
    iget-boolean v0, p0, Landroid/support/v4/app/g;->YH:Z

    if-eqz v0, :cond_2

    .line 2468
    invoke-virtual {p0, p1}, Landroid/support/v4/app/g;->alb(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2469
    return v2
.end method

.method akr(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 2703
    invoke-direct {p0}, Landroid/support/v4/app/g;->ako()Landroid/support/v4/app/aA;

    move-result-object v0

    iput-object p1, v0, Landroid/support/v4/app/aA;->acG:Landroid/animation/Animator;

    .line 2704
    return-void
.end method

.method aks(I)V
    .locals 1

    .prologue
    .line 2721
    invoke-direct {p0}, Landroid/support/v4/app/g;->ako()Landroid/support/v4/app/aA;

    move-result-object v0

    iput p1, v0, Landroid/support/v4/app/aA;->acz:I

    .line 2722
    return-void
.end method

.method public akt(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 577
    iget v0, p0, Landroid/support/v4/app/g;->Yb:I

    if-gez v0, :cond_1

    .line 580
    :cond_0
    iput-object p1, p0, Landroid/support/v4/app/g;->Yt:Landroid/os/Bundle;

    .line 581
    return-void

    .line 577
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/g;->akV()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Fragment already active and state has been saved"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public aku()Ljava/lang/Object;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2024
    iget-object v0, p0, Landroid/support/v4/app/g;->YD:Landroid/support/v4/app/aA;

    if-eqz v0, :cond_0

    .line 2027
    iget-object v0, p0, Landroid/support/v4/app/g;->YD:Landroid/support/v4/app/aA;

    invoke-static {v0}, Landroid/support/v4/app/aA;->aof(Landroid/support/v4/app/aA;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 2025
    :cond_0
    return-object v1
.end method

.method public akv()Landroid/view/View;
    .locals 1

    .prologue
    .line 1484
    iget-object v0, p0, Landroid/support/v4/app/g;->mView:Landroid/view/View;

    return-object v0
.end method

.method akw(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 2699
    invoke-direct {p0}, Landroid/support/v4/app/g;->ako()Landroid/support/v4/app/aA;

    move-result-object v0

    iput-object p1, v0, Landroid/support/v4/app/aA;->acw:Landroid/view/View;

    .line 2700
    return-void
.end method

.method akx()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2530
    iget-object v0, p0, Landroid/support/v4/app/g;->Yr:Landroid/support/v4/app/aR;

    if-nez v0, :cond_0

    .line 2533
    :goto_0
    const/4 v0, 0x3

    iput v0, p0, Landroid/support/v4/app/g;->mState:I

    .line 2534
    iput-boolean v1, p0, Landroid/support/v4/app/g;->mCalled:Z

    .line 2535
    invoke-virtual {p0}, Landroid/support/v4/app/g;->onStop()V

    .line 2536
    iget-boolean v0, p0, Landroid/support/v4/app/g;->mCalled:Z

    if-eqz v0, :cond_1

    .line 2540
    return-void

    .line 2531
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/g;->Yr:Landroid/support/v4/app/aR;

    invoke-virtual {v0}, Landroid/support/v4/app/aR;->apG()V

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

.method aky()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2357
    iget-object v0, p0, Landroid/support/v4/app/g;->Yr:Landroid/support/v4/app/aR;

    if-nez v0, :cond_0

    .line 2361
    :goto_0
    const/4 v0, 0x4

    iput v0, p0, Landroid/support/v4/app/g;->mState:I

    .line 2362
    iput-boolean v1, p0, Landroid/support/v4/app/g;->mCalled:Z

    .line 2363
    invoke-virtual {p0}, Landroid/support/v4/app/g;->onStart()V

    .line 2364
    iget-boolean v0, p0, Landroid/support/v4/app/g;->mCalled:Z

    if-eqz v0, :cond_1

    .line 2368
    iget-object v0, p0, Landroid/support/v4/app/g;->Yr:Landroid/support/v4/app/aR;

    if-nez v0, :cond_2

    .line 2371
    :goto_1
    iget-object v0, p0, Landroid/support/v4/app/g;->YC:Landroid/support/v4/app/aU;

    if-nez v0, :cond_3

    .line 2374
    :goto_2
    return-void

    .line 2358
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/g;->Yr:Landroid/support/v4/app/aR;

    invoke-virtual {v0}, Landroid/support/v4/app/aR;->aqV()V

    .line 2359
    iget-object v0, p0, Landroid/support/v4/app/g;->Yr:Landroid/support/v4/app/aR;

    invoke-virtual {v0}, Landroid/support/v4/app/aR;->aqa()Z

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
    iget-object v0, p0, Landroid/support/v4/app/g;->Yr:Landroid/support/v4/app/aR;

    invoke-virtual {v0}, Landroid/support/v4/app/aR;->apc()V

    goto :goto_1

    .line 2372
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/g;->YC:Landroid/support/v4/app/aU;

    invoke-virtual {v0}, Landroid/support/v4/app/aU;->art()V

    goto :goto_2
.end method

.method akz(Landroid/os/Bundle;)V
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
    iget-object v1, p0, Landroid/support/v4/app/g;->Yr:Landroid/support/v4/app/aR;

    if-eqz v1, :cond_2

    .line 1431
    :goto_1
    iget-object v1, p0, Landroid/support/v4/app/g;->Yr:Landroid/support/v4/app/aR;

    iget-object v2, p0, Landroid/support/v4/app/g;->Yn:Landroid/support/v4/app/ax;

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/aR;->apX(Landroid/os/Parcelable;Landroid/support/v4/app/ax;)V

    .line 1432
    iput-object v3, p0, Landroid/support/v4/app/g;->Yn:Landroid/support/v4/app/ax;

    .line 1433
    iget-object v0, p0, Landroid/support/v4/app/g;->Yr:Landroid/support/v4/app/aR;

    invoke-virtual {v0}, Landroid/support/v4/app/aR;->aqM()V

    goto :goto_0

    .line 1429
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/app/g;->ajB()V

    goto :goto_1
.end method

.method public ala(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 1342
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/g;->mCalled:Z

    .line 1343
    return-void
.end method

.method public alb(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 1757
    const/4 v0, 0x0

    return v0
.end method

.method alc(II)V
    .locals 1

    .prologue
    .line 2662
    iget-object v0, p0, Landroid/support/v4/app/g;->YD:Landroid/support/v4/app/aA;

    if-eqz v0, :cond_1

    .line 2665
    :cond_0
    invoke-direct {p0}, Landroid/support/v4/app/g;->ako()Landroid/support/v4/app/aA;

    .line 2666
    iget-object v0, p0, Landroid/support/v4/app/g;->YD:Landroid/support/v4/app/aA;

    iput p1, v0, Landroid/support/v4/app/aA;->acI:I

    .line 2667
    iget-object v0, p0, Landroid/support/v4/app/g;->YD:Landroid/support/v4/app/aA;

    iput p2, v0, Landroid/support/v4/app/aA;->act:I

    .line 2668
    return-void

    .line 2662
    :cond_1
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 2663
    return-void
.end method

.method public ald()V
    .locals 2

    .prologue
    .line 2162
    iget-object v0, p0, Landroid/support/v4/app/g;->Yg:Landroid/support/v4/app/aR;

    if-nez v0, :cond_1

    .line 2163
    :cond_0
    invoke-direct {p0}, Landroid/support/v4/app/g;->ako()Landroid/support/v4/app/aA;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v4/app/aA;->acE:Z

    .line 2174
    :goto_0
    return-void

    .line 2162
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/g;->Yg:Landroid/support/v4/app/aR;

    iget-object v0, v0, Landroid/support/v4/app/aR;->ads:Landroid/support/v4/app/r;

    if-eqz v0, :cond_0

    .line 2164
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/g;->Yg:Landroid/support/v4/app/aR;

    iget-object v1, v1, Landroid/support/v4/app/aR;->ads:Landroid/support/v4/app/r;

    invoke-virtual {v1}, Landroid/support/v4/app/r;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 2172
    invoke-direct {p0}, Landroid/support/v4/app/g;->ajT()V

    goto :goto_0

    .line 2165
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/g;->Yg:Landroid/support/v4/app/aR;

    iget-object v0, v0, Landroid/support/v4/app/aR;->ads:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/support/v4/app/Q;

    invoke-direct {v1, p0}, Landroid/support/v4/app/Q;-><init>(Landroid/support/v4/app/g;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method ale(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 2507
    invoke-virtual {p0, p1}, Landroid/support/v4/app/g;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2508
    iget-object v0, p0, Landroid/support/v4/app/g;->Yr:Landroid/support/v4/app/aR;

    if-nez v0, :cond_1

    .line 2514
    :cond_0
    :goto_0
    return-void

    .line 2509
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/g;->Yr:Landroid/support/v4/app/aR;

    invoke-virtual {v0}, Landroid/support/v4/app/aR;->aph()Landroid/os/Parcelable;

    move-result-object v0

    .line 2510
    if-eqz v0, :cond_0

    .line 2511
    const-string/jumbo v1, "android:support:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method public alf(Z)V
    .locals 0

    .prologue
    .line 872
    return-void
.end method

.method public alg()Z
    .locals 1

    .prologue
    .line 2113
    iget-object v0, p0, Landroid/support/v4/app/g;->YD:Landroid/support/v4/app/aA;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 2114
    :goto_0
    return v0

    .line 2113
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/g;->YD:Landroid/support/v4/app/aA;

    invoke-static {v0}, Landroid/support/v4/app/aA;->aol(Landroid/support/v4/app/aA;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/g;->YD:Landroid/support/v4/app/aA;

    .line 2114
    invoke-static {v0}, Landroid/support/v4/app/aA;->aol(Landroid/support/v4/app/aA;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method alh()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2564
    iget-object v0, p0, Landroid/support/v4/app/g;->Yr:Landroid/support/v4/app/aR;

    if-nez v0, :cond_0

    .line 2567
    :goto_0
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v4/app/g;->mState:I

    .line 2568
    iput-boolean v1, p0, Landroid/support/v4/app/g;->mCalled:Z

    .line 2569
    invoke-virtual {p0}, Landroid/support/v4/app/g;->akF()V

    .line 2570
    iget-boolean v0, p0, Landroid/support/v4/app/g;->mCalled:Z

    if-eqz v0, :cond_1

    .line 2574
    iget-object v0, p0, Landroid/support/v4/app/g;->YC:Landroid/support/v4/app/aU;

    if-nez v0, :cond_2

    .line 2577
    :goto_1
    iput-boolean v1, p0, Landroid/support/v4/app/g;->Yp:Z

    .line 2578
    return-void

    .line 2565
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/g;->Yr:Landroid/support/v4/app/aR;

    invoke-virtual {v0}, Landroid/support/v4/app/aR;->apH()V

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
    iget-object v0, p0, Landroid/support/v4/app/g;->YC:Landroid/support/v4/app/aU;

    invoke-virtual {v0}, Landroid/support/v4/app/aU;->arq()V

    goto :goto_1
.end method

.method public ali(IZI)Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 1361
    const/4 v0, 0x0

    return-object v0
.end method

.method alj(Landroid/support/v4/app/ap;)V
    .locals 3

    .prologue
    .line 2617
    invoke-direct {p0}, Landroid/support/v4/app/g;->ako()Landroid/support/v4/app/aA;

    .line 2618
    iget-object v0, p0, Landroid/support/v4/app/g;->YD:Landroid/support/v4/app/aA;

    iget-object v0, v0, Landroid/support/v4/app/aA;->acA:Landroid/support/v4/app/ap;

    if-eq p1, v0, :cond_1

    .line 2621
    if-nez p1, :cond_2

    .line 2625
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/g;->YD:Landroid/support/v4/app/aA;

    iget-boolean v0, v0, Landroid/support/v4/app/aA;->acE:Z

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
    iget-object v0, p0, Landroid/support/v4/app/g;->YD:Landroid/support/v4/app/aA;

    iget-object v0, v0, Landroid/support/v4/app/aA;->acA:Landroid/support/v4/app/ap;

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
    iget-object v0, p0, Landroid/support/v4/app/g;->YD:Landroid/support/v4/app/aA;

    iput-object p1, v0, Landroid/support/v4/app/aA;->acA:Landroid/support/v4/app/ap;

    goto :goto_0

    .line 2629
    :cond_4
    invoke-interface {p1}, Landroid/support/v4/app/ap;->startListening()V

    goto :goto_1
.end method

.method public final alk()Landroid/support/v4/app/aW;
    .locals 1

    .prologue
    .line 749
    iget-object v0, p0, Landroid/support/v4/app/g;->Yg:Landroid/support/v4/app/aR;

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
    iget v0, p0, Landroid/support/v4/app/g;->Yh:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2205
    const-string/jumbo v0, " mContainerId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2206
    iget v0, p0, Landroid/support/v4/app/g;->Yc:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2207
    const-string/jumbo v0, " mTag="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/g;->Yw:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2208
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/g;->mState:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2209
    const-string/jumbo v0, " mIndex="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/g;->Yb:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2210
    const-string/jumbo v0, " mWho="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/g;->XV:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2211
    const-string/jumbo v0, " mBackStackNesting="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/g;->Yl:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2212
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAdded="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/g;->XW:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2213
    const-string/jumbo v0, " mRemoving="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/g;->Yx:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2214
    const-string/jumbo v0, " mFromLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/g;->Ym:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2215
    const-string/jumbo v0, " mInLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/g;->Yi:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2216
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mHidden="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/g;->YI:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2217
    const-string/jumbo v0, " mDetached="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/g;->YB:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2218
    const-string/jumbo v0, " mMenuVisible="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/g;->YH:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2219
    const-string/jumbo v0, " mHasMenu="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/g;->Ye:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2220
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mRetainInstance="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/g;->Yz:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2221
    const-string/jumbo v0, " mRetaining="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/g;->XZ:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2222
    const-string/jumbo v0, " mUserVisibleHint="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/g;->Yj:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2223
    iget-object v0, p0, Landroid/support/v4/app/g;->Yg:Landroid/support/v4/app/aR;

    if-nez v0, :cond_0

    .line 2227
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/g;->XU:Landroid/support/v4/app/r;

    if-nez v0, :cond_1

    .line 2231
    :goto_1
    iget-object v0, p0, Landroid/support/v4/app/g;->YF:Landroid/support/v4/app/g;

    if-nez v0, :cond_2

    .line 2235
    :goto_2
    iget-object v0, p0, Landroid/support/v4/app/g;->Yt:Landroid/os/Bundle;

    if-nez v0, :cond_3

    .line 2238
    :goto_3
    iget-object v0, p0, Landroid/support/v4/app/g;->Ys:Landroid/os/Bundle;

    if-nez v0, :cond_4

    .line 2242
    :goto_4
    iget-object v0, p0, Landroid/support/v4/app/g;->Yk:Landroid/util/SparseArray;

    if-nez v0, :cond_5

    .line 2246
    :goto_5
    iget-object v0, p0, Landroid/support/v4/app/g;->YE:Landroid/support/v4/app/g;

    if-nez v0, :cond_6

    .line 2251
    :goto_6
    invoke-virtual {p0}, Landroid/support/v4/app/g;->akf()I

    move-result v0

    if-nez v0, :cond_7

    .line 2254
    :goto_7
    iget-object v0, p0, Landroid/support/v4/app/g;->XT:Landroid/view/ViewGroup;

    if-nez v0, :cond_8

    .line 2257
    :goto_8
    iget-object v0, p0, Landroid/support/v4/app/g;->mView:Landroid/view/View;

    if-nez v0, :cond_9

    .line 2260
    :goto_9
    iget-object v0, p0, Landroid/support/v4/app/g;->Yv:Landroid/view/View;

    if-nez v0, :cond_a

    .line 2263
    :goto_a
    invoke-virtual {p0}, Landroid/support/v4/app/g;->ajD()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_b

    .line 2271
    :goto_b
    iget-object v0, p0, Landroid/support/v4/app/g;->YC:Landroid/support/v4/app/aU;

    if-nez v0, :cond_c

    .line 2275
    :goto_c
    iget-object v0, p0, Landroid/support/v4/app/g;->Yr:Landroid/support/v4/app/aR;

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
    iget-object v0, p0, Landroid/support/v4/app/g;->Yg:Landroid/support/v4/app/aR;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_0

    .line 2228
    :cond_1
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mHost="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2229
    iget-object v0, p0, Landroid/support/v4/app/g;->XU:Landroid/support/v4/app/r;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_1

    .line 2232
    :cond_2
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mParentFragment="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2233
    iget-object v0, p0, Landroid/support/v4/app/g;->YF:Landroid/support/v4/app/g;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_2

    .line 2236
    :cond_3
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mArguments="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/g;->Yt:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_3

    .line 2239
    :cond_4
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSavedFragmentState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2240
    iget-object v0, p0, Landroid/support/v4/app/g;->Ys:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_4

    .line 2243
    :cond_5
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSavedViewState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2244
    iget-object v0, p0, Landroid/support/v4/app/g;->Yk:Landroid/util/SparseArray;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_5

    .line 2247
    :cond_6
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mTarget="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/g;->YE:Landroid/support/v4/app/g;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2248
    const-string/jumbo v0, " mTargetRequestCode="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2249
    iget v0, p0, Landroid/support/v4/app/g;->YA:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    goto/16 :goto_6

    .line 2252
    :cond_7
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAnim="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/support/v4/app/g;->akf()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    goto/16 :goto_7

    .line 2255
    :cond_8
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mContainer="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/g;->XT:Landroid/view/ViewGroup;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 2258
    :cond_9
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/g;->mView:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto/16 :goto_9

    .line 2261
    :cond_a
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mInnerView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/g;->mView:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto/16 :goto_a

    .line 2264
    :cond_b
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2265
    const-string/jumbo v0, "mAnimatingAway="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2266
    invoke-virtual {p0}, Landroid/support/v4/app/g;->ajD()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2267
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2268
    const-string/jumbo v0, "mStateAfterAnimating="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2269
    invoke-virtual {p0}, Landroid/support/v4/app/g;->akU()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    goto/16 :goto_b

    .line 2272
    :cond_c
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Loader Manager:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2273
    iget-object v0, p0, Landroid/support/v4/app/g;->YC:Landroid/support/v4/app/aU;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/app/aU;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto/16 :goto_c

    .line 2276
    :cond_d
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Child "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/g;->Yr:Landroid/support/v4/app/aR;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2277
    iget-object v0, p0, Landroid/support/v4/app/g;->Yr:Landroid/support/v4/app/aR;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/app/aR;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

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
    iget-object v1, p0, Landroid/support/v4/app/g;->XU:Landroid/support/v4/app/r;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/g;->XU:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->getActivity()Landroid/app/Activity;

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
    iget-object v0, p0, Landroid/support/v4/app/g;->YD:Landroid/support/v4/app/aA;

    if-eqz v0, :cond_0

    .line 2710
    iget-object v0, p0, Landroid/support/v4/app/g;->YD:Landroid/support/v4/app/aA;

    iget-object v0, v0, Landroid/support/v4/app/aA;->acG:Landroid/animation/Animator;

    return-object v0

    .line 2708
    :cond_0
    return-object v1
.end method

.method public final getResources()Landroid/content/res/Resources;
    .locals 3

    .prologue
    .line 699
    iget-object v0, p0, Landroid/support/v4/app/g;->XU:Landroid/support/v4/app/r;

    if-eqz v0, :cond_0

    .line 702
    iget-object v0, p0, Landroid/support/v4/app/g;->XU:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->getContext()Landroid/content/Context;

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

    iput-boolean v0, p0, Landroid/support/v4/app/g;->mCalled:Z

    .line 1597
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1403
    iput-boolean v1, p0, Landroid/support/v4/app/g;->mCalled:Z

    .line 1404
    invoke-virtual {p0, p1}, Landroid/support/v4/app/g;->akz(Landroid/os/Bundle;)V

    .line 1405
    iget-object v0, p0, Landroid/support/v4/app/g;->Yr:Landroid/support/v4/app/aR;

    if-nez v0, :cond_1

    .line 1409
    :cond_0
    :goto_0
    return-void

    .line 1405
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/g;->Yr:Landroid/support/v4/app/aR;

    .line 1406
    invoke-virtual {v0, v1}, Landroid/support/v4/app/aR;->ara(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1407
    iget-object v0, p0, Landroid/support/v4/app/g;->Yr:Landroid/support/v4/app/aR;

    invoke-virtual {v0}, Landroid/support/v4/app/aR;->aqM()V

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    .prologue
    .line 1789
    invoke-virtual {p0}, Landroid/support/v4/app/g;->getActivity()Landroid/support/v4/app/a;

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
    iput-boolean v1, p0, Landroid/support/v4/app/g;->mCalled:Z

    .line 1648
    iget-boolean v0, p0, Landroid/support/v4/app/g;->Yf:Z

    if-eqz v0, :cond_0

    .line 1652
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/g;->YC:Landroid/support/v4/app/aU;

    if-nez v0, :cond_1

    .line 1655
    :goto_1
    return-void

    .line 1649
    :cond_0
    iput-boolean v1, p0, Landroid/support/v4/app/g;->Yf:Z

    .line 1650
    iget-object v0, p0, Landroid/support/v4/app/g;->XU:Landroid/support/v4/app/r;

    iget-object v1, p0, Landroid/support/v4/app/g;->XV:Ljava/lang/String;

    iget-boolean v2, p0, Landroid/support/v4/app/g;->Ya:Z

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/r;->alu(Ljava/lang/String;ZZ)Landroid/support/v4/app/aU;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/g;->YC:Landroid/support/v4/app/aU;

    goto :goto_0

    .line 1653
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/g;->YC:Landroid/support/v4/app/aU;

    invoke-virtual {v0}, Landroid/support/v4/app/aU;->arm()V

    goto :goto_1
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 1622
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/g;->mCalled:Z

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

    iput-boolean v0, p0, Landroid/support/v4/app/g;->mCalled:Z

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

    iput-boolean v0, p0, Landroid/support/v4/app/g;->mCalled:Z

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
    iput-boolean v1, p0, Landroid/support/v4/app/g;->mCalled:Z

    .line 1530
    iget-boolean v0, p0, Landroid/support/v4/app/g;->Ya:Z

    if-eqz v0, :cond_1

    .line 1539
    :cond_0
    :goto_0
    return-void

    .line 1531
    :cond_1
    iput-boolean v1, p0, Landroid/support/v4/app/g;->Ya:Z

    .line 1532
    iget-boolean v0, p0, Landroid/support/v4/app/g;->Yf:Z

    if-eqz v0, :cond_2

    .line 1535
    iget-object v0, p0, Landroid/support/v4/app/g;->YC:Landroid/support/v4/app/aU;

    if-eqz v0, :cond_0

    .line 1536
    iget-object v0, p0, Landroid/support/v4/app/g;->YC:Landroid/support/v4/app/aU;

    invoke-virtual {v0}, Landroid/support/v4/app/aU;->arr()V

    goto :goto_0

    .line 1533
    :cond_2
    iput-boolean v1, p0, Landroid/support/v4/app/g;->Yf:Z

    .line 1534
    iget-object v0, p0, Landroid/support/v4/app/g;->XU:Landroid/support/v4/app/r;

    iget-object v1, p0, Landroid/support/v4/app/g;->XV:Ljava/lang/String;

    iget-boolean v2, p0, Landroid/support/v4/app/g;->Ya:Z

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/r;->alu(Ljava/lang/String;ZZ)Landroid/support/v4/app/aU;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/g;->YC:Landroid/support/v4/app/aU;

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 1616
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/g;->mCalled:Z

    .line 1617
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    .prologue
    .line 1002
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/app/g;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 1003
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 1010
    iget-object v0, p0, Landroid/support/v4/app/g;->XU:Landroid/support/v4/app/r;

    if-eqz v0, :cond_0

    .line 1013
    iget-object v0, p0, Landroid/support/v4/app/g;->XU:Landroid/support/v4/app/r;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/support/v4/app/r;->alJ(Landroid/support/v4/app/g;Landroid/content/Intent;ILandroid/os/Bundle;)V

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
    invoke-static {p0, v0}, Landroid/support/v4/a/k;->aix(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 537
    iget v1, p0, Landroid/support/v4/app/g;->Yb:I

    if-gez v1, :cond_0

    .line 541
    :goto_0
    iget v1, p0, Landroid/support/v4/app/g;->Yh:I

    if-nez v1, :cond_1

    .line 545
    :goto_1
    iget-object v1, p0, Landroid/support/v4/app/g;->Yw:Ljava/lang/String;

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
    iget v1, p0, Landroid/support/v4/app/g;->Yb:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 542
    :cond_1
    const-string/jumbo v1, " id=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    iget v1, p0, Landroid/support/v4/app/g;->Yh:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 546
    :cond_2
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    iget-object v1, p0, Landroid/support/v4/app/g;->Yw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method
