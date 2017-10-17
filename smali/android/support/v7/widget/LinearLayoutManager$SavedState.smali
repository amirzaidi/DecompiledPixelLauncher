.class public Landroid/support/v7/widget/LinearLayoutManager$SavedState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field Qx:I

.field Qy:Z

.field Qz:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2336
    new-instance v0, Landroid/support/v7/widget/au;

    invoke-direct {v0}, Landroid/support/v7/widget/au;-><init>()V

    sput-object v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2302
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2305
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->Qz:I

    .line 2306
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->Qx:I

    .line 2307
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eq v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->Qy:Z

    .line 2308
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/LinearLayoutManager$SavedState;)V
    .locals 1

    .prologue
    .line 2310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2311
    iget v0, p1, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->Qz:I

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->Qz:I

    .line 2312
    iget v0, p1, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->Qx:I

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->Qx:I

    .line 2313
    iget-boolean v0, p1, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->Qy:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->Qy:Z

    .line 2314
    return-void
.end method


# virtual methods
.method aaa()V
    .locals 1

    .prologue
    .line 2321
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->Qz:I

    .line 2322
    return-void
.end method

.method aab()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2317
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->Qz:I

    if-gez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 2326
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2331
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->Qz:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2332
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->Qx:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2333
    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->Qy:Z

    if-nez v1, :cond_0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2334
    return-void

    .line 2333
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
