.class public Lcom/google/research/reflection/predictor/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private MF:F

.field private MG:Ljava/util/Map;

.field private MH:[D

.field private MI:Ljava/util/ArrayList;

.field private MJ:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v1, p0, Lcom/google/research/reflection/predictor/e;->MG:Ljava/util/Map;

    .line 13
    iput-object v1, p0, Lcom/google/research/reflection/predictor/e;->MH:[D

    .line 14
    iput-object v1, p0, Lcom/google/research/reflection/predictor/e;->MJ:[F

    .line 15
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/google/research/reflection/predictor/e;->MF:F

    .line 17
    iput-object v1, p0, Lcom/google/research/reflection/predictor/e;->MI:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public SI()[F
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/research/reflection/predictor/e;->MJ:[F

    return-object v0
.end method

.method public SJ()[D
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/research/reflection/predictor/e;->MH:[D

    return-object v0
.end method

.method public SK(Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/google/research/reflection/predictor/e;->MI:Ljava/util/ArrayList;

    .line 57
    return-void
.end method

.method public SL([D)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/google/research/reflection/predictor/e;->MH:[D

    .line 41
    return-void
.end method

.method public SM([F)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/google/research/reflection/predictor/e;->MJ:[F

    .line 35
    return-void
.end method

.method public SN()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/research/reflection/predictor/e;->MI:Ljava/util/ArrayList;

    return-object v0
.end method
