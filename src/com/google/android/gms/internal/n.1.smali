.class public Lcom/google/android/gms/internal/n;
.super Lcom/google/android/gms/common/internal/R;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/a;Lcom/google/android/gms/common/api/d;Lcom/google/android/gms/common/api/c;)V
    .locals 7

    const/16 v3, 0x33

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

    const-string/jumbo v0, "com.google.android.gms.phenotype.service.START"

    return-object v0
.end method

.method protected jl()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "com.google.android.gms.phenotype.internal.IPhenotypeService"

    return-object v0
.end method

.method protected synthetic jn(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/n;->su(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzzb;

    move-result-object v0

    return-object v0
.end method

.method protected su(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzzb;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzzb$zza;->zzpe(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzzb;

    move-result-object v0

    return-object v0
.end method
