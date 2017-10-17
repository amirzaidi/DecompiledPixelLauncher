.class public Lcom/google/android/gms/awareness/snapshot/internal/DayAttributesImpl;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final my:I

.field private final mz:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/awareness/snapshot/internal/d;

    invoke-direct {v0}, Lcom/google/android/gms/awareness/snapshot/internal/d;-><init>()V

    sput-object v0, Lcom/google/android/gms/awareness/snapshot/internal/DayAttributesImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(I[I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/awareness/snapshot/internal/DayAttributesImpl;->my:I

    iput-object p2, p0, Lcom/google/android/gms/awareness/snapshot/internal/DayAttributesImpl;->mz:[I

    return-void
.end method


# virtual methods
.method public pF()[I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/DayAttributesImpl;->mz:[I

    return-object v0
.end method

.method pG()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/DayAttributesImpl;->my:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    const/4 v1, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "Attributes="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/DayAttributesImpl;->mz:[I

    if-eqz v0, :cond_0

    const-string/jumbo v0, "["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    iget-object v4, p0, Lcom/google/android/gms/awareness/snapshot/internal/DayAttributesImpl;->mz:[I

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
    const-string/jumbo v2, ", "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/awareness/snapshot/internal/d;->pR(Lcom/google/android/gms/awareness/snapshot/internal/DayAttributesImpl;Landroid/os/Parcel;I)V

    return-void
.end method
