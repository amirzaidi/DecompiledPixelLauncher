.class final Lcom/android/launcher3/util/ParcelableSparseArray$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/launcher3/util/ParcelableSparseArray;
    .locals 6

    .prologue
    .line 39
    new-instance v1, Lcom/android/launcher3/util/ParcelableSparseArray;

    invoke-direct {v1}, Lcom/android/launcher3/util/ParcelableSparseArray;-><init>()V

    .line 40
    invoke-virtual {v1}, Lcom/android/launcher3/util/ParcelableSparseArray;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 42
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/android/launcher3/util/ParcelableSparseArray;->put(ILjava/lang/Object;)V

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    :cond_0
    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/ParcelableSparseArray$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/launcher3/util/ParcelableSparseArray;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/launcher3/util/ParcelableSparseArray;
    .locals 1

    .prologue
    .line 49
    new-array v0, p1, [Lcom/android/launcher3/util/ParcelableSparseArray;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/ParcelableSparseArray$1;->newArray(I)[Lcom/android/launcher3/util/ParcelableSparseArray;

    move-result-object v0

    return-object v0
.end method
