.class Landroid/support/v7/widget/aJ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;
    .locals 1

    .prologue
    .line 3202
    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3199
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/aJ;->createFromParcel(Landroid/os/Parcel;)Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;
    .locals 1

    .prologue
    .line 3207
    new-array v0, p1, [Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3199
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/aJ;->newArray(I)[Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    move-result-object v0

    return-object v0
.end method
