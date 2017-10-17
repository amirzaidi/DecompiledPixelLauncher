.class public final Lcom/google/android/gms/maps/model/MarkerOptions;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/model/d;


# instance fields
.field private FX:Z

.field private FY:Ljava/lang/String;

.field private FZ:F

.field private final Ga:I

.field private Gb:F

.field private Gc:Z

.field private Gd:Ljava/lang/String;

.field private Ge:Lcom/google/android/gms/maps/model/j;

.field private Gf:Lcom/google/android/gms/maps/model/LatLng;

.field private Gg:Z

.field private Gh:F

.field private Gi:F

.field private Gj:F

.field private Gk:F

.field private mAlpha:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/maps/model/d;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/d;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/MarkerOptions;->CREATOR:Lcom/google/android/gms/maps/model/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput v2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Gb:F

    iput v3, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->FZ:F

    iput-boolean v4, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Gg:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Gc:Z

    iput v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Gk:F

    iput v2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Gi:F

    iput v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Gh:F

    iput v3, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->mAlpha:F

    iput v4, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Ga:I

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;FFZZZFFFFF)V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Gb:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->FZ:F

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Gg:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Gc:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Gk:F

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Gi:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Gh:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->mAlpha:F

    iput p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Ga:I

    iput-object p2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Gf:Lcom/google/android/gms/maps/model/LatLng;

    iput-object p3, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Gd:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->FY:Ljava/lang/String;

    if-eqz p5, :cond_0

    new-instance v1, Lcom/google/android/gms/maps/model/j;

    invoke-static {p5}, Lcom/google/android/gms/dynamic/zzd$zza;->zzis(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/maps/model/j;-><init>(Lcom/google/android/gms/dynamic/zzd;)V

    :goto_0
    iput-object v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Ge:Lcom/google/android/gms/maps/model/j;

    iput p6, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Gb:F

    iput p7, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->FZ:F

    iput-boolean p8, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->FX:Z

    iput-boolean p9, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Gg:Z

    iput-boolean p10, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Gc:Z

    iput p11, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Gk:F

    iput p12, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Gi:F

    move/from16 v0, p13

    iput v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Gh:F

    move/from16 v0, p14

    iput v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->mAlpha:F

    move/from16 v0, p15

    iput v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Gj:F

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public Kj()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->FY:Ljava/lang/String;

    return-object v0
.end method

.method public Kk()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->FZ:F

    return v0
.end method

.method public Kl()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Gc:Z

    return v0
.end method

.method public Km()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Gh:F

    return v0
.end method

.method public Kn()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Gk:F

    return v0
.end method

.method Ko()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Ga:I

    return v0
.end method

.method public Kp()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Gb:F

    return v0
.end method

.method public Kq()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Gj:F

    return v0
.end method

.method Kr()Landroid/os/IBinder;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Ge:Lcom/google/android/gms/maps/model/j;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Ge:Lcom/google/android/gms/maps/model/j;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/j;->Ke()Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/zzd;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public Ks()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Gi:F

    return v0
.end method

.method public Kt()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Gf:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public Ku()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->FX:Z

    return v0
.end method

.method public getAlpha()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->mAlpha:F

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Gd:Ljava/lang/String;

    return-object v0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Gg:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/d;->JA(Lcom/google/android/gms/maps/model/MarkerOptions;Landroid/os/Parcel;I)V

    return-void
.end method
