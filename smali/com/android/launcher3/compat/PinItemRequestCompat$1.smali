.class final Lcom/android/launcher3/compat/PinItemRequestCompat$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/launcher3/compat/PinItemRequestCompat;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 110
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    .line 111
    new-instance v1, Lcom/android/launcher3/compat/PinItemRequestCompat;

    invoke-direct {v1, v0, v2}, Lcom/android/launcher3/compat/PinItemRequestCompat;-><init>(Landroid/os/Parcelable;Lcom/android/launcher3/compat/PinItemRequestCompat;)V

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lcom/android/launcher3/compat/PinItemRequestCompat$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/launcher3/compat/PinItemRequestCompat;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/launcher3/compat/PinItemRequestCompat;
    .locals 1

    .prologue
    .line 115
    new-array v0, p1, [Lcom/android/launcher3/compat/PinItemRequestCompat;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0, p1}, Lcom/android/launcher3/compat/PinItemRequestCompat$1;->newArray(I)[Lcom/android/launcher3/compat/PinItemRequestCompat;

    move-result-object v0

    return-object v0
.end method
