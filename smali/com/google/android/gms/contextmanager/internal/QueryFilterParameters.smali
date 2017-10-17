.class public Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final Hv:I

.field private final Hw:I

.field private final Hx:I

.field private final Hy:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/contextmanager/internal/h;

    invoke-direct {v0}, Lcom/google/android/gms/contextmanager/internal/h;-><init>()V

    sput-object v0, Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(III[I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;->Hx:I

    iput p2, p0, Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;->Hv:I

    iput p3, p0, Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;->Hw:I

    iput-object p4, p0, Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;->Hy:[I

    return-void
.end method


# virtual methods
.method public ML()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;->Hw:I

    return v0
.end method

.method public MM()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;->Hv:I

    return v0
.end method

.method public MN()[I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;->Hy:[I

    return-object v0
.end method

.method MO()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;->Hx:I

    return v0
.end method

.method public MP()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;->Hy:[I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eq p1, p0, :cond_1

    instance-of v0, p1, Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;

    iget v0, p1, Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;->Hw:I

    iget v3, p0, Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;->Hw:I

    if-ne v0, v3, :cond_3

    iget v0, p1, Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;->Hv:I

    iget v3, p0, Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;->Hv:I

    if-ne v0, v3, :cond_4

    iget v0, p1, Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;->Hx:I

    iget v3, p0, Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;->Hx:I

    if-ne v0, v3, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;->MP()Z

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;->MP()Z

    move-result v3

    if-ne v0, v3, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;->MP()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_0
    return v2

    :cond_1
    return v2

    :cond_2
    return v1

    :cond_3
    return v1

    :cond_4
    return v1

    :cond_5
    return v1

    :cond_6
    return v1

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;->Hy:[I

    array-length v0, v0

    iget-object v3, p1, Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;->Hy:[I

    array-length v3, v3

    if-ne v0, v3, :cond_8

    iget-object v4, p1, Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;->Hy:[I

    array-length v5, v4

    move v3, v1

    :goto_0
    if-ge v3, v5, :cond_0

    aget v6, v4, v3

    iget-object v7, p0, Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;->Hy:[I

    array-length v8, v7

    move v0, v1

    :goto_1
    if-lt v0, v8, :cond_9

    move v0, v1

    :goto_2
    if-eqz v0, :cond_b

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_8
    return v1

    :cond_9
    aget v9, v7, v0

    if-eq v9, v6, :cond_a

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_a
    move v0, v2

    goto :goto_2

    :cond_b
    return v1
.end method

.method public hashCode()I
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;->Hy:[I

    if-nez v0, :cond_1

    move v0, v1

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    iget v0, p0, Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;->Hv:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v2, v1

    iget v0, p0, Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;->Hw:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v2, v1

    iget v0, p0, Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;->Hx:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, v2, v1

    invoke-static {v2}, Lcom/google/android/gms/common/internal/u;->hI([Ljava/lang/Object;)I

    move-result v0

    return v0

    :cond_1
    iget-object v4, p0, Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;->Hy:[I

    array-length v5, v4

    move v2, v1

    move v0, v1

    :goto_0
    if-ge v2, v5, :cond_0

    aget v3, v4, v2

    mul-int/lit8 v3, v3, 0xd

    add-int/2addr v3, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/contextmanager/internal/h;->MS(Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;Landroid/os/Parcel;I)V

    return-void
.end method
