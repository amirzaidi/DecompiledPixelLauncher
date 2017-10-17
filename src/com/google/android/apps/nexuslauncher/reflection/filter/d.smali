.class public Lcom/google/android/apps/nexuslauncher/reflection/filter/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static x:J

.field private static y:I

.field private static z:I


# instance fields
.field private final A:Ljava/util/HashSet;

.field private final B:Lcom/google/android/apps/nexuslauncher/reflection/a/b;

.field private final C:Ljava/util/LinkedList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    const/4 v0, 0x1

    sput v0, Lcom/google/android/apps/nexuslauncher/reflection/filter/d;->z:I

    .line 19
    const-wide/32 v0, 0x1499700

    sput-wide v0, Lcom/google/android/apps/nexuslauncher/reflection/filter/d;->x:J

    .line 20
    const/16 v0, 0xa

    sput v0, Lcom/google/android/apps/nexuslauncher/reflection/filter/d;->y:I

    .line 15
    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/reflection/a/b;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/d;->C:Ljava/util/LinkedList;

    .line 24
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/d;->A:Ljava/util/HashSet;

    .line 27
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/d;->B:Lcom/google/android/apps/nexuslauncher/reflection/a/b;

    .line 28
    return-void
.end method

.method static synthetic A(Lcom/google/android/apps/nexuslauncher/reflection/filter/d;)Lcom/google/android/apps/nexuslauncher/reflection/a/b;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/d;->B:Lcom/google/android/apps/nexuslauncher/reflection/a/b;

    return-object v0
.end method

.method private z()V
    .locals 6

    .prologue
    .line 90
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 91
    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/d;->C:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/d;->C:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/reflection/filter/e;

    iget-wide v0, v0, Lcom/google/android/apps/nexuslauncher/reflection/filter/e;->F:J

    sget-wide v4, Lcom/google/android/apps/nexuslauncher/reflection/filter/d;->x:J

    add-long/2addr v0, v4

    cmp-long v0, v2, v0

    if-gtz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/d;->C:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/reflection/filter/e;

    iget v0, v0, Lcom/google/android/apps/nexuslauncher/reflection/filter/e;->D:I

    sget v1, Lcom/google/android/apps/nexuslauncher/reflection/filter/d;->y:I

    if-le v0, v1, :cond_1

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/d;->C:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    .line 98
    :cond_1
    return-void
.end method


# virtual methods
.method public n(Ljava/util/List;Ljava/util/List;)V
    .locals 8

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 47
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/reflection/filter/d;->z()V

    .line 50
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 51
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/reflection/predictor/f;

    iget v0, v0, Lcom/google/research/reflection/predictor/f;->MK:F

    add-float/2addr v0, v1

    move v1, v0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/d;->A:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 60
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 61
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/d;->C:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    sget v2, Lcom/google/android/apps/nexuslauncher/reflection/filter/d;->z:I

    sub-int/2addr v0, v2

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v2, v0

    move v3, v4

    .line 62
    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/d;->C:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 61
    if-ge v2, v0, :cond_2

    .line 63
    iget-object v6, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/d;->A:Ljava/util/HashSet;

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/d;->C:Ljava/util/LinkedList;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/reflection/filter/e;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/reflection/filter/e;->E:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance v6, Lcom/google/research/reflection/predictor/f;

    .line 65
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/d;->C:Ljava/util/LinkedList;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/reflection/filter/e;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/reflection/filter/e;->E:Ljava/lang/String;

    .line 66
    int-to-float v7, v3

    add-float/2addr v7, v1

    .line 64
    invoke-direct {v6, v0, v7}, Lcom/google/research/reflection/predictor/f;-><init>(Ljava/lang/String;F)V

    .line 67
    invoke-interface {v5, v4, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 68
    if-eqz p2, :cond_1

    .line 69
    invoke-interface {p2, v4, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 71
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 62
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 75
    :cond_2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/reflection/predictor/f;

    .line 76
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/d;->A:Ljava/util/HashSet;

    iget-object v3, v0, Lcom/google/research/reflection/predictor/f;->ML:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 77
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 80
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 81
    invoke-interface {p1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 82
    return-void
.end method

.method setMaxNumPromotion(I)V
    .locals 0

    .prologue
    .line 114
    sput p1, Lcom/google/android/apps/nexuslauncher/reflection/filter/d;->z:I

    .line 115
    return-void
.end method

.method public x()V
    .locals 3

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/d;->C:Ljava/util/LinkedList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/reflection/filter/e;

    .line 40
    iget v2, v0, Lcom/google/android/apps/nexuslauncher/reflection/filter/e;->D:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/google/android/apps/nexuslauncher/reflection/filter/e;->D:I

    goto :goto_0

    .line 42
    :cond_0
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/reflection/filter/d;->z()V

    .line 43
    return-void
.end method

.method public y(Landroid/content/ComponentName;JJ)V
    .locals 8

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/d;->C:Ljava/util/LinkedList;

    new-instance v1, Lcom/google/android/apps/nexuslauncher/reflection/filter/e;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/apps/nexuslauncher/reflection/filter/e;-><init>(Lcom/google/android/apps/nexuslauncher/reflection/filter/d;Landroid/content/ComponentName;JJ)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 35
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/reflection/filter/d;->z()V

    .line 36
    return-void
.end method
