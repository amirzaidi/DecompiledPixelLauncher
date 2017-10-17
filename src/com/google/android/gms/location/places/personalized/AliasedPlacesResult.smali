.class public Lcom/google/android/gms/location/places/personalized/AliasedPlacesResult;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

# interfaces
.implements Lcom/google/android/gms/common/api/b;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final xH:Lcom/google/android/gms/common/api/Status;

.field final xI:I

.field private final xJ:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/places/personalized/c;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/personalized/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/personalized/AliasedPlacesResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/common/api/Status;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/places/personalized/AliasedPlacesResult;->xI:I

    iput-object p2, p0, Lcom/google/android/gms/location/places/personalized/AliasedPlacesResult;->xH:Lcom/google/android/gms/common/api/Status;

    iput-object p3, p0, Lcom/google/android/gms/location/places/personalized/AliasedPlacesResult;->xJ:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public CG()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/personalized/AliasedPlacesResult;->xJ:Ljava/util/List;

    return-object v0
.end method

.method public dr()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/personalized/AliasedPlacesResult;->xH:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/places/personalized/c;->CM(Lcom/google/android/gms/location/places/personalized/AliasedPlacesResult;Landroid/os/Parcel;I)V

    return-void
.end method
