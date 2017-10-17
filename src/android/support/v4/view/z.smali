.class Landroid/support/v4/view/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/support/v4/view/AbsSavedState;
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/view/z;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/v4/view/AbsSavedState;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/v4/view/AbsSavedState;
    .locals 2

    .prologue
    .line 87
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    .line 88
    if-nez v0, :cond_0

    .line 91
    sget-object v0, Landroid/support/v4/view/AbsSavedState;->Uv:Landroid/support/v4/view/AbsSavedState;

    return-object v0

    .line 89
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "superState must be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Landroid/support/v4/view/z;->createFromParcel(Landroid/os/Parcel;)Landroid/support/v4/view/AbsSavedState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/view/z;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/v4/view/AbsSavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/support/v4/view/AbsSavedState;
    .locals 1

    .prologue
    .line 101
    new-array v0, p1, [Landroid/support/v4/view/AbsSavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Landroid/support/v4/view/z;->newArray(I)[Landroid/support/v4/view/AbsSavedState;

    move-result-object v0

    return-object v0
.end method
