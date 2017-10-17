.class final Landroid/support/v4/app/U;
.super Landroid/support/v4/app/y;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/aF;


# static fields
.field static final Za:Z


# instance fields
.field YG:I

.field YH:I

.field YI:Ljava/lang/String;

.field YJ:Z

.field YK:Z

.field YL:I

.field final YM:Landroid/support/v4/app/aV;

.field YN:Z

.field YO:I

.field YP:Ljava/util/ArrayList;

.field YQ:Ljava/util/ArrayList;

.field YR:Ljava/util/ArrayList;

.field YS:I

.field YT:Ljava/lang/CharSequence;

.field YU:Z

.field YV:Ljava/lang/CharSequence;

.field YW:I

.field YX:I

.field YY:I

.field YZ:I

.field Zb:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 177
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/support/v4/app/U;->Za:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/support/v4/app/aV;)V
    .locals 1

    .prologue
    .line 332
    invoke-direct {p0}, Landroid/support/v4/app/y;-><init>()V

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/U;->YR:Ljava/util/ArrayList;

    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/U;->YK:Z

    .line 220
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/U;->YL:I

    .line 229
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/U;->YJ:Z

    .line 333
    iput-object p1, p0, Landroid/support/v4/app/U;->YM:Landroid/support/v4/app/aV;

    .line 334
    return-void
.end method

.method private static aml(Landroid/support/v4/app/aa;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1006
    iget-object v1, p0, Landroid/support/v4/app/aa;->aad:Landroid/support/v4/app/e;

    .line 1007
    if-nez v1, :cond_1

    .line 1008
    :cond_0
    :goto_0
    return v0

    .line 1007
    :cond_1
    iget-boolean v2, v1, Landroid/support/v4/app/e;->Wm:Z

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/support/v4/app/e;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-boolean v2, v1, Landroid/support/v4/app/e;->WR:Z

    if-nez v2, :cond_0

    iget-boolean v2, v1, Landroid/support/v4/app/e;->WY:Z

    if-nez v2, :cond_0

    .line 1008
    invoke-virtual {v1}, Landroid/support/v4/app/e;->aiI()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private amn(ILandroid/support/v4/app/e;Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 394
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 395
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    .line 396
    invoke-virtual {v0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 398
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " must be a public static class to be  properly recreated from"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " instance state."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 396
    :cond_1
    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 397
    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v2

    if-nez v2, :cond_2

    .line 403
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/U;->YM:Landroid/support/v4/app/aV;

    iput-object v0, p2, Landroid/support/v4/app/e;->Ww:Landroid/support/v4/app/aV;

    .line 405
    if-nez p3, :cond_3

    .line 414
    :goto_1
    if-nez p1, :cond_6

    .line 427
    :goto_2
    new-instance v0, Landroid/support/v4/app/aa;

    invoke-direct {v0, p4, p2}, Landroid/support/v4/app/aa;-><init>(ILandroid/support/v4/app/e;)V

    invoke-virtual {p0, v0}, Landroid/support/v4/app/U;->amm(Landroid/support/v4/app/aa;)V

    .line 428
    return-void

    .line 397
    :cond_2
    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 406
    :cond_3
    iget-object v0, p2, Landroid/support/v4/app/e;->WM:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 411
    :cond_4
    iput-object p3, p2, Landroid/support/v4/app/e;->WM:Ljava/lang/String;

    goto :goto_1

    .line 406
    :cond_5
    iget-object v0, p2, Landroid/support/v4/app/e;->WM:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 407
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can\'t change tag of fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Landroid/support/v4/app/e;->WM:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 415
    :cond_6
    const/4 v0, -0x1

    if-eq p1, v0, :cond_8

    .line 419
    iget v0, p2, Landroid/support/v4/app/e;->Wx:I

    if-nez v0, :cond_9

    .line 424
    :cond_7
    iput p1, p2, Landroid/support/v4/app/e;->Wx:I

    iput p1, p2, Landroid/support/v4/app/e;->Ws:I

    goto :goto_2

    .line 416
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can\'t add fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " with tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to container view with no id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 419
    :cond_9
    iget v0, p2, Landroid/support/v4/app/e;->Wx:I

    if-eq v0, p1, :cond_7

    .line 420
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can\'t change container ID of fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Landroid/support/v4/app/e;->Wx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public akA(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 695
    sget-boolean v0, Landroid/support/v4/app/aV;->DEBUG:Z

    if-nez v0, :cond_0

    .line 699
    :goto_0
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 700
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 701
    iget-boolean v0, p0, Landroid/support/v4/app/U;->YU:Z

    if-nez v0, :cond_1

    .line 704
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 696
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Run: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 702
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/U;->YM:Landroid/support/v4/app/aV;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/aV;->anZ(Landroid/support/v4/app/U;)V

    goto :goto_1
.end method

.method public akB(Landroid/support/v4/app/e;)Landroid/support/v4/app/y;
    .locals 2

    .prologue
    .line 447
    new-instance v0, Landroid/support/v4/app/aa;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p1}, Landroid/support/v4/app/aa;-><init>(ILandroid/support/v4/app/e;)V

    invoke-virtual {p0, v0}, Landroid/support/v4/app/U;->amm(Landroid/support/v4/app/aa;)V

    .line 449
    return-object p0
.end method

.method public akC()I
    .locals 1

    .prologue
    .line 639
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/app/U;->amh(Z)I

    move-result v0

    return v0
.end method

.method public akD(Landroid/support/v4/app/e;Ljava/lang/String;)Landroid/support/v4/app/y;
    .locals 2

    .prologue
    .line 377
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Landroid/support/v4/app/U;->amn(ILandroid/support/v4/app/e;Ljava/lang/String;I)V

    .line 378
    return-object p0
.end method

.method ama(Landroid/support/v4/app/aq;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    move v1, v0

    .line 997
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/U;->YR:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 1003
    return-void

    .line 998
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/U;->YR:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/aa;

    .line 999
    invoke-static {v0}, Landroid/support/v4/app/U;->aml(Landroid/support/v4/app/aa;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 997
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1000
    :cond_1
    iget-object v0, v0, Landroid/support/v4/app/aa;->aad:Landroid/support/v4/app/e;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/e;->ajW(Landroid/support/v4/app/aq;)V

    goto :goto_1
.end method

.method amb(I)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 708
    iget-object v0, p0, Landroid/support/v4/app/U;->YR:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    .line 709
    :goto_0
    if-lt v2, v3, :cond_0

    .line 716
    return v1

    .line 710
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/U;->YR:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/aa;

    .line 711
    iget-object v4, v0, Landroid/support/v4/app/aa;->aad:Landroid/support/v4/app/e;

    if-nez v4, :cond_2

    move v0, v1

    .line 712
    :goto_1
    if-nez v0, :cond_3

    .line 709
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 711
    :cond_2
    iget-object v0, v0, Landroid/support/v4/app/aa;->aad:Landroid/support/v4/app/e;

    iget v0, v0, Landroid/support/v4/app/e;->Ws:I

    goto :goto_1

    .line 712
    :cond_3
    if-ne v0, p1, :cond_1

    .line 713
    const/4 v0, 0x1

    return v0
.end method

.method amc(Ljava/util/ArrayList;Landroid/support/v4/app/e;)Landroid/support/v4/app/e;
    .locals 10

    .prologue
    .line 885
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/U;->YR:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 950
    return-object p2

    .line 886
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/U;->YR:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/aa;

    .line 887
    iget v2, v0, Landroid/support/v4/app/aa;->aac:I

    packed-switch v2, :pswitch_data_0

    .line 885
    :cond_1
    :goto_1
    :pswitch_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 890
    :pswitch_1
    iget-object v0, v0, Landroid/support/v4/app/aa;->aad:Landroid/support/v4/app/e;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 894
    :pswitch_2
    iget-object v2, v0, Landroid/support/v4/app/aa;->aad:Landroid/support/v4/app/e;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 895
    iget-object v2, v0, Landroid/support/v4/app/aa;->aad:Landroid/support/v4/app/e;

    if-ne v2, p2, :cond_1

    .line 896
    iget-object v2, p0, Landroid/support/v4/app/U;->YR:Ljava/util/ArrayList;

    new-instance v3, Landroid/support/v4/app/aa;

    iget-object v0, v0, Landroid/support/v4/app/aa;->aad:Landroid/support/v4/app/e;

    const/16 v4, 0x9

    invoke-direct {v3, v4, v0}, Landroid/support/v4/app/aa;-><init>(ILandroid/support/v4/app/e;)V

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 897
    add-int/lit8 v1, v1, 0x1

    .line 898
    const/4 p2, 0x0

    goto :goto_1

    .line 903
    :pswitch_3
    iget-object v6, v0, Landroid/support/v4/app/aa;->aad:Landroid/support/v4/app/e;

    .line 904
    iget v7, v6, Landroid/support/v4/app/e;->Ws:I

    .line 905
    const/4 v4, 0x0

    .line 906
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v5, v2

    move-object v3, p2

    move v2, v1

    :goto_2
    if-gez v5, :cond_2

    .line 930
    if-nez v4, :cond_6

    .line 934
    const/4 v1, 0x1

    iput v1, v0, Landroid/support/v4/app/aa;->aac:I

    .line 935
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    move v1, v2

    move-object p2, v3

    .line 938
    goto :goto_1

    .line 907
    :cond_2
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/e;

    .line 908
    iget v8, v1, Landroid/support/v4/app/e;->Ws:I

    if-eq v8, v7, :cond_3

    move v1, v4

    .line 906
    :goto_4
    add-int/lit8 v4, v5, -0x1

    move v5, v4

    move v4, v1

    goto :goto_2

    .line 909
    :cond_3
    if-eq v1, v6, :cond_4

    .line 914
    if-eq v1, v3, :cond_5

    .line 919
    :goto_5
    new-instance v8, Landroid/support/v4/app/aa;

    const/4 v9, 0x3

    invoke-direct {v8, v9, v1}, Landroid/support/v4/app/aa;-><init>(ILandroid/support/v4/app/e;)V

    .line 920
    iget v9, v0, Landroid/support/v4/app/aa;->aah:I

    iput v9, v8, Landroid/support/v4/app/aa;->aah:I

    .line 921
    iget v9, v0, Landroid/support/v4/app/aa;->aae:I

    iput v9, v8, Landroid/support/v4/app/aa;->aae:I

    .line 922
    iget v9, v0, Landroid/support/v4/app/aa;->aag:I

    iput v9, v8, Landroid/support/v4/app/aa;->aag:I

    .line 923
    iget v9, v0, Landroid/support/v4/app/aa;->aaf:I

    iput v9, v8, Landroid/support/v4/app/aa;->aaf:I

    .line 924
    iget-object v9, p0, Landroid/support/v4/app/U;->YR:Ljava/util/ArrayList;

    invoke-virtual {v9, v2, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 925
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 926
    add-int/lit8 v2, v2, 0x1

    move v1, v4

    goto :goto_4

    .line 910
    :cond_4
    const/4 v1, 0x1

    goto :goto_4

    .line 915
    :cond_5
    iget-object v3, p0, Landroid/support/v4/app/U;->YR:Ljava/util/ArrayList;

    new-instance v8, Landroid/support/v4/app/aa;

    const/16 v9, 0x9

    invoke-direct {v8, v9, v1}, Landroid/support/v4/app/aa;-><init>(ILandroid/support/v4/app/e;)V

    invoke-virtual {v3, v2, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 916
    add-int/lit8 v2, v2, 0x1

    .line 917
    const/4 v3, 0x0

    goto :goto_5

    .line 931
    :cond_6
    iget-object v0, p0, Landroid/support/v4/app/U;->YR:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 932
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 942
    :pswitch_4
    iget-object v2, p0, Landroid/support/v4/app/U;->YR:Ljava/util/ArrayList;

    new-instance v3, Landroid/support/v4/app/aa;

    const/16 v4, 0x9

    invoke-direct {v3, v4, p2}, Landroid/support/v4/app/aa;-><init>(ILandroid/support/v4/app/e;)V

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 943
    add-int/lit8 v1, v1, 0x1

    .line 945
    iget-object p2, v0, Landroid/support/v4/app/aa;->aad:Landroid/support/v4/app/e;

    goto/16 :goto_1

    .line 887
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method amd(Ljava/util/ArrayList;Landroid/support/v4/app/e;)Landroid/support/v4/app/e;
    .locals 3

    .prologue
    .line 964
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/U;->YR:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 983
    return-object p2

    .line 965
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/U;->YR:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/aa;

    .line 966
    iget v2, v0, Landroid/support/v4/app/aa;->aac:I

    packed-switch v2, :pswitch_data_0

    .line 964
    :goto_1
    :pswitch_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 969
    :pswitch_1
    iget-object v0, v0, Landroid/support/v4/app/aa;->aad:Landroid/support/v4/app/e;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 973
    :pswitch_2
    iget-object v0, v0, Landroid/support/v4/app/aa;->aad:Landroid/support/v4/app/e;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 976
    :pswitch_3
    iget-object p2, v0, Landroid/support/v4/app/aa;->aad:Landroid/support/v4/app/e;

    goto :goto_1

    .line 979
    :pswitch_4
    const/4 p2, 0x0

    goto :goto_1

    .line 966
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public ame()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1013
    iget-object v0, p0, Landroid/support/v4/app/U;->YI:Ljava/lang/String;

    return-object v0
.end method

.method amf(I)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 594
    iget-boolean v1, p0, Landroid/support/v4/app/U;->YU:Z

    if-eqz v1, :cond_0

    .line 597
    sget-boolean v1, Landroid/support/v4/app/aV;->DEBUG:Z

    if-nez v1, :cond_1

    .line 599
    :goto_0
    iget-object v1, p0, Landroid/support/v4/app/U;->YR:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    .line 600
    :goto_1
    if-lt v1, v2, :cond_2

    .line 608
    return-void

    .line 595
    :cond_0
    return-void

    .line 597
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bump nesting in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "FragmentManager"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 601
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/U;->YR:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/aa;

    .line 602
    iget-object v3, v0, Landroid/support/v4/app/aa;->aad:Landroid/support/v4/app/e;

    if-nez v3, :cond_4

    .line 600
    :cond_3
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 603
    :cond_4
    iget-object v3, v0, Landroid/support/v4/app/aa;->aad:Landroid/support/v4/app/e;

    iget v4, v3, Landroid/support/v4/app/e;->WB:I

    add-int/2addr v4, p1

    iput v4, v3, Landroid/support/v4/app/e;->WB:I

    .line 604
    sget-boolean v3, Landroid/support/v4/app/aV;->DEBUG:Z

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Bump nesting of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/support/v4/app/aa;->aad:Landroid/support/v4/app/e;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Landroid/support/v4/app/aa;->aad:Landroid/support/v4/app/e;

    iget v0, v0, Landroid/support/v4/app/e;->WB:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "FragmentManager"

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method amg(Ljava/util/ArrayList;II)Z
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 720
    if-eq p3, p2, :cond_0

    .line 723
    iget-object v0, p0, Landroid/support/v4/app/U;->YR:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 724
    const/4 v1, -0x1

    move v6, v3

    .line 725
    :goto_0
    if-lt v6, v7, :cond_1

    .line 744
    return v3

    .line 721
    :cond_0
    return v3

    .line 726
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/U;->YR:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/aa;

    .line 727
    iget-object v2, v0, Landroid/support/v4/app/aa;->aad:Landroid/support/v4/app/e;

    if-nez v2, :cond_4

    move v2, v3

    .line 728
    :goto_1
    if-nez v2, :cond_5

    :cond_2
    move v2, v1

    .line 725
    :cond_3
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v1, v2

    goto :goto_0

    .line 727
    :cond_4
    iget-object v0, v0, Landroid/support/v4/app/aa;->aad:Landroid/support/v4/app/e;

    iget v0, v0, Landroid/support/v4/app/e;->Ws:I

    move v2, v0

    goto :goto_1

    .line 728
    :cond_5
    if-eq v2, v1, :cond_2

    move v5, p2

    .line 730
    :goto_2
    if-ge v5, p3, :cond_3

    .line 731
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/U;

    .line 732
    iget-object v1, v0, Landroid/support/v4/app/U;->YR:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v4, v3

    .line 733
    :goto_3
    if-lt v4, v8, :cond_6

    .line 730
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_2

    .line 734
    :cond_6
    iget-object v1, v0, Landroid/support/v4/app/U;->YR:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/aa;

    .line 735
    iget-object v9, v1, Landroid/support/v4/app/aa;->aad:Landroid/support/v4/app/e;

    if-nez v9, :cond_7

    move v1, v3

    .line 737
    :goto_4
    if-eq v1, v2, :cond_8

    .line 733
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_3

    .line 735
    :cond_7
    iget-object v1, v1, Landroid/support/v4/app/aa;->aad:Landroid/support/v4/app/e;

    iget v1, v1, Landroid/support/v4/app/e;->Ws:I

    goto :goto_4

    .line 738
    :cond_8
    const/4 v0, 0x1

    return v0
.end method

.method amh(Z)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 666
    iget-boolean v0, p0, Landroid/support/v4/app/U;->YN:Z

    if-nez v0, :cond_0

    .line 667
    sget-boolean v0, Landroid/support/v4/app/aV;->DEBUG:Z

    if-nez v0, :cond_1

    .line 674
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/U;->YN:Z

    .line 675
    iget-boolean v0, p0, Landroid/support/v4/app/U;->YU:Z

    if-nez v0, :cond_2

    .line 678
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/U;->YL:I

    .line 680
    :goto_1
    iget-object v0, p0, Landroid/support/v4/app/U;->YM:Landroid/support/v4/app/aV;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/app/aV;->aoN(Landroid/support/v4/app/aF;Z)V

    .line 681
    iget v0, p0, Landroid/support/v4/app/U;->YL:I

    return v0

    .line 666
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "commit already called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 668
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Commit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    new-instance v0, Landroid/support/v4/a/p;

    const-string/jumbo v1, "FragmentManager"

    invoke-direct {v0, v1}, Landroid/support/v4/a/p;-><init>(Ljava/lang/String;)V

    .line 670
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 671
    const-string/jumbo v0, "  "

    invoke-virtual {p0, v0, v2, v1, v2}, Landroid/support/v4/app/U;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 672
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    goto :goto_0

    .line 676
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/U;->YM:Landroid/support/v4/app/aV;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/aV;->aoo(Landroid/support/v4/app/U;)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/U;->YL:I

    goto :goto_1
.end method

.method public ami()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 624
    iget-object v0, p0, Landroid/support/v4/app/U;->Zb:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 630
    :goto_0
    return-void

    .line 625
    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v4/app/U;->Zb:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    :goto_1
    if-lt v1, v2, :cond_1

    .line 628
    iput-object v3, p0, Landroid/support/v4/app/U;->Zb:Ljava/util/ArrayList;

    goto :goto_0

    .line 626
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/U;->Zb:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 625
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public amj(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 255
    if-nez p3, :cond_1

    .line 291
    :goto_0
    iget-object v1, p0, Landroid/support/v4/app/U;->YR:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 330
    :cond_0
    return-void

    .line 256
    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mName="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/support/v4/app/U;->YI:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 257
    const-string/jumbo v1, " mIndex="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Landroid/support/v4/app/U;->YL:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 258
    const-string/jumbo v1, " mCommitted="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/support/v4/app/U;->YN:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 259
    iget v1, p0, Landroid/support/v4/app/U;->YX:I

    if-nez v1, :cond_6

    .line 265
    :goto_1
    iget v1, p0, Landroid/support/v4/app/U;->YZ:I

    if-eqz v1, :cond_7

    .line 266
    :cond_2
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mEnterAnim=#"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 267
    iget v1, p0, Landroid/support/v4/app/U;->YZ:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 268
    const-string/jumbo v1, " mExitAnim=#"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 269
    iget v1, p0, Landroid/support/v4/app/U;->YG:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 271
    :goto_2
    iget v1, p0, Landroid/support/v4/app/U;->YH:I

    if-eqz v1, :cond_8

    .line 272
    :cond_3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mPopEnterAnim=#"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 273
    iget v1, p0, Landroid/support/v4/app/U;->YH:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 274
    const-string/jumbo v1, " mPopExitAnim=#"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 275
    iget v1, p0, Landroid/support/v4/app/U;->YS:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 277
    :goto_3
    iget v1, p0, Landroid/support/v4/app/U;->YY:I

    if-eqz v1, :cond_9

    .line 278
    :cond_4
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mBreadCrumbTitleRes=#"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 279
    iget v1, p0, Landroid/support/v4/app/U;->YY:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 280
    const-string/jumbo v1, " mBreadCrumbTitleText="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 281
    iget-object v1, p0, Landroid/support/v4/app/U;->YT:Ljava/lang/CharSequence;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 283
    :goto_4
    iget v1, p0, Landroid/support/v4/app/U;->YO:I

    if-eqz v1, :cond_a

    .line 284
    :cond_5
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mBreadCrumbShortTitleRes=#"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 285
    iget v1, p0, Landroid/support/v4/app/U;->YO:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 286
    const-string/jumbo v1, " mBreadCrumbShortTitleText="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 287
    iget-object v1, p0, Landroid/support/v4/app/U;->YV:Ljava/lang/CharSequence;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 260
    :cond_6
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mTransition=#"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 261
    iget v1, p0, Landroid/support/v4/app/U;->YX:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 262
    const-string/jumbo v1, " mTransitionStyle=#"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 263
    iget v1, p0, Landroid/support/v4/app/U;->YW:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 265
    :cond_7
    iget v1, p0, Landroid/support/v4/app/U;->YG:I

    if-nez v1, :cond_2

    goto/16 :goto_2

    .line 271
    :cond_8
    iget v1, p0, Landroid/support/v4/app/U;->YS:I

    if-nez v1, :cond_3

    goto :goto_3

    .line 277
    :cond_9
    iget-object v1, p0, Landroid/support/v4/app/U;->YT:Ljava/lang/CharSequence;

    if-nez v1, :cond_4

    goto :goto_4

    .line 283
    :cond_a
    iget-object v1, p0, Landroid/support/v4/app/U;->YV:Ljava/lang/CharSequence;

    if-nez v1, :cond_5

    goto/16 :goto_0

    .line 292
    :cond_b
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "Operations:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 294
    iget-object v1, p0, Landroid/support/v4/app/U;->YR:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v0

    .line 295
    :goto_5
    if-ge v2, v3, :cond_0

    .line 296
    iget-object v0, p0, Landroid/support/v4/app/U;->YR:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/aa;

    .line 298
    iget v1, v0, Landroid/support/v4/app/aa;->aac:I

    packed-switch v1, :pswitch_data_0

    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "cmd="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, v0, Landroid/support/v4/app/aa;->aac:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 311
    :goto_6
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "  Op #"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 312
    const-string/jumbo v4, ": "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 313
    const-string/jumbo v1, " "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v0, Landroid/support/v4/app/aa;->aad:Landroid/support/v4/app/e;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 314
    if-nez p3, :cond_c

    .line 295
    :goto_7
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5

    .line 299
    :pswitch_0
    const-string/jumbo v1, "NULL"

    goto :goto_6

    .line 300
    :pswitch_1
    const-string/jumbo v1, "ADD"

    goto :goto_6

    .line 301
    :pswitch_2
    const-string/jumbo v1, "REPLACE"

    goto :goto_6

    .line 302
    :pswitch_3
    const-string/jumbo v1, "REMOVE"

    goto :goto_6

    .line 303
    :pswitch_4
    const-string/jumbo v1, "HIDE"

    goto :goto_6

    .line 304
    :pswitch_5
    const-string/jumbo v1, "SHOW"

    goto :goto_6

    .line 305
    :pswitch_6
    const-string/jumbo v1, "DETACH"

    goto :goto_6

    .line 306
    :pswitch_7
    const-string/jumbo v1, "ATTACH"

    goto :goto_6

    .line 307
    :pswitch_8
    const-string/jumbo v1, "SET_PRIMARY_NAV"

    goto :goto_6

    .line 308
    :pswitch_9
    const-string/jumbo v1, "UNSET_PRIMARY_NAV"

    goto :goto_6

    .line 315
    :cond_c
    iget v1, v0, Landroid/support/v4/app/aa;->aah:I

    if-eqz v1, :cond_f

    .line 316
    :cond_d
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "enterAnim=#"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 317
    iget v1, v0, Landroid/support/v4/app/aa;->aah:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 318
    const-string/jumbo v1, " exitAnim=#"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 319
    iget v1, v0, Landroid/support/v4/app/aa;->aag:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 321
    :goto_8
    iget v1, v0, Landroid/support/v4/app/aa;->aae:I

    if-eqz v1, :cond_10

    .line 322
    :cond_e
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "popEnterAnim=#"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 323
    iget v1, v0, Landroid/support/v4/app/aa;->aae:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 324
    const-string/jumbo v1, " popExitAnim=#"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 325
    iget v0, v0, Landroid/support/v4/app/aa;->aaf:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7

    .line 315
    :cond_f
    iget v1, v0, Landroid/support/v4/app/aa;->aag:I

    if-nez v1, :cond_d

    goto :goto_8

    .line 321
    :cond_10
    iget v1, v0, Landroid/support/v4/app/aa;->aaf:I

    if-nez v1, :cond_e

    goto :goto_7

    .line 298
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method amk()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 752
    iget-object v0, p0, Landroid/support/v4/app/U;->YR:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    .line 753
    :goto_0
    if-lt v1, v3, :cond_0

    .line 797
    iget-boolean v0, p0, Landroid/support/v4/app/U;->YJ:Z

    if-eqz v0, :cond_4

    .line 801
    :goto_1
    return-void

    .line 754
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/U;->YR:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/aa;

    .line 755
    iget-object v4, v0, Landroid/support/v4/app/aa;->aad:Landroid/support/v4/app/e;

    .line 756
    if-nez v4, :cond_1

    .line 759
    :goto_2
    iget v5, v0, Landroid/support/v4/app/aa;->aac:I

    packed-switch v5, :pswitch_data_0

    .line 791
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown cmd: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Landroid/support/v4/app/aa;->aac:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 757
    :cond_1
    iget v5, p0, Landroid/support/v4/app/U;->YX:I

    iget v6, p0, Landroid/support/v4/app/U;->YW:I

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/app/e;->ajP(II)V

    goto :goto_2

    .line 761
    :pswitch_1
    iget v5, v0, Landroid/support/v4/app/aa;->aah:I

    invoke-virtual {v4, v5}, Landroid/support/v4/app/e;->ajv(I)V

    .line 762
    iget-object v5, p0, Landroid/support/v4/app/U;->YM:Landroid/support/v4/app/aV;

    invoke-virtual {v5, v4, v2}, Landroid/support/v4/app/aV;->app(Landroid/support/v4/app/e;Z)V

    .line 793
    :goto_3
    iget-boolean v5, p0, Landroid/support/v4/app/U;->YJ:Z

    if-eqz v5, :cond_3

    .line 753
    :cond_2
    :goto_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 765
    :pswitch_2
    iget v5, v0, Landroid/support/v4/app/aa;->aag:I

    invoke-virtual {v4, v5}, Landroid/support/v4/app/e;->ajv(I)V

    .line 766
    iget-object v5, p0, Landroid/support/v4/app/U;->YM:Landroid/support/v4/app/aV;

    invoke-virtual {v5, v4}, Landroid/support/v4/app/aV;->apd(Landroid/support/v4/app/e;)V

    goto :goto_3

    .line 769
    :pswitch_3
    iget v5, v0, Landroid/support/v4/app/aa;->aag:I

    invoke-virtual {v4, v5}, Landroid/support/v4/app/e;->ajv(I)V

    .line 770
    iget-object v5, p0, Landroid/support/v4/app/U;->YM:Landroid/support/v4/app/aV;

    invoke-virtual {v5, v4}, Landroid/support/v4/app/aV;->apH(Landroid/support/v4/app/e;)V

    goto :goto_3

    .line 773
    :pswitch_4
    iget v5, v0, Landroid/support/v4/app/aa;->aah:I

    invoke-virtual {v4, v5}, Landroid/support/v4/app/e;->ajv(I)V

    .line 774
    iget-object v5, p0, Landroid/support/v4/app/U;->YM:Landroid/support/v4/app/aV;

    invoke-virtual {v5, v4}, Landroid/support/v4/app/aV;->aoz(Landroid/support/v4/app/e;)V

    goto :goto_3

    .line 777
    :pswitch_5
    iget v5, v0, Landroid/support/v4/app/aa;->aag:I

    invoke-virtual {v4, v5}, Landroid/support/v4/app/e;->ajv(I)V

    .line 778
    iget-object v5, p0, Landroid/support/v4/app/U;->YM:Landroid/support/v4/app/aV;

    invoke-virtual {v5, v4}, Landroid/support/v4/app/aV;->aph(Landroid/support/v4/app/e;)V

    goto :goto_3

    .line 781
    :pswitch_6
    iget v5, v0, Landroid/support/v4/app/aa;->aah:I

    invoke-virtual {v4, v5}, Landroid/support/v4/app/e;->ajv(I)V

    .line 782
    iget-object v5, p0, Landroid/support/v4/app/U;->YM:Landroid/support/v4/app/aV;

    invoke-virtual {v5, v4}, Landroid/support/v4/app/aV;->aoe(Landroid/support/v4/app/e;)V

    goto :goto_3

    .line 785
    :pswitch_7
    iget-object v5, p0, Landroid/support/v4/app/U;->YM:Landroid/support/v4/app/aV;

    invoke-virtual {v5, v4}, Landroid/support/v4/app/aV;->apK(Landroid/support/v4/app/e;)V

    goto :goto_3

    .line 788
    :pswitch_8
    iget-object v5, p0, Landroid/support/v4/app/U;->YM:Landroid/support/v4/app/aV;

    invoke-virtual {v5, v7}, Landroid/support/v4/app/aV;->apK(Landroid/support/v4/app/e;)V

    goto :goto_3

    .line 793
    :cond_3
    iget v0, v0, Landroid/support/v4/app/aa;->aac:I

    if-eq v0, v8, :cond_2

    if-eqz v4, :cond_2

    .line 794
    iget-object v0, p0, Landroid/support/v4/app/U;->YM:Landroid/support/v4/app/aV;

    invoke-virtual {v0, v4}, Landroid/support/v4/app/aV;->aoi(Landroid/support/v4/app/e;)V

    goto :goto_4

    .line 799
    :cond_4
    iget-object v0, p0, Landroid/support/v4/app/U;->YM:Landroid/support/v4/app/aV;

    iget-object v1, p0, Landroid/support/v4/app/U;->YM:Landroid/support/v4/app/aV;

    iget v1, v1, Landroid/support/v4/app/aV;->acv:I

    invoke-virtual {v0, v1, v8}, Landroid/support/v4/app/aV;->aoa(IZ)V

    goto/16 :goto_1

    .line 759
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method amm(Landroid/support/v4/app/aa;)V
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Landroid/support/v4/app/U;->YR:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    iget v0, p0, Landroid/support/v4/app/U;->YZ:I

    iput v0, p1, Landroid/support/v4/app/aa;->aah:I

    .line 370
    iget v0, p0, Landroid/support/v4/app/U;->YG:I

    iput v0, p1, Landroid/support/v4/app/aa;->aag:I

    .line 371
    iget v0, p0, Landroid/support/v4/app/U;->YH:I

    iput v0, p1, Landroid/support/v4/app/aa;->aae:I

    .line 372
    iget v0, p0, Landroid/support/v4/app/U;->YS:I

    iput v0, p1, Landroid/support/v4/app/aa;->aaf:I

    .line 373
    return-void
.end method

.method amo(Z)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 811
    iget-object v0, p0, Landroid/support/v4/app/U;->YR:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_1

    .line 856
    iget-boolean v0, p0, Landroid/support/v4/app/U;->YJ:Z

    if-eqz v0, :cond_5

    .line 859
    :cond_0
    :goto_1
    return-void

    .line 812
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/U;->YR:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/aa;

    .line 813
    iget-object v2, v0, Landroid/support/v4/app/aa;->aad:Landroid/support/v4/app/e;

    .line 814
    if-nez v2, :cond_2

    .line 818
    :goto_2
    iget v3, v0, Landroid/support/v4/app/aa;->aac:I

    packed-switch v3, :pswitch_data_0

    .line 850
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown cmd: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Landroid/support/v4/app/aa;->aac:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 815
    :cond_2
    iget v3, p0, Landroid/support/v4/app/U;->YX:I

    invoke-static {v3}, Landroid/support/v4/app/aV;->apJ(I)I

    move-result v3

    iget v4, p0, Landroid/support/v4/app/U;->YW:I

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/e;->ajP(II)V

    goto :goto_2

    .line 820
    :pswitch_1
    iget v3, v0, Landroid/support/v4/app/aa;->aaf:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/e;->ajv(I)V

    .line 821
    iget-object v3, p0, Landroid/support/v4/app/U;->YM:Landroid/support/v4/app/aV;

    invoke-virtual {v3, v2}, Landroid/support/v4/app/aV;->apd(Landroid/support/v4/app/e;)V

    .line 852
    :goto_3
    iget-boolean v3, p0, Landroid/support/v4/app/U;->YJ:Z

    if-eqz v3, :cond_4

    .line 811
    :cond_3
    :goto_4
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 824
    :pswitch_2
    iget v3, v0, Landroid/support/v4/app/aa;->aae:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/e;->ajv(I)V

    .line 825
    iget-object v3, p0, Landroid/support/v4/app/U;->YM:Landroid/support/v4/app/aV;

    invoke-virtual {v3, v2, v5}, Landroid/support/v4/app/aV;->app(Landroid/support/v4/app/e;Z)V

    goto :goto_3

    .line 828
    :pswitch_3
    iget v3, v0, Landroid/support/v4/app/aa;->aae:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/e;->ajv(I)V

    .line 829
    iget-object v3, p0, Landroid/support/v4/app/U;->YM:Landroid/support/v4/app/aV;

    invoke-virtual {v3, v2}, Landroid/support/v4/app/aV;->aoz(Landroid/support/v4/app/e;)V

    goto :goto_3

    .line 832
    :pswitch_4
    iget v3, v0, Landroid/support/v4/app/aa;->aaf:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/e;->ajv(I)V

    .line 833
    iget-object v3, p0, Landroid/support/v4/app/U;->YM:Landroid/support/v4/app/aV;

    invoke-virtual {v3, v2}, Landroid/support/v4/app/aV;->apH(Landroid/support/v4/app/e;)V

    goto :goto_3

    .line 836
    :pswitch_5
    iget v3, v0, Landroid/support/v4/app/aa;->aae:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/e;->ajv(I)V

    .line 837
    iget-object v3, p0, Landroid/support/v4/app/U;->YM:Landroid/support/v4/app/aV;

    invoke-virtual {v3, v2}, Landroid/support/v4/app/aV;->aoe(Landroid/support/v4/app/e;)V

    goto :goto_3

    .line 840
    :pswitch_6
    iget v3, v0, Landroid/support/v4/app/aa;->aaf:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/e;->ajv(I)V

    .line 841
    iget-object v3, p0, Landroid/support/v4/app/U;->YM:Landroid/support/v4/app/aV;

    invoke-virtual {v3, v2}, Landroid/support/v4/app/aV;->aph(Landroid/support/v4/app/e;)V

    goto :goto_3

    .line 844
    :pswitch_7
    iget-object v3, p0, Landroid/support/v4/app/U;->YM:Landroid/support/v4/app/aV;

    invoke-virtual {v3, v6}, Landroid/support/v4/app/aV;->apK(Landroid/support/v4/app/e;)V

    goto :goto_3

    .line 847
    :pswitch_8
    iget-object v3, p0, Landroid/support/v4/app/U;->YM:Landroid/support/v4/app/aV;

    invoke-virtual {v3, v2}, Landroid/support/v4/app/aV;->apK(Landroid/support/v4/app/e;)V

    goto :goto_3

    .line 852
    :cond_4
    iget v0, v0, Landroid/support/v4/app/aa;->aac:I

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    if-eqz v2, :cond_3

    .line 853
    iget-object v0, p0, Landroid/support/v4/app/U;->YM:Landroid/support/v4/app/aV;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/aV;->aoi(Landroid/support/v4/app/e;)V

    goto :goto_4

    .line 856
    :cond_5
    if-eqz p1, :cond_0

    .line 857
    iget-object v0, p0, Landroid/support/v4/app/U;->YM:Landroid/support/v4/app/aV;

    iget-object v1, p0, Landroid/support/v4/app/U;->YM:Landroid/support/v4/app/aV;

    iget v1, v1, Landroid/support/v4/app/aV;->acv:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/aV;->aoa(IZ)V

    goto/16 :goto_1

    .line 818
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method amp()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    move v1, v2

    .line 987
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/U;->YR:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 993
    return v2

    .line 988
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/U;->YR:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/aa;

    .line 989
    invoke-static {v0}, Landroid/support/v4/app/U;->aml(Landroid/support/v4/app/aa;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 987
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 990
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public commit()I
    .locals 1

    .prologue
    .line 634
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/app/U;->amh(Z)I

    move-result v0

    return v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p3, v0}, Landroid/support/v4/app/U;->amj(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 252
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 236
    const-string/jumbo v1, "BackStackEntry{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    iget v1, p0, Landroid/support/v4/app/U;->YL:I

    if-gez v1, :cond_0

    .line 242
    :goto_0
    iget-object v1, p0, Landroid/support/v4/app/U;->YI:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 246
    :goto_1
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 239
    :cond_0
    const-string/jumbo v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    iget v1, p0, Landroid/support/v4/app/U;->YL:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 243
    :cond_1
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    iget-object v1, p0, Landroid/support/v4/app/U;->YI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
