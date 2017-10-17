.class public abstract Lcom/google/android/gms/phenotype/g;
.super Ljava/lang/Object;


# static fields
.field private static lT:Lcom/google/android/gms/internal/i;

.field private static lW:Z

.field static ma:Landroid/content/Context;

.field private static final mb:Ljava/lang/Object;


# instance fields
.field private final lU:Ljava/lang/String;

.field private final lV:I

.field private final lX:Ljava/lang/String;

.field private final lY:Ljava/lang/String;

.field private lZ:Ljava/lang/Object;

.field private final mc:Lcom/google/android/gms/phenotype/i;

.field private final md:Ljava/lang/String;

.field private final me:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/phenotype/g;->mb:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/phenotype/g;->ma:Landroid/content/Context;

    sput-boolean v1, Lcom/google/android/gms/phenotype/g;->lW:Z

    const-string/jumbo v0, "gms:phenotype:phenotype_flag:debug_bypass_phenotype"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/i;->sh(Ljava/lang/String;Z)Lcom/google/android/gms/internal/i;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/phenotype/g;->lT:Lcom/google/android/gms/internal/i;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/phenotype/i;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/phenotype/g;->lZ:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/phenotype/g;->lU:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/phenotype/g;->lX:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/phenotype/g;->md:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/phenotype/g;->lV:I

    iput-object p5, p0, Lcom/google/android/gms/phenotype/g;->lY:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/phenotype/g;->mc:Lcom/google/android/gms/phenotype/i;

    iput-object p7, p0, Lcom/google/android/gms/phenotype/g;->me:Ljava/lang/Object;

    return-void
.end method

.method public static pe(Landroid/content/Context;)V
    .locals 2

    sget-object v1, Lcom/google/android/gms/phenotype/g;->mb:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/phenotype/g;->ma:Landroid/content/Context;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0}, Lcom/google/android/gms/internal/i;->sj(Landroid/content/Context;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/phenotype/g;->lW:Z

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/phenotype/g;->ma:Landroid/content/Context;

    sget-object v0, Lcom/google/android/gms/phenotype/g;->ma:Landroid/content/Context;

    if-nez v0, :cond_0

    sput-object p0, Lcom/google/android/gms/phenotype/g;->ma:Landroid/content/Context;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static pf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/phenotype/i;Z)Lcom/google/android/gms/phenotype/g;
    .locals 9

    new-instance v0, Lcom/google/android/gms/phenotype/p;

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/phenotype/p;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/phenotype/i;Ljava/lang/Boolean;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic pg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/phenotype/i;Z)Lcom/google/android/gms/phenotype/g;
    .locals 1

    invoke-static/range {p0 .. p6}, Lcom/google/android/gms/phenotype/g;->pf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/phenotype/i;Z)Lcom/google/android/gms/phenotype/g;

    move-result-object v0

    return-object v0
.end method
