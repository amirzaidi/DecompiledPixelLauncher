.class public Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field SA:[I

.field SB:Ljava/util/List;

.field St:I

.field Su:[I

.field Sv:Z

.field Sw:I

.field Sx:Z

.field Sy:I

.field Sz:I

.field mReverseLayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3198
    new-instance v0, Landroid/support/v7/widget/aJ;

    invoke-direct {v0}, Landroid/support/v7/widget/aJ;-><init>()V

    sput-object v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3123
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 3125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3126
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->Sw:I

    .line 3127
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->St:I

    .line 3128
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->Sy:I

    .line 3129
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->Sy:I

    if-gtz v0, :cond_0

    .line 3134
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->Sz:I

    .line 3135
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->Sz:I

    if-gtz v0, :cond_1

    .line 3139
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eq v0, v2, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    .line 3140
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eq v0, v2, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->Sv:Z

    .line 3141
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eq v0, v2, :cond_4

    :goto_4
    iput-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->Sx:Z

    .line 3143
    const-class v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    .line 3144
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 3143
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->SB:Ljava/util/List;

    .line 3145
    return-void

    .line 3130
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->Sy:I

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->SA:[I

    .line 3131
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->SA:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    goto :goto_0

    .line 3136
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->Sz:I

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->Su:[I

    .line 3137
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->Su:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    goto :goto_1

    :cond_2
    move v0, v2

    .line 3139
    goto :goto_2

    :cond_3
    move v0, v2

    .line 3140
    goto :goto_3

    :cond_4
    move v1, v2

    .line 3141
    goto :goto_4
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 3177
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3182
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->Sw:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3183
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->St:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3184
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->Sy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3185
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->Sy:I

    if-gtz v0, :cond_0

    .line 3188
    :goto_0
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->Sz:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3189
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->Sz:I

    if-gtz v0, :cond_1

    .line 3192
    :goto_1
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3193
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->Sv:Z

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3194
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->Sx:Z

    if-nez v0, :cond_4

    :goto_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3195
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->SB:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 3196
    return-void

    .line 3186
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->SA:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_0

    .line 3190
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->Su:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_1

    :cond_2
    move v0, v2

    .line 3192
    goto :goto_2

    :cond_3
    move v0, v2

    .line 3193
    goto :goto_3

    :cond_4
    move v1, v2

    .line 3194
    goto :goto_4
.end method
