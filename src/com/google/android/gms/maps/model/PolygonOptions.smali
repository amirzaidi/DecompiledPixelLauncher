.class public final Lcom/google/android/gms/maps/model/PolygonOptions;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/model/m;


# instance fields
.field private final FA:I

.field private final FB:Ljava/util/List;

.field private Ft:Z

.field private final Fu:Ljava/util/List;

.field private Fv:I

.field private Fw:Z

.field private Fx:Z

.field private Fy:I

.field private Fz:F

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

    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Fv:I

    iput v1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Fy:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Fz:F

    iput-boolean v2, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Fw:Z

    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Ft:Z

    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Fx:Z

    iput v2, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->FA:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Fu:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->FB:Ljava/util/List;

    return-void
.end method

.method constructor <init>(ILjava/util/List;Ljava/util/List;FIIFZZZ)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->mStrokeWidth:F

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Fv:I

    iput v1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Fy:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Fz:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Fw:Z

    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Ft:Z

    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Fx:Z

    iput p1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->FA:I

    iput-object p2, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Fu:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->FB:Ljava/util/List;

    iput p4, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->mStrokeWidth:F

    iput p5, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Fv:I

    iput p6, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Fy:I

    iput p7, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Fz:F

    iput-boolean p8, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Fw:Z

    iput-boolean p9, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Ft:Z

    iput-boolean p10, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Fx:Z

    return-void
.end method


# virtual methods
.method public JC()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Fz:F

    return v0
.end method

.method public JD()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Ft:Z

    return v0
.end method

.method public JE()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->mStrokeWidth:F

    return v0
.end method

.method JF()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->FB:Ljava/util/List;

    return-object v0
.end method

.method public JG()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Fx:Z

    return v0
.end method

.method JH()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->FA:I

    return v0
.end method

.method public JI()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Fv:I

    return v0
.end method

.method public JJ()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Fy:I

    return v0
.end method

.method public JK()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Fu:Ljava/util/List;

    return-object v0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Fw:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/m;->KJ(Lcom/google/android/gms/maps/model/PolygonOptions;Landroid/os/Parcel;I)V

    return-void
.end method
