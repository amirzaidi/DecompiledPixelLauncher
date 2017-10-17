.class public Lcom/google/android/gms/contextmanager/fence/internal/FenceTriggerInfoImpl;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final HV:Ljava/lang/String;

.field private final HW:Z

.field private final HX:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/contextmanager/fence/internal/h;

    invoke-direct {v0}, Lcom/google/android/gms/contextmanager/fence/internal/h;-><init>()V

    sput-object v0, Lcom/google/android/gms/contextmanager/fence/internal/FenceTriggerInfoImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/contextmanager/fence/internal/FenceTriggerInfoImpl;->HX:I

    iput-boolean p2, p0, Lcom/google/android/gms/contextmanager/fence/internal/FenceTriggerInfoImpl;->HW:Z

    iput-object p3, p0, Lcom/google/android/gms/contextmanager/fence/internal/FenceTriggerInfoImpl;->HV:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public NN()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/FenceTriggerInfoImpl;->HW:Z

    return v0
.end method

.method NO()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/FenceTriggerInfoImpl;->HX:I

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/FenceTriggerInfoImpl;->HV:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/contextmanager/fence/internal/h;->Oc(Lcom/google/android/gms/contextmanager/fence/internal/FenceTriggerInfoImpl;Landroid/os/Parcel;I)V

    return-void
.end method
