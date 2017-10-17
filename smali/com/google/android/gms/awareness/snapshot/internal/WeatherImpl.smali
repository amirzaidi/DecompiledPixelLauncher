.class public Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final mI:F

.field private final mJ:F

.field private final mK:[I

.field private final mL:I

.field private final mM:F

.field private final mN:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/awareness/snapshot/internal/a;

    invoke-direct {v0}, Lcom/google/android/gms/awareness/snapshot/internal/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IFFFI[I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->mL:I

    iput p2, p0, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->mJ:F

    iput p3, p0, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->mM:F

    iput p4, p0, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->mI:F

    iput p5, p0, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->mN:I

    iput-object p6, p0, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->mK:[I

    return-void
.end method

.method static qo(IF)F
    .locals 3

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "WeatherImpl"

    const-string/jumbo v2, "Invalid temperature unit %s"

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/P;->ti(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid temperature unit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    return p1

    :pswitch_1
    invoke-static {p1}, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->qp(F)F

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static qp(F)F
    .locals 2

    const/high16 v0, 0x42000000    # 32.0f

    sub-float v0, p0, v0

    const/high16 v1, 0x40a00000    # 5.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x41100000    # 9.0f

    div-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public qq(I)F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->mJ:F

    invoke-static {p1, v0}, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->qo(IF)F

    move-result v0

    return v0
.end method

.method public qr()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->mJ:F

    return v0
.end method

.method public qs(I)F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->mM:F

    invoke-static {p1, v0}, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->qo(IF)F

    move-result v0

    return v0
.end method

.method public qt()[I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->mK:[I

    return-object v0
.end method

.method public qu()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->mI:F

    return v0
.end method

.method public qv()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->mM:F

    return v0
.end method

.method public qw()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->mN:I

    return v0
.end method

.method qx()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->mL:I

    return v0
.end method

.method public qy(I)F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->mI:F

    invoke-static {p1, v0}, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->qo(IF)F

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Temp="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->qq(I)F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "F/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v5}, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->qq(I)F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "C, Feels="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->qs(I)F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "F/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v5}, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->qs(I)F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "C, Dew="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->qy(I)F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "F/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v5}, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->qy(I)F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "C, Humidity="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->qw()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", Condition="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->qt()[I

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "["

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->qt()[I

    move-result-object v4

    array-length v5, v4

    move v2, v0

    move v0, v1

    :goto_0
    if-lt v0, v5, :cond_1

    const-string/jumbo v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "unknown"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    aget v6, v4, v0

    if-eqz v2, :cond_2

    :goto_2
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_0

    :cond_2
    const-string/jumbo v2, ","

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/awareness/snapshot/internal/a;->pI(Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;Landroid/os/Parcel;I)V

    return-void
.end method
