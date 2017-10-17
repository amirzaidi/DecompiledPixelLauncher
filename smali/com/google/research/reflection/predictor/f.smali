.class public Lcom/google/research/reflection/predictor/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public LQ:F

.field public LR:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;F)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/google/research/reflection/predictor/f;->LR:Ljava/lang/String;

    .line 76
    iput p2, p0, Lcom/google/research/reflection/predictor/f;->LQ:F

    .line 77
    return-void
.end method


# virtual methods
.method public Ub(Lcom/google/research/reflection/predictor/f;)I
    .locals 2

    .prologue
    .line 81
    iget v0, p0, Lcom/google/research/reflection/predictor/f;->LQ:F

    iget v1, p1, Lcom/google/research/reflection/predictor/f;->LQ:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 70
    check-cast p1, Lcom/google/research/reflection/predictor/f;

    invoke-virtual {p0, p1}, Lcom/google/research/reflection/predictor/f;->Ub(Lcom/google/research/reflection/predictor/f;)I

    move-result v0

    return v0
.end method
