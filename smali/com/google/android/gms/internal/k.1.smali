.class public Lcom/google/android/gms/internal/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/phenotype/a;


# static fields
.field private static ou:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/google/android/gms/internal/k;->ou:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public oA(Lcom/google/android/gms/common/api/d;Ljava/lang/String;)Lcom/google/android/gms/common/api/c;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/o;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/o;-><init>(Lcom/google/android/gms/internal/k;Lcom/google/android/gms/common/api/d;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/d;->dy(Lcom/google/android/gms/internal/b;)Lcom/google/android/gms/internal/b;

    move-result-object v0

    return-object v0
.end method

.method public oB(Lcom/google/android/gms/common/api/d;Ljava/lang/String;I[Ljava/lang/String;[B)Lcom/google/android/gms/common/api/c;
    .locals 7

    new-instance v0, Lcom/google/android/gms/internal/n;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/n;-><init>(Lcom/google/android/gms/internal/k;Lcom/google/android/gms/common/api/d;Ljava/lang/String;I[Ljava/lang/String;[B)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/d;->dy(Lcom/google/android/gms/internal/b;)Lcom/google/android/gms/internal/b;

    move-result-object v0

    return-object v0
.end method

.method public oC(Lcom/google/android/gms/common/api/d;Ljava/lang/String;I[Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/c;
    .locals 9

    new-instance v0, Lcom/google/android/gms/internal/s;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/s;-><init>(Lcom/google/android/gms/internal/k;Lcom/google/android/gms/common/api/d;Ljava/lang/String;I[Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/d;->dy(Lcom/google/android/gms/internal/b;)Lcom/google/android/gms/internal/b;

    move-result-object v0

    return-object v0
.end method

.method public oD(Lcom/google/android/gms/common/api/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/c;
    .locals 6

    new-instance v0, Lcom/google/android/gms/internal/y;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/y;-><init>(Lcom/google/android/gms/internal/k;Lcom/google/android/gms/common/api/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/d;->dy(Lcom/google/android/gms/internal/b;)Lcom/google/android/gms/internal/b;

    move-result-object v0

    return-object v0
.end method

.method public oE(Lcom/google/android/gms/common/api/d;Ljava/lang/String;I[Ljava/lang/String;[I[B)Lcom/google/android/gms/common/api/c;
    .locals 8

    new-instance v0, Lcom/google/android/gms/internal/l;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/l;-><init>(Lcom/google/android/gms/internal/k;Lcom/google/android/gms/common/api/d;Ljava/lang/String;I[Ljava/lang/String;[I[B)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/d;->dy(Lcom/google/android/gms/internal/b;)Lcom/google/android/gms/internal/b;

    move-result-object v0

    return-object v0
.end method
