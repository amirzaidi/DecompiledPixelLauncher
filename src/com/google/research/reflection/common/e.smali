.class public Lcom/google/research/reflection/common/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static UA(Lcom/google/research/reflection/a/b;Lcom/google/research/reflection/a/b;)J
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 58
    invoke-interface {p1}, Lcom/google/research/reflection/a/b;->ax()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p0}, Lcom/google/research/reflection/a/b;->ax()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-interface {p0}, Lcom/google/research/reflection/a/b;->aB()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v4, v2, v4

    .line 61
    invoke-interface {p0}, Lcom/google/research/reflection/a/b;->aA()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-gtz v2, :cond_0

    move v2, v0

    :goto_0
    if-nez v2, :cond_4

    invoke-interface {p1}, Lcom/google/research/reflection/a/b;->aA()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-gtz v2, :cond_1

    move v2, v0

    :goto_1
    if-nez v2, :cond_4

    .line 62
    invoke-interface {p0}, Lcom/google/research/reflection/a/b;->aA()Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/research/reflection/a/b;->aA()Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    invoke-interface {p1}, Lcom/google/research/reflection/a/b;->aC()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0}, Lcom/google/research/reflection/a/b;->aC()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-interface {p0}, Lcom/google/research/reflection/a/b;->aB()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0

    :cond_0
    move v2, v1

    .line 61
    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    .line 64
    :cond_2
    invoke-interface {p0}, Lcom/google/research/reflection/a/b;->aA()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0}, Lcom/google/research/reflection/a/b;->aC()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 65
    invoke-interface {p1}, Lcom/google/research/reflection/a/b;->aA()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1}, Lcom/google/research/reflection/a/b;->aC()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v2, v6

    .line 66
    sub-long v0, v2, v0

    invoke-interface {p0}, Lcom/google/research/reflection/a/b;->aB()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 68
    cmp-long v2, v4, v0

    if-nez v2, :cond_3

    .line 69
    return-wide v0

    .line 73
    :cond_3
    new-instance v2, Lcom/google/research/reflection/common/UncertaintyException;

    invoke-direct {v2, v0, v1}, Lcom/google/research/reflection/common/UncertaintyException;-><init>(J)V

    throw v2

    .line 80
    :cond_4
    cmp-long v2, v4, v6

    if-ltz v2, :cond_5

    :goto_2
    if-nez v0, :cond_6

    .line 81
    new-instance v0, Lcom/google/research/reflection/common/UncertaintyException;

    const-wide v2, 0x7fffffffffffffffL

    invoke-direct {v0, v2, v3}, Lcom/google/research/reflection/common/UncertaintyException;-><init>(J)V

    throw v0

    :cond_5
    move v0, v1

    .line 80
    goto :goto_2

    .line 83
    :cond_6
    return-wide v4
.end method

.method public static UB(Lcom/google/research/reflection/a/b;)I
    .locals 2

    .prologue
    .line 93
    invoke-static {p0}, Lcom/google/research/reflection/common/e;->Uz(Lcom/google/research/reflection/a/b;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public static Ux(Lcom/google/research/reflection/a/b;)I
    .locals 2

    .prologue
    .line 97
    invoke-static {p0}, Lcom/google/research/reflection/common/e;->Uz(Lcom/google/research/reflection/a/b;)Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public static Uy(Lcom/google/research/reflection/a/b;)I
    .locals 2

    .prologue
    .line 106
    invoke-static {p0}, Lcom/google/research/reflection/common/e;->Uz(Lcom/google/research/reflection/a/b;)Ljava/util/Calendar;

    move-result-object v0

    .line 107
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method private static Uz(Lcom/google/research/reflection/a/b;)Ljava/util/Calendar;
    .locals 6

    .prologue
    .line 14
    invoke-interface {p0}, Lcom/google/research/reflection/a/b;->aG()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 19
    :cond_0
    const-string/jumbo v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 20
    invoke-interface {p0}, Lcom/google/research/reflection/a/b;->ax()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p0}, Lcom/google/research/reflection/a/b;->aF()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 21
    return-object v0

    .line 14
    :cond_1
    invoke-interface {p0}, Lcom/google/research/reflection/a/b;->aG()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 15
    invoke-interface {p0}, Lcom/google/research/reflection/a/b;->aG()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 16
    invoke-interface {p0}, Lcom/google/research/reflection/a/b;->ax()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 17
    return-object v0
.end method
