.class public final Lcom/google/android/gms/maps/model/PointOfInterest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/model/r;


# instance fields
.field private final GC:I

.field public final GD:Ljava/lang/String;

.field public final GE:Lcom/google/android/gms/maps/model/LatLng;

.field public final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/maps/model/r;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/r;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/PointOfInterest;->CREATOR:Lcom/google/android/gms/maps/model/r;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/maps/model/PointOfInterest;->GC:I

    iput-object p2, p0, Lcom/google/android/gms/maps/model/PointOfInterest;->GE:Lcom/google/android/gms/maps/model/LatLng;

    iput-object p3, p0, Lcom/google/android/gms/maps/model/PointOfInterest;->GD:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/maps/model/PointOfInterest;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method KS()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/PointOfInterest;->GC:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/r;->Lg(Lcom/google/android/gms/maps/model/PointOfInterest;Landroid/os/Parcel;I)V

    return-void
.end method
