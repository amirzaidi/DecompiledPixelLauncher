.class public final Lcom/google/android/gms/awareness/snapshot/internal/HeadphoneStateImpl;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final fX:I

.field private final fY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/awareness/snapshot/internal/h;

    invoke-direct {v0}, Lcom/google/android/gms/awareness/snapshot/internal/h;-><init>()V

    sput-object v0, Lcom/google/android/gms/awareness/snapshot/internal/HeadphoneStateImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/awareness/snapshot/internal/HeadphoneStateImpl;->fY:I

    iput p2, p0, Lcom/google/android/gms/awareness/snapshot/internal/HeadphoneStateImpl;->fX:I

    return-void
.end method


# virtual methods
.method eW()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/HeadphoneStateImpl;->fY:I

    return v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/HeadphoneStateImpl;->fX:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/HeadphoneStateImpl;->fX:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/HeadphoneStateImpl;->fX:I

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x23

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "unknown headphone state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "HEADPHONE_PLUGGED"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "HEADPHONE_UNPLUGGED"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/awareness/snapshot/internal/h;->eZ(Lcom/google/android/gms/awareness/snapshot/internal/HeadphoneStateImpl;Landroid/os/Parcel;I)V

    return-void
.end method
