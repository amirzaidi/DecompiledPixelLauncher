.class public Lcom/google/android/gms/awareness/snapshot/internal/BeaconStateImpl$TypeFilterImpl;
.super Lcom/google/android/gms/awareness/state/BeaconState$TypeFilter;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final mG:Lcom/google/android/gms/internal/E;

.field private final mH:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/awareness/snapshot/internal/e;

    invoke-direct {v0}, Lcom/google/android/gms/awareness/snapshot/internal/e;-><init>()V

    sput-object v0, Lcom/google/android/gms/awareness/snapshot/internal/BeaconStateImpl$TypeFilterImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(I[B)V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/awareness/state/BeaconState$TypeFilter;-><init>()V

    iput p1, p0, Lcom/google/android/gms/awareness/snapshot/internal/BeaconStateImpl$TypeFilterImpl;->mH:I

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p2}, Lcom/google/android/gms/internal/E;->sK([B)Lcom/google/android/gms/internal/E;
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzaxw; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/BeaconStateImpl$TypeFilterImpl;->mG:Lcom/google/android/gms/internal/E;

    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v1, "BeaconStateImpl"

    const-string/jumbo v2, "Could not deserialize BeaconFence.BeaconTypeFilter"

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/P;->tg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, p1, :cond_2

    instance-of v2, p1, Lcom/google/android/gms/awareness/snapshot/internal/BeaconStateImpl$TypeFilterImpl;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/google/android/gms/awareness/snapshot/internal/BeaconStateImpl$TypeFilterImpl;

    invoke-virtual {p0}, Lcom/google/android/gms/awareness/snapshot/internal/BeaconStateImpl$TypeFilterImpl;->qk()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/awareness/snapshot/internal/BeaconStateImpl$TypeFilterImpl;->qk()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_0
    :goto_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    return v0

    :cond_3
    return v1

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/awareness/snapshot/internal/BeaconStateImpl$TypeFilterImpl;->ql()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/awareness/snapshot/internal/BeaconStateImpl$TypeFilterImpl;->ql()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/awareness/snapshot/internal/BeaconStateImpl$TypeFilterImpl;->qj()[B

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/awareness/snapshot/internal/BeaconStateImpl$TypeFilterImpl;->qj()[B

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/awareness/snapshot/internal/BeaconStateImpl$TypeFilterImpl;->qk()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-virtual {p0}, Lcom/google/android/gms/awareness/snapshot/internal/BeaconStateImpl$TypeFilterImpl;->ql()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/google/android/gms/awareness/snapshot/internal/BeaconStateImpl$TypeFilterImpl;->qj()[B

    move-result-object v2

    const/4 v3, 0x2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/awareness/snapshot/internal/BeaconStateImpl$TypeFilterImpl;->qj()[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-static {v1}, Lcom/google/android/gms/common/internal/u;->hI([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public qj()[B
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/BeaconStateImpl$TypeFilterImpl;->mG:Lcom/google/android/gms/internal/E;

    if-nez v0, :cond_1

    :cond_0
    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/BeaconStateImpl$TypeFilterImpl;->mG:Lcom/google/android/gms/internal/E;

    iget-object v0, v0, Lcom/google/android/gms/internal/E;->pn:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/BeaconStateImpl$TypeFilterImpl;->mG:Lcom/google/android/gms/internal/E;

    iget-object v0, v0, Lcom/google/android/gms/internal/E;->pn:[B

    array-length v0, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/BeaconStateImpl$TypeFilterImpl;->mG:Lcom/google/android/gms/internal/E;

    iget-object v0, v0, Lcom/google/android/gms/internal/E;->pn:[B

    return-object v0
.end method

.method public qk()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/BeaconStateImpl$TypeFilterImpl;->mG:Lcom/google/android/gms/internal/E;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/BeaconStateImpl$TypeFilterImpl;->mG:Lcom/google/android/gms/internal/E;

    iget-object v0, v0, Lcom/google/android/gms/internal/E;->pk:Ljava/lang/String;

    return-object v0

    :cond_0
    return-object v1
.end method

.method public ql()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/BeaconStateImpl$TypeFilterImpl;->mG:Lcom/google/android/gms/internal/E;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/BeaconStateImpl$TypeFilterImpl;->mG:Lcom/google/android/gms/internal/E;

    iget-object v0, v0, Lcom/google/android/gms/internal/E;->pm:Ljava/lang/String;

    return-object v0

    :cond_0
    return-object v1
.end method

.method qm()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/BeaconStateImpl$TypeFilterImpl;->mG:Lcom/google/android/gms/internal/E;

    invoke-static {v0}, Lcom/google/android/gms/internal/aI;->uW(Lcom/google/android/gms/internal/aI;)[B

    move-result-object v0

    return-object v0
.end method

.method qn()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/BeaconStateImpl$TypeFilterImpl;->mH:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/gms/awareness/snapshot/internal/BeaconStateImpl$TypeFilterImpl;->qk()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/awareness/snapshot/internal/BeaconStateImpl$TypeFilterImpl;->ql()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/awareness/snapshot/internal/BeaconStateImpl$TypeFilterImpl;->qj()[B

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/awareness/snapshot/internal/BeaconStateImpl$TypeFilterImpl;->qj()[B

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "null"

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/awareness/snapshot/internal/e;->pT(Lcom/google/android/gms/awareness/snapshot/internal/BeaconStateImpl$TypeFilterImpl;Landroid/os/Parcel;I)V

    return-void
.end method
