.class public final Landroid/support/v4/media/MediaMetadataCompat;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field private static final agh:[Ljava/lang/String;

.field static final agi:Landroid/support/v4/a/t;

.field private static final agj:[Ljava/lang/String;

.field private static final agk:[Ljava/lang/String;


# instance fields
.field final agg:Landroid/os/Bundle;

.field private agl:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 306
    new-instance v0, Landroid/support/v4/a/t;

    invoke-direct {v0}, Landroid/support/v4/a/t;-><init>()V

    sput-object v0, Landroid/support/v4/media/MediaMetadataCompat;->agi:Landroid/support/v4/a/t;

    .line 307
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->agi:Landroid/support/v4/a/t;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.media.metadata.TITLE"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/a/t;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->agi:Landroid/support/v4/a/t;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.media.metadata.ARTIST"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/a/t;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->agi:Landroid/support/v4/a/t;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.media.metadata.DURATION"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/a/t;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->agi:Landroid/support/v4/a/t;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.media.metadata.ALBUM"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/a/t;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->agi:Landroid/support/v4/a/t;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.media.metadata.AUTHOR"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/a/t;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->agi:Landroid/support/v4/a/t;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.media.metadata.WRITER"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/a/t;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->agi:Landroid/support/v4/a/t;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.media.metadata.COMPOSER"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/a/t;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->agi:Landroid/support/v4/a/t;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.media.metadata.COMPILATION"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/a/t;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->agi:Landroid/support/v4/a/t;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.media.metadata.DATE"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/a/t;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->agi:Landroid/support/v4/a/t;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.media.metadata.YEAR"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/a/t;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->agi:Landroid/support/v4/a/t;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.media.metadata.GENRE"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/a/t;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->agi:Landroid/support/v4/a/t;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.media.metadata.TRACK_NUMBER"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/a/t;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->agi:Landroid/support/v4/a/t;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.media.metadata.NUM_TRACKS"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/a/t;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->agi:Landroid/support/v4/a/t;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.media.metadata.DISC_NUMBER"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/a/t;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->agi:Landroid/support/v4/a/t;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.media.metadata.ALBUM_ARTIST"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/a/t;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->agi:Landroid/support/v4/a/t;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.media.metadata.ART"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/a/t;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->agi:Landroid/support/v4/a/t;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.media.metadata.ART_URI"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/a/t;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->agi:Landroid/support/v4/a/t;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.media.metadata.ALBUM_ART"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/a/t;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->agi:Landroid/support/v4/a/t;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.media.metadata.ALBUM_ART_URI"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/a/t;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->agi:Landroid/support/v4/a/t;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.media.metadata.USER_RATING"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/a/t;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->agi:Landroid/support/v4/a/t;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.media.metadata.RATING"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/a/t;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->agi:Landroid/support/v4/a/t;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.media.metadata.DISPLAY_TITLE"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/a/t;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->agi:Landroid/support/v4/a/t;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.media.metadata.DISPLAY_SUBTITLE"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/a/t;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->agi:Landroid/support/v4/a/t;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.media.metadata.DISPLAY_DESCRIPTION"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/a/t;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->agi:Landroid/support/v4/a/t;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.media.metadata.DISPLAY_ICON"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/a/t;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->agi:Landroid/support/v4/a/t;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.media.metadata.DISPLAY_ICON_URI"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/a/t;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->agi:Landroid/support/v4/a/t;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.media.metadata.MEDIA_ID"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/a/t;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->agi:Landroid/support/v4/a/t;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.media.metadata.BT_FOLDER_TYPE"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/a/t;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->agi:Landroid/support/v4/a/t;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.media.metadata.MEDIA_URI"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/a/t;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->agi:Landroid/support/v4/a/t;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.media.metadata.ADVERTISEMENT"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/a/t;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->agi:Landroid/support/v4/a/t;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.media.metadata.DOWNLOAD_STATUS"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/a/t;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "android.media.metadata.TITLE"

    aput-object v1, v0, v4

    const-string/jumbo v1, "android.media.metadata.ARTIST"

    aput-object v1, v0, v3

    const-string/jumbo v1, "android.media.metadata.ALBUM"

    aput-object v1, v0, v5

    const-string/jumbo v1, "android.media.metadata.ALBUM_ARTIST"

    aput-object v1, v0, v6

    const-string/jumbo v1, "android.media.metadata.WRITER"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "android.media.metadata.AUTHOR"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "android.media.metadata.COMPOSER"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Landroid/support/v4/media/MediaMetadataCompat;->agh:[Ljava/lang/String;

    .line 350
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "android.media.metadata.DISPLAY_ICON"

    aput-object v1, v0, v4

    const-string/jumbo v1, "android.media.metadata.ART"

    aput-object v1, v0, v3

    const-string/jumbo v1, "android.media.metadata.ALBUM_ART"

    aput-object v1, v0, v5

    sput-object v0, Landroid/support/v4/media/MediaMetadataCompat;->agj:[Ljava/lang/String;

    .line 356
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "android.media.metadata.DISPLAY_ICON_URI"

    aput-object v1, v0, v4

    const-string/jumbo v1, "android.media.metadata.ART_URI"

    aput-object v1, v0, v3

    const-string/jumbo v1, "android.media.metadata.ALBUM_ART_URI"

    aput-object v1, v0, v5

    sput-object v0, Landroid/support/v4/media/MediaMetadataCompat;->agk:[Ljava/lang/String;

    .line 638
    new-instance v0, Landroid/support/v4/media/p;

    invoke-direct {v0}, Landroid/support/v4/media/p;-><init>()V

    sput-object v0, Landroid/support/v4/media/MediaMetadataCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 371
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/MediaMetadataCompat;->agg:Landroid/os/Bundle;

    .line 372
    return-void
.end method

.method public static atA(Ljava/lang/Object;)Landroid/support/v4/media/MediaMetadataCompat;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 604
    if-nez p0, :cond_1

    .line 613
    :cond_0
    return-object v3

    .line 604
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 605
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 606
    invoke-static {p0, v1, v2}, Landroid/support/v4/media/d;->atc(Ljava/lang/Object;Landroid/os/Parcel;I)V

    .line 607
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 608
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaMetadataCompat;

    .line 609
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 610
    iput-object p0, v0, Landroid/support/v4/media/MediaMetadataCompat;->agl:Ljava/lang/Object;

    .line 611
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 554
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Landroid/support/v4/media/MediaMetadataCompat;->agg:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 560
    return-void
.end method
