.class public final Lcom/google/android/gms/maps/model/PolygonOptions;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/model/m;


# instance fields
.field private DO:Z

.field private final DP:Ljava/util/List;

.field private DQ:I

.field private DR:Z

.field private DS:Z

.field private DT:I

.field private DU:F

.field private final DV:I

.field private final DW:Ljava/util/List;

.field private mStrokeWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/maps/model/m;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/m;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/PolygonOptions;->CREATOR:Lcom/google/android/gms/maps/model/m;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->mStrokeWidth:F

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->DQ:I

    iput v1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->DT:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->DU:F

    iput-boolean v2, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->DR:Z

    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->DO:Z

    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->DS:Z

    iput v2, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->DV:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->DP:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->DW:Ljava/util/List;

    return-void
.end method

.method constructor <init>(ILjava/util/List;Ljava/util/List;FIIFZZZ)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->mStrokeWidth:F

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->DQ:I

    iput v1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->DT:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->DU:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->DR:Z

    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->DO:Z

    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->DS:Z

    iput p1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->DV:I

    iput-object p2, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->DP:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->DW:Ljava/util/List;

    iput p4, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->mStrokeWidth:F

    iput p5, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->DQ:I

    iput p6, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->DT:I

    iput p7, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->DU:F

    iput-boolean p8, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->DR:Z

    iput-boolean p9, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->DO:Z

    iput-boolean p10, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->DS:Z

    return-void
.end method


# virtual methods
.method public IJ()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->DU:F

    return v0
.end method

.method public IK()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->DO:Z

    return v0
.end method

.method public IL()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->mStrokeWidth:F

    return v0
.end method

.method IM()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->DW:Ljava/util/List;

    return-object v0
.end method

.method public IN()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->DS:Z

    return v0
.end method

.method IO()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->DV:I

    return v0
.end method

.method public IP()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->DQ:I

    return v0
.end method

.method public IQ()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->DT:I

    return v0
.end method

.method public IR()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->DP:Ljava/util/List;

    return-object v0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->DR:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/m;->JQ(Lcom/google/android/gms/maps/model/PolygonOptions;Landroid/os/Parcel;I)V

    return-void
.end method
