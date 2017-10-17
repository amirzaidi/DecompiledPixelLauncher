.class public Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final Id:J

.field private final Ie:J

.field private final If:Lcom/google/android/gms/awareness/fence/a;

.field private final Ig:Ljava/lang/String;

.field private final Ih:Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceRegistrationStub;

.field private final Ii:Landroid/app/PendingIntent;

.field private final Ij:I

.field private Ik:Lcom/google/android/gms/contextmanager/fence/internal/zzm;

.field private final Il:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/contextmanager/fence/internal/a;

    invoke-direct {v0}, Lcom/google/android/gms/contextmanager/fence/internal/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IILcom/google/android/gms/contextmanager/fence/internal/ContextFenceRegistrationStub;Landroid/os/IBinder;Landroid/app/PendingIntent;Ljava/lang/String;JJ)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;->Ij:I

    iput p2, p0, Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;->Il:I

    iput-object p3, p0, Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;->Ih:Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceRegistrationStub;

    if-eqz p4, :cond_0

    invoke-static {p4}, Lcom/google/android/gms/contextmanager/fence/internal/zzm$zza;->zzhn(Landroid/os/IBinder;)Lcom/google/android/gms/contextmanager/fence/internal/zzm;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;->Ik:Lcom/google/android/gms/contextmanager/fence/internal/zzm;

    iput-object v1, p0, Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;->If:Lcom/google/android/gms/awareness/fence/a;

    iput-object p5, p0, Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;->Ii:Landroid/app/PendingIntent;

    iput-object p6, p0, Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;->Ig:Ljava/lang/String;

    iput-wide p7, p0, Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;->Id:J

    iput-wide p9, p0, Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;->Ie:J

    return-void

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public Ol()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;->Ie:J

    return-wide v0
.end method

.method Om()Landroid/os/IBinder;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;->Ik:Lcom/google/android/gms/contextmanager/fence/internal/zzm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;->Ik:Lcom/google/android/gms/contextmanager/fence/internal/zzm;

    invoke-interface {v0}, Lcom/google/android/gms/contextmanager/fence/internal/zzm;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public On()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;->Id:J

    return-wide v0
.end method

.method public Oo()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;->Il:I

    return v0
.end method

.method public Op()Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceRegistrationStub;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;->Ih:Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceRegistrationStub;

    return-object v0
.end method

.method Oq()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;->Ij:I

    return v0
.end method

.method public Or()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;->Ig:Ljava/lang/String;

    return-object v0
.end method

.method public getPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;->Ii:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/contextmanager/fence/internal/a;->NE(Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;Landroid/os/Parcel;I)V

    return-void
.end method
