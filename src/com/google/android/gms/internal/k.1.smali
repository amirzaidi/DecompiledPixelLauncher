.class public Lcom/google/android/gms/internal/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/phenotype/c;


# static fields
.field private static oW:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/google/android/gms/internal/k;->oW:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sq(Lcom/google/android/gms/common/api/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/f;
    .locals 6

    new-instance v0, Lcom/google/android/gms/internal/s;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/s;-><init>(Lcom/google/android/gms/internal/k;Lcom/google/android/gms/common/api/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/a;->gj(Lcom/google/android/gms/internal/b;)Lcom/google/android/gms/internal/b;

    move-result-object v0

    return-object v0
.end method

.method public sr(Lcom/google/android/gms/common/api/a;Ljava/lang/String;)Lcom/google/android/gms/common/api/f;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/m;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/m;-><init>(Lcom/google/android/gms/internal/k;Lcom/google/android/gms/common/api/a;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/a;->gj(Lcom/google/android/gms/internal/b;)Lcom/google/android/gms/internal/b;

    move-result-object v0

    return-object v0
.end method
