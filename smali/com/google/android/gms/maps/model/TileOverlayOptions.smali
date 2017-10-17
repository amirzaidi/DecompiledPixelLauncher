.class public final Lcom/google/android/gms/maps/model/TileOverlayOptions;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/model/l;


# instance fields
.field private DZ:Lcom/google/android/gms/maps/model/o;

.field private Ea:Z

.field private Eb:Z

.field private Ec:F

.field private Ed:F

.field private final Ee:I

.field private Ef:Lcom/google/android/gms/maps/model/internal/zzi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/maps/model/l;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/l;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->CREATOR:Lcom/google/android/gms/maps/model/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->Ea:Z

    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->Eb:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->Ec:F

    iput v1, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->Ee:I

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;ZFZF)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->Ea:Z

    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->Eb:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->Ec:F

    iput p1, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->Ee:I

    invoke-static {p2}, Lcom/google/android/gms/maps/model/internal/zzi$zza;->zznr(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/internal/zzi;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->Ef:Lcom/google/android/gms/maps/model/internal/zzi;

    iget-object v1, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->Ef:Lcom/google/android/gms/maps/model/internal/zzi;

    if-eqz v1, :cond_0

    new-instance v0, Lcom/google/android/gms/maps/model/f;

    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/model/f;-><init>(Lcom/google/android/gms/maps/model/TileOverlayOptions;)V

    :cond_0
    iput-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->DZ:Lcom/google/android/gms/maps/model/o;

    iput-boolean p3, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->Ea:Z

    iput p4, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->Ed:F

    iput-boolean p5, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->Eb:Z

    iput p6, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->Ec:F

    return-void
.end method

.method static synthetic Ja(Lcom/google/android/gms/maps/model/TileOverlayOptions;)Lcom/google/android/gms/maps/model/internal/zzi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->Ef:Lcom/google/android/gms/maps/model/internal/zzi;

    return-object v0
.end method


# virtual methods
.method public IY()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->Eb:Z

    return v0
.end method

.method public IZ()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->Ec:F

    return v0
.end method

.method Jb()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->Ef:Lcom/google/android/gms/maps/model/internal/zzi;

    invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/zzi;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public Jc()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->Ed:F

    return v0
.end method

.method Jd()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->Ee:I

    return v0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->Ea:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/l;->JN(Lcom/google/android/gms/maps/model/TileOverlayOptions;Landroid/os/Parcel;I)V

    return-void
.end method
