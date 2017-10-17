.class public Lcom/google/android/gms/location/GestureEvent;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/g;


# instance fields
.field private final CA:Z

.field private final CB:I

.field private final CC:J

.field private final CD:J

.field private final CE:I

.field private final CF:I

.field private final Cz:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/g;

    invoke-direct {v0}, Lcom/google/android/gms/location/g;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/GestureEvent;->CREATOR:Lcom/google/android/gms/location/g;

    return-void
.end method

.method constructor <init>(IIJJIZZ)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/GestureEvent;->CB:I

    iput p2, p0, Lcom/google/android/gms/location/GestureEvent;->CF:I

    iput-wide p3, p0, Lcom/google/android/gms/location/GestureEvent;->CC:J

    iput-wide p5, p0, Lcom/google/android/gms/location/GestureEvent;->CD:J

    iput p7, p0, Lcom/google/android/gms/location/GestureEvent;->CE:I

    iput-boolean p8, p0, Lcom/google/android/gms/location/GestureEvent;->CA:Z

    iput-boolean p9, p0, Lcom/google/android/gms/location/GestureEvent;->Cz:Z

    return-void
.end method


# virtual methods
.method public GT()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/GestureEvent;->CA:Z

    return v0
.end method

.method public GU()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/GestureEvent;->CE:I

    return v0
.end method

.method public GV()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/GestureEvent;->Cz:Z

    return v0
.end method

.method public GW()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/GestureEvent;->CF:I

    return v0
.end method

.method public GX()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/GestureEvent;->CB:I

    return v0
.end method

.method public GY()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/location/GestureEvent;->CD:J

    return-wide v0
.end method

.method public GZ()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/location/GestureEvent;->CC:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/location/GestureEvent;->CREATOR:Lcom/google/android/gms/location/g;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/g;->Hc(Lcom/google/android/gms/location/GestureEvent;Landroid/os/Parcel;I)V

    return-void
.end method
