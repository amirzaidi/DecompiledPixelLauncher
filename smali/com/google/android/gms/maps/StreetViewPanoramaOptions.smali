.class public final Lcom/google/android/gms/maps/StreetViewPanoramaOptions;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/b;


# instance fields
.field private FQ:Lcom/google/android/gms/maps/model/LatLng;

.field private FR:Ljava/lang/Boolean;

.field private FS:Ljava/lang/Integer;

.field private FT:Ljava/lang/Boolean;

.field private FU:Ljava/lang/String;

.field private FV:Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;

.field private FW:Ljava/lang/Boolean;

.field private final FX:I

.field private FY:Ljava/lang/Boolean;

.field private FZ:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/maps/b;

    invoke-direct {v0}, Lcom/google/android/gms/maps/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->CREATOR:Lcom/google/android/gms/maps/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->FR:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->FT:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->FW:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->FZ:Ljava/lang/Boolean;

    iput v1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->FX:I

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/maps/model/StreetViewPanoramaCamera;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/Integer;BBBBB)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->FR:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->FT:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->FW:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->FZ:Ljava/lang/Boolean;

    iput p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->FX:I

    iput-object p2, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->FV:Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;

    iput-object p4, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->FQ:Lcom/google/android/gms/maps/model/LatLng;

    iput-object p5, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->FS:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->FU:Ljava/lang/String;

    invoke-static {p6}, Lcom/google/android/gms/maps/a/a;->KB(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->FR:Ljava/lang/Boolean;

    invoke-static {p7}, Lcom/google/android/gms/maps/a/a;->KB(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->FT:Ljava/lang/Boolean;

    invoke-static {p8}, Lcom/google/android/gms/maps/a/a;->KB(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->FW:Ljava/lang/Boolean;

    invoke-static {p9}, Lcom/google/android/gms/maps/a/a;->KB(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->FZ:Ljava/lang/Boolean;

    invoke-static {p10}, Lcom/google/android/gms/maps/a/a;->KB(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->FY:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method La()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->FY:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/a/a;->KC(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method public Lb()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->FU:Ljava/lang/String;

    return-object v0
.end method

.method public Lc()Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->FV:Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;

    return-object v0
.end method

.method Ld()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->FT:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/a/a;->KC(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method Le()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->FZ:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/a/a;->KC(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method public Lf()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->FQ:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method Lg()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->FR:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/a/a;->KC(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method Lh()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->FW:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/a/a;->KC(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method Li()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->FX:I

    return v0
.end method

.method public getRadius()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->FS:Ljava/lang/Integer;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/b;->KX(Lcom/google/android/gms/maps/StreetViewPanoramaOptions;Landroid/os/Parcel;I)V

    return-void
.end method
