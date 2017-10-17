.class public final Lcom/google/android/gms/common/stats/WakeLockEvent;
.super Lcom/google/android/gms/common/stats/StatsEvent;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final iA:J

.field private iB:J

.field final iC:I

.field private final iD:I

.field private final iE:F

.field private iF:I

.field private final iG:J

.field private iH:I

.field private final iI:Ljava/lang/String;

.field private final iJ:J

.field private final iK:Ljava/lang/String;

.field private final iL:Ljava/lang/String;

.field private final iM:Ljava/lang/String;

.field private final iN:Ljava/util/List;

.field private final iz:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/stats/c;

    invoke-direct {v0}, Lcom/google/android/gms/common/stats/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IJILjava/lang/String;ILjava/util/List;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;FJLjava/lang/String;)V
    .locals 5

    invoke-direct {p0}, Lcom/google/android/gms/common/stats/StatsEvent;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->iC:I

    iput-wide p2, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->iG:J

    iput p4, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->iH:I

    iput-object p5, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->iM:Ljava/lang/String;

    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->iL:Ljava/lang/String;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->iI:Ljava/lang/String;

    iput p6, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->iD:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->iB:J

    iput-object p7, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->iN:Ljava/util/List;

    iput-object p8, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->iz:Ljava/lang/String;

    iput-wide p9, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->iA:J

    move/from16 v0, p11

    iput v0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->iF:I

    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->iK:Ljava/lang/String;

    move/from16 v0, p14

    iput v0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->iE:F

    move-wide/from16 v0, p15

    iput-wide v0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->iJ:J

    return-void
.end method


# virtual methods
.method public lB()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->iF:I

    return v0
.end method

.method public lC()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->iD:I

    return v0
.end method

.method public lD()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->iM:Ljava/lang/String;

    return-object v0
.end method

.method public lE()Ljava/lang/String;
    .locals 20

    const-string/jumbo v1, "\t"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/common/stats/WakeLockEvent;->lD()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v1, "\t"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/common/stats/WakeLockEvent;->lC()I

    move-result v8

    const-string/jumbo v1, "\t"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/common/stats/WakeLockEvent;->lH()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/common/stats/WakeLockEvent;->lH()Ljava/util/List;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string/jumbo v2, "\t"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/common/stats/WakeLockEvent;->lB()I

    move-result v11

    const-string/jumbo v2, "\t"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/common/stats/WakeLockEvent;->lO()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/common/stats/WakeLockEvent;->lO()Ljava/lang/String;

    move-result-object v2

    :goto_1
    const-string/jumbo v3, "\t"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/common/stats/WakeLockEvent;->lM()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/common/stats/WakeLockEvent;->lM()Ljava/lang/String;

    move-result-object v3

    :goto_2
    const-string/jumbo v4, "\t"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/common/stats/WakeLockEvent;->lG()F

    move-result v15

    const-string/jumbo v4, "\t"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/common/stats/WakeLockEvent;->lK()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/common/stats/WakeLockEvent;->lK()Ljava/lang/String;

    move-result-object v4

    :goto_3
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v18, v18, 0x25

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    add-int v18, v18, v19

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    add-int v18, v18, v19

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    add-int v18, v18, v19

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    add-int v18, v18, v19

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    add-int v18, v18, v19

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    add-int v18, v18, v19

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    add-int v18, v18, v19

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    add-int v18, v18, v19

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    add-int v18, v18, v19

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    add-int v18, v18, v19

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    add-int v18, v18, v19

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    add-int v18, v18, v19

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string/jumbo v1, ""

    goto/16 :goto_0

    :cond_1
    const-string/jumbo v2, ""

    goto/16 :goto_1

    :cond_2
    const-string/jumbo v3, ""

    goto/16 :goto_2

    :cond_3
    const-string/jumbo v4, ""

    goto/16 :goto_3
.end method

.method public lF()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->iJ:J

    return-wide v0
.end method

.method public lG()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->iE:F

    return v0
.end method

.method public lH()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->iN:Ljava/util/List;

    return-object v0
.end method

.method public lI()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->iG:J

    return-wide v0
.end method

.method public lJ()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->iH:I

    return v0
.end method

.method public lK()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->iI:Ljava/lang/String;

    return-object v0
.end method

.method public lL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->iz:Ljava/lang/String;

    return-object v0
.end method

.method public lM()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->iK:Ljava/lang/String;

    return-object v0
.end method

.method public lN()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->iB:J

    return-wide v0
.end method

.method public lO()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->iL:Ljava/lang/String;

    return-object v0
.end method

.method public lP()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->iA:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/stats/c;->mf(Lcom/google/android/gms/common/stats/WakeLockEvent;Landroid/os/Parcel;I)V

    return-void
.end method
