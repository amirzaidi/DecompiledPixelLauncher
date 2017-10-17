.class public Lcom/google/android/gms/internal/av;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/clearcut/d;


# static fields
.field private static final rW:Ljava/nio/charset/Charset;

.field static rX:Ljava/lang/Boolean;


# instance fields
.field final rV:Lcom/google/android/gms/internal/ar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/av;->rW:Ljava/nio/charset/Charset;

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/av;->rX:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ar;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/av;-><init>(Lcom/google/android/gms/internal/ar;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ar;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ar;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/av;-><init>(Lcom/google/android/gms/internal/ar;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/ar;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/l;->ht(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ar;

    iput-object v0, p0, Lcom/google/android/gms/internal/av;->rV:Lcom/google/android/gms/internal/ar;

    return-void
.end method

.method static uj(JJJ)Z
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    cmp-long v2, p2, v4

    if-gez v2, :cond_1

    move v2, v0

    :goto_0
    if-nez v2, :cond_0

    cmp-long v2, p4, v4

    if-ltz v2, :cond_2

    move v2, v0

    :goto_1
    if-nez v2, :cond_3

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x48

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "negative values not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    cmp-long v2, p4, v4

    if-gtz v2, :cond_4

    move v2, v0

    :goto_2
    if-nez v2, :cond_6

    invoke-static {p0, p1, p4, p5}, Lcom/google/android/gms/internal/ao;->ue(JJ)J

    move-result-wide v2

    cmp-long v2, v2, p2

    if-ltz v2, :cond_5

    move v2, v0

    :goto_3
    if-nez v2, :cond_6

    :goto_4
    return v0

    :cond_4
    move v2, v1

    goto :goto_2

    :cond_5
    move v2, v1

    goto :goto_3

    :cond_6
    move v0, v1

    goto :goto_4
.end method

.method static uk(Ljava/lang/String;J)J
    .locals 3

    if-nez p0, :cond_1

    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/av;->ul(J)J

    move-result-wide v0

    return-wide v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/av;->rW:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ah;->tW([B)J

    move-result-wide v0

    return-wide v0
.end method

.method static ul(J)J
    .locals 2

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ah;->tW([B)J

    move-result-wide v0

    return-wide v0
.end method

.method static um(Ljava/lang/String;)Lcom/google/android/gms/internal/ai;
    .locals 12

    const-wide/16 v10, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v6, 0x0

    if-eqz p0, :cond_2

    const-string/jumbo v1, ""

    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_3

    move v0, v6

    :goto_0
    const/16 v2, 0x2f

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-lez v4, :cond_4

    :try_start_0
    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    add-int/lit8 v0, v4, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    cmp-long v0, v2, v10

    if-gez v0, :cond_7

    move v0, v7

    :goto_1
    if-nez v0, :cond_1

    cmp-long v0, v4, v10

    if-ltz v0, :cond_0

    move v6, v7

    :cond_0
    if-nez v6, :cond_8

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x48

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "negative values not supported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "LogSamplerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    :cond_2
    return-object v8

    :cond_3
    invoke-virtual {p0, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string/jumbo v2, "Failed to parse the rule: "

    const-string/jumbo v3, "LogSamplerImpl"

    if-nez v1, :cond_5

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    :cond_5
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string/jumbo v3, "parseLong() failed while parsing: "

    const-string/jumbo v4, "LogSamplerImpl"

    if-nez v2, :cond_6

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_3
    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v8

    :cond_6
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_7
    move v0, v6

    goto :goto_1

    :cond_8
    new-instance v0, Lcom/google/android/gms/internal/ai;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ai;-><init>(Ljava/lang/String;JJ)V

    return-object v0
.end method


# virtual methods
.method public un(Ljava/lang/String;I)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :goto_0
    if-gez p2, :cond_2

    move-object p1, v0

    :cond_0
    :goto_1
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/av;->rV:Lcom/google/android/gms/internal/ar;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ar;->uf()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/av;->rV:Lcom/google/android/gms/internal/ar;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ar;->ug(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/av;->um(Ljava/lang/String;)Lcom/google/android/gms/internal/ai;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v2, v4, Lcom/google/android/gms/internal/ai;->rM:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/av;->uk(Ljava/lang/String;J)J

    move-result-wide v0

    iget-wide v2, v4, Lcom/google/android/gms/internal/ai;->rL:J

    iget-wide v4, v4, Lcom/google/android/gms/internal/ai;->rK:J

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/av;->uj(JJJ)Z

    move-result v0

    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_2
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    return v3

    :cond_4
    return v3
.end method
