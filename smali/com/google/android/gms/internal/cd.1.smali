.class public final Lcom/google/android/gms/internal/cd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/m;


# static fields
.field public static final wl:Lcom/google/android/gms/internal/cd;


# instance fields
.field private final wm:Z

.field private final wn:Ljava/lang/Long;

.field private final wo:Z

.field private final wp:Z

.field private final wq:Ljava/lang/String;

.field private final wr:Ljava/lang/Long;

.field private final ws:Ljava/lang/String;

.field private final wt:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/bO;

    invoke-direct {v0}, Lcom/google/android/gms/internal/bO;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bO;->Bo()Lcom/google/android/gms/internal/cd;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/cd;->wl:Lcom/google/android/gms/internal/cd;

    return-void
.end method

.method private constructor <init>(ZZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/cd;->wt:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/cd;->wp:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/cd;->wq:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/cd;->wo:Z

    iput-boolean p6, p0, Lcom/google/android/gms/internal/cd;->wm:Z

    iput-object p5, p0, Lcom/google/android/gms/internal/cd;->ws:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/cd;->wn:Ljava/lang/Long;

    iput-object p8, p0, Lcom/google/android/gms/internal/cd;->wr:Ljava/lang/Long;

    return-void
.end method

.method synthetic constructor <init>(ZZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;Lcom/google/android/gms/internal/cg;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/google/android/gms/internal/cd;-><init>(ZZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;)V

    return-void
.end method


# virtual methods
.method public BI()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/cd;->wm:Z

    return v0
.end method

.method public BJ()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cd;->wr:Ljava/lang/Long;

    return-object v0
.end method

.method public BK()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cd;->wq:Ljava/lang/String;

    return-object v0
.end method

.method public BL()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/cd;->wt:Z

    return v0
.end method

.method public BM()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cd;->wn:Ljava/lang/Long;

    return-object v0
.end method

.method public BN()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cd;->ws:Ljava/lang/String;

    return-object v0
.end method

.method public BO()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/cd;->wp:Z

    return v0
.end method

.method public BP()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/cd;->wo:Z

    return v0
.end method
