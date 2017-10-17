.class Landroid/support/v4/widget/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1923
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/support/v4/widget/NestedScrollView$SavedState;
    .locals 1

    .prologue
    .line 1926
    new-instance v0, Landroid/support/v4/widget/NestedScrollView$SavedState;

    invoke-direct {v0, p1}, Landroid/support/v4/widget/NestedScrollView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1923
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/j;->createFromParcel(Landroid/os/Parcel;)Landroid/support/v4/widget/NestedScrollView$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/support/v4/widget/NestedScrollView$SavedState;
    .locals 1

    .prologue
    .line 1931
    new-array v0, p1, [Landroid/support/v4/widget/NestedScrollView$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1923
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/j;->newArray(I)[Landroid/support/v4/widget/NestedScrollView$SavedState;

    move-result-object v0

    return-object v0
.end method
