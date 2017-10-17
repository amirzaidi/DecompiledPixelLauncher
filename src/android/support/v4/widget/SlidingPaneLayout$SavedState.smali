.class Landroid/support/v4/widget/SlidingPaneLayout$SavedState;
.super Landroid/support/v4/view/AbsSavedState;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field Wx:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1454
    new-instance v0, Landroid/support/v4/widget/h;

    invoke-direct {v0}, Landroid/support/v4/widget/h;-><init>()V

    sput-object v0, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1444
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/AbsSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 1445
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;->Wx:Z

    .line 1446
    return-void

    .line 1445
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1450
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1451
    iget-boolean v1, p0, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;->Wx:Z

    if-nez v1, :cond_0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1452
    return-void

    .line 1451
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
