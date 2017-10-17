.class public Lcom/google/android/gms/contextmanager/fence/internal/FenceStateImpl;
.super Lcom/google/android/gms/awareness/fence/FenceState;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final JU:I

.field private final JV:I

.field private final JW:J

.field private final JX:Ljava/lang/String;

.field private final JY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/contextmanager/fence/internal/g;

    invoke-direct {v0}, Lcom/google/android/gms/contextmanager/fence/internal/g;-><init>()V

    sput-object v0, Lcom/google/android/gms/contextmanager/fence/internal/FenceStateImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IIJLjava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/awareness/fence/FenceState;-><init>()V

    iput p1, p0, Lcom/google/android/gms/contextmanager/fence/internal/FenceStateImpl;->JV:I

    iput p2, p0, Lcom/google/android/gms/contextmanager/fence/internal/FenceStateImpl;->JU:I

    iput-wide p3, p0, Lcom/google/android/gms/contextmanager/fence/internal/FenceStateImpl;->JW:J

    iput-object p5, p0, Lcom/google/android/gms/contextmanager/fence/internal/FenceStateImpl;->JX:Ljava/lang/String;

    iput p6, p0, Lcom/google/android/gms/contextmanager/fence/internal/FenceStateImpl;->JY:I

    return-void
.end method


# virtual methods
.method public Pq()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/FenceStateImpl;->JY:I

    return v0
.end method

.method public Pr()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/FenceStateImpl;->JW:J

    return-wide v0
.end method

.method Ps()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/FenceStateImpl;->JV:I

    return v0
.end method

.method public Pt()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/FenceStateImpl;->JU:I

    return v0
.end method

.method public Pu()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/FenceStateImpl;->JX:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/contextmanager/fence/internal/g;->OR(Lcom/google/android/gms/contextmanager/fence/internal/FenceStateImpl;Landroid/os/Parcel;I)V

    return-void
.end method
