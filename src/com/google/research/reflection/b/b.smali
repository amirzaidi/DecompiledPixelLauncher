.class public abstract Lcom/google/research/reflection/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field MX:Lcom/google/research/reflection/b/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Tp(Ljava/lang/String;)Lcom/google/research/reflection/b/b;
    .locals 1

    .prologue
    .line 89
    const-string/jumbo v0, "app_launch_extractor"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    :cond_0
    new-instance v0, Lcom/google/research/reflection/b/d;

    invoke-direct {v0}, Lcom/google/research/reflection/b/d;-><init>()V

    return-object v0

    .line 89
    :cond_1
    const-string/jumbo v0, "com.google.research.reflection.a.d"

    .line 90
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    const-string/jumbo v0, "app_usage_extractor"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 94
    :cond_2
    new-instance v0, Lcom/google/research/reflection/b/k;

    invoke-direct {v0}, Lcom/google/research/reflection/b/k;-><init>()V

    return-object v0

    .line 92
    :cond_3
    const-string/jumbo v0, "com.google.research.reflection.a.k"

    .line 93
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 95
    const-string/jumbo v0, "day_extractor"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 97
    :cond_4
    new-instance v0, Lcom/google/research/reflection/b/e;

    invoke-direct {v0}, Lcom/google/research/reflection/b/e;-><init>()V

    return-object v0

    .line 95
    :cond_5
    const-string/jumbo v0, "com.google.research.reflection.a.e"

    .line 96
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 98
    const-string/jumbo v0, "feature_aggregator"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 100
    :cond_6
    new-instance v0, Lcom/google/research/reflection/b/c;

    invoke-direct {v0}, Lcom/google/research/reflection/b/c;-><init>()V

    return-object v0

    .line 98
    :cond_7
    const-string/jumbo v0, "com.google.research.reflection.a.c"

    .line 99
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 101
    const-string/jumbo v0, "hour_extractor"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 103
    :cond_8
    new-instance v0, Lcom/google/research/reflection/b/f;

    invoke-direct {v0}, Lcom/google/research/reflection/b/f;-><init>()V

    return-object v0

    .line 101
    :cond_9
    const-string/jumbo v0, "com.google.research.reflection.a.f"

    .line 102
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 104
    const-string/jumbo v0, "headset_extractor"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 106
    :cond_a
    new-instance v0, Lcom/google/research/reflection/b/g;

    invoke-direct {v0}, Lcom/google/research/reflection/b/g;-><init>()V

    return-object v0

    .line 104
    :cond_b
    const-string/jumbo v0, "com.google.research.reflection.a.g"

    .line 105
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 107
    const-string/jumbo v0, "lat_lng_extractor"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 109
    :cond_c
    new-instance v0, Lcom/google/research/reflection/b/i;

    invoke-direct {v0}, Lcom/google/research/reflection/b/i;-><init>()V

    return-object v0

    .line 107
    :cond_d
    const-string/jumbo v0, "com.google.research.reflection.a.i"

    .line 108
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 110
    const-string/jumbo v0, "place_extractor"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 112
    :cond_e
    new-instance v0, Lcom/google/research/reflection/b/j;

    invoke-direct {v0}, Lcom/google/research/reflection/b/j;-><init>()V

    return-object v0

    .line 110
    :cond_f
    const-string/jumbo v0, "com.google.research.reflection.a.j"

    .line 111
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 114
    const/4 v0, 0x0

    return-object v0
.end method

.method public static Tr(Lcom/google/research/reflection/b/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    instance-of v0, p0, Lcom/google/research/reflection/b/d;

    if-nez v0, :cond_1

    .line 69
    :cond_0
    instance-of v0, p0, Lcom/google/research/reflection/b/k;

    if-nez v0, :cond_2

    .line 71
    instance-of v0, p0, Lcom/google/research/reflection/b/e;

    if-nez v0, :cond_3

    .line 73
    instance-of v0, p0, Lcom/google/research/reflection/b/c;

    if-nez v0, :cond_4

    .line 75
    instance-of v0, p0, Lcom/google/research/reflection/b/g;

    if-nez v0, :cond_5

    .line 77
    instance-of v0, p0, Lcom/google/research/reflection/b/f;

    if-nez v0, :cond_6

    .line 79
    instance-of v0, p0, Lcom/google/research/reflection/b/i;

    if-nez v0, :cond_7

    .line 81
    instance-of v0, p0, Lcom/google/research/reflection/b/j;

    if-nez v0, :cond_8

    .line 84
    const/4 v0, 0x0

    return-object v0

    .line 67
    :cond_1
    instance-of v0, p0, Lcom/google/research/reflection/b/k;

    if-nez v0, :cond_0

    .line 68
    const-string/jumbo v0, "app_launch_extractor"

    return-object v0

    .line 70
    :cond_2
    const-string/jumbo v0, "app_usage_extractor"

    return-object v0

    .line 72
    :cond_3
    const-string/jumbo v0, "day_extractor"

    return-object v0

    .line 74
    :cond_4
    const-string/jumbo v0, "feature_aggregator"

    return-object v0

    .line 76
    :cond_5
    const-string/jumbo v0, "headset_extractor"

    return-object v0

    .line 78
    :cond_6
    const-string/jumbo v0, "hour_extractor"

    return-object v0

    .line 80
    :cond_7
    const-string/jumbo v0, "lat_lng_extractor"

    return-object v0

    .line 82
    :cond_8
    const-string/jumbo v0, "place_extractor"

    return-object v0
.end method


# virtual methods
.method public Tq(Lcom/google/research/reflection/b/a;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/google/research/reflection/b/b;->MX:Lcom/google/research/reflection/b/a;

    .line 119
    return-void
.end method

.method public abstract Ts()I
.end method

.method public abstract Tt(Lcom/google/research/reflection/common/a;Lcom/google/research/reflection/a/b;)Lcom/google/research/reflection/layers/b;
.end method

.method public Tu(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public Tv(Ljava/io/DataInputStream;)V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public Tw(Ljava/io/DataOutputStream;)V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method Tx(Ljava/lang/Integer;)V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/research/reflection/b/b;->MX:Lcom/google/research/reflection/b/a;

    if-nez v0, :cond_0

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/google/research/reflection/b/b;->MX:Lcom/google/research/reflection/b/a;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/google/research/reflection/b/a;->SR(Lcom/google/research/reflection/b/b;I)V

    goto :goto_0
.end method

.method public abstract clone()Lcom/google/research/reflection/b/b;
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/google/research/reflection/b/b;->clone()Lcom/google/research/reflection/b/b;

    move-result-object v0

    return-object v0
.end method
