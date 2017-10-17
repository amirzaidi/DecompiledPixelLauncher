.class Landroid/support/v4/app/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/support/v4/app/Fragment$SavedState;
    .locals 2

    .prologue
    .line 376
    new-instance v0, Landroid/support/v4/app/Fragment$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/support/v4/app/Fragment$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 373
    invoke-virtual {p0, p1}, Landroid/support/v4/app/r;->createFromParcel(Landroid/os/Parcel;)Landroid/support/v4/app/Fragment$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/support/v4/app/Fragment$SavedState;
    .locals 1

    .prologue
    .line 381
    new-array v0, p1, [Landroid/support/v4/app/Fragment$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 373
    invoke-virtual {p0, p1}, Landroid/support/v4/app/r;->newArray(I)[Landroid/support/v4/app/Fragment$SavedState;

    move-result-object v0

    return-object v0
.end method
