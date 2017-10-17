.class public final Lcom/google/android/gms/maps/GoogleMapOptions;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/a;


# instance fields
.field private FA:I

.field private FB:Ljava/lang/Boolean;

.field private FC:Ljava/lang/Boolean;

.field private FD:Ljava/lang/Float;

.field private final FE:I

.field private FF:Ljava/lang/Boolean;

.field private FG:Ljava/lang/Boolean;

.field private FH:Ljava/lang/Boolean;

.field private FI:Ljava/lang/Boolean;

.field private FJ:Ljava/lang/Boolean;

.field private FK:Ljava/lang/Boolean;

.field private FL:Ljava/lang/Boolean;

.field private FM:Ljava/lang/Boolean;

.field private FN:Lcom/google/android/gms/maps/model/CameraPosition;

.field private FO:Ljava/lang/Float;

.field private FP:Ljava/lang/Boolean;

.field private Fz:Lcom/google/android/gms/maps/model/LatLngBounds;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/maps/a;

    invoke-direct {v0}, Lcom/google/android/gms/maps/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/GoogleMapOptions;->CREATOR:Lcom/google/android/gms/maps/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->FA:I

    iput-object v1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->FD:Ljava/lang/Float;

    iput-object v1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->FO:Ljava/lang/Float;

    iput-object v1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Fz:Lcom/google/android/gms/maps/model/LatLngBounds;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->FE:I

    return-void
.end method

.method constructor <init>(IBBILcom/google/android/gms/maps/model/CameraPosition;BBBBBBBBBLjava/lang/Float;Ljava/lang/Float;Lcom/google/android/gms/maps/model/LatLngBounds;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->FA:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->FD:Ljava/lang/Float;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->FO:Ljava/lang/Float;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Fz:Lcom/google/android/gms/maps/model/LatLngBounds;

    iput p1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->FE:I

    invoke-static {p2}, Lcom/google/android/gms/maps/a/a;->KB(B)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->FI:Ljava/lang/Boolean;

    invoke-static {p3}, Lcom/google/android/gms/maps/a/a;->KB(B)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->FG:Ljava/lang/Boolean;

    iput p4, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->FA:I

    iput-object p5, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->FN:Lcom/google/android/gms/maps/model/CameraPosition;

    invoke-static {p6}, Lcom/google/android/gms/maps/a/a;->KB(B)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->FJ:Ljava/lang/Boolean;

    invoke-static {p7}, Lcom/google/android/gms/maps/a/a;->KB(B)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->FB:Ljava/lang/Boolean;

    invoke-static {p8}, Lcom/google/android/gms/maps/a/a;->KB(B)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->FH:Ljava/lang/Boolean;

    invoke-static {p9}, Lcom/google/android/gms/maps/a/a;->KB(B)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->FM:Ljava/lang/Boolean;

    invoke-static {p10}, Lcom/google/android/gms/maps/a/a;->KB(B)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->FK:Ljava/lang/Boolean;

    invoke-static {p11}, Lcom/google/android/gms/maps/a/a;->KB(B)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->FP:Ljava/lang/Boolean;

    invoke-static {p12}, Lcom/google/android/gms/maps/a/a;->KB(B)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->FC:Ljava/lang/Boolean;

    invoke-static {p13}, Lcom/google/android/gms/maps/a/a;->KB(B)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->FF:Ljava/lang/Boolean;

    invoke-static/range {p14 .. p14}, Lcom/google/android/gms/maps/a/a;->KB(B)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->FL:Ljava/lang/Boolean;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->FD:Ljava/lang/Float;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->FO:Ljava/lang/Float;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Fz:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-void
.end method


# virtual methods
.method KD()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->FI:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/a/a;->KC(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method public KE()Lcom/google/android/gms/maps/model/LatLngBounds;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Fz:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-object v0
.end method

.method KF()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->FL:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/a/a;->KC(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method KG()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->FH:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/a/a;->KC(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method KH()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->FJ:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/a/a;->KC(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method KI()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->FC:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/a/a;->KC(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method KJ()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->FE:I

    return v0
.end method

.method KK()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->FK:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/a/a;->KC(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method KL()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->FG:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/a/a;->KC(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method public KM()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->FD:Ljava/lang/Float;

    return-object v0
.end method

.method public KN()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->FO:Ljava/lang/Float;

    return-object v0
.end method

.method public KO()Lcom/google/android/gms/maps/model/CameraPosition;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->FN:Lcom/google/android/gms/maps/model/CameraPosition;

    return-object v0
.end method

.method KP()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->FM:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/a/a;->KC(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method KQ()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->FB:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/a/a;->KC(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method KR()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->FF:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/a/a;->KC(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method public KS()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->FA:I

    return v0
.end method

.method KT()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->FP:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/a/a;->KC(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/a;->KV(Lcom/google/android/gms/maps/GoogleMapOptions;Landroid/os/Parcel;I)V

    return-void
.end method
