.class public Lcom/google/android/gms/location/internal/LocationRequestInternal;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field static final AV:Ljava/util/List;

.field public static final CREATOR:Lcom/google/android/gms/location/internal/s;


# instance fields
.field AP:Z

.field AQ:Lcom/google/android/gms/location/LocationRequest;

.field AR:Ljava/lang/String;

.field AS:Z

.field private final AT:I

.field AU:Z

.field AW:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->AV:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/location/internal/s;

    invoke-direct {v0}, Lcom/google/android/gms/location/internal/s;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->CREATOR:Lcom/google/android/gms/location/internal/s;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/location/LocationRequest;ZLjava/util/List;Ljava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->AT:I

    iput-object p2, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->AQ:Lcom/google/android/gms/location/LocationRequest;

    iput-boolean p3, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->AP:Z

    iput-object p4, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->AW:Ljava/util/List;

    iput-object p5, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->AR:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->AS:Z

    iput-boolean p7, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->AU:Z

    return-void
.end method


# virtual methods
.method Fo()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->AT:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/gms/location/internal/LocationRequestInternal;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/google/android/gms/location/internal/LocationRequestInternal;

    iget-object v1, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->AQ:Lcom/google/android/gms/location/LocationRequest;

    iget-object v2, p1, Lcom/google/android/gms/location/internal/LocationRequestInternal;->AQ:Lcom/google/android/gms/location/LocationRequest;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/u;->hH(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    :goto_0
    return v0

    :cond_1
    return v0

    :cond_2
    iget-boolean v1, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->AP:Z

    iget-boolean v2, p1, Lcom/google/android/gms/location/internal/LocationRequestInternal;->AP:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->AS:Z

    iget-boolean v2, p1, Lcom/google/android/gms/location/internal/LocationRequestInternal;->AS:Z

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->AW:Ljava/util/List;

    iget-object v2, p1, Lcom/google/android/gms/location/internal/LocationRequestInternal;->AW:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/u;->hH(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->AU:Z

    iget-boolean v2, p1, Lcom/google/android/gms/location/internal/LocationRequestInternal;->AU:Z

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->AQ:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationRequest;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->AQ:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {v1}, Lcom/google/android/gms/location/LocationRequest;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->AR:Ljava/lang/String;

    if-nez v1, :cond_0

    :goto_0
    const-string/jumbo v1, " trigger="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->AP:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " hideAppOps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->AS:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " clients="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->AW:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " forceCoarseLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->AU:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v1, " tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->AR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/internal/s;->FO(Lcom/google/android/gms/location/internal/LocationRequestInternal;Landroid/os/Parcel;I)V

    return-void
.end method
