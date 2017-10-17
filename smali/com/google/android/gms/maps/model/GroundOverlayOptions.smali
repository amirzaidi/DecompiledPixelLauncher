.class public final Lcom/google/android/gms/maps/model/GroundOverlayOptions;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/model/c;


# instance fields
.field private EG:Z

.field private EH:Lcom/google/android/gms/maps/model/LatLngBounds;

.field private EI:Z

.field private EJ:Lcom/google/android/gms/maps/model/j;

.field private EK:F

.field private EL:F

.field private EM:F

.field private EN:F

.field private final EO:I

.field private EP:Lcom/google/android/gms/maps/model/LatLng;

.field private EQ:F

.field private ER:F

.field private ES:F


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

    iput-boolean v2, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->EG:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->EK:F

    iput v1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->EQ:F

    iput v1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->EN:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->EI:Z

    iput v2, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->EO:I

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;Lcom/google/android/gms/maps/model/LatLng;FFLcom/google/android/gms/maps/model/LatLngBounds;FFZFFFZ)V
    .locals 2

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->EG:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->EK:F

    iput v1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->EQ:F

    iput v1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->EN:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->EI:Z

    iput p1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->EO:I

    new-instance v0, Lcom/google/android/gms/maps/model/j;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zzd$zza;->zzis(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/model/j;-><init>(Lcom/google/android/gms/dynamic/zzd;)V

    iput-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->EJ:Lcom/google/android/gms/maps/model/j;

    iput-object p3, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->EP:Lcom/google/android/gms/maps/model/LatLng;

    iput p4, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->ES:F

    iput p5, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->EL:F

    iput-object p6, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->EH:Lcom/google/android/gms/maps/model/LatLngBounds;

    iput p7, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->ER:F

    iput p8, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->EM:F

    iput-boolean p9, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->EG:Z

    iput p10, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->EK:F

    iput p11, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->EQ:F

    iput p12, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->EN:F

    iput-boolean p13, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->EI:Z

    return-void
.end method


# virtual methods
.method JC()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->EJ:Lcom/google/android/gms/maps/model/j;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/j;->Jl()Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/zzd;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public JD()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->EP:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public JE()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->EK:F

    return v0
.end method

.method public JF()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->EN:F

    return v0
.end method

.method public JG()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->EQ:F

    return v0
.end method

.method public JH()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->ER:F

    return v0
.end method

.method public JI()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->EM:F

    return v0
.end method

.method public JJ()Lcom/google/android/gms/maps/model/LatLngBounds;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->EH:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-object v0
.end method

.method public JK()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->EI:Z

    return v0
.end method

.method JL()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->EO:I

    return v0
.end method

.method public getHeight()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->EL:F

    return v0
.end method

.method public getWidth()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->ES:F

    return v0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->EG:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/c;->ID(Lcom/google/android/gms/maps/model/GroundOverlayOptions;Landroid/os/Parcel;I)V

    return-void
.end method
