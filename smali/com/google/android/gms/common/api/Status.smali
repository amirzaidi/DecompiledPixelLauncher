.class public final Lcom/google/android/gms/common/api/Status;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

# interfaces
.implements Lcom/google/android/gms/common/api/b;
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final dR:Lcom/google/android/gms/common/api/Status;

.field public static final dU:Lcom/google/android/gms/common/api/Status;

.field public static final dV:Lcom/google/android/gms/common/api/Status;

.field public static final dW:Lcom/google/android/gms/common/api/Status;

.field public static final dY:Lcom/google/android/gms/common/api/Status;

.field public static final ea:Lcom/google/android/gms/common/api/Status;

.field public static final eb:Lcom/google/android/gms/common/api/Status;


# instance fields
.field private final dS:Ljava/lang/String;

.field private final dT:I

.field private final dX:Landroid/app/PendingIntent;

.field private final dZ:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/common/api/Status;->dU:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/common/api/Status;->dW:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/common/api/Status;->ea:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/common/api/Status;->dV:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/common/api/Status;->dR:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/common/api/Status;->eb:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/common/api/Status;->dY:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Lcom/google/android/gms/common/api/z;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/z;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method constructor <init>(IILjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/api/Status;->dZ:I

    iput p2, p0, Lcom/google/android/gms/common/api/Status;->dT:I

    iput-object p3, p0, Lcom/google/android/gms/common/api/Status;->dS:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/common/api/Status;->dX:Landroid/app/PendingIntent;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v1, p1, p2, v0}, Lcom/google/android/gms/common/api/Status;-><init>(IILjava/lang/String;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/common/api/Status;-><init>(IILjava/lang/String;Landroid/app/PendingIntent;)V

    return-void
.end method

.method private dH()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/Status;->dS:Ljava/lang/String;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/common/api/Status;->dT:I

    invoke-static {v0}, Lcom/google/android/gms/common/api/A;->eG(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/Status;->dS:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public dD()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/api/Status;->dT:I

    return v0
.end method

.method public dE()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/Status;->dS:Ljava/lang/String;

    return-object v0
.end method

.method public dF()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/gms/common/api/Status;->dT:I

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method dG()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/api/Status;->dZ:I

    return v0
.end method

.method public dr()Lcom/google/android/gms/common/api/Status;
    .locals 0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/gms/common/api/Status;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    iget v1, p0, Lcom/google/android/gms/common/api/Status;->dZ:I

    iget v2, p1, Lcom/google/android/gms/common/api/Status;->dZ:I

    if-eq v1, v2, :cond_2

    :cond_0
    :goto_0
    return v0

    :cond_1
    return v0

    :cond_2
    iget v1, p0, Lcom/google/android/gms/common/api/Status;->dT:I

    iget v2, p1, Lcom/google/android/gms/common/api/Status;->dT:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/Status;->dS:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/common/api/Status;->dS:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/u;->hH(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/Status;->dX:Landroid/app/PendingIntent;

    iget-object v2, p1, Lcom/google/android/gms/common/api/Status;->dX:Landroid/app/PendingIntent;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/u;->hH(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method getPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/Status;->dX:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/common/api/Status;->dZ:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/common/api/Status;->dT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/common/api/Status;->dS:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/common/api/Status;->dX:Landroid/app/PendingIntent;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/u;->hI([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/u;->hJ(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/Status;->dH()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "statusCode"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/n;->hB(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/Status;->dX:Landroid/app/PendingIntent;

    const-string/jumbo v2, "resolution"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/n;->hB(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/n;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/api/z;->eF(Lcom/google/android/gms/common/api/Status;Landroid/os/Parcel;I)V

    return-void
.end method
