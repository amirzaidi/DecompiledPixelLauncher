.class final Lcom/android/launcher3/util/PendingRequestArgs$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/launcher3/util/PendingRequestArgs;
    .locals 1

    .prologue
    .line 113
    new-instance v0, Lcom/android/launcher3/util/PendingRequestArgs;

    invoke-direct {v0, p1}, Lcom/android/launcher3/util/PendingRequestArgs;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/PendingRequestArgs$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/launcher3/util/PendingRequestArgs;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/launcher3/util/PendingRequestArgs;
    .locals 1

    .prologue
    .line 117
    new-array v0, p1, [Lcom/android/launcher3/util/PendingRequestArgs;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 116
    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/PendingRequestArgs$1;->newArray(I)[Lcom/android/launcher3/util/PendingRequestArgs;

    move-result-object v0

    return-object v0
.end method
