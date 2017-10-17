.class public final Lcom/google/android/gms/maps/model/Tile;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/model/e;


# instance fields
.field private final Fa:I

.field public final Fb:I

.field public final Fc:I

.field public final Fd:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/maps/model/e;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/e;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/Tile;->CREATOR:Lcom/google/android/gms/maps/model/e;

    return-void
.end method

.method constructor <init>(III[B)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/maps/model/Tile;->Fa:I

    iput p2, p0, Lcom/google/android/gms/maps/model/Tile;->Fb:I

    iput p3, p0, Lcom/google/android/gms/maps/model/Tile;->Fc:I

    iput-object p4, p0, Lcom/google/android/gms/maps/model/Tile;->Fd:[B

    return-void
.end method

.method public constructor <init>(II[B)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/maps/model/Tile;-><init>(III[B)V

    return-void
.end method


# virtual methods
.method Kd()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/Tile;->Fa:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/e;->IS(Lcom/google/android/gms/maps/model/Tile;Landroid/os/Parcel;I)V

    return-void
.end method
