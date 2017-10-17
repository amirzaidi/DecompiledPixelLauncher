.class public abstract Lcom/google/android/gms/phenotype/d;
.super Ljava/lang/Object;


# static fields
.field private static ye:Lcom/google/android/gms/internal/i;

.field private static yh:Z

.field static yl:Landroid/content/Context;

.field private static final ym:Ljava/lang/Object;


# instance fields
.field private final yf:Ljava/lang/String;

.field private final yg:I

.field private final yi:Ljava/lang/String;

.field private final yj:Ljava/lang/String;

.field private yk:Ljava/lang/Object;

.field private final yn:Lcom/google/android/gms/phenotype/f;

.field private final yo:Ljava/lang/String;

.field private final yp:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/phenotype/d;->ym:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/phenotype/d;->yl:Landroid/content/Context;

    sput-boolean v1, Lcom/google/android/gms/phenotype/d;->yh:Z

    const-string/jumbo v0, "gms:phenotype:phenotype_flag:debug_bypass_phenotype"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/i;->sj(Ljava/lang/String;Z)Lcom/google/android/gms/internal/i;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/phenotype/d;->ye:Lcom/google/android/gms/internal/i;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/phenotype/f;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/phenotype/d;->yk:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/phenotype/d;->yf:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/phenotype/d;->yi:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/phenotype/d;->yo:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/phenotype/d;->yg:I

    iput-object p5, p0, Lcom/google/android/gms/phenotype/d;->yj:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/phenotype/d;->yn:Lcom/google/android/gms/phenotype/f;

    iput-object p7, p0, Lcom/google/android/gms/phenotype/d;->yp:Ljava/lang/Object;

    return-void
.end method

.method public static CN(Landroid/content/Context;)V
    .locals 2

    sget-object v1, Lcom/google/android/gms/phenotype/d;->ym:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/phenotype/d;->yl:Landroid/content/Context;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0}, Lcom/google/android/gms/internal/i;->sl(Landroid/content/Context;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/phenotype/d;->yh:Z

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/phenotype/d;->yl:Landroid/content/Context;

    sget-object v0, Lcom/google/android/gms/phenotype/d;->yl:Landroid/content/Context;

    if-nez v0, :cond_0

    sput-object p0, Lcom/google/android/gms/phenotype/d;->yl:Landroid/content/Context;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static CO(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/phenotype/f;Z)Lcom/google/android/gms/phenotype/d;
    .locals 9

    new-instance v0, Lcom/google/android/gms/phenotype/o;

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/phenotype/o;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/phenotype/f;Ljava/lang/Boolean;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic CP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/phenotype/f;Z)Lcom/google/android/gms/phenotype/d;
    .locals 1

    invoke-static/range {p0 .. p6}, Lcom/google/android/gms/phenotype/d;->CO(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/phenotype/f;Z)Lcom/google/android/gms/phenotype/d;

    move-result-object v0

    return-object v0
.end method
