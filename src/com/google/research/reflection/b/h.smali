.class Lcom/google/research/reflection/b/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>(Lcom/google/research/reflection/b/k;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public UQ(Lcom/google/research/reflection/a/a;Lcom/google/research/reflection/a/a;)I
    .locals 4

    .prologue
    .line 74
    invoke-interface {p2}, Lcom/google/research/reflection/a/a;->au()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p1}, Lcom/google/research/reflection/a/a;->au()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 71
    check-cast p1, Lcom/google/research/reflection/a/a;

    check-cast p2, Lcom/google/research/reflection/a/a;

    invoke-virtual {p0, p1, p2}, Lcom/google/research/reflection/b/h;->UQ(Lcom/google/research/reflection/a/a;Lcom/google/research/reflection/a/a;)I

    move-result v0

    return v0
.end method
