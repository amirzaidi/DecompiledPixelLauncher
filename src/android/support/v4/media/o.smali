.class Landroid/support/v4/media/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/support/v4/media/RatingCompat;
    .locals 3

    .prologue
    .line 135
    new-instance v0, Landroid/support/v4/media/RatingCompat;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/support/v4/media/RatingCompat;-><init>(IF)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 127
    invoke-virtual {p0, p1}, Landroid/support/v4/media/o;->createFromParcel(Landroid/os/Parcel;)Landroid/support/v4/media/RatingCompat;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/support/v4/media/RatingCompat;
    .locals 1

    .prologue
    .line 140
    new-array v0, p1, [Landroid/support/v4/media/RatingCompat;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 127
    invoke-virtual {p0, p1}, Landroid/support/v4/media/o;->newArray(I)[Landroid/support/v4/media/RatingCompat;

    move-result-object v0

    return-object v0
.end method
