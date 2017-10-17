.class public final Landroid/support/v7/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final UH:Ljava/util/List;

.field private final UI:Ljava/util/List;

.field private final UJ:Ljava/util/List;

.field private UK:I

.field private UL:Landroid/graphics/Rect;

.field private UM:I

.field private UN:I

.field private final mBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 613
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 601
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/a/c;->UJ:Ljava/util/List;

    .line 603
    const/16 v0, 0x10

    iput v0, p0, Landroid/support/v7/a/c;->UM:I

    .line 604
    const/16 v0, 0x3100

    iput v0, p0, Landroid/support/v7/a/c;->UN:I

    .line 605
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/a/c;->UK:I

    .line 607
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/a/c;->UI:Ljava/util/List;

    .line 614
    if-nez p1, :cond_1

    .line 615
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Bitmap is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 614
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 617
    iget-object v0, p0, Landroid/support/v7/a/c;->UI:Ljava/util/List;

    sget-object v1, Landroid/support/v7/a/a;->UD:Landroid/support/v7/a/b;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 618
    iput-object p1, p0, Landroid/support/v7/a/c;->mBitmap:Landroid/graphics/Bitmap;

    .line 619
    iput-object v2, p0, Landroid/support/v7/a/c;->UH:Ljava/util/List;

    .line 622
    iget-object v0, p0, Landroid/support/v7/a/c;->UJ:Ljava/util/List;

    sget-object v1, Landroid/support/v7/a/e;->UX:Landroid/support/v7/a/e;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 623
    iget-object v0, p0, Landroid/support/v7/a/c;->UJ:Ljava/util/List;

    sget-object v1, Landroid/support/v7/a/e;->Vg:Landroid/support/v7/a/e;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 624
    iget-object v0, p0, Landroid/support/v7/a/c;->UJ:Ljava/util/List;

    sget-object v1, Landroid/support/v7/a/e;->Vb:Landroid/support/v7/a/e;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 625
    iget-object v0, p0, Landroid/support/v7/a/c;->UJ:Ljava/util/List;

    sget-object v1, Landroid/support/v7/a/e;->UY:Landroid/support/v7/a/e;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 626
    iget-object v0, p0, Landroid/support/v7/a/c;->UJ:Ljava/util/List;

    sget-object v1, Landroid/support/v7/a/e;->Ve:Landroid/support/v7/a/e;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 627
    iget-object v0, p0, Landroid/support/v7/a/c;->UJ:Ljava/util/List;

    sget-object v1, Landroid/support/v7/a/e;->UZ:Landroid/support/v7/a/e;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 628
    return-void
.end method

.method private adD(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 905
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 907
    iget v2, p0, Landroid/support/v7/a/c;->UN:I

    if-gtz v2, :cond_1

    .line 912
    iget v2, p0, Landroid/support/v7/a/c;->UK:I

    if-gtz v2, :cond_2

    .line 919
    :cond_0
    :goto_0
    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gtz v2, :cond_3

    .line 921
    return-object p1

    .line 908
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    .line 909
    iget v3, p0, Landroid/support/v7/a/c;->UN:I

    if-le v2, v3, :cond_0

    .line 910
    iget v0, p0, Landroid/support/v7/a/c;->UN:I

    int-to-double v0, v0

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    goto :goto_0

    .line 913
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 914
    iget v3, p0, Landroid/support/v7/a/c;->UK:I

    if-le v2, v3, :cond_0

    .line 915
    iget v0, p0, Landroid/support/v7/a/c;->UK:I

    int-to-double v0, v0

    int-to-double v2, v2

    div-double/2addr v0, v2

    goto :goto_0

    .line 925
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 926
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-double v4, v3

    mul-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 924
    invoke-static {p1, v2, v0, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private adF(Landroid/graphics/Bitmap;)[I
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 877
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 878
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 879
    mul-int v0, v3, v7

    new-array v1, v0, [I

    move-object v0, p1

    move v4, v2

    move v5, v2

    move v6, v3

    .line 880
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 882
    iget-object v0, p0, Landroid/support/v7/a/c;->UL:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 888
    iget-object v0, p0, Landroid/support/v7/a/c;->UL:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 889
    iget-object v4, p0, Landroid/support/v7/a/c;->UL:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 892
    mul-int v5, v0, v4

    new-array v5, v5, [I

    .line 893
    :goto_0
    if-lt v2, v4, :cond_1

    .line 897
    return-object v5

    .line 884
    :cond_0
    return-object v1

    .line 894
    :cond_1
    iget-object v6, p0, Landroid/support/v7/a/c;->UL:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v2

    mul-int/2addr v6, v3

    iget-object v7, p0, Landroid/support/v7/a/c;->UL:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v7

    mul-int v7, v2, v0

    invoke-static {v1, v6, v5, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 893
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public adE(IIII)Landroid/support/v7/a/c;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 732
    iget-object v0, p0, Landroid/support/v7/a/c;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 742
    :cond_0
    return-object p0

    .line 733
    :cond_1
    iget-object v0, p0, Landroid/support/v7/a/c;->UL:Landroid/graphics/Rect;

    if-eqz v0, :cond_2

    .line 735
    :goto_0
    iget-object v0, p0, Landroid/support/v7/a/c;->UL:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/support/v7/a/c;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/a/c;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 737
    iget-object v0, p0, Landroid/support/v7/a/c;->UL:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 738
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The given region must intersect with the Bitmap\'s dimensions."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 733
    :cond_2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/a/c;->UL:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method public adG()Landroid/support/v7/a/c;
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Landroid/support/v7/a/c;->UI:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 704
    return-object p0
.end method

.method public adH()Landroid/support/v7/a/a;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 790
    iget-object v0, p0, Landroid/support/v7/a/c;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 831
    iget-object v0, p0, Landroid/support/v7/a/c;->UH:Ljava/util/List;

    .line 835
    :cond_0
    :goto_0
    new-instance v2, Landroid/support/v7/a/a;

    iget-object v3, p0, Landroid/support/v7/a/c;->UJ:Ljava/util/List;

    invoke-direct {v2, v0, v3}, Landroid/support/v7/a/a;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 837
    invoke-virtual {v2}, Landroid/support/v7/a/a;->adz()V

    .line 839
    if-nez v1, :cond_7

    .line 844
    :goto_1
    return-object v2

    .line 794
    :cond_1
    iget-object v0, p0, Landroid/support/v7/a/c;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Landroid/support/v7/a/c;->adD(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 796
    if-nez v1, :cond_3

    .line 800
    :goto_2
    iget-object v0, p0, Landroid/support/v7/a/c;->UL:Landroid/graphics/Rect;

    .line 801
    iget-object v3, p0, Landroid/support/v7/a/c;->mBitmap:Landroid/graphics/Bitmap;

    if-ne v2, v3, :cond_4

    .line 814
    :cond_2
    :goto_3
    new-instance v3, Landroid/support/v7/a/i;

    .line 815
    invoke-direct {p0, v2}, Landroid/support/v7/a/c;->adF(Landroid/graphics/Bitmap;)[I

    move-result-object v4

    iget v5, p0, Landroid/support/v7/a/c;->UM:I

    iget-object v0, p0, Landroid/support/v7/a/c;->UI:Ljava/util/List;

    .line 817
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/a/c;->UI:Ljava/util/List;

    iget-object v6, p0, Landroid/support/v7/a/c;->UI:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Landroid/support/v7/a/b;

    invoke-interface {v0, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/v7/a/b;

    :goto_4
    invoke-direct {v3, v4, v5, v0}, Landroid/support/v7/a/i;-><init>([II[Landroid/support/v7/a/b;)V

    .line 820
    iget-object v0, p0, Landroid/support/v7/a/c;->mBitmap:Landroid/graphics/Bitmap;

    if-ne v2, v0, :cond_6

    .line 824
    :goto_5
    invoke-virtual {v3}, Landroid/support/v7/a/i;->aeG()Ljava/util/List;

    move-result-object v0

    .line 826
    if-eqz v1, :cond_0

    .line 827
    const-string/jumbo v2, "Color quantization completed"

    invoke-virtual {v1, v2}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    goto :goto_0

    .line 797
    :cond_3
    const-string/jumbo v0, "Processed Bitmap"

    invoke-virtual {v1, v0}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    goto :goto_2

    .line 801
    :cond_4
    if-eqz v0, :cond_2

    .line 804
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-double v4, v3

    iget-object v3, p0, Landroid/support/v7/a/c;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-double v6, v3

    div-double/2addr v4, v6

    .line 805
    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-double v6, v3

    mul-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v3, v6

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 806
    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-double v6, v3

    mul-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v3, v6

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 807
    iget v3, v0, Landroid/graphics/Rect;->right:I

    int-to-double v6, v3

    mul-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v3, v6

    .line 808
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 807
    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 809
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    int-to-double v6, v3

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    .line 810
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 809
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_3

    :cond_5
    move-object v0, v1

    .line 817
    goto :goto_4

    .line 821
    :cond_6
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_5

    .line 840
    :cond_7
    const-string/jumbo v0, "Created Palette"

    invoke-virtual {v1, v0}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 841
    invoke-virtual {v1}, Landroid/util/TimingLogger;->dumpToLog()V

    goto/16 :goto_1
.end method
