.class Landroid/support/v4/media/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/support/v4/media/MediaDescriptionCompat;
    .locals 2

    .prologue
    .line 415
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 418
    invoke-static {p1}, Landroid/support/v4/media/m;->atI(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/MediaDescriptionCompat;->aty(Ljava/lang/Object;)Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v0

    return-object v0

    .line 416
    :cond_0
    new-instance v0, Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-direct {v0, p1}, Landroid/support/v4/media/MediaDescriptionCompat;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 412
    invoke-virtual {p0, p1}, Landroid/support/v4/media/i;->createFromParcel(Landroid/os/Parcel;)Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/support/v4/media/MediaDescriptionCompat;
    .locals 1

    .prologue
    .line 424
    new-array v0, p1, [Landroid/support/v4/media/MediaDescriptionCompat;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 412
    invoke-virtual {p0, p1}, Landroid/support/v4/media/i;->newArray(I)[Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v0

    return-object v0
.end method
