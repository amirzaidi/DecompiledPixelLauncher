.class public final Lcom/google/android/gms/maps/model/PolylineOptions;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/model/g;


# instance fields
.field private Fj:Z

.field private final Fk:Ljava/util/List;

.field private Fl:Z

.field private Fm:I

.field private Fn:Z

.field private Fo:F

.field private final Fp:I

.field private Fq:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/maps/model/g;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/g;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/PolylineOptions;->CREATOR:Lcom/google/android/gms/maps/model/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->Fq:F

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->Fm:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->Fo:F

    iput-boolean v2, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->Fl:Z

    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->Fj:Z

    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->Fn:Z

    iput v2, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->Fp:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->Fk:Ljava/util/List;

    return-void
.end method

.method constructor <init>(ILjava/util/List;FIFZZZ)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->Fq:F

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->Fm:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->Fo:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->Fl:Z

    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->Fj:Z

    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->Fn:Z

    iput p1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->Fp:I

    iput-object p2, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->Fk:Ljava/util/List;

    iput p3, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->Fq:F

    iput p4, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->Fm:I

    iput p5, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->Fo:F

    iput-boolean p6, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->Fl:Z

    iput-boolean p7, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->Fj:Z

    iput-boolean p8, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->Fn:Z

    return-void
.end method


# virtual methods
.method public Kf()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->Fm:I

    return v0
.end method

.method public Kg()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->Fo:F

    return v0
.end method

.method public Kh()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->Fj:Z

    return v0
.end method

.method public Ki()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->Fn:Z

    return v0
.end method

.method Kj()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->Fp:I

    return v0
.end method

.method public Kk()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->Fk:Ljava/util/List;

    return-object v0
.end method

.method public getWidth()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->Fq:F

    return v0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->Fl:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/g;->IW(Lcom/google/android/gms/maps/model/PolylineOptions;Landroid/os/Parcel;I)V

    return-void
.end method
