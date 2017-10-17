.class public abstract Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;
.super Lcom/google/protobuf/nano/e;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/protobuf/nano/e;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/nano/android/a;->Re(Ljava/lang/Class;Lcom/google/protobuf/nano/a;Landroid/os/Parcel;)V

    .line 53
    return-void
.end method
