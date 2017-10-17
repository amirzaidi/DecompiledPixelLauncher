.class public final Lcom/google/android/gms/common/stats/ConnectionEvent;
.super Lcom/google/android/gms/common/stats/StatsEvent;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final iX:Ljava/lang/String;

.field private final iY:J

.field private final iZ:J

.field private ja:J

.field private final jb:Ljava/lang/String;

.field private final jc:Ljava/lang/String;

.field private final jd:J

.field private je:I

.field private final jf:Ljava/lang/String;

.field private final jg:Ljava/lang/String;

.field final jh:I

.field private final ji:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/stats/d;

    invoke-direct {v0}, Lcom/google/android/gms/common/stats/d;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/stats/ConnectionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 5

    invoke-direct {p0}, Lcom/google/android/gms/common/stats/StatsEvent;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->jh:I

    iput-wide p2, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->jd:J

    iput p4, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->je:I

    iput-object p5, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->ji:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->jf:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->jg:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->jb:Ljava/lang/String;

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->ja:J

    iput-object p9, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->iX:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->jc:Ljava/lang/String;

    move-wide/from16 v0, p11

    iput-wide v0, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->iY:J

    move-wide/from16 v0, p13

    iput-wide v0, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->iZ:J

    return-void
.end method

.method public constructor <init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 16

    const/4 v2, 0x1

    move-object/from16 v1, p0

    move-wide/from16 v3, p1

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-wide/from16 v12, p10

    move-wide/from16 v14, p12

    invoke-direct/range {v1 .. v15}, Lcom/google/android/gms/common/stats/ConnectionEvent;-><init>(IJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    return-void
.end method


# virtual methods
.method public lE()Ljava/lang/String;
    .locals 14

    const-string/jumbo v0, "\t"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/ConnectionEvent;->mi()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/ConnectionEvent;->mm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, "\t"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/ConnectionEvent;->mo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/ConnectionEvent;->mj()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v0, "\t"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->iX:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->iX:Ljava/lang/String;

    :goto_0
    const-string/jumbo v8, "\t"

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/ConnectionEvent;->ml()J

    move-result-wide v10

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, 0x16

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto/16 :goto_0
.end method

.method public lI()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->jd:J

    return-wide v0
.end method

.method public lJ()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->je:I

    return v0
.end method

.method public lN()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->ja:J

    return-wide v0
.end method

.method public mi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->ji:Ljava/lang/String;

    return-object v0
.end method

.method public mj()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->jb:Ljava/lang/String;

    return-object v0
.end method

.method public mk()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->iX:Ljava/lang/String;

    return-object v0
.end method

.method public ml()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->iZ:J

    return-wide v0
.end method

.method public mm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->jf:Ljava/lang/String;

    return-object v0
.end method

.method public mn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->jc:Ljava/lang/String;

    return-object v0
.end method

.method public mo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->jg:Ljava/lang/String;

    return-object v0
.end method

.method public mp()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->iY:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/stats/d;->ms(Lcom/google/android/gms/common/stats/ConnectionEvent;Landroid/os/Parcel;I)V

    return-void
.end method
