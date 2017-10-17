.class public Landroid/support/v7/widget/LinearLayoutManager$SavedState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field Se:I

.field Sf:Z

.field Sg:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2354
    new-instance v0, Landroid/support/v7/widget/au;

    invoke-direct {v0}, Landroid/support/v7/widget/au;-><init>()V

    sput-object v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2320
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2323
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->Sg:I

    .line 2324
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->Se:I

    .line 2325
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eq v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->Sf:Z

    .line 2326
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/LinearLayoutManager$SavedState;)V
    .locals 1

    .prologue
    .line 2328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2329
    iget v0, p1, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->Sg:I

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->Sg:I

    .line 2330
    iget v0, p1, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->Se:I

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->Se:I

    .line 2331
    iget-boolean v0, p1, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->Sf:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->Sf:Z

    .line 2332
    return-void
.end method


# virtual methods
.method abc()V
    .locals 1

    .prologue
    .line 2339
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->Sg:I

    .line 2340
    return-void
.end method

.method abd()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2335
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->Sg:I

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
    .line 2344
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2349
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->Sg:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2350
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->Se:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2351
    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->Sf:Z

    if-nez v1, :cond_0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2352
    return-void

    .line 2351
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
