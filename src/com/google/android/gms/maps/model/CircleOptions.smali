.class public final Lcom/google/android/gms/maps/model/CircleOptions;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/model/i;


# instance fields
.field private GW:I

.field private GX:Z

.field private GY:Z

.field private GZ:I

.field private Ha:F

.field private Hb:D

.field private final Hc:I

.field private Hd:Lcom/google/android/gms/maps/model/LatLng;

.field private mStrokeWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/maps/model/i;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/i;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/CircleOptions;->CREATOR:Lcom/google/android/gms/maps/model/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->Hd:Lcom/google/android/gms/maps/model/LatLng;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->Hb:D

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->mStrokeWidth:F

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->GW:I

    iput v2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->GZ:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->Ha:F

    iput-boolean v3, p0, Lcom/google/android/gms/maps/model/CircleOptions;->GX:Z

    iput-boolean v2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->GY:Z

    iput v3, p0, Lcom/google/android/gms/maps/model/CircleOptions;->Hc:I

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/maps/model/LatLng;DFIIFZZ)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->Hd:Lcom/google/android/gms/maps/model/LatLng;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->Hb:D

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->mStrokeWidth:F

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->GW:I

    iput v2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->GZ:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->Ha:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->GX:Z

    iput-boolean v2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->GY:Z

    iput p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->Hc:I

    iput-object p2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->Hd:Lcom/google/android/gms/maps/model/LatLng;

    iput-wide p3, p0, Lcom/google/android/gms/maps/model/CircleOptions;->Hb:D

    iput p5, p0, Lcom/google/android/gms/maps/model/CircleOptions;->mStrokeWidth:F

    iput p6, p0, Lcom/google/android/gms/maps/model/CircleOptions;->GW:I

    iput p7, p0, Lcom/google/android/gms/maps/model/CircleOptions;->GZ:I

    iput p8, p0, Lcom/google/android/gms/maps/model/CircleOptions;->Ha:F

    iput-boolean p9, p0, Lcom/google/android/gms/maps/model/CircleOptions;->GX:Z

    iput-boolean p10, p0, Lcom/google/android/gms/maps/model/CircleOptions;->GY:Z

    return-void
.end method


# virtual methods
.method public Lk()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->Hd:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public Ll()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->Ha:F

    return v0
.end method

.method public Lm()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->mStrokeWidth:F

    return v0
.end method

.method public Ln()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->GY:Z

    return v0
.end method

.method Lo()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->Hc:I

    return v0
.end method

.method public Lp()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->GW:I

    return v0
.end method

.method public Lq()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->GZ:I

    return v0
.end method

.method public getRadius()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->Hb:D

    return-wide v0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->GX:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/i;->Kd(Lcom/google/android/gms/maps/model/CircleOptions;Landroid/os/Parcel;I)V

    return-void
.end method
