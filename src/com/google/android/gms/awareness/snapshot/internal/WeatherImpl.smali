.class public Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final gf:F

.field private final gg:F

.field private final gh:[I

.field private final gi:I

.field private final gj:F

.field private final gk:I


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

    iput p1, p0, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->gi:I

    iput p2, p0, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->gg:F

    iput p3, p0, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->gj:F

    iput p4, p0, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->gf:F

    iput p5, p0, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->gk:I

    iput-object p6, p0, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->gh:[I

    return-void
.end method

.method static fi(IF)F
    .locals 3

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "WeatherImpl"

    const-string/jumbo v2, "Invalid temperature unit %s"

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/J;->th(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid temperature unit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    return p1

    :pswitch_1
    invoke-static {p1}, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->fj(F)F

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static fj(F)F
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
.method public fk(I)F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->gg:F

    invoke-static {p1, v0}, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->fi(IF)F

    move-result v0

    return v0
.end method

.method public fl()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->gg:F

    return v0
.end method

.method public fm(I)F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->gj:F

    invoke-static {p1, v0}, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->fi(IF)F

    move-result v0

    return v0
.end method

.method public fn()[I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->gh:[I

    return-object v0
.end method

.method public fo()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->gf:F

    return v0
.end method

.method public fp()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->gj:F

    return v0
.end method

.method public fq()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->gk:I

    return v0
.end method

.method fr()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->gi:I

    return v0
.end method

.method public fs(I)F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->gf:F

    invoke-static {p1, v0}, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->fi(IF)F

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

    invoke-virtual {p0, v0}, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->fk(I)F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "F/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v5}, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->fk(I)F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "C, Feels="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->fm(I)F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "F/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v5}, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->fm(I)F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "C, Dew="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->fs(I)F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "F/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v5}, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->fs(I)F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "C, Humidity="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->fq()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", Condition="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->fn()[I

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "["

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;->fn()[I

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/awareness/snapshot/internal/a;->eC(Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;Landroid/os/Parcel;I)V

    return-void
.end method
