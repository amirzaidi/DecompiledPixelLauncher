.class public final Lcom/google/android/gms/phenotype/g;
.super Ljava/lang/Object;


# static fields
.field public static final yK:Lcom/google/android/gms/common/api/q;

.field public static final yL:Lcom/google/android/gms/phenotype/c;

.field public static final yM:Lcom/google/android/gms/common/api/j;

.field public static final yN:Lcom/google/android/gms/common/api/e;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/q;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/q;-><init>()V

    sput-object v0, Lcom/google/android/gms/phenotype/g;->yK:Lcom/google/android/gms/common/api/q;

    new-instance v0, Lcom/google/android/gms/phenotype/k;

    invoke-direct {v0}, Lcom/google/android/gms/phenotype/k;-><init>()V

    sput-object v0, Lcom/google/android/gms/phenotype/g;->yM:Lcom/google/android/gms/common/api/j;

    new-instance v0, Lcom/google/android/gms/common/api/e;

    sget-object v1, Lcom/google/android/gms/phenotype/g;->yM:Lcom/google/android/gms/common/api/j;

    sget-object v2, Lcom/google/android/gms/phenotype/g;->yK:Lcom/google/android/gms/common/api/q;

    const-string/jumbo v3, "Phenotype.API"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/common/api/e;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/j;Lcom/google/android/gms/common/api/q;)V

    sput-object v0, Lcom/google/android/gms/phenotype/g;->yN:Lcom/google/android/gms/common/api/e;

    new-instance v0, Lcom/google/android/gms/internal/k;

    invoke-direct {v0}, Lcom/google/android/gms/internal/k;-><init>()V

    sput-object v0, Lcom/google/android/gms/phenotype/g;->yL:Lcom/google/android/gms/phenotype/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
