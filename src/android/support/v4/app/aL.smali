.class Landroid/support/v4/app/aL;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final acV:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    const/16 v0, 0xa

    new-array v0, v0, [I

    aput v2, v0, v2

    aput v4, v0, v3

    const/4 v1, 0x2

    aput v2, v0, v1

    aput v3, v0, v4

    aput v6, v0, v5

    aput v5, v0, v6

    const/4 v1, 0x7

    const/4 v2, 0x6

    aput v1, v0, v2

    const/4 v1, 0x6

    const/4 v2, 0x7

    aput v1, v0, v2

    const/16 v1, 0x9

    const/16 v2, 0x8

    aput v1, v0, v2

    const/16 v1, 0x8

    const/16 v2, 0x9

    aput v1, v0, v2

    sput-object v0, Landroid/support/v4/app/aL;->acV:[I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1145
    return-void
.end method

.method static aoA(Landroid/support/v4/app/aR;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 86
    iget v0, p0, Landroid/support/v4/app/aR;->adP:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    .line 90
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_2

    .line 124
    :cond_0
    return-void

    .line 87
    :cond_1
    return-void

    .line 91
    :cond_2
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    move v3, p3

    .line 93
    :goto_0
    if-lt v3, p4, :cond_3

    .line 103
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    new-instance v3, Landroid/view/View;

    iget-object v0, p0, Landroid/support/v4/app/aR;->ads:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 105
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5

    move v1, v2

    .line 106
    :goto_1
    if-ge v1, v5, :cond_0

    .line 107
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 108
    invoke-static {v2, p1, p2, p3, p4}, Landroid/support/v4/app/aL;->aot(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Landroid/support/v4/a/t;

    move-result-object v6

    .line 112
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/n;

    .line 114
    if-nez p5, :cond_5

    .line 118
    invoke-static {p0, v2, v0, v3, v6}, Landroid/support/v4/app/aL;->aoC(Landroid/support/v4/app/aR;ILandroid/support/v4/app/n;Landroid/view/View;Landroid/support/v4/a/t;)V

    .line 106
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 94
    :cond_3
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/V;

    .line 95
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 96
    if-nez v1, :cond_4

    .line 99
    invoke-static {v0, v4, p5}, Landroid/support/v4/app/aL;->aoE(Landroid/support/v4/app/V;Landroid/util/SparseArray;Z)V

    .line 93
    :goto_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 97
    :cond_4
    invoke-static {v0, v4, p5}, Landroid/support/v4/app/aL;->aoS(Landroid/support/v4/app/V;Landroid/util/SparseArray;Z)V

    goto :goto_3

    .line 115
    :cond_5
    invoke-static {p0, v2, v0, v3, v6}, Landroid/support/v4/app/aL;->aoB(Landroid/support/v4/app/aR;ILandroid/support/v4/app/n;Landroid/view/View;Landroid/support/v4/a/t;)V

    goto :goto_2
.end method

.method private static aoB(Landroid/support/v4/app/aR;ILandroid/support/v4/app/n;Landroid/view/View;Landroid/support/v4/a/t;)V
    .locals 16

    .prologue
    .line 196
    const/4 v1, 0x0

    .line 197
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/app/aR;->adB:Landroid/support/v4/app/ac;

    invoke-virtual {v2}, Landroid/support/v4/app/ac;->alD()Z

    move-result v2

    if-nez v2, :cond_1

    .line 200
    :goto_0
    if-eqz v1, :cond_2

    .line 203
    move-object/from16 v0, p2

    iget-object v9, v0, Landroid/support/v4/app/n;->YR:Landroid/support/v4/app/g;

    .line 204
    move-object/from16 v0, p2

    iget-object v10, v0, Landroid/support/v4/app/n;->YS:Landroid/support/v4/app/g;

    .line 205
    move-object/from16 v0, p2

    iget-boolean v12, v0, Landroid/support/v4/app/n;->YV:Z

    .line 206
    move-object/from16 v0, p2

    iget-boolean v2, v0, Landroid/support/v4/app/n;->YT:Z

    .line 208
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 209
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 210
    invoke-static {v9, v12}, Landroid/support/v4/app/aL;->aoR(Landroid/support/v4/app/g;Z)Ljava/lang/Object;

    move-result-object v7

    .line 211
    invoke-static {v10, v2}, Landroid/support/v4/app/aL;->aoM(Landroid/support/v4/app/g;Z)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p2

    .line 213
    invoke-static/range {v1 .. v8}, Landroid/support/v4/app/aL;->aoI(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/v4/a/t;Landroid/support/v4/app/n;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 217
    if-eqz v7, :cond_3

    .line 222
    :cond_0
    move-object/from16 v0, p3

    invoke-static {v8, v10, v5, v0}, Landroid/support/v4/app/aL;->aoF(Ljava/lang/Object;Landroid/support/v4/app/g;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v13

    .line 225
    move-object/from16 v0, p3

    invoke-static {v7, v9, v6, v0}, Landroid/support/v4/app/aL;->aoF(Ljava/lang/Object;Landroid/support/v4/app/g;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v11

    .line 228
    const/4 v2, 0x4

    invoke-static {v11, v2}, Landroid/support/v4/app/aL;->aoO(Ljava/util/ArrayList;I)V

    .line 230
    invoke-static {v7, v8, v14, v9, v12}, Landroid/support/v4/app/aL;->aoL(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/support/v4/app/g;Z)Ljava/lang/Object;

    move-result-object v9

    .line 233
    if-nez v9, :cond_4

    .line 247
    :goto_1
    return-void

    .line 198
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/app/aR;->adB:Landroid/support/v4/app/ac;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/ac;->alH(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    goto :goto_0

    .line 201
    :cond_2
    return-void

    .line 217
    :cond_3
    if-nez v14, :cond_0

    if-nez v8, :cond_0

    .line 219
    return-void

    .line 234
    :cond_4
    invoke-static {v8, v10, v13}, Landroid/support/v4/app/aL;->aox(Ljava/lang/Object;Landroid/support/v4/app/g;Ljava/util/ArrayList;)V

    .line 236
    invoke-static {v6}, Landroid/support/v4/app/R;->amI(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    move-object v10, v7

    move-object v12, v8

    move-object v15, v6

    .line 237
    invoke-static/range {v9 .. v15}, Landroid/support/v4/app/R;->and(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 240
    invoke-static {v1, v9}, Landroid/support/v4/app/R;->amX(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 241
    move-object/from16 v0, p4

    invoke-static {v1, v5, v6, v2, v0}, Landroid/support/v4/app/R;->amK(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 243
    const/4 v1, 0x0

    invoke-static {v11, v1}, Landroid/support/v4/app/aL;->aoO(Ljava/util/ArrayList;I)V

    .line 244
    invoke-static {v14, v5, v6}, Landroid/support/v4/app/R;->amU(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_1
.end method

.method private static aoC(Landroid/support/v4/app/aR;ILandroid/support/v4/app/n;Landroid/view/View;Landroid/support/v4/a/t;)V
    .locals 21

    .prologue
    .line 291
    const/4 v1, 0x0

    .line 292
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/app/aR;->adB:Landroid/support/v4/app/ac;

    invoke-virtual {v2}, Landroid/support/v4/app/ac;->alD()Z

    move-result v2

    if-nez v2, :cond_2

    .line 295
    :goto_0
    if-eqz v1, :cond_3

    .line 298
    move-object/from16 v0, p2

    iget-object v15, v0, Landroid/support/v4/app/n;->YR:Landroid/support/v4/app/g;

    .line 299
    move-object/from16 v0, p2

    iget-object v9, v0, Landroid/support/v4/app/n;->YS:Landroid/support/v4/app/g;

    .line 300
    move-object/from16 v0, p2

    iget-boolean v2, v0, Landroid/support/v4/app/n;->YV:Z

    .line 301
    move-object/from16 v0, p2

    iget-boolean v3, v0, Landroid/support/v4/app/n;->YT:Z

    .line 303
    invoke-static {v15, v2}, Landroid/support/v4/app/aL;->aoR(Landroid/support/v4/app/g;Z)Ljava/lang/Object;

    move-result-object v7

    .line 304
    invoke-static {v9, v3}, Landroid/support/v4/app/aL;->aoM(Landroid/support/v4/app/g;Z)Ljava/lang/Object;

    move-result-object v8

    .line 306
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 307
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p2

    .line 309
    invoke-static/range {v1 .. v8}, Landroid/support/v4/app/aL;->aoG(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/v4/a/t;Landroid/support/v4/app/n;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 313
    if-eqz v7, :cond_4

    .line 318
    :cond_0
    move-object/from16 v0, p3

    invoke-static {v8, v9, v5, v0}, Landroid/support/v4/app/aL;->aoF(Ljava/lang/Object;Landroid/support/v4/app/g;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v12

    .line 321
    if-nez v12, :cond_5

    .line 322
    :cond_1
    const/4 v11, 0x0

    .line 327
    :goto_1
    move-object/from16 v0, p3

    invoke-static {v7, v0}, Landroid/support/v4/app/R;->amZ(Ljava/lang/Object;Landroid/view/View;)V

    .line 329
    move-object/from16 v0, p2

    iget-boolean v2, v0, Landroid/support/v4/app/n;->YV:Z

    invoke-static {v7, v11, v13, v15, v2}, Landroid/support/v4/app/aL;->aoL(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/support/v4/app/g;Z)Ljava/lang/Object;

    move-result-object v8

    .line 332
    if-nez v8, :cond_6

    .line 346
    :goto_2
    return-void

    .line 293
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/app/aR;->adB:Landroid/support/v4/app/ac;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/ac;->alH(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    goto :goto_0

    .line 296
    :cond_3
    return-void

    .line 313
    :cond_4
    if-nez v13, :cond_0

    if-nez v8, :cond_0

    .line 315
    return-void

    .line 321
    :cond_5
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    move-object v11, v8

    goto :goto_1

    .line 333
    :cond_6
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v7

    move-object v14, v6

    .line 334
    invoke-static/range {v8 .. v14}, Landroid/support/v4/app/R;->and(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    move-object v13, v1

    move-object v14, v15

    move-object/from16 v15, p3

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    move-object/from16 v20, v12

    .line 337
    invoke-static/range {v13 .. v20}, Landroid/support/v4/app/aL;->aov(Landroid/view/ViewGroup;Landroid/support/v4/app/g;Landroid/view/View;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 339
    move-object/from16 v0, p4

    invoke-static {v1, v6, v0}, Landroid/support/v4/app/R;->amN(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 342
    invoke-static {v1, v8}, Landroid/support/v4/app/R;->amX(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 343
    move-object/from16 v0, p4

    invoke-static {v1, v6, v0}, Landroid/support/v4/app/R;->amE(Landroid/view/ViewGroup;Ljava/util/ArrayList;Ljava/util/Map;)V

    goto :goto_2
.end method

.method private static aoD(Landroid/support/v4/a/t;Ljava/lang/Object;Landroid/support/v4/app/n;)Landroid/support/v4/a/t;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 703
    invoke-virtual {p0}, Landroid/support/v4/a/t;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 704
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/a/t;->clear()V

    .line 705
    return-object v1

    .line 703
    :cond_1
    if-eqz p1, :cond_0

    .line 707
    iget-object v0, p2, Landroid/support/v4/app/n;->YS:Landroid/support/v4/app/g;

    .line 708
    new-instance v4, Landroid/support/v4/a/t;

    invoke-direct {v4}, Landroid/support/v4/a/t;-><init>()V

    .line 709
    invoke-virtual {v0}, Landroid/support/v4/app/g;->akv()Landroid/view/View;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/support/v4/app/R;->amF(Ljava/util/Map;Landroid/view/View;)V

    .line 713
    iget-object v2, p2, Landroid/support/v4/app/n;->YU:Landroid/support/v4/app/V;

    .line 714
    iget-boolean v1, p2, Landroid/support/v4/app/n;->YT:Z

    if-nez v1, :cond_3

    .line 718
    invoke-virtual {v0}, Landroid/support/v4/app/g;->ajC()Landroid/support/v4/app/c;

    move-result-object v1

    .line 719
    iget-object v0, v2, Landroid/support/v4/app/V;->aau:Ljava/util/ArrayList;

    move-object v2, v0

    move-object v0, v1

    .line 722
    :goto_0
    invoke-virtual {v4, v2}, Landroid/support/v4/a/t;->retainAll(Ljava/util/Collection;)Z

    .line 723
    if-nez v0, :cond_4

    .line 736
    invoke-virtual {v4}, Landroid/support/v4/a/t;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/a/t;->retainAll(Ljava/util/Collection;)Z

    .line 738
    :cond_2
    return-object v4

    .line 715
    :cond_3
    invoke-virtual {v0}, Landroid/support/v4/app/g;->ajM()Landroid/support/v4/app/c;

    move-result-object v1

    .line 716
    iget-object v0, v2, Landroid/support/v4/app/V;->aav:Ljava/util/ArrayList;

    move-object v2, v0

    move-object v0, v1

    goto :goto_0

    .line 724
    :cond_4
    invoke-virtual {v0, v2, v4}, Landroid/support/v4/app/c;->ajt(Ljava/util/List;Ljava/util/Map;)V

    .line 725
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_1
    if-ltz v3, :cond_2

    .line 726
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 727
    invoke-virtual {v4, v0}, Landroid/support/v4/a/t;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 728
    if-eqz v1, :cond_5

    .line 730
    invoke-static {v1}, Landroid/support/v4/view/f;->agv(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 725
    :goto_2
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_1

    .line 729
    :cond_5
    invoke-virtual {p0, v0}, Landroid/support/v4/a/t;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 731
    :cond_6
    invoke-virtual {p0, v0}, Landroid/support/v4/a/t;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 732
    invoke-static {v1}, Landroid/support/v4/view/f;->agv(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/a/t;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method public static aoE(Landroid/support/v4/app/V;Landroid/util/SparseArray;Z)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 993
    iget-object v0, p0, Landroid/support/v4/app/V;->aaw:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    .line 994
    :goto_0
    if-lt v1, v3, :cond_0

    .line 998
    return-void

    .line 995
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/V;->aaw:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/ab;

    .line 996
    invoke-static {p0, v0, p1, v2, p2}, Landroid/support/v4/app/aL;->aos(Landroid/support/v4/app/V;Landroid/support/v4/app/ab;Landroid/util/SparseArray;ZZ)V

    .line 994
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private static aoF(Ljava/lang/Object;Landroid/support/v4/app/g;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 920
    if-nez p0, :cond_1

    .line 934
    :cond_0
    :goto_0
    return-object v0

    .line 921
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 922
    invoke-virtual {p1}, Landroid/support/v4/app/g;->akv()Landroid/view/View;

    move-result-object v1

    .line 923
    if-nez v1, :cond_2

    .line 926
    :goto_1
    if-nez p2, :cond_3

    .line 929
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 930
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 931
    invoke-static {p0, v0}, Landroid/support/v4/app/R;->amY(Ljava/lang/Object;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 924
    :cond_2
    invoke-static {v0, v1}, Landroid/support/v4/app/R;->amL(Ljava/util/ArrayList;Landroid/view/View;)V

    goto :goto_1

    .line 927
    :cond_3
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_2
.end method

.method private static aoG(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/v4/a/t;Landroid/support/v4/app/n;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .prologue
    .line 609
    move-object/from16 v0, p3

    iget-object v7, v0, Landroid/support/v4/app/n;->YR:Landroid/support/v4/app/g;

    .line 610
    move-object/from16 v0, p3

    iget-object v8, v0, Landroid/support/v4/app/n;->YS:Landroid/support/v4/app/g;

    .line 612
    if-nez v7, :cond_1

    .line 613
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 612
    :cond_1
    if-eqz v8, :cond_0

    .line 616
    move-object/from16 v0, p3

    iget-boolean v9, v0, Landroid/support/v4/app/n;->YV:Z

    .line 617
    invoke-virtual {p2}, Landroid/support/v4/a/t;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 618
    invoke-static {v7, v8, v9}, Landroid/support/v4/app/aL;->aoH(Landroid/support/v4/app/g;Landroid/support/v4/app/g;Z)Ljava/lang/Object;

    move-result-object v1

    .line 620
    :goto_0
    move-object/from16 v0, p3

    invoke-static {p2, v1, v0}, Landroid/support/v4/app/aL;->aoD(Landroid/support/v4/a/t;Ljava/lang/Object;Landroid/support/v4/app/n;)Landroid/support/v4/a/t;

    move-result-object v2

    .line 623
    invoke-virtual {p2}, Landroid/support/v4/a/t;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 626
    invoke-virtual {v2}, Landroid/support/v4/a/t;->values()Ljava/util/Collection;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object v3, v1

    .line 629
    :goto_1
    if-eqz p6, :cond_6

    .line 634
    :cond_2
    const/4 v1, 0x1

    invoke-static {v7, v8, v9, v2, v1}, Landroid/support/v4/app/aL;->aoz(Landroid/support/v4/app/g;Landroid/support/v4/app/g;ZLandroid/support/v4/a/t;Z)V

    .line 637
    if-nez v3, :cond_7

    .line 649
    const/4 v12, 0x0

    .line 654
    :cond_3
    :goto_2
    new-instance v1, Landroid/support/v4/app/q;

    move-object v2, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    move-object v6, p1

    move-object/from16 v10, p4

    move-object/from16 v11, p6

    invoke-direct/range {v1 .. v12}, Landroid/support/v4/app/q;-><init>(Landroid/support/v4/a/t;Ljava/lang/Object;Landroid/support/v4/app/n;Ljava/util/ArrayList;Landroid/view/View;Landroid/support/v4/app/g;Landroid/support/v4/app/g;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V

    invoke-static {p0, v1}, Landroid/support/v4/app/ak;->anV(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/ak;

    .line 682
    return-object v3

    .line 617
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 624
    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    .line 629
    :cond_6
    if-nez p7, :cond_2

    if-nez v3, :cond_2

    .line 631
    const/4 v1, 0x0

    return-object v1

    .line 638
    :cond_7
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 639
    move-object/from16 v0, p4

    invoke-static {v3, p1, v0}, Landroid/support/v4/app/R;->amG(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 641
    move-object/from16 v0, p3

    iget-boolean v1, v0, Landroid/support/v4/app/n;->YT:Z

    .line 642
    move-object/from16 v0, p3

    iget-object v4, v0, Landroid/support/v4/app/n;->YU:Landroid/support/v4/app/V;

    .line 643
    move-object/from16 v0, p7

    invoke-static {v3, v0, v2, v1, v4}, Landroid/support/v4/app/aL;->aoP(Ljava/lang/Object;Ljava/lang/Object;Landroid/support/v4/a/t;ZLandroid/support/v4/app/V;)V

    .line 645
    if-eqz p6, :cond_3

    .line 646
    move-object/from16 v0, p6

    invoke-static {v0, v12}, Landroid/support/v4/app/R;->ana(Ljava/lang/Object;Landroid/graphics/Rect;)V

    goto :goto_2
.end method

.method private static aoH(Landroid/support/v4/app/g;Landroid/support/v4/app/g;Z)Ljava/lang/Object;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 411
    if-nez p0, :cond_1

    .line 412
    :cond_0
    return-object v0

    .line 411
    :cond_1
    if-eqz p1, :cond_0

    .line 414
    if-nez p2, :cond_2

    .line 416
    invoke-virtual {p0}, Landroid/support/v4/app/g;->aku()Ljava/lang/Object;

    move-result-object v0

    .line 414
    :goto_0
    invoke-static {v0}, Landroid/support/v4/app/R;->amR(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 417
    invoke-static {v0}, Landroid/support/v4/app/R;->amO(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 415
    :cond_2
    invoke-virtual {p1}, Landroid/support/v4/app/g;->akd()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method private static aoI(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/v4/a/t;Landroid/support/v4/app/n;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 480
    iget-object v1, p3, Landroid/support/v4/app/n;->YR:Landroid/support/v4/app/g;

    .line 481
    iget-object v2, p3, Landroid/support/v4/app/n;->YS:Landroid/support/v4/app/g;

    .line 482
    if-nez v1, :cond_1

    .line 485
    :goto_0
    if-nez v1, :cond_2

    .line 486
    :cond_0
    return-object v5

    .line 483
    :cond_1
    invoke-virtual {v1}, Landroid/support/v4/app/g;->akv()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 485
    :cond_2
    if-eqz v2, :cond_0

    .line 489
    iget-boolean v3, p3, Landroid/support/v4/app/n;->YV:Z

    .line 490
    invoke-virtual {p2}, Landroid/support/v4/a/t;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 491
    invoke-static {v1, v2, v3}, Landroid/support/v4/app/aL;->aoH(Landroid/support/v4/app/g;Landroid/support/v4/app/g;Z)Ljava/lang/Object;

    move-result-object v0

    .line 493
    :goto_1
    invoke-static {p2, v0, p3}, Landroid/support/v4/app/aL;->aoD(Landroid/support/v4/a/t;Ljava/lang/Object;Landroid/support/v4/app/n;)Landroid/support/v4/a/t;

    move-result-object v6

    .line 496
    invoke-static {p2, v0, p3}, Landroid/support/v4/app/aL;->aoK(Landroid/support/v4/a/t;Ljava/lang/Object;Landroid/support/v4/app/n;)Landroid/support/v4/a/t;

    move-result-object v4

    .line 499
    invoke-virtual {p2}, Landroid/support/v4/a/t;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    .line 509
    invoke-virtual {p2}, Landroid/support/v4/a/t;->keySet()Ljava/util/Set;

    move-result-object v7

    .line 508
    invoke-static {p4, v6, v7}, Landroid/support/v4/app/aL;->aoN(Ljava/util/ArrayList;Landroid/support/v4/a/t;Ljava/util/Collection;)V

    .line 511
    invoke-virtual {p2}, Landroid/support/v4/a/t;->values()Ljava/util/Collection;

    move-result-object v7

    .line 510
    invoke-static {p5, v4, v7}, Landroid/support/v4/app/aL;->aoN(Ljava/util/ArrayList;Landroid/support/v4/a/t;Ljava/util/Collection;)V

    move-object v7, v0

    .line 514
    :goto_2
    if-eqz p6, :cond_9

    .line 519
    :cond_3
    const/4 v0, 0x1

    invoke-static {v1, v2, v3, v6, v0}, Landroid/support/v4/app/aL;->aoz(Landroid/support/v4/app/g;Landroid/support/v4/app/g;ZLandroid/support/v4/a/t;Z)V

    .line 523
    if-nez v7, :cond_a

    move-object v6, v5

    .line 542
    :cond_4
    :goto_3
    new-instance v0, Landroid/support/v4/app/ai;

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/app/ai;-><init>(Landroid/support/v4/app/g;Landroid/support/v4/app/g;ZLandroid/support/v4/a/t;Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-static {p0, v0}, Landroid/support/v4/app/ak;->anV(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/ak;

    .line 552
    return-object v7

    :cond_5
    move-object v0, v5

    .line 490
    goto :goto_1

    .line 501
    :cond_6
    if-nez v6, :cond_7

    .line 504
    :goto_4
    if-nez v4, :cond_8

    move-object v7, v5

    goto :goto_2

    .line 502
    :cond_7
    invoke-virtual {v6}, Landroid/support/v4/a/t;->clear()V

    goto :goto_4

    .line 505
    :cond_8
    invoke-virtual {v4}, Landroid/support/v4/a/t;->clear()V

    move-object v7, v5

    goto :goto_2

    .line 514
    :cond_9
    if-nez p7, :cond_3

    if-nez v7, :cond_3

    .line 516
    return-object v5

    .line 524
    :cond_a
    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    invoke-static {v7, p1, p4}, Landroid/support/v4/app/R;->amG(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 527
    iget-boolean v0, p3, Landroid/support/v4/app/n;->YT:Z

    .line 528
    iget-object v5, p3, Landroid/support/v4/app/n;->YU:Landroid/support/v4/app/V;

    .line 529
    invoke-static {v7, p7, v6, v0, v5}, Landroid/support/v4/app/aL;->aoP(Ljava/lang/Object;Ljava/lang/Object;Landroid/support/v4/a/t;ZLandroid/support/v4/app/V;)V

    .line 531
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 532
    invoke-static {v4, p3, p6, v3}, Landroid/support/v4/app/aL;->aoy(Landroid/support/v4/a/t;Landroid/support/v4/app/n;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v5

    .line 534
    if-eqz v5, :cond_4

    .line 535
    invoke-static {p6, v6}, Landroid/support/v4/app/R;->ana(Ljava/lang/Object;Landroid/graphics/Rect;)V

    goto :goto_3
.end method

.method private static aoJ(Landroid/support/v4/a/t;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 809
    invoke-virtual {p0}, Landroid/support/v4/a/t;->size()I

    move-result v1

    .line 810
    :goto_0
    if-lt v0, v1, :cond_0

    .line 815
    const/4 v0, 0x0

    return-object v0

    .line 811
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v4/a/t;->aia(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 810
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 812
    :cond_1
    invoke-virtual {p0, v0}, Landroid/support/v4/a/t;->aib(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static aoK(Landroid/support/v4/a/t;Ljava/lang/Object;Landroid/support/v4/app/n;)Landroid/support/v4/a/t;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 759
    iget-object v0, p2, Landroid/support/v4/app/n;->YR:Landroid/support/v4/app/g;

    .line 760
    invoke-virtual {v0}, Landroid/support/v4/app/g;->akv()Landroid/view/View;

    move-result-object v1

    .line 761
    invoke-virtual {p0}, Landroid/support/v4/a/t;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 762
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/a/t;->clear()V

    .line 763
    return-object v3

    .line 761
    :cond_1
    if-eqz p1, :cond_0

    if-eqz v1, :cond_0

    .line 765
    new-instance v4, Landroid/support/v4/a/t;

    invoke-direct {v4}, Landroid/support/v4/a/t;-><init>()V

    .line 766
    invoke-static {v4, v1}, Landroid/support/v4/app/R;->amF(Ljava/util/Map;Landroid/view/View;)V

    .line 770
    iget-object v2, p2, Landroid/support/v4/app/n;->YW:Landroid/support/v4/app/V;

    .line 771
    iget-boolean v1, p2, Landroid/support/v4/app/n;->YV:Z

    if-nez v1, :cond_3

    .line 775
    invoke-virtual {v0}, Landroid/support/v4/app/g;->ajM()Landroid/support/v4/app/c;

    move-result-object v1

    .line 776
    iget-object v0, v2, Landroid/support/v4/app/V;->aav:Ljava/util/ArrayList;

    move-object v3, v0

    move-object v0, v1

    .line 779
    :goto_0
    if-nez v3, :cond_4

    .line 782
    :goto_1
    if-nez v0, :cond_5

    .line 800
    invoke-static {p0, v4}, Landroid/support/v4/app/aL;->aoU(Landroid/support/v4/a/t;Landroid/support/v4/a/t;)V

    .line 802
    :cond_2
    return-object v4

    .line 772
    :cond_3
    invoke-virtual {v0}, Landroid/support/v4/app/g;->ajC()Landroid/support/v4/app/c;

    move-result-object v1

    .line 773
    iget-object v0, v2, Landroid/support/v4/app/V;->aau:Ljava/util/ArrayList;

    move-object v3, v0

    move-object v0, v1

    goto :goto_0

    .line 780
    :cond_4
    invoke-virtual {v4, v3}, Landroid/support/v4/a/t;->retainAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 783
    :cond_5
    invoke-virtual {v0, v3, v4}, Landroid/support/v4/app/c;->ajt(Ljava/util/List;Ljava/util/Map;)V

    .line 784
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_2
    if-ltz v2, :cond_2

    .line 785
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 786
    invoke-virtual {v4, v0}, Landroid/support/v4/a/t;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 787
    if-eqz v1, :cond_7

    .line 792
    invoke-static {v1}, Landroid/support/v4/view/f;->agv(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 784
    :cond_6
    :goto_3
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_2

    .line 788
    :cond_7
    invoke-static {p0, v0}, Landroid/support/v4/app/aL;->aoJ(Landroid/support/v4/a/t;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 789
    if-eqz v0, :cond_6

    .line 790
    invoke-virtual {p0, v0}, Landroid/support/v4/a/t;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 793
    :cond_8
    invoke-static {p0, v0}, Landroid/support/v4/app/aL;->aoJ(Landroid/support/v4/a/t;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 794
    if-eqz v0, :cond_6

    .line 795
    invoke-static {v1}, Landroid/support/v4/view/f;->agv(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/a/t;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3
.end method

.method private static aoL(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/support/v4/app/g;Z)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 958
    const/4 v0, 0x1

    .line 959
    if-nez p0, :cond_1

    .line 969
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 976
    invoke-static {p1, p0, p2}, Landroid/support/v4/app/R;->amH(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 979
    :goto_1
    return-object v0

    .line 959
    :cond_1
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 960
    if-nez p4, :cond_2

    .line 961
    invoke-virtual {p3}, Landroid/support/v4/app/g;->ake()Z

    move-result v0

    goto :goto_0

    .line 960
    :cond_2
    invoke-virtual {p3}, Landroid/support/v4/app/g;->alg()Z

    move-result v0

    goto :goto_0

    .line 971
    :cond_3
    invoke-static {p1, p0, p2}, Landroid/support/v4/app/R;->amW(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method private static aoM(Landroid/support/v4/app/g;Z)Ljava/lang/Object;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 438
    if-eqz p0, :cond_0

    .line 441
    if-nez p1, :cond_1

    .line 443
    invoke-virtual {p0}, Landroid/support/v4/app/g;->akH()Ljava/lang/Object;

    move-result-object v0

    .line 441
    :goto_0
    invoke-static {v0}, Landroid/support/v4/app/R;->amR(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 439
    :cond_0
    return-object v0

    .line 442
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/g;->ajR()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method private static aoN(Ljava/util/ArrayList;Landroid/support/v4/a/t;Ljava/util/Collection;)V
    .locals 3

    .prologue
    .line 566
    invoke-virtual {p1}, Landroid/support/v4/a/t;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_0

    .line 572
    return-void

    .line 567
    :cond_0
    invoke-virtual {p1, v1}, Landroid/support/v4/a/t;->aia(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 568
    invoke-static {v0}, Landroid/support/v4/view/f;->agv(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 566
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 569
    :cond_1
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private static aoO(Ljava/util/ArrayList;I)V
    .locals 2

    .prologue
    .line 941
    if-eqz p0, :cond_0

    .line 944
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_1

    .line 948
    return-void

    .line 942
    :cond_0
    return-void

    .line 945
    :cond_1
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 946
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 944
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method private static aoP(Ljava/lang/Object;Ljava/lang/Object;Landroid/support/v4/a/t;ZLandroid/support/v4/app/V;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 855
    iget-object v0, p4, Landroid/support/v4/app/V;->aau:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 867
    :cond_0
    :goto_0
    return-void

    .line 855
    :cond_1
    iget-object v0, p4, Landroid/support/v4/app/V;->aau:Ljava/util/ArrayList;

    .line 856
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 857
    if-nez p3, :cond_2

    .line 858
    iget-object v0, p4, Landroid/support/v4/app/V;->aau:Ljava/util/ArrayList;

    .line 859
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 860
    :goto_1
    invoke-virtual {p2, v0}, Landroid/support/v4/a/t;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 861
    invoke-static {p0, v0}, Landroid/support/v4/app/R;->amD(Ljava/lang/Object;Landroid/view/View;)V

    .line 863
    if-eqz p1, :cond_0

    .line 864
    invoke-static {p1, v0}, Landroid/support/v4/app/R;->amD(Ljava/lang/Object;Landroid/view/View;)V

    goto :goto_0

    .line 857
    :cond_2
    iget-object v0, p4, Landroid/support/v4/app/V;->aav:Ljava/util/ArrayList;

    .line 858
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1
.end method

.method static synthetic aoQ(Landroid/support/v4/app/g;Landroid/support/v4/app/g;ZLandroid/support/v4/a/t;Z)V
    .locals 0

    .prologue
    .line 38
    invoke-static {p0, p1, p2, p3, p4}, Landroid/support/v4/app/aL;->aoz(Landroid/support/v4/app/g;Landroid/support/v4/app/g;ZLandroid/support/v4/a/t;Z)V

    return-void
.end method

.method private static aoR(Landroid/support/v4/app/g;Z)Ljava/lang/Object;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 425
    if-eqz p0, :cond_0

    .line 428
    if-nez p1, :cond_1

    .line 430
    invoke-virtual {p0}, Landroid/support/v4/app/g;->akT()Ljava/lang/Object;

    move-result-object v0

    .line 428
    :goto_0
    invoke-static {v0}, Landroid/support/v4/app/R;->amR(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 426
    :cond_0
    return-object v0

    .line 429
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/g;->akO()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public static aoS(Landroid/support/v4/app/V;Landroid/util/SparseArray;Z)V
    .locals 3

    .prologue
    .line 1010
    iget-object v0, p0, Landroid/support/v4/app/V;->aar:Landroid/support/v4/app/aR;

    iget-object v0, v0, Landroid/support/v4/app/aR;->adB:Landroid/support/v4/app/ac;

    invoke-virtual {v0}, Landroid/support/v4/app/ac;->alD()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1013
    iget-object v0, p0, Landroid/support/v4/app/V;->aaw:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1014
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_1

    .line 1018
    return-void

    .line 1011
    :cond_0
    return-void

    .line 1015
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/V;->aaw:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/ab;

    .line 1016
    const/4 v2, 0x1

    invoke-static {p0, v0, p1, v2, p2}, Landroid/support/v4/app/aL;->aos(Landroid/support/v4/app/V;Landroid/support/v4/app/ab;Landroid/util/SparseArray;ZZ)V

    .line 1014
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method static synthetic aoT(Landroid/support/v4/a/t;Landroid/support/v4/app/n;Ljava/lang/Object;Z)Landroid/view/View;
    .locals 1

    .prologue
    .line 38
    invoke-static {p0, p1, p2, p3}, Landroid/support/v4/app/aL;->aoy(Landroid/support/v4/a/t;Landroid/support/v4/app/n;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private static aoU(Landroid/support/v4/a/t;Landroid/support/v4/a/t;)V
    .locals 2

    .prologue
    .line 876
    invoke-virtual {p0}, Landroid/support/v4/a/t;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_0

    .line 882
    return-void

    .line 877
    :cond_0
    invoke-virtual {p0, v1}, Landroid/support/v4/a/t;->aia(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 878
    invoke-virtual {p1, v0}, Landroid/support/v4/a/t;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 876
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 879
    :cond_1
    invoke-virtual {p0, v1}, Landroid/support/v4/a/t;->ahU(I)Ljava/lang/Object;

    goto :goto_1
.end method

.method static synthetic aoV(Ljava/util/ArrayList;I)V
    .locals 0

    .prologue
    .line 38
    invoke-static {p0, p1}, Landroid/support/v4/app/aL;->aoO(Ljava/util/ArrayList;I)V

    return-void
.end method

.method private static aor(Landroid/support/v4/app/n;Landroid/util/SparseArray;I)Landroid/support/v4/app/n;
    .locals 0

    .prologue
    .line 1134
    if-eqz p0, :cond_0

    .line 1138
    :goto_0
    return-object p0

    .line 1135
    :cond_0
    new-instance p0, Landroid/support/v4/app/n;

    invoke-direct {p0}, Landroid/support/v4/app/n;-><init>()V

    .line 1136
    invoke-virtual {p1, p2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private static aos(Landroid/support/v4/app/V;Landroid/support/v4/app/ab;Landroid/util/SparseArray;ZZ)V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1037
    iget-object v1, p1, Landroid/support/v4/app/ab;->abI:Landroid/support/v4/app/g;

    .line 1038
    if-eqz v1, :cond_2

    .line 1041
    iget v9, v1, Landroid/support/v4/app/g;->Yc:I

    .line 1042
    if-eqz v9, :cond_3

    .line 1045
    if-nez p3, :cond_4

    iget v0, p1, Landroid/support/v4/app/ab;->abH:I

    .line 1050
    :goto_0
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v4, v3

    move v6, v3

    move v7, v3

    move v5, v3

    .line 1088
    :goto_1
    invoke-virtual {p2, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/n;

    .line 1089
    if-nez v5, :cond_15

    move-object v8, v0

    .line 1096
    :goto_2
    if-eqz p4, :cond_16

    .line 1112
    :cond_0
    :goto_3
    if-nez v6, :cond_19

    :goto_4
    move-object v0, v8

    .line 1120
    :goto_5
    if-eqz p4, :cond_1c

    .line 1124
    :cond_1
    :goto_6
    return-void

    .line 1039
    :cond_2
    return-void

    .line 1043
    :cond_3
    return-void

    .line 1045
    :cond_4
    sget-object v0, Landroid/support/v4/app/aL;->acV:[I

    iget v4, p1, Landroid/support/v4/app/ab;->abH:I

    aget v0, v0, v4

    goto :goto_0

    .line 1052
    :pswitch_1
    if-nez p4, :cond_5

    .line 1055
    iget-boolean v0, v1, Landroid/support/v4/app/g;->YI:Z

    :goto_7
    move v4, v2

    move v6, v3

    move v7, v3

    move v5, v0

    .line 1058
    goto :goto_1

    .line 1053
    :cond_5
    iget-boolean v0, v1, Landroid/support/v4/app/g;->Yo:Z

    if-nez v0, :cond_7

    :cond_6
    move v0, v3

    goto :goto_7

    :cond_7
    iget-boolean v0, v1, Landroid/support/v4/app/g;->YI:Z

    if-nez v0, :cond_6

    iget-boolean v0, v1, Landroid/support/v4/app/g;->XW:Z

    if-eqz v0, :cond_6

    move v0, v2

    goto :goto_7

    .line 1061
    :pswitch_2
    if-nez p4, :cond_9

    .line 1064
    iget-boolean v0, v1, Landroid/support/v4/app/g;->XW:Z

    if-eqz v0, :cond_a

    :cond_8
    move v0, v3

    :goto_8
    move v4, v2

    move v6, v3

    move v7, v3

    move v5, v0

    .line 1067
    goto :goto_1

    .line 1062
    :cond_9
    iget-boolean v0, v1, Landroid/support/v4/app/g;->Yy:Z

    goto :goto_8

    .line 1064
    :cond_a
    iget-boolean v0, v1, Landroid/support/v4/app/g;->YI:Z

    if-nez v0, :cond_8

    move v0, v2

    goto :goto_8

    .line 1069
    :pswitch_3
    if-nez p4, :cond_c

    .line 1072
    iget-boolean v0, v1, Landroid/support/v4/app/g;->XW:Z

    if-nez v0, :cond_f

    :cond_b
    move v0, v3

    :goto_9
    move v4, v3

    move v6, v0

    move v7, v2

    move v5, v3

    .line 1075
    goto :goto_1

    .line 1070
    :cond_c
    iget-boolean v0, v1, Landroid/support/v4/app/g;->Yo:Z

    if-nez v0, :cond_e

    :cond_d
    move v0, v3

    goto :goto_9

    :cond_e
    iget-boolean v0, v1, Landroid/support/v4/app/g;->XW:Z

    if-eqz v0, :cond_d

    iget-boolean v0, v1, Landroid/support/v4/app/g;->YI:Z

    if-eqz v0, :cond_d

    move v0, v2

    goto :goto_9

    .line 1072
    :cond_f
    iget-boolean v0, v1, Landroid/support/v4/app/g;->YI:Z

    if-nez v0, :cond_b

    move v0, v2

    goto :goto_9

    .line 1078
    :pswitch_4
    if-nez p4, :cond_11

    .line 1083
    iget-boolean v0, v1, Landroid/support/v4/app/g;->XW:Z

    if-nez v0, :cond_14

    :cond_10
    move v0, v3

    :goto_a
    move v4, v3

    move v6, v0

    move v7, v2

    move v5, v3

    .line 1085
    goto :goto_1

    .line 1079
    :cond_11
    iget-boolean v0, v1, Landroid/support/v4/app/g;->XW:Z

    if-eqz v0, :cond_13

    :cond_12
    move v0, v3

    .line 1080
    goto :goto_a

    .line 1079
    :cond_13
    iget-object v0, v1, Landroid/support/v4/app/g;->mView:Landroid/view/View;

    if-eqz v0, :cond_12

    iget-object v0, v1, Landroid/support/v4/app/g;->mView:Landroid/view/View;

    .line 1080
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_12

    iget v0, v1, Landroid/support/v4/app/g;->YG:F

    const/4 v4, 0x0

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_12

    move v0, v2

    goto :goto_a

    .line 1083
    :cond_14
    iget-boolean v0, v1, Landroid/support/v4/app/g;->YI:Z

    if-nez v0, :cond_10

    move v0, v2

    goto :goto_a

    .line 1091
    :cond_15
    invoke-static {v0, p2, v9}, Landroid/support/v4/app/aL;->aor(Landroid/support/v4/app/n;Landroid/util/SparseArray;I)Landroid/support/v4/app/n;

    move-result-object v8

    .line 1092
    iput-object v1, v8, Landroid/support/v4/app/n;->YR:Landroid/support/v4/app/g;

    .line 1093
    iput-boolean p3, v8, Landroid/support/v4/app/n;->YV:Z

    .line 1094
    iput-object p0, v8, Landroid/support/v4/app/n;->YW:Landroid/support/v4/app/V;

    goto/16 :goto_2

    .line 1096
    :cond_16
    if-eqz v4, :cond_0

    .line 1097
    if-nez v8, :cond_18

    .line 1105
    :cond_17
    :goto_b
    iget-object v0, p0, Landroid/support/v4/app/V;->aar:Landroid/support/v4/app/aR;

    .line 1106
    iget v4, v1, Landroid/support/v4/app/g;->mState:I

    if-ge v4, v2, :cond_0

    iget v4, v0, Landroid/support/v4/app/aR;->adP:I

    if-lt v4, v2, :cond_0

    iget-boolean v4, p0, Landroid/support/v4/app/V;->aao:Z

    if-nez v4, :cond_0

    .line 1108
    invoke-virtual {v0, v1}, Landroid/support/v4/app/aR;->aqu(Landroid/support/v4/app/g;)V

    move v4, v3

    move v5, v3

    .line 1109
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/aR;->apw(Landroid/support/v4/app/g;IIIZ)V

    goto/16 :goto_3

    .line 1097
    :cond_18
    iget-object v0, v8, Landroid/support/v4/app/n;->YS:Landroid/support/v4/app/g;

    if-ne v0, v1, :cond_17

    .line 1098
    iput-object v10, v8, Landroid/support/v4/app/n;->YS:Landroid/support/v4/app/g;

    goto :goto_b

    .line 1112
    :cond_19
    if-nez v8, :cond_1b

    .line 1114
    :cond_1a
    invoke-static {v8, p2, v9}, Landroid/support/v4/app/aL;->aor(Landroid/support/v4/app/n;Landroid/util/SparseArray;I)Landroid/support/v4/app/n;

    move-result-object v0

    .line 1115
    iput-object v1, v0, Landroid/support/v4/app/n;->YS:Landroid/support/v4/app/g;

    .line 1116
    iput-boolean p3, v0, Landroid/support/v4/app/n;->YT:Z

    .line 1117
    iput-object p0, v0, Landroid/support/v4/app/n;->YU:Landroid/support/v4/app/V;

    goto/16 :goto_5

    .line 1112
    :cond_1b
    iget-object v0, v8, Landroid/support/v4/app/n;->YS:Landroid/support/v4/app/g;

    if-eqz v0, :cond_1a

    goto/16 :goto_4

    .line 1120
    :cond_1c
    if-eqz v7, :cond_1

    if-eqz v0, :cond_1

    iget-object v2, v0, Landroid/support/v4/app/n;->YR:Landroid/support/v4/app/g;

    if-ne v2, v1, :cond_1

    .line 1122
    iput-object v10, v0, Landroid/support/v4/app/n;->YR:Landroid/support/v4/app/g;

    goto/16 :goto_6

    .line 1050
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method private static aot(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Landroid/support/v4/a/t;
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 144
    new-instance v8, Landroid/support/v4/a/t;

    invoke-direct {v8}, Landroid/support/v4/a/t;-><init>()V

    .line 145
    add-int/lit8 v0, p4, -0x1

    move v7, v0

    :goto_0
    if-ge v7, p3, :cond_0

    .line 174
    return-object v8

    .line 146
    :cond_0
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/V;

    .line 147
    invoke-virtual {v0, p0}, Landroid/support/v4/app/V;->anq(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 151
    iget-object v2, v0, Landroid/support/v4/app/V;->aau:Ljava/util/ArrayList;

    if-nez v2, :cond_2

    .line 145
    :cond_1
    add-int/lit8 v0, v7, -0x1

    move v7, v0

    goto :goto_0

    .line 152
    :cond_2
    iget-object v2, v0, Landroid/support/v4/app/V;->aau:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 155
    if-nez v1, :cond_3

    .line 159
    iget-object v1, v0, Landroid/support/v4/app/V;->aau:Ljava/util/ArrayList;

    .line 160
    iget-object v0, v0, Landroid/support/v4/app/V;->aav:Ljava/util/ArrayList;

    move-object v3, v1

    move-object v4, v0

    :goto_1
    move v5, v6

    .line 162
    :goto_2
    if-ge v5, v9, :cond_1

    .line 163
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 164
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 165
    invoke-virtual {v8, v1}, Landroid/support/v4/a/t;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 166
    if-nez v2, :cond_4

    .line 169
    invoke-virtual {v8, v0, v1}, Landroid/support/v4/a/t;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    :goto_3
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_2

    .line 156
    :cond_3
    iget-object v1, v0, Landroid/support/v4/app/V;->aau:Ljava/util/ArrayList;

    .line 157
    iget-object v0, v0, Landroid/support/v4/app/V;->aav:Ljava/util/ArrayList;

    move-object v3, v0

    move-object v4, v1

    goto :goto_1

    .line 167
    :cond_4
    invoke-virtual {v8, v0, v2}, Landroid/support/v4/a/t;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3
.end method

.method static synthetic aou(Ljava/lang/Object;Landroid/support/v4/app/g;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 38
    invoke-static {p0, p1, p2, p3}, Landroid/support/v4/app/aL;->aoF(Ljava/lang/Object;Landroid/support/v4/app/g;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private static aov(Landroid/view/ViewGroup;Landroid/support/v4/app/g;Landroid/view/View;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 8

    .prologue
    .line 371
    new-instance v0, Landroid/support/v4/app/af;

    move-object v1, p4

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p5

    move-object v6, p7

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/support/v4/app/af;-><init>(Ljava/lang/Object;Landroid/view/View;Landroid/support/v4/app/g;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;)V

    invoke-static {p0, v0}, Landroid/support/v4/app/ak;->anV(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/ak;

    .line 394
    return-void
.end method

.method static synthetic aow(Landroid/support/v4/a/t;Ljava/lang/Object;Landroid/support/v4/app/n;)Landroid/support/v4/a/t;
    .locals 1

    .prologue
    .line 38
    invoke-static {p0, p1, p2}, Landroid/support/v4/app/aL;->aoK(Landroid/support/v4/a/t;Ljava/lang/Object;Landroid/support/v4/app/n;)Landroid/support/v4/a/t;

    move-result-object v0

    return-object v0
.end method

.method private static aox(Ljava/lang/Object;Landroid/support/v4/app/g;Ljava/util/ArrayList;)V
    .locals 2

    .prologue
    .line 257
    if-nez p1, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    if-eqz p0, :cond_0

    iget-boolean v0, p1, Landroid/support/v4/app/g;->XW:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Landroid/support/v4/app/g;->YI:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Landroid/support/v4/app/g;->Yo:Z

    if-eqz v0, :cond_0

    .line 259
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v4/app/g;->akJ(Z)V

    .line 261
    invoke-virtual {p1}, Landroid/support/v4/app/g;->akv()Landroid/view/View;

    move-result-object v0

    .line 260
    invoke-static {p0, v0, p2}, Landroid/support/v4/app/R;->amQ(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 262
    iget-object v0, p1, Landroid/support/v4/app/g;->XT:Landroid/view/ViewGroup;

    .line 263
    new-instance v1, Landroid/support/v4/app/aV;

    invoke-direct {v1, p2}, Landroid/support/v4/app/aV;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Landroid/support/v4/app/ak;->anV(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/ak;

    goto :goto_0
.end method

.method private static aoy(Landroid/support/v4/a/t;Landroid/support/v4/app/n;Ljava/lang/Object;Z)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 830
    iget-object v0, p1, Landroid/support/v4/app/n;->YW:Landroid/support/v4/app/V;

    .line 831
    if-nez p2, :cond_1

    .line 839
    :cond_0
    return-object v3

    .line 831
    :cond_1
    if-eqz p0, :cond_0

    iget-object v1, v0, Landroid/support/v4/app/V;->aau:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/support/v4/app/V;->aau:Ljava/util/ArrayList;

    .line 833
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 834
    if-nez p3, :cond_2

    .line 835
    iget-object v0, v0, Landroid/support/v4/app/V;->aav:Ljava/util/ArrayList;

    .line 836
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 837
    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v4/a/t;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0

    .line 834
    :cond_2
    iget-object v0, v0, Landroid/support/v4/app/V;->aau:Ljava/util/ArrayList;

    .line 835
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method private static aoz(Landroid/support/v4/app/g;Landroid/support/v4/app/g;ZLandroid/support/v4/a/t;Z)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 897
    if-nez p2, :cond_0

    .line 899
    invoke-virtual {p0}, Landroid/support/v4/app/g;->ajM()Landroid/support/v4/app/c;

    move-result-object v0

    .line 900
    :goto_0
    if-nez v0, :cond_1

    .line 914
    :goto_1
    return-void

    .line 898
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/g;->ajM()Landroid/support/v4/app/c;

    move-result-object v0

    goto :goto_0

    .line 901
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 902
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 903
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/support/v4/a/t;->size()I

    move-result v1

    .line 904
    :goto_2
    if-lt v2, v1, :cond_3

    .line 908
    if-nez p4, :cond_4

    .line 911
    invoke-virtual {v0, v4, v3, v6}, Landroid/support/v4/app/c;->ajs(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_1

    :cond_2
    move v1, v2

    .line 903
    goto :goto_2

    .line 905
    :cond_3
    invoke-virtual {p3, v2}, Landroid/support/v4/a/t;->aib(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 906
    invoke-virtual {p3, v2}, Landroid/support/v4/a/t;->aia(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 904
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 909
    :cond_4
    invoke-virtual {v0, v4, v3, v6}, Landroid/support/v4/app/c;->ajr(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_1
.end method
