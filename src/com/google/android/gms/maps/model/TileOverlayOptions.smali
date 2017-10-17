.class public final Lcom/google/android/gms/maps/model/TileOverlayOptions;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/model/l;


# instance fields
.field private FE:Lcom/google/android/gms/maps/model/n;

.field private FF:Z

.field private FG:Z

.field private FH:F

.field private FI:F

.field private final FJ:I

.field private FK:Lcom/google/android/gms/maps/model/internal/zzi;


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

    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->FF:Z

    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->FG:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->FH:F

    iput v1, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->FJ:I

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;ZFZF)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->FF:Z

    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->FG:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->FH:F

    iput p1, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->FJ:I

    invoke-static {p2}, Lcom/google/android/gms/maps/model/internal/zzi$zza;->zznr(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/internal/zzi;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->FK:Lcom/google/android/gms/maps/model/internal/zzi;

    iget-object v1, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->FK:Lcom/google/android/gms/maps/model/internal/zzi;

    if-eqz v1, :cond_0

    new-instance v0, Lcom/google/android/gms/maps/model/f;

    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/model/f;-><init>(Lcom/google/android/gms/maps/model/TileOverlayOptions;)V

    :cond_0
    iput-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->FE:Lcom/google/android/gms/maps/model/n;

    iput-boolean p3, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->FF:Z

    iput p4, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->FI:F

    iput-boolean p5, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->FG:Z

    iput p6, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->FH:F

    return-void
.end method

.method static synthetic JT(Lcom/google/android/gms/maps/model/TileOverlayOptions;)Lcom/google/android/gms/maps/model/internal/zzi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->FK:Lcom/google/android/gms/maps/model/internal/zzi;

    return-object v0
.end method


# virtual methods
.method public JR()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->FG:Z

    return v0
.end method

.method public JS()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->FH:F

    return v0
.end method

.method JU()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->FK:Lcom/google/android/gms/maps/model/internal/zzi;

    invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/zzi;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public JV()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->FI:F

    return v0
.end method

.method JW()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->FJ:I

    return v0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->FF:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/l;->KG(Lcom/google/android/gms/maps/model/TileOverlayOptions;Landroid/os/Parcel;I)V

    return-void
.end method
