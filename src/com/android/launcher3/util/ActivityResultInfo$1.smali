.class final Lcom/android/launcher3/util/ActivityResultInfo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/launcher3/util/ActivityResultInfo;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Lcom/android/launcher3/util/ActivityResultInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/launcher3/util/ActivityResultInfo;-><init>(Landroid/os/Parcel;Lcom/android/launcher3/util/ActivityResultInfo;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/ActivityResultInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/launcher3/util/ActivityResultInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/launcher3/util/ActivityResultInfo;
    .locals 1

    .prologue
    .line 67
    new-array v0, p1, [Lcom/android/launcher3/util/ActivityResultInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/ActivityResultInfo$1;->newArray(I)[Lcom/android/launcher3/util/ActivityResultInfo;

    move-result-object v0

    return-object v0
.end method
