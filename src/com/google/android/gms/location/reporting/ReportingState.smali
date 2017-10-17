.class public Lcom/google/android/gms/location/reporting/ReportingState;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/reporting/a;


# instance fields
.field private final Bk:Ljava/lang/Integer;

.field private final Bl:Z

.field private final Bm:I

.field private final Bn:Z

.field private final Bo:Z

.field private final Bp:I

.field private final Bq:I

.field private final Br:I

.field private final Bs:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/reporting/a;

    invoke-direct {v0}, Lcom/google/android/gms/location/reporting/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/reporting/ReportingState;->CREATOR:Lcom/google/android/gms/location/reporting/a;

    return-void
.end method

.method public constructor <init>(IIIZZIILjava/lang/Integer;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/reporting/ReportingState;->Bs:I

    iput p2, p0, Lcom/google/android/gms/location/reporting/ReportingState;->Br:I

    iput p3, p0, Lcom/google/android/gms/location/reporting/ReportingState;->Bq:I

    iput-boolean p4, p0, Lcom/google/android/gms/location/reporting/ReportingState;->Bn:Z

    iput-boolean p5, p0, Lcom/google/android/gms/location/reporting/ReportingState;->Bo:Z

    iput p6, p0, Lcom/google/android/gms/location/reporting/ReportingState;->Bp:I

    iput p7, p0, Lcom/google/android/gms/location/reporting/ReportingState;->Bm:I

    iput-object p8, p0, Lcom/google/android/gms/location/reporting/ReportingState;->Bk:Ljava/lang/Integer;

    iput-boolean p9, p0, Lcom/google/android/gms/location/reporting/ReportingState;->Bl:Z

    return-void
.end method


# virtual methods
.method FY()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/reporting/ReportingState;->Bk:Ljava/lang/Integer;

    return-object v0
.end method

.method public FZ()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/reporting/ReportingState;->Bn:Z

    return v0
.end method

.method public Ga()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/reporting/ReportingState;->Bo:Z

    return v0
.end method

.method public Gb()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/reporting/ReportingState;->Bq:I

    invoke-static {v0}, Lcom/google/android/gms/location/reporting/f;->FX(I)I

    move-result v0

    return v0
.end method

.method Gc()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/reporting/ReportingState;->Bm:I

    invoke-static {v0}, Lcom/google/android/gms/location/reporting/c;->FT(I)I

    move-result v0

    return v0
.end method

.method public Gd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/reporting/ReportingState;->Bl:Z

    return v0
.end method

.method public Ge()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/reporting/ReportingState;->Bp:I

    invoke-static {v0}, Lcom/google/android/gms/location/reporting/c;->FT(I)I

    move-result v0

    return v0
.end method

.method public Gf()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/reporting/ReportingState;->Br:I

    invoke-static {v0}, Lcom/google/android/gms/location/reporting/f;->FX(I)I

    move-result v0

    return v0
.end method

.method Gg()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/reporting/ReportingState;->Bs:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/gms/location/reporting/ReportingState;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/google/android/gms/location/reporting/ReportingState;

    iget v1, p0, Lcom/google/android/gms/location/reporting/ReportingState;->Br:I

    iget v2, p1, Lcom/google/android/gms/location/reporting/ReportingState;->Br:I

    if-eq v1, v2, :cond_2

    :cond_0
    :goto_0
    return v0

    :cond_1
    return v0

    :cond_2
    iget v1, p0, Lcom/google/android/gms/location/reporting/ReportingState;->Bq:I

    iget v2, p1, Lcom/google/android/gms/location/reporting/ReportingState;->Bq:I

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/location/reporting/ReportingState;->Bn:Z

    iget-boolean v2, p1, Lcom/google/android/gms/location/reporting/ReportingState;->Bn:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/location/reporting/ReportingState;->Bo:Z

    iget-boolean v2, p1, Lcom/google/android/gms/location/reporting/ReportingState;->Bo:Z

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/gms/location/reporting/ReportingState;->Bp:I

    iget v2, p1, Lcom/google/android/gms/location/reporting/ReportingState;->Bp:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/gms/location/reporting/ReportingState;->Bm:I

    iget v2, p1, Lcom/google/android/gms/location/reporting/ReportingState;->Bm:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/location/reporting/ReportingState;->Bk:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/gms/location/reporting/ReportingState;->Bk:Ljava/lang/Integer;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/u;->hH(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/location/reporting/ReportingState;->Bl:Z

    iget-boolean v2, p1, Lcom/google/android/gms/location/reporting/ReportingState;->Bl:Z

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/location/reporting/ReportingState;->Br:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/location/reporting/ReportingState;->Bq:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/android/gms/location/reporting/ReportingState;->Bn:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/android/gms/location/reporting/ReportingState;->Bo:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/location/reporting/ReportingState;->Bp:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/location/reporting/ReportingState;->Bm:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/location/reporting/ReportingState;->Bk:Ljava/lang/Integer;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/android/gms/location/reporting/ReportingState;->Bl:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/u;->hI([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/location/reporting/ReportingState;->Bk:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const-string/jumbo v0, "(hidden-from-unauthorized-caller)"

    :goto_0
    iget v1, p0, Lcom/google/android/gms/location/reporting/ReportingState;->Br:I

    iget v2, p0, Lcom/google/android/gms/location/reporting/ReportingState;->Bq:I

    iget-boolean v3, p0, Lcom/google/android/gms/location/reporting/ReportingState;->Bn:Z

    iget-boolean v4, p0, Lcom/google/android/gms/location/reporting/ReportingState;->Bo:Z

    iget v5, p0, Lcom/google/android/gms/location/reporting/ReportingState;->Bp:I

    iget v6, p0, Lcom/google/android/gms/location/reporting/ReportingState;->Bm:I

    iget v7, p0, Lcom/google/android/gms/location/reporting/ReportingState;->Bs:I

    iget-boolean v8, p0, Lcom/google/android/gms/location/reporting/ReportingState;->Bl:Z

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit16 v10, v10, 0x105

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v10, "ReportingState{mReportingEnabled="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v9, ", mHistoryEnabled="

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mAllowed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mActive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mExpectedOptInResult="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mExpectedOptInResultAssumingLocationEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mVersionCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mDeviceTag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mCanAccessSettings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/location/reporting/ReportingState;->Bk:Ljava/lang/Integer;

    invoke-static {v0}, Lcom/google/android/gms/internal/A;->sz(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/location/reporting/ReportingState;->CREATOR:Lcom/google/android/gms/location/reporting/a;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/reporting/a;->FR(Lcom/google/android/gms/location/reporting/ReportingState;Landroid/os/Parcel;I)V

    return-void
.end method
