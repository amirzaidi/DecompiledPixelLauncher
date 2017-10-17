.class public final Lcom/google/android/gms/maps/model/MarkerOptions;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/model/d;


# instance fields
.field private EA:Lcom/google/android/gms/maps/model/LatLng;

.field private EB:Z

.field private EC:F

.field private ED:F

.field private EE:F

.field private EF:F

.field private Es:Z

.field private Et:Ljava/lang/String;

.field private Eu:F

.field private final Ev:I

.field private Ew:F

.field private Ex:Z

.field private Ey:Ljava/lang/String;

.field private Ez:Lcom/google/android/gms/maps/model/j;

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

    iput v2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Ew:F

    iput v3, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Eu:F

    iput-boolean v4, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->EB:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Ex:Z

    iput v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->EF:F

    iput v2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->ED:F

    iput v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->EC:F

    iput v3, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->mAlpha:F

    iput v4, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Ev:I

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;FFZZZFFFFF)V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Ew:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Eu:F

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->EB:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Ex:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->EF:F

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->ED:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->EC:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->mAlpha:F

    iput p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Ev:I

    iput-object p2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->EA:Lcom/google/android/gms/maps/model/LatLng;

    iput-object p3, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Ey:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Et:Ljava/lang/String;

    if-eqz p5, :cond_0

    new-instance v1, Lcom/google/android/gms/maps/model/j;

    invoke-static {p5}, Lcom/google/android/gms/dynamic/zzd$zza;->zzis(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/maps/model/j;-><init>(Lcom/google/android/gms/dynamic/zzd;)V

    :goto_0
    iput-object v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Ez:Lcom/google/android/gms/maps/model/j;

    iput p6, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Ew:F

    iput p7, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Eu:F

    iput-boolean p8, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Es:Z

    iput-boolean p9, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->EB:Z

    iput-boolean p10, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Ex:Z

    iput p11, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->EF:F

    iput p12, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->ED:F

    move/from16 v0, p13

    iput v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->EC:F

    move/from16 v0, p14

    iput v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->mAlpha:F

    move/from16 v0, p15

    iput v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->EE:F

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public JA()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->EA:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public JB()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Es:Z

    return v0
.end method

.method public Jq()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Et:Ljava/lang/String;

    return-object v0
.end method

.method public Jr()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Eu:F

    return v0
.end method

.method public Js()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Ex:Z

    return v0
.end method

.method public Jt()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->EC:F

    return v0
.end method

.method public Ju()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->EF:F

    return v0
.end method

.method Jv()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Ev:I

    return v0
.end method

.method public Jw()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Ew:F

    return v0
.end method

.method public Jx()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->EE:F

    return v0
.end method

.method Jy()Landroid/os/IBinder;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Ez:Lcom/google/android/gms/maps/model/j;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Ez:Lcom/google/android/gms/maps/model/j;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/j;->Jl()Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/zzd;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public Jz()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->ED:F

    return v0
.end method

.method public getAlpha()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->mAlpha:F

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Ey:Ljava/lang/String;

    return-object v0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->EB:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/d;->IH(Lcom/google/android/gms/maps/model/MarkerOptions;Landroid/os/Parcel;I)V

    return-void
.end method
