.class public final Lcom/google/android/gms/awareness/snapshot/internal/BeaconStateImpl;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final nh:Ljava/util/ArrayList;

.field private final ni:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/awareness/snapshot/internal/j;

    invoke-direct {v0}, Lcom/google/android/gms/awareness/snapshot/internal/j;-><init>()V

    sput-object v0, Lcom/google/android/gms/awareness/snapshot/internal/BeaconStateImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/awareness/snapshot/internal/BeaconStateImpl;->ni:I

    iput-object p2, p0, Lcom/google/android/gms/awareness/snapshot/internal/BeaconStateImpl;->nh:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method rb()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/BeaconStateImpl;->nh:Ljava/util/ArrayList;

    return-object v0
.end method

.method rc()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/BeaconStateImpl;->ni:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/BeaconStateImpl;->nh:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "BeaconState: empty"

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/BeaconStateImpl;->nh:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "BeaconState: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/BeaconStateImpl;->nh:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/awareness/state/a;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/awareness/snapshot/internal/j;->qF(Lcom/google/android/gms/awareness/snapshot/internal/BeaconStateImpl;Landroid/os/Parcel;I)V

    return-void
.end method
