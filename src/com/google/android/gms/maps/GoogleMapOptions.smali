.class public final Lcom/google/android/gms/maps/GoogleMapOptions;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/a;


# instance fields
.field private He:Lcom/google/android/gms/maps/model/LatLngBounds;

.field private Hf:I

.field private Hg:Ljava/lang/Boolean;

.field private Hh:Ljava/lang/Boolean;

.field private Hi:Ljava/lang/Float;

.field private final Hj:I

.field private Hk:Ljava/lang/Boolean;

.field private Hl:Ljava/lang/Boolean;

.field private Hm:Ljava/lang/Boolean;

.field private Hn:Ljava/lang/Boolean;

.field private Ho:Ljava/lang/Boolean;

.field private Hp:Ljava/lang/Boolean;

.field private Hq:Ljava/lang/Boolean;

.field private Hr:Ljava/lang/Boolean;

.field private Hs:Lcom/google/android/gms/maps/model/CameraPosition;

.field private Ht:Ljava/lang/Float;

.field private Hu:Ljava/lang/Boolean;


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

    iput v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Hf:I

    iput-object v1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Hi:Ljava/lang/Float;

    iput-object v1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Ht:Ljava/lang/Float;

    iput-object v1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->He:Lcom/google/android/gms/maps/model/LatLngBounds;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Hj:I

    return-void
.end method

.method constructor <init>(IBBILcom/google/android/gms/maps/model/CameraPosition;BBBBBBBBBLjava/lang/Float;Ljava/lang/Float;Lcom/google/android/gms/maps/model/LatLngBounds;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Hf:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Hi:Ljava/lang/Float;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Ht:Ljava/lang/Float;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->He:Lcom/google/android/gms/maps/model/LatLngBounds;

    iput p1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Hj:I

    invoke-static {p2}, Lcom/google/android/gms/maps/a/a;->Lu(B)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Hn:Ljava/lang/Boolean;

    invoke-static {p3}, Lcom/google/android/gms/maps/a/a;->Lu(B)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Hl:Ljava/lang/Boolean;

    iput p4, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Hf:I

    iput-object p5, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Hs:Lcom/google/android/gms/maps/model/CameraPosition;

    invoke-static {p6}, Lcom/google/android/gms/maps/a/a;->Lu(B)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Ho:Ljava/lang/Boolean;

    invoke-static {p7}, Lcom/google/android/gms/maps/a/a;->Lu(B)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Hg:Ljava/lang/Boolean;

    invoke-static {p8}, Lcom/google/android/gms/maps/a/a;->Lu(B)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Hm:Ljava/lang/Boolean;

    invoke-static {p9}, Lcom/google/android/gms/maps/a/a;->Lu(B)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Hr:Ljava/lang/Boolean;

    invoke-static {p10}, Lcom/google/android/gms/maps/a/a;->Lu(B)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Hp:Ljava/lang/Boolean;

    invoke-static {p11}, Lcom/google/android/gms/maps/a/a;->Lu(B)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Hu:Ljava/lang/Boolean;

    invoke-static {p12}, Lcom/google/android/gms/maps/a/a;->Lu(B)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Hh:Ljava/lang/Boolean;

    invoke-static {p13}, Lcom/google/android/gms/maps/a/a;->Lu(B)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Hk:Ljava/lang/Boolean;

    invoke-static/range {p14 .. p14}, Lcom/google/android/gms/maps/a/a;->Lu(B)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Hq:Ljava/lang/Boolean;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Hi:Ljava/lang/Float;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Ht:Ljava/lang/Float;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->He:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-void
.end method


# virtual methods
.method LA()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Ho:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/a/a;->Lv(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method LB()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Hh:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/a/a;->Lv(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method LC()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Hj:I

    return v0
.end method

.method LD()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Hp:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/a/a;->Lv(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method LE()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Hl:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/a/a;->Lv(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method public LF()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Hi:Ljava/lang/Float;

    return-object v0
.end method

.method public LG()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Ht:Ljava/lang/Float;

    return-object v0
.end method

.method public LH()Lcom/google/android/gms/maps/model/CameraPosition;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Hs:Lcom/google/android/gms/maps/model/CameraPosition;

    return-object v0
.end method

.method LI()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Hr:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/a/a;->Lv(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method LJ()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Hg:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/a/a;->Lv(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method LK()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Hk:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/a/a;->Lv(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method public LL()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Hf:I

    return v0
.end method

.method LM()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Hu:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/a/a;->Lv(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method Lw()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Hn:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/a/a;->Lv(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method public Lx()Lcom/google/android/gms/maps/model/LatLngBounds;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->He:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-object v0
.end method

.method Ly()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Hq:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/a/a;->Lv(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method Lz()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Hm:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/a/a;->Lv(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/a;->LO(Lcom/google/android/gms/maps/GoogleMapOptions;Landroid/os/Parcel;I)V

    return-void
.end method
