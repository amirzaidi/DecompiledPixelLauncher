.class final Lcom/android/launcher3/dragndrop/PinWidgetFlowHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/launcher3/dragndrop/PinWidgetFlowHandler;
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lcom/android/launcher3/dragndrop/PinWidgetFlowHandler;

    invoke-direct {v0, p1}, Lcom/android/launcher3/dragndrop/PinWidgetFlowHandler;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lcom/android/launcher3/dragndrop/PinWidgetFlowHandler$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/launcher3/dragndrop/PinWidgetFlowHandler;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/launcher3/dragndrop/PinWidgetFlowHandler;
    .locals 1

    .prologue
    .line 77
    new-array v0, p1, [Lcom/android/launcher3/dragndrop/PinWidgetFlowHandler;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/android/launcher3/dragndrop/PinWidgetFlowHandler$1;->newArray(I)[Lcom/android/launcher3/dragndrop/PinWidgetFlowHandler;

    move-result-object v0

    return-object v0
.end method
