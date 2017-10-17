.class public abstract Lcom/google/research/reflection/predictor/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private MA:Lcom/google/research/reflection/predictor/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Sp(Ljava/lang/String;)Lcom/google/research/reflection/predictor/b;
    .locals 1

    .prologue
    .line 32
    const-string/jumbo v0, "neural_predictor"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    :cond_0
    new-instance v0, Lcom/google/research/reflection/predictor/g;

    invoke-direct {v0}, Lcom/google/research/reflection/predictor/g;-><init>()V

    return-object v0

    .line 32
    :cond_1
    const-string/jumbo v0, "com.google.research.reflection.predictor.g"

    .line 33
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public static St(Lcom/google/research/reflection/predictor/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    instance-of v0, p0, Lcom/google/research/reflection/predictor/g;

    if-nez v0, :cond_0

    .line 27
    const/4 v0, 0x0

    return-object v0

    .line 25
    :cond_0
    const-string/jumbo v0, "neural_predictor"

    return-object v0
.end method


# virtual methods
.method public So(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public abstract Sq(Lcom/google/research/reflection/a/b;)Lcom/google/research/reflection/predictor/e;
.end method

.method public Sr(Lcom/google/research/reflection/predictor/a;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/google/research/reflection/predictor/b;->MA:Lcom/google/research/reflection/predictor/a;

    .line 41
    return-void
.end method

.method public abstract Ss(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V
.end method

.method public abstract Su(Ljava/io/DataOutputStream;)V
.end method

.method public abstract Sv([FLcom/google/research/reflection/a/b;)Lcom/google/research/reflection/predictor/e;
.end method

.method public abstract Sw(Ljava/io/DataInputStream;)V
.end method

.method public final Sx()Lcom/google/research/reflection/predictor/a;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/research/reflection/predictor/b;->MA:Lcom/google/research/reflection/predictor/a;

    return-object v0
.end method
