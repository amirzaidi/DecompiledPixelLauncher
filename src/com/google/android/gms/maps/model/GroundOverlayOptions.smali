.class public final Lcom/google/android/gms/maps/model/GroundOverlayOptions;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/model/c;


# instance fields
.field private Gl:Z

.field private Gm:Lcom/google/android/gms/maps/model/LatLngBounds;

.field private Gn:Z

.field private Go:Lcom/google/android/gms/maps/model/j;

.field private Gp:F

.field private Gq:F

.field private Gr:F

.field private Gs:F

.field private final Gt:I

.field private Gu:Lcom/google/android/gms/maps/model/LatLng;

.field private Gv:F

.field private Gw:F

.field private Gx:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/maps/model/c;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->CREATOR:Lcom/google/android/gms/maps/model/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-boolean v2, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->Gl:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->Gp:F

    iput v1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->Gv:F

    iput v1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->Gs:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->Gn:Z

    iput v2, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->Gt:I

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;Lcom/google/android/gms/maps/model/LatLng;FFLcom/google/android/gms/maps/model/LatLngBounds;FFZFFFZ)V
    .locals 2

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->Gl:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->Gp:F

    iput v1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->Gv:F

    iput v1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->Gs:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->Gn:Z

    iput p1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->Gt:I

    new-instance v0, Lcom/google/android/gms/maps/model/j;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zzd$zza;->zzis(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/model/j;-><init>(Lcom/google/android/gms/dynamic/zzd;)V

    iput-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->Go:Lcom/google/android/gms/maps/model/j;

    iput-object p3, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->Gu:Lcom/google/android/gms/maps/model/LatLng;

    iput p4, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->Gx:F

    iput p5, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->Gq:F

    iput-object p6, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->Gm:Lcom/google/android/gms/maps/model/LatLngBounds;

    iput p7, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->Gw:F

    iput p8, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->Gr:F

    iput-boolean p9, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->Gl:Z

    iput p10, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->Gp:F

    iput p11, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->Gv:F

    iput p12, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->Gs:F

    iput-boolean p13, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->Gn:Z

    return-void
.end method


# virtual methods
.method public KA()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->Gw:F

    return v0
.end method

.method public KB()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->Gr:F

    return v0
.end method

.method public KC()Lcom/google/android/gms/maps/model/LatLngBounds;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->Gm:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-object v0
.end method

.method public KD()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->Gn:Z

    return v0
.end method

.method KE()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->Gt:I

    return v0
.end method

.method Kv()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->Go:Lcom/google/android/gms/maps/model/j;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/j;->Ke()Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/zzd;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public Kw()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->Gu:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public Kx()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->Gp:F

    return v0
.end method

.method public Ky()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->Gs:F

    return v0
.end method

.method public Kz()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->Gv:F

    return v0
.end method

.method public getHeight()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->Gq:F

    return v0
.end method

.method public getWidth()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->Gx:F

    return v0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->Gl:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/c;->Jw(Lcom/google/android/gms/maps/model/GroundOverlayOptions;Landroid/os/Parcel;I)V

    return-void
.end method
