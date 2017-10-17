.class Landroid/support/v7/widget/aD;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 11615
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/support/v7/widget/RecyclerView$SavedState;
    .locals 2

    .prologue
    .line 11623
    new-instance v0, Landroid/support/v7/widget/RecyclerView$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/support/v7/widget/RecyclerView$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/v7/widget/RecyclerView$SavedState;
    .locals 1

    .prologue
    .line 11618
    new-instance v0, Landroid/support/v7/widget/RecyclerView$SavedState;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11615
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/aD;->createFromParcel(Landroid/os/Parcel;)Landroid/support/v7/widget/RecyclerView$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11615
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/aD;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/v7/widget/RecyclerView$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/support/v7/widget/RecyclerView$SavedState;
    .locals 1

    .prologue
    .line 11628
    new-array v0, p1, [Landroid/support/v7/widget/RecyclerView$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11615
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/aD;->newArray(I)[Landroid/support/v7/widget/RecyclerView$SavedState;

    move-result-object v0

    return-object v0
.end method
