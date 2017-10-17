.class public Lcom/google/android/gms/location/internal/LocationRequestUpdateData;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/internal/f;


# instance fields
.field BX:Lcom/google/android/gms/location/zze;

.field BY:Lcom/google/android/gms/location/internal/LocationRequestInternal;

.field BZ:Landroid/app/PendingIntent;

.field private final Ca:I

.field Cb:I

.field Cc:Lcom/google/android/gms/location/zzf;

.field Cd:Lcom/google/android/gms/location/internal/zzg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/internal/f;

    invoke-direct {v0}, Lcom/google/android/gms/location/internal/f;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/internal/LocationRequestUpdateData;->CREATOR:Lcom/google/android/gms/location/internal/f;

    return-void
.end method

.method constructor <init>(IILcom/google/android/gms/location/internal/LocationRequestInternal;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/internal/LocationRequestUpdateData;->Ca:I

    iput p2, p0, Lcom/google/android/gms/location/internal/LocationRequestUpdateData;->Cb:I

    iput-object p3, p0, Lcom/google/android/gms/location/internal/LocationRequestUpdateData;->BY:Lcom/google/android/gms/location/internal/LocationRequestInternal;

    if-eqz p4, :cond_1

    invoke-static {p4}, Lcom/google/android/gms/location/zzf$zza;->zzla(Landroid/os/IBinder;)Lcom/google/android/gms/location/zzf;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/location/internal/LocationRequestUpdateData;->Cc:Lcom/google/android/gms/location/zzf;

    iput-object p5, p0, Lcom/google/android/gms/location/internal/LocationRequestUpdateData;->BZ:Landroid/app/PendingIntent;

    if-eqz p6, :cond_2

    invoke-static {p6}, Lcom/google/android/gms/location/zze$zza;->zzkz(Landroid/os/IBinder;)Lcom/google/android/gms/location/zze;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/location/internal/LocationRequestUpdateData;->BX:Lcom/google/android/gms/location/zze;

    if-eqz p7, :cond_0

    invoke-static {p7}, Lcom/google/android/gms/location/internal/zzg$zza;->zzlc(Landroid/os/IBinder;)Lcom/google/android/gms/location/internal/zzg;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Lcom/google/android/gms/location/internal/LocationRequestUpdateData;->Cd:Lcom/google/android/gms/location/internal/zzg;

    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public static FO(Lcom/google/android/gms/location/zzf;Lcom/google/android/gms/location/internal/zzg;)Lcom/google/android/gms/location/internal/LocationRequestUpdateData;
    .locals 8

    const/4 v3, 0x0

    new-instance v0, Lcom/google/android/gms/location/internal/LocationRequestUpdateData;

    invoke-interface {p0}, Lcom/google/android/gms/location/zzf;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-nez p1, :cond_0

    move-object v7, v3

    :goto_0
    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/location/internal/LocationRequestUpdateData;-><init>(IILcom/google/android/gms/location/internal/LocationRequestInternal;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V

    return-object v0

    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/location/internal/zzg;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    goto :goto_0
.end method

.method public static FR(Lcom/google/android/gms/location/zze;Lcom/google/android/gms/location/internal/zzg;)Lcom/google/android/gms/location/internal/LocationRequestUpdateData;
    .locals 8

    const/4 v3, 0x0

    new-instance v0, Lcom/google/android/gms/location/internal/LocationRequestUpdateData;

    invoke-interface {p0}, Lcom/google/android/gms/location/zze;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-nez p1, :cond_0

    move-object v7, v3

    :goto_0
    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/location/internal/LocationRequestUpdateData;-><init>(IILcom/google/android/gms/location/internal/LocationRequestInternal;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V

    return-object v0

    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/location/internal/zzg;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    goto :goto_0
.end method


# virtual methods
.method FN()Landroid/os/IBinder;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/location/internal/LocationRequestUpdateData;->Cc:Lcom/google/android/gms/location/zzf;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/location/internal/LocationRequestUpdateData;->Cc:Lcom/google/android/gms/location/zzf;

    invoke-interface {v0}, Lcom/google/android/gms/location/zzf;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method FP()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/internal/LocationRequestUpdateData;->Ca:I

    return v0
.end method

.method FQ()Landroid/os/IBinder;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/location/internal/LocationRequestUpdateData;->BX:Lcom/google/android/gms/location/zze;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/location/internal/LocationRequestUpdateData;->BX:Lcom/google/android/gms/location/zze;

    invoke-interface {v0}, Lcom/google/android/gms/location/zze;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method FS()Landroid/os/IBinder;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/location/internal/LocationRequestUpdateData;->Cd:Lcom/google/android/gms/location/internal/zzg;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/location/internal/LocationRequestUpdateData;->Cd:Lcom/google/android/gms/location/internal/zzg;

    invoke-interface {v0}, Lcom/google/android/gms/location/internal/zzg;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/internal/f;->FX(Lcom/google/android/gms/location/internal/LocationRequestUpdateData;Landroid/os/Parcel;I)V

    return-void
.end method
