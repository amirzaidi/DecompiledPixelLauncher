.class public final Lcom/google/android/gms/common/internal/zzd$zzg;
.super Lcom/google/android/gms/common/internal/zzt$zza;


# instance fields
.field private Jl:Lcom/google/android/gms/common/internal/x;

.field private final Jm:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/x;I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/zzt$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzd$zzg;->Jl:Lcom/google/android/gms/common/internal/x;

    iput p2, p0, Lcom/google/android/gms/common/internal/zzd$zzg;->Jm:I

    return-void
.end method

.method private zzawh()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzd$zzg;->Jl:Lcom/google/android/gms/common/internal/x;

    return-void
.end method


# virtual methods
.method public zza(ILandroid/os/Bundle;)V
    .locals 3

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string/jumbo v1, "GmsClient"

    const-string/jumbo v2, "received deprecated onAccountValidationComplete callback, ignoring"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public zza(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzd$zzg;->Jl:Lcom/google/android/gms/common/internal/x;

    const-string/jumbo v1, "onPostInitComplete can be called only once per call to getRemoteService"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/l;->kc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzd$zzg;->Jl:Lcom/google/android/gms/common/internal/x;

    iget v1, p0, Lcom/google/android/gms/common/internal/zzd$zzg;->Jm:I

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/google/android/gms/common/internal/x;->kI(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/zzd$zzg;->zzawh()V

    return-void
.end method
