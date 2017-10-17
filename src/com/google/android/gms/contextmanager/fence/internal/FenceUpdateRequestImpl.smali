.class public Lcom/google/android/gms/contextmanager/fence/internal/FenceUpdateRequestImpl;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final Ib:Ljava/util/ArrayList;

.field private final Ic:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/contextmanager/fence/internal/d;

    invoke-direct {v0}, Lcom/google/android/gms/contextmanager/fence/internal/d;-><init>()V

    sput-object v0, Lcom/google/android/gms/contextmanager/fence/internal/FenceUpdateRequestImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/gms/contextmanager/fence/internal/FenceUpdateRequestImpl;-><init>(Ljava/util/ArrayList;)V

    return-void
.end method

.method constructor <init>(ILjava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/contextmanager/fence/internal/FenceUpdateRequestImpl;->Ic:I

    iput-object p2, p0, Lcom/google/android/gms/contextmanager/fence/internal/FenceUpdateRequestImpl;->Ib:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/contextmanager/fence/internal/FenceUpdateRequestImpl;-><init>(ILjava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public Oj()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/FenceUpdateRequestImpl;->Ib:Ljava/util/ArrayList;

    return-object v0
.end method

.method Ok()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/FenceUpdateRequestImpl;->Ic:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/contextmanager/fence/internal/d;->NQ(Lcom/google/android/gms/contextmanager/fence/internal/FenceUpdateRequestImpl;Landroid/os/Parcel;I)V

    return-void
.end method
