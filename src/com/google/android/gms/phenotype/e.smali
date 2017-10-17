.class public Lcom/google/android/gms/phenotype/e;
.super Ljava/lang/Object;


# instance fields
.field private final yq:Ljava/lang/String;

.field private final yr:Ljava/lang/String;

.field private final ys:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, ""

    const-string/jumbo v1, ""

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/phenotype/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/phenotype/e;->yq:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/phenotype/e;->yr:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/phenotype/e;->ys:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public CQ(Ljava/lang/String;)Lcom/google/android/gms/phenotype/e;
    .locals 3

    new-instance v0, Lcom/google/android/gms/phenotype/e;

    iget-object v1, p0, Lcom/google/android/gms/phenotype/e;->yq:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/phenotype/e;->yr:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/phenotype/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public CR(Ljava/lang/String;Z)Lcom/google/android/gms/phenotype/d;
    .locals 7

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/phenotype/e;->yr:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/phenotype/e;->ys:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    iget-object v4, p0, Lcom/google/android/gms/phenotype/e;->yq:Ljava/lang/String;

    move-object v5, v1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/phenotype/d;->CP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/phenotype/f;Z)Lcom/google/android/gms/phenotype/d;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method
