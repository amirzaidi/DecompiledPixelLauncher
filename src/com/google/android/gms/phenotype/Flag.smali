.class public Lcom/google/android/gms/phenotype/Flag;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field private static final kX:Ljava/nio/charset/Charset;

.field public static final la:Lcom/google/android/gms/phenotype/e;


# instance fields
.field final kW:Ljava/lang/String;

.field final kY:D

.field public final kZ:I

.field final lb:[B

.field final lc:I

.field public final ld:I

.field final le:J

.field final lf:Z

.field public final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/phenotype/v;

    invoke-direct {v0}, Lcom/google/android/gms/phenotype/v;-><init>()V

    sput-object v0, Lcom/google/android/gms/phenotype/Flag;->CREATOR:Landroid/os/Parcelable$Creator;

    const-string/jumbo v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/phenotype/Flag;->kX:Ljava/nio/charset/Charset;

    new-instance v0, Lcom/google/android/gms/phenotype/e;

    invoke-direct {v0}, Lcom/google/android/gms/phenotype/e;-><init>()V

    sput-object v0, Lcom/google/android/gms/phenotype/Flag;->la:Lcom/google/android/gms/phenotype/e;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;JZDLjava/lang/String;[BII)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/phenotype/Flag;->lc:I

    iput-object p2, p0, Lcom/google/android/gms/phenotype/Flag;->name:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/phenotype/Flag;->le:J

    iput-boolean p5, p0, Lcom/google/android/gms/phenotype/Flag;->lf:Z

    iput-wide p6, p0, Lcom/google/android/gms/phenotype/Flag;->kY:D

    iput-object p8, p0, Lcom/google/android/gms/phenotype/Flag;->kW:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/phenotype/Flag;->lb:[B

    iput p10, p0, Lcom/google/android/gms/phenotype/Flag;->ld:I

    iput p11, p0, Lcom/google/android/gms/phenotype/Flag;->kZ:I

    return-void
.end method

.method private static compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private static oH(ZZ)I
    .locals 1

    const/4 v0, 0x0

    if-eq p0, p1, :cond_0

    if-nez p0, :cond_1

    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static oJ(BB)I
    .locals 1

    sub-int v0, p0, p1

    return v0
.end method

.method private static oN(JJ)I
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    cmp-long v2, p0, p2

    if-ltz v2, :cond_1

    move v2, v1

    :goto_0
    if-nez v2, :cond_2

    const/4 v0, -0x1

    :cond_0
    :goto_1
    return v0

    :cond_1
    move v2, v0

    goto :goto_0

    :cond_2
    cmp-long v2, p0, p2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_1
.end method

.method private static oO(II)I
    .locals 1

    if-lt p0, p1, :cond_0

    if-eq p0, p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/android/gms/phenotype/Flag;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/phenotype/Flag;->oP(Lcom/google/android/gms/phenotype/Flag;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    return v1

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/phenotype/Flag;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/google/android/gms/phenotype/Flag;

    iget v2, p0, Lcom/google/android/gms/phenotype/Flag;->lc:I

    iget v3, p1, Lcom/google/android/gms/phenotype/Flag;->lc:I

    if-eq v2, v3, :cond_3

    :cond_2
    return v1

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/phenotype/Flag;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/phenotype/Flag;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/u;->hH(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/google/android/gms/phenotype/Flag;->ld:I

    iget v3, p1, Lcom/google/android/gms/phenotype/Flag;->ld:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/gms/phenotype/Flag;->kZ:I

    iget v3, p1, Lcom/google/android/gms/phenotype/Flag;->kZ:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/gms/phenotype/Flag;->ld:I

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    iget v1, p0, Lcom/google/android/gms/phenotype/Flag;->ld:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x1f

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Invalid enum value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    iget-wide v2, p0, Lcom/google/android/gms/phenotype/Flag;->le:J

    iget-wide v4, p1, Lcom/google/android/gms/phenotype/Flag;->le:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    :goto_0
    return v0

    :cond_4
    move v0, v1

    goto :goto_0

    :pswitch_1
    iget-boolean v2, p0, Lcom/google/android/gms/phenotype/Flag;->lf:Z

    iget-boolean v3, p1, Lcom/google/android/gms/phenotype/Flag;->lf:Z

    if-eq v2, v3, :cond_5

    :goto_1
    return v1

    :cond_5
    move v1, v0

    goto :goto_1

    :pswitch_2
    iget-wide v2, p0, Lcom/google/android/gms/phenotype/Flag;->kY:D

    iget-wide v4, p1, Lcom/google/android/gms/phenotype/Flag;->kY:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_6

    :goto_2
    return v0

    :cond_6
    move v0, v1

    goto :goto_2

    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gms/phenotype/Flag;->kW:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/phenotype/Flag;->kW:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/u;->hH(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    :pswitch_4
    iget-object v0, p0, Lcom/google/android/gms/phenotype/Flag;->lb:[B

    iget-object v1, p1, Lcom/google/android/gms/phenotype/Flag;->lb:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public oG()J
    .locals 2

    iget v0, p0, Lcom/google/android/gms/phenotype/Flag;->ld:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/phenotype/Flag;->le:J

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Not a long type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public oI()D
    .locals 2

    iget v0, p0, Lcom/google/android/gms/phenotype/Flag;->ld:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/phenotype/Flag;->kY:D

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Not a double type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public oK()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/phenotype/Flag;->ld:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/phenotype/Flag;->lf:Z

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Not a boolean type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public oL()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/google/android/gms/phenotype/Flag;->ld:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/phenotype/Flag;->kW:Ljava/lang/String;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Not a String type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public oM()[B
    .locals 2

    iget v0, p0, Lcom/google/android/gms/phenotype/Flag;->ld:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/phenotype/Flag;->lb:[B

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Not a bytes type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public oP(Lcom/google/android/gms/phenotype/Flag;)I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/phenotype/Flag;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/phenotype/Flag;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/google/android/gms/phenotype/Flag;->ld:I

    iget v2, p1, Lcom/google/android/gms/phenotype/Flag;->ld:I

    invoke-static {v1, v2}, Lcom/google/android/gms/phenotype/Flag;->oO(II)I

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/google/android/gms/phenotype/Flag;->ld:I

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    iget v1, p0, Lcom/google/android/gms/phenotype/Flag;->ld:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x1f

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Invalid enum value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    return v1

    :cond_1
    return v1

    :pswitch_0
    iget-wide v0, p0, Lcom/google/android/gms/phenotype/Flag;->le:J

    iget-wide v2, p1, Lcom/google/android/gms/phenotype/Flag;->le:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/phenotype/Flag;->oN(JJ)I

    move-result v0

    return v0

    :pswitch_1
    iget-boolean v0, p0, Lcom/google/android/gms/phenotype/Flag;->lf:Z

    iget-boolean v1, p1, Lcom/google/android/gms/phenotype/Flag;->lf:Z

    invoke-static {v0, v1}, Lcom/google/android/gms/phenotype/Flag;->oH(ZZ)I

    move-result v0

    return v0

    :pswitch_2
    iget-wide v0, p0, Lcom/google/android/gms/phenotype/Flag;->kY:D

    iget-wide v2, p1, Lcom/google/android/gms/phenotype/Flag;->kY:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    return v0

    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gms/phenotype/Flag;->kW:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/phenotype/Flag;->kW:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/phenotype/Flag;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    :pswitch_4
    iget-object v1, p0, Lcom/google/android/gms/phenotype/Flag;->lb:[B

    iget-object v2, p1, Lcom/google/android/gms/phenotype/Flag;->lb:[B

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/phenotype/Flag;->lb:[B

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/google/android/gms/phenotype/Flag;->lb:[B

    if-eqz v1, :cond_4

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/phenotype/Flag;->lb:[B

    array-length v1, v1

    iget-object v2, p1, Lcom/google/android/gms/phenotype/Flag;->lb:[B

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-lt v0, v1, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/phenotype/Flag;->lb:[B

    array-length v0, v0

    iget-object v1, p1, Lcom/google/android/gms/phenotype/Flag;->lb:[B

    array-length v1, v1

    invoke-static {v0, v1}, Lcom/google/android/gms/phenotype/Flag;->oO(II)I

    move-result v0

    return v0

    :cond_2
    return v0

    :cond_3
    const/4 v0, -0x1

    return v0

    :cond_4
    const/4 v0, 0x1

    return v0

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/phenotype/Flag;->lb:[B

    aget-byte v1, v1, v0

    iget-object v2, p1, Lcom/google/android/gms/phenotype/Flag;->lb:[B

    aget-byte v2, v2, v0

    invoke-static {v1, v2}, Lcom/google/android/gms/phenotype/Flag;->oJ(BB)I

    move-result v1

    if-nez v1, :cond_6

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Flag("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/android/gms/phenotype/Flag;->lc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/phenotype/Flag;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/gms/phenotype/Flag;->ld:I

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    iget v1, p0, Lcom/google/android/gms/phenotype/Flag;->ld:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x1f

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Invalid enum value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    iget-wide v2, p0, Lcom/google/android/gms/phenotype/Flag;->le:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :goto_0
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/gms/phenotype/Flag;->ld:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/gms/phenotype/Flag;->kZ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-boolean v1, p0, Lcom/google/android/gms/phenotype/Flag;->lf:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_2
    iget-wide v2, p0, Lcom/google/android/gms/phenotype/Flag;->kY:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_3
    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/phenotype/Flag;->kW:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/google/android/gms/phenotype/Flag;->lb:[B

    if-eqz v1, :cond_0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/phenotype/Flag;->lb:[B

    sget-object v3, Lcom/google/android/gms/phenotype/Flag;->kX:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/phenotype/v;->py(Lcom/google/android/gms/phenotype/Flag;Landroid/os/Parcel;I)V

    return-void
.end method
