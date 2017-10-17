.class public Lcom/google/android/gms/location/GestureEvent;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/g;


# instance fields
.field private final Ee:Z

.field private final Ef:Z

.field private final Eg:I

.field private final Eh:J

.field private final Ei:J

.field private final Ej:I

.field private final Ek:I


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

    iput p1, p0, Lcom/google/android/gms/location/GestureEvent;->Eg:I

    iput p2, p0, Lcom/google/android/gms/location/GestureEvent;->Ek:I

    iput-wide p3, p0, Lcom/google/android/gms/location/GestureEvent;->Eh:J

    iput-wide p5, p0, Lcom/google/android/gms/location/GestureEvent;->Ei:J

    iput p7, p0, Lcom/google/android/gms/location/GestureEvent;->Ej:I

    iput-boolean p8, p0, Lcom/google/android/gms/location/GestureEvent;->Ef:Z

    iput-boolean p9, p0, Lcom/google/android/gms/location/GestureEvent;->Ee:Z

    return-void
.end method


# virtual methods
.method public HM()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/GestureEvent;->Ef:Z

    return v0
.end method

.method public HN()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/GestureEvent;->Ej:I

    return v0
.end method

.method public HO()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/GestureEvent;->Ee:Z

    return v0
.end method

.method public HP()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/GestureEvent;->Ek:I

    return v0
.end method

.method public HQ()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/GestureEvent;->Eg:I

    return v0
.end method

.method public HR()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/location/GestureEvent;->Ei:J

    return-wide v0
.end method

.method public HS()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/location/GestureEvent;->Eh:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/location/GestureEvent;->CREATOR:Lcom/google/android/gms/location/g;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/g;->HV(Lcom/google/android/gms/location/GestureEvent;Landroid/os/Parcel;I)V

    return-void
.end method
