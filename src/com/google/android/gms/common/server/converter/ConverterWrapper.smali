.class public Lcom/google/android/gms/common/server/converter/ConverterWrapper;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/common/server/converter/b;


# instance fields
.field private final ld:Lcom/google/android/gms/common/server/converter/StringToIntConverter;

.field private final le:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/server/converter/b;

    invoke-direct {v0}, Lcom/google/android/gms/common/server/converter/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/server/converter/ConverterWrapper;->CREATOR:Lcom/google/android/gms/common/server/converter/b;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/common/server/converter/StringToIntConverter;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/server/converter/ConverterWrapper;->le:I

    iput-object p2, p0, Lcom/google/android/gms/common/server/converter/ConverterWrapper;->ld:Lcom/google/android/gms/common/server/converter/StringToIntConverter;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/common/server/converter/StringToIntConverter;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/common/server/converter/ConverterWrapper;->le:I

    iput-object p1, p0, Lcom/google/android/gms/common/server/converter/ConverterWrapper;->ld:Lcom/google/android/gms/common/server/converter/StringToIntConverter;

    return-void
.end method

.method public static od(Lcom/google/android/gms/common/server/response/e;)Lcom/google/android/gms/common/server/converter/ConverterWrapper;
    .locals 2

    instance-of v0, p0, Lcom/google/android/gms/common/server/converter/StringToIntConverter;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unsupported safe parcelable field converter class."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/common/server/converter/ConverterWrapper;

    check-cast p0, Lcom/google/android/gms/common/server/converter/StringToIntConverter;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/server/converter/ConverterWrapper;-><init>(Lcom/google/android/gms/common/server/converter/StringToIntConverter;)V

    return-object v0
.end method


# virtual methods
.method oc()Lcom/google/android/gms/common/server/converter/StringToIntConverter;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/server/converter/ConverterWrapper;->ld:Lcom/google/android/gms/common/server/converter/StringToIntConverter;

    return-object v0
.end method

.method oe()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/server/converter/ConverterWrapper;->le:I

    return v0
.end method

.method public of()Lcom/google/android/gms/common/server/response/e;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/server/converter/ConverterWrapper;->ld:Lcom/google/android/gms/common/server/converter/StringToIntConverter;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "There was no converter wrapped in this ConverterWrapper."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/server/converter/ConverterWrapper;->ld:Lcom/google/android/gms/common/server/converter/StringToIntConverter;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/server/converter/ConverterWrapper;->CREATOR:Lcom/google/android/gms/common/server/converter/b;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/server/converter/b;->oh(Lcom/google/android/gms/common/server/converter/ConverterWrapper;Landroid/os/Parcel;I)V

    return-void
.end method
