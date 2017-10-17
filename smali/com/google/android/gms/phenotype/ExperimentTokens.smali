.class public Lcom/google/android/gms/phenotype/ExperimentTokens;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field private static final lj:Ljava/nio/charset/Charset;

.field private static final lk:Lcom/google/android/gms/phenotype/m;

.field private static final lo:Lcom/google/android/gms/phenotype/m;

.field public static final lp:Lcom/google/android/gms/phenotype/ExperimentTokens;

.field private static final ls:Lcom/google/android/gms/phenotype/m;

.field private static final lt:Lcom/google/android/gms/phenotype/m;

.field public static final lu:[[B


# instance fields
.field public final li:[[B

.field public final ll:[[B

.field final lm:I

.field public final ln:[I

.field public final lq:[B

.field public final lr:[[B

.field public final lv:[[B

.field public final lw:Ljava/lang/String;

.field public final lx:[[B


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/phenotype/q;

    invoke-direct {v0}, Lcom/google/android/gms/phenotype/q;-><init>()V

    sput-object v0, Lcom/google/android/gms/phenotype/ExperimentTokens;->CREATOR:Landroid/os/Parcelable$Creator;

    const/4 v0, 0x0

    new-array v0, v0, [[B

    sput-object v0, Lcom/google/android/gms/phenotype/ExperimentTokens;->lu:[[B

    new-instance v0, Lcom/google/android/gms/phenotype/ExperimentTokens;

    sget-object v3, Lcom/google/android/gms/phenotype/ExperimentTokens;->lu:[[B

    sget-object v4, Lcom/google/android/gms/phenotype/ExperimentTokens;->lu:[[B

    sget-object v5, Lcom/google/android/gms/phenotype/ExperimentTokens;->lu:[[B

    sget-object v6, Lcom/google/android/gms/phenotype/ExperimentTokens;->lu:[[B

    const-string/jumbo v1, ""

    move-object v7, v2

    move-object v8, v2

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/phenotype/ExperimentTokens;-><init>(Ljava/lang/String;[B[[B[[B[[B[[B[I[[B)V

    sput-object v0, Lcom/google/android/gms/phenotype/ExperimentTokens;->lp:Lcom/google/android/gms/phenotype/ExperimentTokens;

    new-instance v0, Lcom/google/android/gms/phenotype/s;

    invoke-direct {v0}, Lcom/google/android/gms/phenotype/s;-><init>()V

    sput-object v0, Lcom/google/android/gms/phenotype/ExperimentTokens;->lt:Lcom/google/android/gms/phenotype/m;

    new-instance v0, Lcom/google/android/gms/phenotype/j;

    invoke-direct {v0}, Lcom/google/android/gms/phenotype/j;-><init>()V

    sput-object v0, Lcom/google/android/gms/phenotype/ExperimentTokens;->ls:Lcom/google/android/gms/phenotype/m;

    new-instance v0, Lcom/google/android/gms/phenotype/o;

    invoke-direct {v0}, Lcom/google/android/gms/phenotype/o;-><init>()V

    sput-object v0, Lcom/google/android/gms/phenotype/ExperimentTokens;->lk:Lcom/google/android/gms/phenotype/m;

    new-instance v0, Lcom/google/android/gms/phenotype/w;

    invoke-direct {v0}, Lcom/google/android/gms/phenotype/w;-><init>()V

    sput-object v0, Lcom/google/android/gms/phenotype/ExperimentTokens;->lo:Lcom/google/android/gms/phenotype/m;

    const-string/jumbo v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/phenotype/ExperimentTokens;->lj:Ljava/nio/charset/Charset;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;[B[[B[[B[[B[[B[I[[B)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/phenotype/ExperimentTokens;->lm:I

    iput-object p2, p0, Lcom/google/android/gms/phenotype/ExperimentTokens;->lw:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/phenotype/ExperimentTokens;->lq:[B

    iput-object p4, p0, Lcom/google/android/gms/phenotype/ExperimentTokens;->lx:[[B

    iput-object p5, p0, Lcom/google/android/gms/phenotype/ExperimentTokens;->lv:[[B

    iput-object p6, p0, Lcom/google/android/gms/phenotype/ExperimentTokens;->lr:[[B

    iput-object p7, p0, Lcom/google/android/gms/phenotype/ExperimentTokens;->ll:[[B

    iput-object p8, p0, Lcom/google/android/gms/phenotype/ExperimentTokens;->ln:[I

    iput-object p9, p0, Lcom/google/android/gms/phenotype/ExperimentTokens;->li:[[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B[[B[[B[[B[[B[I[[B)V
    .locals 10

    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/phenotype/ExperimentTokens;-><init>(ILjava/lang/String;[B[[B[[B[[B[[B[I[[B)V

    return-void
.end method

.method private static oQ(Ljava/lang/StringBuilder;Ljava/lang/String;[[B)V
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    const-string/jumbo v2, "("

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p2

    move v2, v0

    move v0, v1

    :goto_0
    if-lt v0, v3, :cond_1

    const-string/jumbo v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    return-void

    :cond_0
    const-string/jumbo v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    aget-object v4, p2, v0

    if-eqz v2, :cond_2

    :goto_2
    const-string/jumbo v2, "\'"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    sget-object v5, Lcom/google/android/gms/phenotype/ExperimentTokens;->lj:Ljava/nio/charset/Charset;

    invoke-direct {v2, v4, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\'"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_0

    :cond_2
    const-string/jumbo v2, ", "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method private static oR(Ljava/lang/StringBuilder;Ljava/lang/String;[I)V
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    const-string/jumbo v2, "("

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p2

    move v2, v0

    move v0, v1

    :goto_0
    if-lt v0, v3, :cond_1

    const-string/jumbo v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    return-void

    :cond_0
    const-string/jumbo v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    aget v4, p2, v0

    if-eqz v2, :cond_2

    :goto_2
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_0

    :cond_2
    const-string/jumbo v2, ", "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method private static oS(Ljava/lang/StringBuilder;Ljava/lang/String;[B)V
    .locals 2

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string/jumbo v0, "\'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/phenotype/ExperimentTokens;->lj:Ljava/nio/charset/Charset;

    invoke-direct {v0, p2, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static oT([[B)Ljava/util/List;
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    array-length v0, p0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_1

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v1

    :cond_0
    return-object v0

    :cond_1
    aget-object v3, p0, v0

    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/google/android/gms/phenotype/ExperimentTokens;->lj:Ljava/nio/charset/Charset;

    invoke-direct {v4, v3, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static oU([I)Ljava/util/List;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    array-length v0, p0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_1

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v1

    :cond_0
    return-object v0

    :cond_1
    aget v3, p0, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    return v0

    :cond_1
    instance-of v1, p1, Lcom/google/android/gms/phenotype/ExperimentTokens;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/gms/phenotype/ExperimentTokens;

    iget v1, p0, Lcom/google/android/gms/phenotype/ExperimentTokens;->lm:I

    iget v2, p1, Lcom/google/android/gms/phenotype/ExperimentTokens;->lm:I

    if-eq v1, v2, :cond_3

    :cond_2
    :goto_0
    return v0

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/phenotype/ExperimentTokens;->lw:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/phenotype/ExperimentTokens;->lw:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/u;->hH(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/phenotype/ExperimentTokens;->lq:[B

    iget-object v2, p1, Lcom/google/android/gms/phenotype/ExperimentTokens;->lq:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/phenotype/ExperimentTokens;->lx:[[B

    invoke-static {v1}, Lcom/google/android/gms/phenotype/ExperimentTokens;->oT([[B)Ljava/util/List;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/phenotype/ExperimentTokens;->lx:[[B

    invoke-static {v2}, Lcom/google/android/gms/phenotype/ExperimentTokens;->oT([[B)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/u;->hH(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/phenotype/ExperimentTokens;->lv:[[B

    invoke-static {v1}, Lcom/google/android/gms/phenotype/ExperimentTokens;->oT([[B)Ljava/util/List;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/phenotype/ExperimentTokens;->lv:[[B

    invoke-static {v2}, Lcom/google/android/gms/phenotype/ExperimentTokens;->oT([[B)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/u;->hH(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/phenotype/ExperimentTokens;->lr:[[B

    invoke-static {v1}, Lcom/google/android/gms/phenotype/ExperimentTokens;->oT([[B)Ljava/util/List;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/phenotype/ExperimentTokens;->lr:[[B

    invoke-static {v2}, Lcom/google/android/gms/phenotype/ExperimentTokens;->oT([[B)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/u;->hH(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/phenotype/ExperimentTokens;->ll:[[B

    invoke-static {v1}, Lcom/google/android/gms/phenotype/ExperimentTokens;->oT([[B)Ljava/util/List;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/phenotype/ExperimentTokens;->ll:[[B

    invoke-static {v2}, Lcom/google/android/gms/phenotype/ExperimentTokens;->oT([[B)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/u;->hH(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/phenotype/ExperimentTokens;->ln:[I

    invoke-static {v1}, Lcom/google/android/gms/phenotype/ExperimentTokens;->oU([I)Ljava/util/List;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/phenotype/ExperimentTokens;->ln:[I

    invoke-static {v2}, Lcom/google/android/gms/phenotype/ExperimentTokens;->oU([I)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/u;->hH(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/phenotype/ExperimentTokens;->li:[[B

    invoke-static {v1}, Lcom/google/android/gms/phenotype/ExperimentTokens;->oT([[B)Ljava/util/List;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/phenotype/ExperimentTokens;->li:[[B

    invoke-static {v2}, Lcom/google/android/gms/phenotype/ExperimentTokens;->oT([[B)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/u;->hH(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ExperimentTokens"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/google/android/gms/phenotype/ExperimentTokens;->lm:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/gms/phenotype/ExperimentTokens;->lw:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "\'"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/phenotype/ExperimentTokens;->lw:Ljava/lang/String;

    const-string/jumbo v3, "\'"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/gms/phenotype/ExperimentTokens;->lq:[B

    const-string/jumbo v2, "direct"

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/phenotype/ExperimentTokens;->oS(Ljava/lang/StringBuilder;Ljava/lang/String;[B)V

    const-string/jumbo v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/gms/phenotype/ExperimentTokens;->lx:[[B

    const-string/jumbo v2, "GAIA"

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/phenotype/ExperimentTokens;->oQ(Ljava/lang/StringBuilder;Ljava/lang/String;[[B)V

    const-string/jumbo v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/gms/phenotype/ExperimentTokens;->lv:[[B

    const-string/jumbo v2, "PSEUDO"

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/phenotype/ExperimentTokens;->oQ(Ljava/lang/StringBuilder;Ljava/lang/String;[[B)V

    const-string/jumbo v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/gms/phenotype/ExperimentTokens;->lr:[[B

    const-string/jumbo v2, "ALWAYS"

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/phenotype/ExperimentTokens;->oQ(Ljava/lang/StringBuilder;Ljava/lang/String;[[B)V

    const-string/jumbo v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/gms/phenotype/ExperimentTokens;->ll:[[B

    const-string/jumbo v2, "OTHER"

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/phenotype/ExperimentTokens;->oQ(Ljava/lang/StringBuilder;Ljava/lang/String;[[B)V

    const-string/jumbo v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/gms/phenotype/ExperimentTokens;->ln:[I

    const-string/jumbo v2, "weak"

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/phenotype/ExperimentTokens;->oR(Ljava/lang/StringBuilder;Ljava/lang/String;[I)V

    const-string/jumbo v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/gms/phenotype/ExperimentTokens;->li:[[B

    const-string/jumbo v2, "directs"

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/phenotype/ExperimentTokens;->oQ(Ljava/lang/StringBuilder;Ljava/lang/String;[[B)V

    const-string/jumbo v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "null"

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/phenotype/q;->pr(Lcom/google/android/gms/phenotype/ExperimentTokens;Landroid/os/Parcel;I)V

    return-void
.end method
