.class final Lcom/android/launcher3/dragndrop/PinItemDragListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/launcher3/dragndrop/PinItemDragListener;
    .locals 2

    .prologue
    .line 151
    new-instance v0, Lcom/android/launcher3/dragndrop/PinItemDragListener;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/launcher3/dragndrop/PinItemDragListener;-><init>(Landroid/os/Parcel;Lcom/android/launcher3/dragndrop/PinItemDragListener;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0, p1}, Lcom/android/launcher3/dragndrop/PinItemDragListener$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/launcher3/dragndrop/PinItemDragListener;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/launcher3/dragndrop/PinItemDragListener;
    .locals 1

    .prologue
    .line 155
    new-array v0, p1, [Lcom/android/launcher3/dragndrop/PinItemDragListener;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 154
    invoke-virtual {p0, p1}, Lcom/android/launcher3/dragndrop/PinItemDragListener$1;->newArray(I)[Lcom/android/launcher3/dragndrop/PinItemDragListener;

    move-result-object v0

    return-object v0
.end method
