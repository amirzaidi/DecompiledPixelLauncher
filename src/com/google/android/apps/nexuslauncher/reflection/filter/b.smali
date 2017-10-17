.class public Lcom/google/android/apps/nexuslauncher/reflection/filter/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static bZ:J

.field private static ca:I

.field private static cb:I


# instance fields
.field private final cc:Ljava/util/HashSet;

.field private final cd:Lcom/google/android/apps/nexuslauncher/reflection/d/b;

.field private final ce:Ljava/util/LinkedList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    const/4 v0, 0x1

    sput v0, Lcom/google/android/apps/nexuslauncher/reflection/filter/b;->cb:I

    .line 20
    const-wide/32 v0, 0x1499700

    sput-wide v0, Lcom/google/android/apps/nexuslauncher/reflection/filter/b;->bZ:J

    .line 21
    const/16 v0, 0xa

    sput v0, Lcom/google/android/apps/nexuslauncher/reflection/filter/b;->ca:I

    .line 16
    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/reflection/d/b;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/b;->ce:Ljava/util/LinkedList;

    .line 25
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/b;->cc:Ljava/util/HashSet;

    .line 28
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/b;->cd:Lcom/google/android/apps/nexuslauncher/reflection/d/b;

    .line 29
    return-void
.end method

.method private bp()V
    .locals 6

    .prologue
    .line 86
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 87
    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/b;->ce:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/b;->ce:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/reflection/filter/c;

    iget-wide v0, v0, Lcom/google/android/apps/nexuslauncher/reflection/filter/c;->ch:J

    sget-wide v4, Lcom/google/android/apps/nexuslauncher/reflection/filter/b;->bZ:J

    add-long/2addr v0, v4

    cmp-long v0, v2, v0

    if-gtz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/b;->ce:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/reflection/filter/c;

    iget v0, v0, Lcom/google/android/apps/nexuslauncher/reflection/filter/c;->cf:I

    sget v1, Lcom/google/android/apps/nexuslauncher/reflection/filter/b;->ca:I

    if-le v0, v1, :cond_1

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/b;->ce:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    .line 94
    :cond_1
    return-void
.end method

.method static synthetic bq(Lcom/google/android/apps/nexuslauncher/reflection/filter/b;)Lcom/google/android/apps/nexuslauncher/reflection/d/b;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/b;->cd:Lcom/google/android/apps/nexuslauncher/reflection/d/b;

    return-object v0
.end method


# virtual methods
.method public bl(Ljava/util/List;Ljava/util/List;)V
    .locals 8

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 48
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/reflection/filter/b;->bp()V

    .line 51
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 52
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/reflection/predictor/f;

    iget v0, v0, Lcom/google/research/reflection/predictor/f;->LQ:F

    add-float/2addr v0, v1

    move v1, v0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/b;->cc:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 58
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/reflection/predictor/f;

    .line 59
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/b;->cc:Ljava/util/HashSet;

    iget-object v0, v0, Lcom/google/research/reflection/predictor/f;->LR:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 61
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 62
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/b;->ce:Ljava/util/LinkedList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/reflection/filter/c;

    .line 63
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/b;->cc:Ljava/util/HashSet;

    iget-object v6, v0, Lcom/google/android/apps/nexuslauncher/reflection/filter/c;->cg:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 64
    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/reflection/filter/c;->cg:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 67
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget v2, Lcom/google/android/apps/nexuslauncher/reflection/filter/b;->cb:I

    sub-int/2addr v0, v2

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v2, v0

    move v3, v4

    .line 68
    :goto_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 67
    if-ge v2, v0, :cond_5

    .line 69
    new-instance v6, Lcom/google/research/reflection/predictor/f;

    .line 70
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 71
    int-to-float v7, v3

    add-float/2addr v7, v1

    .line 69
    invoke-direct {v6, v0, v7}, Lcom/google/research/reflection/predictor/f;-><init>(Ljava/lang/String;F)V

    .line 72
    invoke-interface {p1, v4, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 73
    if-eqz p2, :cond_4

    .line 74
    invoke-interface {p2, v4, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 76
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 68
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 78
    :cond_5
    return-void
.end method

.method public bn(Landroid/content/ComponentName;JJ)V
    .locals 8

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/b;->ce:Ljava/util/LinkedList;

    new-instance v1, Lcom/google/android/apps/nexuslauncher/reflection/filter/c;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/apps/nexuslauncher/reflection/filter/c;-><init>(Lcom/google/android/apps/nexuslauncher/reflection/filter/b;Landroid/content/ComponentName;JJ)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 36
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/reflection/filter/b;->bp()V

    .line 37
    return-void
.end method

.method public bo()V
    .locals 3

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/b;->ce:Ljava/util/LinkedList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/reflection/filter/c;

    .line 41
    iget v2, v0, Lcom/google/android/apps/nexuslauncher/reflection/filter/c;->cf:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/google/android/apps/nexuslauncher/reflection/filter/c;->cf:I

    goto :goto_0

    .line 43
    :cond_0
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/reflection/filter/b;->bp()V

    .line 44
    return-void
.end method

.method setMaxNumPromotion(I)V
    .locals 0

    .prologue
    .line 110
    sput p1, Lcom/google/android/apps/nexuslauncher/reflection/filter/b;->cb:I

    .line 111
    return-void
.end method
