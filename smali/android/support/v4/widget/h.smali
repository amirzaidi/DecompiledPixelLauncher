.class Landroid/support/v4/widget/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/support/v4/widget/SlidingPaneLayout$SavedState;
    .locals 2

    .prologue
    .line 1488
    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/v4/widget/SlidingPaneLayout$SavedState;
    .locals 2

    .prologue
    .line 1483
    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1480
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/h;->createFromParcel(Landroid/os/Parcel;)Landroid/support/v4/widget/SlidingPaneLayout$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1480
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/h;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/v4/widget/SlidingPaneLayout$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/support/v4/widget/SlidingPaneLayout$SavedState;
    .locals 1

    .prologue
    .line 1493
    new-array v0, p1, [Landroid/support/v4/widget/SlidingPaneLayout$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1480
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/h;->newArray(I)[Landroid/support/v4/widget/SlidingPaneLayout$SavedState;

    move-result-object v0

    return-object v0
.end method
