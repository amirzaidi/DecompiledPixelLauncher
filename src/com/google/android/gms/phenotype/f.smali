.class public final Lcom/google/android/gms/phenotype/f;
.super Ljava/lang/Object;


# static fields
.field public static final lP:Lcom/google/android/gms/common/api/r;

.field public static final lQ:Lcom/google/android/gms/phenotype/a;

.field public static final lR:Lcom/google/android/gms/common/api/l;

.field public static final lS:Lcom/google/android/gms/common/api/h;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/r;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/r;-><init>()V

    sput-object v0, Lcom/google/android/gms/phenotype/f;->lP:Lcom/google/android/gms/common/api/r;

    new-instance v0, Lcom/google/android/gms/phenotype/l;

    invoke-direct {v0}, Lcom/google/android/gms/phenotype/l;-><init>()V

    sput-object v0, Lcom/google/android/gms/phenotype/f;->lR:Lcom/google/android/gms/common/api/l;

    new-instance v0, Lcom/google/android/gms/common/api/h;

    sget-object v1, Lcom/google/android/gms/phenotype/f;->lR:Lcom/google/android/gms/common/api/l;

    sget-object v2, Lcom/google/android/gms/phenotype/f;->lP:Lcom/google/android/gms/common/api/r;

    const-string/jumbo v3, "Phenotype.API"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/common/api/h;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/l;Lcom/google/android/gms/common/api/r;)V

    sput-object v0, Lcom/google/android/gms/phenotype/f;->lS:Lcom/google/android/gms/common/api/h;

    new-instance v0, Lcom/google/android/gms/internal/k;

    invoke-direct {v0}, Lcom/google/android/gms/internal/k;-><init>()V

    sput-object v0, Lcom/google/android/gms/phenotype/f;->lQ:Lcom/google/android/gms/phenotype/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
