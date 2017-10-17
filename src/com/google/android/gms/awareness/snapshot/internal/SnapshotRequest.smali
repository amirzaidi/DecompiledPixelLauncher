.class public Lcom/google/android/gms/awareness/snapshot/internal/SnapshotRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field private static final ga:[I


# instance fields
.field private final fZ:Ljava/util/ArrayList;

.field private final gb:I

.field private final gc:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [I

    const/16 v1, 0x2712

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0x2713

    const/4 v2, 0x1

    aput v1, v0, v2

    const/16 v1, 0x2714

    const/4 v2, 0x2

    aput v1, v0, v2

    const/16 v1, 0x2715

    const/4 v2, 0x3

    aput v1, v0, v2

    const/16 v1, 0x2716

    const/4 v2, 0x4

    aput v1, v0, v2

    const/16 v1, 0x2717

    const/4 v2, 0x5

    aput v1, v0, v2

    const/16 v1, 0x2718

    const/4 v2, 0x6

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/gms/awareness/snapshot/internal/SnapshotRequest;->ga:[I

    new-instance v0, Lcom/google/android/gms/awareness/snapshot/internal/c;

    invoke-direct {v0}, Lcom/google/android/gms/awareness/snapshot/internal/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/awareness/snapshot/internal/SnapshotRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IILjava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/awareness/snapshot/internal/SnapshotRequest;->gb:I

    iput p2, p0, Lcom/google/android/gms/awareness/snapshot/internal/SnapshotRequest;->gc:I

    iput-object p3, p0, Lcom/google/android/gms/awareness/snapshot/internal/SnapshotRequest;->fZ:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/google/android/gms/awareness/snapshot/internal/SnapshotRequest;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/google/android/gms/awareness/snapshot/internal/SnapshotRequest;

    iget v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/SnapshotRequest;->gc:I

    invoke-virtual {p1}, Lcom/google/android/gms/awareness/snapshot/internal/SnapshotRequest;->fc()I

    move-result v3

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/SnapshotRequest;->fZ:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/awareness/snapshot/internal/SnapshotRequest;->fa()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_5

    move v3, v1

    :goto_1
    xor-int/2addr v0, v3

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/SnapshotRequest;->fZ:Ljava/util/ArrayList;

    if-nez v0, :cond_7

    :cond_0
    return v2

    :cond_1
    return v2

    :cond_2
    return v1

    :cond_3
    return v1

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    move v3, v2

    goto :goto_1

    :cond_6
    return v1

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/SnapshotRequest;->fZ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/awareness/snapshot/internal/SnapshotRequest;->fa()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v0, v3, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/SnapshotRequest;->fZ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/awareness/snapshot/internal/BeaconStateImpl$TypeFilterImpl;

    invoke-virtual {p1}, Lcom/google/android/gms/awareness/snapshot/internal/SnapshotRequest;->fa()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    return v1

    :cond_9
    return v1
.end method

.method public fa()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/SnapshotRequest;->fZ:Ljava/util/ArrayList;

    return-object v0
.end method

.method fb()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/SnapshotRequest;->gb:I

    return v0
.end method

.method public fc()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/SnapshotRequest;->gc:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/SnapshotRequest;->fZ:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    move v1, v2

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v3, p0, Lcom/google/android/gms/awareness/snapshot/internal/SnapshotRequest;->gc:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/u;->kw([Ljava/lang/Object;)I

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/SnapshotRequest;->fZ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/awareness/snapshot/internal/BeaconStateImpl$TypeFilterImpl;

    invoke-virtual {v0}, Lcom/google/android/gms/awareness/snapshot/internal/BeaconStateImpl$TypeFilterImpl;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0xd

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/awareness/snapshot/internal/c;->eI(Lcom/google/android/gms/awareness/snapshot/internal/SnapshotRequest;Landroid/os/Parcel;I)V

    return-void
.end method
