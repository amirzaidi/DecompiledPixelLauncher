.class public final Lcom/google/android/gms/internal/bX;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/k;


# static fields
.field public static final wr:Lcom/google/android/gms/internal/bX;


# instance fields
.field private final ws:Z

.field private final wt:Ljava/lang/Long;

.field private final wu:Z

.field private final wv:Z

.field private final ww:Ljava/lang/String;

.field private final wx:Ljava/lang/Long;

.field private final wy:Ljava/lang/String;

.field private final wz:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/bI;

    invoke-direct {v0}, Lcom/google/android/gms/internal/bI;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bI;->Bn()Lcom/google/android/gms/internal/bX;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/bX;->wr:Lcom/google/android/gms/internal/bX;

    return-void
.end method

.method private constructor <init>(ZZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/bX;->wz:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/bX;->wv:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/bX;->ww:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/bX;->wu:Z

    iput-boolean p6, p0, Lcom/google/android/gms/internal/bX;->ws:Z

    iput-object p5, p0, Lcom/google/android/gms/internal/bX;->wy:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/bX;->wt:Ljava/lang/Long;

    iput-object p8, p0, Lcom/google/android/gms/internal/bX;->wx:Ljava/lang/Long;

    return-void
.end method

.method synthetic constructor <init>(ZZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;Lcom/google/android/gms/internal/ca;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/google/android/gms/internal/bX;-><init>(ZZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;)V

    return-void
.end method


# virtual methods
.method public BH()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/bX;->ws:Z

    return v0
.end method

.method public BI()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bX;->wx:Ljava/lang/Long;

    return-object v0
.end method

.method public BJ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bX;->ww:Ljava/lang/String;

    return-object v0
.end method

.method public BK()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/bX;->wz:Z

    return v0
.end method

.method public BL()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bX;->wt:Ljava/lang/Long;

    return-object v0
.end method

.method public BM()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bX;->wy:Ljava/lang/String;

    return-object v0
.end method

.method public BN()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/bX;->wv:Z

    return v0
.end method

.method public BO()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/bX;->wu:Z

    return v0
.end method
