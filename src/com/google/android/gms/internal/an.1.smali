.class public Lcom/google/android/gms/internal/an;
.super Lcom/google/android/gms/common/internal/R;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/a;Lcom/google/android/gms/common/api/d;Lcom/google/android/gms/common/api/c;)V
    .locals 7

    const/16 v3, 0x28

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/R;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/a;Lcom/google/android/gms/common/api/d;Lcom/google/android/gms/common/api/c;)V

    return-void
.end method


# virtual methods
.method protected jk()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "com.google.android.gms.clearcut.service.START"

    return-object v0
.end method

.method protected jl()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "com.google.android.gms.clearcut.internal.IClearcutLoggerService"

    return-object v0
.end method

.method protected synthetic jn(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/an;->uh(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzqd;

    move-result-object v0

    return-object v0
.end method

.method protected uh(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzqd;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzqd$zza;->zzgo(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzqd;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzqc;Lcom/google/android/gms/clearcut/LogEventParcelable;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/an;->kM()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqd;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzqd;->zza(Lcom/google/android/gms/internal/zzqc;Lcom/google/android/gms/clearcut/LogEventParcelable;)V

    return-void
.end method
