.class public Lcom/google/android/gms/location/internal/i;
.super Lcom/google/android/gms/common/internal/R;


# instance fields
.field private final AJ:Ljava/lang/String;

.field protected final AK:Lcom/google/android/gms/location/internal/r;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/g;Lcom/google/android/gms/common/api/f;Ljava/lang/String;Lcom/google/android/gms/common/internal/a;)V
    .locals 7

    const/16 v3, 0x17

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p6

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/R;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/a;Lcom/google/android/gms/common/api/g;Lcom/google/android/gms/common/api/f;)V

    new-instance v0, Lcom/google/android/gms/location/internal/q;

    invoke-direct {v0, p0}, Lcom/google/android/gms/location/internal/q;-><init>(Lcom/google/android/gms/location/internal/i;)V

    iput-object v0, p0, Lcom/google/android/gms/location/internal/i;->AK:Lcom/google/android/gms/location/internal/r;

    iput-object p5, p0, Lcom/google/android/gms/location/internal/i;->AJ:Ljava/lang/String;

    return-void
.end method

.method static synthetic Fl(Lcom/google/android/gms/location/internal/i;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/location/internal/i;->ik()V

    return-void
.end method


# virtual methods
.method protected Fm(Landroid/os/IBinder;)Lcom/google/android/gms/location/internal/zzi;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/location/internal/zzi$zza;->zzle(Landroid/os/IBinder;)Lcom/google/android/gms/location/internal/zzi;

    move-result-object v0

    return-object v0
.end method

.method protected gw()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "com.google.android.location.internal.GoogleLocationManagerService.START"

    return-object v0
.end method

.method protected gx()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    return-object v0
.end method

.method protected synthetic gz(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/internal/i;->Fm(Landroid/os/IBinder;)Lcom/google/android/gms/location/internal/zzi;

    move-result-object v0

    return-object v0
.end method

.method protected io()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/location/internal/i;->AJ:Ljava/lang/String;

    const-string/jumbo v2, "client_name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
