.class public Lcom/google/android/gms/internal/O;
.super Ljava/lang/Object;


# static fields
.field private static qb:Lcom/google/android/gms/internal/F;

.field public static final qd:Lcom/google/android/gms/internal/O;


# instance fields
.field private final qc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/O;

    const-string/jumbo v1, "@@ContextManagerNullAccount@@"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/O;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/O;->qd:Lcom/google/android/gms/internal/O;

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/O;->qb:Lcom/google/android/gms/internal/F;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/l;->hr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/O;->qc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v1, 0x0

    if-eq p0, p1, :cond_0

    instance-of v0, p1, Lcom/google/android/gms/internal/O;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/O;

    iget-object v0, p0, Lcom/google/android/gms/internal/O;->qc:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/O;->te()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/O;->qc:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/u;->hI([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public te()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/O;->qc:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "#account#"

    return-object v0
.end method
