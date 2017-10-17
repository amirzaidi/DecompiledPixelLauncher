.class public Lcom/google/research/reflection/predictor/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private LL:F

.field private LM:Ljava/util/Map;

.field private LN:[D

.field private LO:Ljava/util/ArrayList;

.field private LP:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v1, p0, Lcom/google/research/reflection/predictor/e;->LM:Ljava/util/Map;

    .line 13
    iput-object v1, p0, Lcom/google/research/reflection/predictor/e;->LN:[D

    .line 14
    iput-object v1, p0, Lcom/google/research/reflection/predictor/e;->LP:[F

    .line 15
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/google/research/reflection/predictor/e;->LL:F

    .line 17
    iput-object v1, p0, Lcom/google/research/reflection/predictor/e;->LO:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public TV()[F
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/research/reflection/predictor/e;->LP:[F

    return-object v0
.end method

.method public TW()[D
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/research/reflection/predictor/e;->LN:[D

    return-object v0
.end method

.method public TX(Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/google/research/reflection/predictor/e;->LO:Ljava/util/ArrayList;

    .line 57
    return-void
.end method

.method public TY([D)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/google/research/reflection/predictor/e;->LN:[D

    .line 41
    return-void
.end method

.method public TZ([F)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/google/research/reflection/predictor/e;->LP:[F

    .line 35
    return-void
.end method

.method public Ua()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/research/reflection/predictor/e;->LO:Ljava/util/ArrayList;

    return-object v0
.end method
