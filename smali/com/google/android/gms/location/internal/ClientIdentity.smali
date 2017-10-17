.class public Lcom/google/android/gms/location/internal/ClientIdentity;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/internal/c;


# instance fields
.field private final AL:I

.field public final AM:I

.field public final packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/internal/c;

    invoke-direct {v0}, Lcom/google/android/gms/location/internal/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/internal/ClientIdentity;->CREATOR:Lcom/google/android/gms/location/internal/c;

    return-void
.end method

.method constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/internal/ClientIdentity;->AL:I

    iput p2, p0, Lcom/google/android/gms/location/internal/ClientIdentity;->AM:I

    iput-object p3, p0, Lcom/google/android/gms/location/internal/ClientIdentity;->packageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method Fn()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/internal/ClientIdentity;->AL:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, p0, :cond_1

    if-nez p1, :cond_2

    :cond_0
    return v1

    :cond_1
    return v0

    :cond_2
    instance-of v2, p1, Lcom/google/android/gms/location/internal/ClientIdentity;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/google/android/gms/location/internal/ClientIdentity;

    iget v2, p1, Lcom/google/android/gms/location/internal/ClientIdentity;->AM:I

    iget v3, p0, Lcom/google/android/gms/location/internal/ClientIdentity;->AM:I

    if-eq v2, v3, :cond_4

    :goto_0
    move v0, v1

    :cond_3
    return v0

    :cond_4
    iget-object v2, p1, Lcom/google/android/gms/location/internal/ClientIdentity;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/location/internal/ClientIdentity;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/u;->hH(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/internal/ClientIdentity;->AM:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/location/internal/ClientIdentity;->AM:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/location/internal/ClientIdentity;->packageName:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "%d:%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/internal/c;->Fa(Lcom/google/android/gms/location/internal/ClientIdentity;Landroid/os/Parcel;I)V

    return-void
.end method
