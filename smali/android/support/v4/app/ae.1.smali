.class Landroid/support/v4/app/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/support/v4/app/FragmentTabHost$SavedState;
    .locals 1

    .prologue
    .line 122
    new-instance v0, Landroid/support/v4/app/FragmentTabHost$SavedState;

    invoke-direct {v0, p1}, Landroid/support/v4/app/FragmentTabHost$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p0, p1}, Landroid/support/v4/app/ae;->createFromParcel(Landroid/os/Parcel;)Landroid/support/v4/app/FragmentTabHost$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/support/v4/app/FragmentTabHost$SavedState;
    .locals 1

    .prologue
    .line 127
    new-array v0, p1, [Landroid/support/v4/app/FragmentTabHost$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p0, p1}, Landroid/support/v4/app/ae;->newArray(I)[Landroid/support/v4/app/FragmentTabHost$SavedState;

    move-result-object v0

    return-object v0
.end method
