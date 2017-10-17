.class public final Lcom/google/android/gms/clearcut/a;
.super Ljava/lang/Object;


# static fields
.field public static final HH:Lcom/google/android/gms/common/api/e;

.field public static final HK:Lcom/google/android/gms/common/api/j;

.field public static final HM:Lcom/google/android/gms/common/api/q;

.field public static final HN:Lcom/google/android/gms/clearcut/g;


# instance fields
.field private HF:Ljava/lang/String;

.field private HG:Ljava/lang/String;

.field private final HI:Z

.field private final HJ:Lcom/google/android/gms/clearcut/d;

.field private final HL:Lcom/google/android/gms/clearcut/f;

.field private HO:I

.field private final HP:Lcom/google/android/gms/common/a/a;

.field private HQ:I

.field private final HR:I

.field private HS:Ljava/lang/String;

.field private final HT:Lcom/google/android/gms/clearcut/g;

.field private HU:Lcom/google/android/gms/clearcut/c;

.field private final mContext:Landroid/content/Context;

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/q;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/q;-><init>()V

    sput-object v0, Lcom/google/android/gms/clearcut/a;->HM:Lcom/google/android/gms/common/api/q;

    new-instance v0, Lcom/google/android/gms/clearcut/h;

    invoke-direct {v0}, Lcom/google/android/gms/clearcut/h;-><init>()V

    sput-object v0, Lcom/google/android/gms/clearcut/a;->HK:Lcom/google/android/gms/common/api/j;

    new-instance v0, Lcom/google/android/gms/common/api/e;

    sget-object v1, Lcom/google/android/gms/clearcut/a;->HK:Lcom/google/android/gms/common/api/j;

    sget-object v2, Lcom/google/android/gms/clearcut/a;->HM:Lcom/google/android/gms/common/api/q;

    const-string/jumbo v3, "ClearcutLogger.API"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/common/api/e;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/j;Lcom/google/android/gms/common/api/q;)V

    sput-object v0, Lcom/google/android/gms/clearcut/a;->HH:Lcom/google/android/gms/common/api/e;

    new-instance v0, Lcom/google/android/gms/internal/at;

    invoke-direct {v0}, Lcom/google/android/gms/internal/at;-><init>()V

    sput-object v0, Lcom/google/android/gms/clearcut/a;->HN:Lcom/google/android/gms/clearcut/g;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/clearcut/g;Lcom/google/android/gms/common/a/a;Lcom/google/android/gms/clearcut/c;Lcom/google/android/gms/clearcut/f;Lcom/google/android/gms/clearcut/d;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/clearcut/a;->HQ:I

    iput v1, p0, Lcom/google/android/gms/clearcut/a;->HO:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p1

    :cond_0
    iput-object v0, p0, Lcom/google/android/gms/clearcut/a;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/a;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/android/gms/clearcut/a;->Mq(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/clearcut/a;->HR:I

    iput p2, p0, Lcom/google/android/gms/clearcut/a;->HQ:I

    iput-object p3, p0, Lcom/google/android/gms/clearcut/a;->HG:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/clearcut/a;->HF:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/clearcut/a;->HS:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/google/android/gms/clearcut/a;->HI:Z

    iput-object p7, p0, Lcom/google/android/gms/clearcut/a;->HT:Lcom/google/android/gms/clearcut/g;

    iput-object p8, p0, Lcom/google/android/gms/clearcut/a;->HP:Lcom/google/android/gms/common/a/a;

    if-nez p9, :cond_1

    new-instance p9, Lcom/google/android/gms/clearcut/c;

    invoke-direct {p9}, Lcom/google/android/gms/clearcut/c;-><init>()V

    :cond_1
    iput-object p9, p0, Lcom/google/android/gms/clearcut/a;->HU:Lcom/google/android/gms/clearcut/c;

    iput-object p10, p0, Lcom/google/android/gms/clearcut/a;->HL:Lcom/google/android/gms/clearcut/f;

    iput v1, p0, Lcom/google/android/gms/clearcut/a;->HO:I

    iput-object p11, p0, Lcom/google/android/gms/clearcut/a;->HJ:Lcom/google/android/gms/clearcut/d;

    iget-boolean v0, p0, Lcom/google/android/gms/clearcut/a;->HI:Z

    if-nez v0, :cond_2

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/clearcut/a;->HF:Ljava/lang/String;

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    const-string/jumbo v1, "can\'t be anonymous with an upload account"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/l;->ke(ZLjava/lang/Object;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    const/4 v5, 0x0

    sget-object v7, Lcom/google/android/gms/clearcut/a;->HN:Lcom/google/android/gms/clearcut/g;

    invoke-static {}, Lcom/google/android/gms/common/a/m;->mF()Lcom/google/android/gms/common/a/a;

    move-result-object v8

    sget-object v10, Lcom/google/android/gms/clearcut/f;->Il:Lcom/google/android/gms/clearcut/f;

    new-instance v11, Lcom/google/android/gms/internal/aq;

    invoke-direct {v11, p1}, Lcom/google/android/gms/internal/aq;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x0

    const/4 v2, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v9, v5

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/clearcut/a;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/clearcut/g;Lcom/google/android/gms/common/a/a;Lcom/google/android/gms/clearcut/c;Lcom/google/android/gms/clearcut/f;Lcom/google/android/gms/clearcut/d;)V

    return-void
.end method

.method private static Mc(Ljava/util/ArrayList;)[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    :cond_0
    return-object v0
.end method

.method static synthetic Md(Lcom/google/android/gms/clearcut/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/clearcut/a;->HG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic Me(Ljava/util/ArrayList;)[Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/clearcut/a;->Mc(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic Mf(Lcom/google/android/gms/clearcut/a;)Lcom/google/android/gms/common/a/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/clearcut/a;->HP:Lcom/google/android/gms/common/a/a;

    return-object v0
.end method

.method static synthetic Mg(Ljava/util/ArrayList;)[I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/clearcut/a;->Mn(Ljava/util/ArrayList;)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic Mh(Lcom/google/android/gms/clearcut/a;)Lcom/google/android/gms/clearcut/g;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/clearcut/a;->HT:Lcom/google/android/gms/clearcut/g;

    return-object v0
.end method

.method static synthetic Mi(Lcom/google/android/gms/clearcut/a;)Lcom/google/android/gms/clearcut/c;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/clearcut/a;->HU:Lcom/google/android/gms/clearcut/c;

    return-object v0
.end method

.method private static Mj(Ljava/util/ArrayList;)[[B
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [[B

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    return-object v0

    :cond_0
    return-object v0
.end method

.method static synthetic Mk(Ljava/util/ArrayList;)[[B
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/clearcut/a;->Mj(Ljava/util/ArrayList;)[[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic Mm(Lcom/google/android/gms/clearcut/a;)Lcom/google/android/gms/clearcut/d;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/clearcut/a;->HJ:Lcom/google/android/gms/clearcut/d;

    return-object v0
.end method

.method private static Mn(Ljava/util/ArrayList;)[I
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v2, v1, [I

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    move v1, v0

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v2

    :cond_0
    return-object v1

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v0, v1, 0x1

    aput v4, v2, v1

    goto :goto_0
.end method

.method static synthetic Mo(Lcom/google/android/gms/clearcut/a;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/clearcut/a;->HR:I

    return v0
.end method

.method static synthetic Mp(Lcom/google/android/gms/clearcut/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/clearcut/a;->HS:Ljava/lang/String;

    return-object v0
.end method

.method private Mq(Landroid/content/Context;)I
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string/jumbo v1, "ClearcutLogger"

    const-string/jumbo v2, "This can\'t happen."

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic Mr(Lcom/google/android/gms/clearcut/a;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/clearcut/a;->HQ:I

    return v0
.end method

.method static synthetic Ms(Lcom/google/android/gms/clearcut/a;)Lcom/google/android/gms/clearcut/f;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/clearcut/a;->HL:Lcom/google/android/gms/clearcut/f;

    return-object v0
.end method

.method static synthetic Mt(Lcom/google/android/gms/clearcut/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/clearcut/a;->HI:Z

    return v0
.end method

.method static synthetic Mu(Lcom/google/android/gms/clearcut/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/clearcut/a;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic Mv(Lcom/google/android/gms/clearcut/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/clearcut/a;->HF:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic Mw(Lcom/google/android/gms/clearcut/a;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/clearcut/a;->HO:I

    return v0
.end method

.method static synthetic Mx(Lcom/google/android/gms/clearcut/a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/clearcut/a;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public Ml([B)Lcom/google/android/gms/clearcut/b;
    .locals 2

    new-instance v0, Lcom/google/android/gms/clearcut/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/clearcut/b;-><init>(Lcom/google/android/gms/clearcut/a;[BLcom/google/android/gms/clearcut/h;)V

    return-object v0
.end method
