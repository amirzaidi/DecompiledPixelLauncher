.class public final Landroid/support/v4/media/MediaDescriptionCompat;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final aeW:Ljava/lang/CharSequence;

.field private aeX:Ljava/lang/Object;

.field private final aeY:Landroid/os/Bundle;

.field private final aeZ:Ljava/lang/CharSequence;

.field private final afa:Ljava/lang/CharSequence;

.field private final afb:Ljava/lang/String;

.field private final afc:Landroid/net/Uri;

.field private final afd:Landroid/net/Uri;

.field private final mIcon:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 411
    new-instance v0, Landroid/support/v4/media/i;

    invoke-direct {v0}, Landroid/support/v4/media/i;-><init>()V

    sput-object v0, Landroid/support/v4/media/MediaDescriptionCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/MediaDescriptionCompat;->afb:Ljava/lang/String;

    .line 201
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/media/MediaDescriptionCompat;->aeZ:Ljava/lang/CharSequence;

    .line 202
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/media/MediaDescriptionCompat;->aeW:Ljava/lang/CharSequence;

    .line 203
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/media/MediaDescriptionCompat;->afa:Ljava/lang/CharSequence;

    .line 204
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/support/v4/media/MediaDescriptionCompat;->mIcon:Landroid/graphics/Bitmap;

    .line 205
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/support/v4/media/MediaDescriptionCompat;->afd:Landroid/net/Uri;

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/MediaDescriptionCompat;->aeY:Landroid/os/Bundle;

    .line 207
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/support/v4/media/MediaDescriptionCompat;->afc:Landroid/net/Uri;

    .line 208
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/os/Bundle;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput-object p1, p0, Landroid/support/v4/media/MediaDescriptionCompat;->afb:Ljava/lang/String;

    .line 190
    iput-object p2, p0, Landroid/support/v4/media/MediaDescriptionCompat;->aeZ:Ljava/lang/CharSequence;

    .line 191
    iput-object p3, p0, Landroid/support/v4/media/MediaDescriptionCompat;->aeW:Ljava/lang/CharSequence;

    .line 192
    iput-object p4, p0, Landroid/support/v4/media/MediaDescriptionCompat;->afa:Ljava/lang/CharSequence;

    .line 193
    iput-object p5, p0, Landroid/support/v4/media/MediaDescriptionCompat;->mIcon:Landroid/graphics/Bitmap;

    .line 194
    iput-object p6, p0, Landroid/support/v4/media/MediaDescriptionCompat;->afd:Landroid/net/Uri;

    .line 195
    iput-object p7, p0, Landroid/support/v4/media/MediaDescriptionCompat;->aeY:Landroid/os/Bundle;

    .line 196
    iput-object p8, p0, Landroid/support/v4/media/MediaDescriptionCompat;->afc:Landroid/net/Uri;

    .line 197
    return-void
.end method

.method public static asB(Ljava/lang/Object;)Landroid/support/v4/media/MediaDescriptionCompat;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 371
    if-nez p0, :cond_1

    .line 407
    :cond_0
    return-object v1

    .line 371
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    .line 372
    new-instance v3, Landroid/support/v4/media/k;

    invoke-direct {v3}, Landroid/support/v4/media/k;-><init>()V

    .line 373
    invoke-static {p0}, Landroid/support/v4/media/m;->asM(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/support/v4/media/k;->asy(Ljava/lang/String;)Landroid/support/v4/media/k;

    .line 374
    invoke-static {p0}, Landroid/support/v4/media/m;->asE(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/support/v4/media/k;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v4/media/k;

    .line 375
    invoke-static {p0}, Landroid/support/v4/media/m;->asG(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/support/v4/media/k;->asv(Ljava/lang/CharSequence;)Landroid/support/v4/media/k;

    .line 376
    invoke-static {p0}, Landroid/support/v4/media/m;->asJ(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/support/v4/media/k;->asx(Ljava/lang/CharSequence;)Landroid/support/v4/media/k;

    .line 377
    invoke-static {p0}, Landroid/support/v4/media/m;->asH(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/support/v4/media/k;->ast(Landroid/graphics/Bitmap;)Landroid/support/v4/media/k;

    .line 378
    invoke-static {p0}, Landroid/support/v4/media/m;->asI(Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/support/v4/media/k;->asz(Landroid/net/Uri;)Landroid/support/v4/media/k;

    .line 379
    invoke-static {p0}, Landroid/support/v4/media/m;->asF(Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v2

    .line 380
    if-eqz v2, :cond_3

    const-string/jumbo v0, "android.support.v4.media.description.MEDIA_URI"

    .line 381
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 382
    :goto_0
    if-nez v0, :cond_4

    move-object v1, v2

    .line 396
    :cond_2
    :goto_1
    invoke-virtual {v3, v1}, Landroid/support/v4/media/k;->asw(Landroid/os/Bundle;)Landroid/support/v4/media/k;

    .line 397
    if-nez v0, :cond_6

    .line 399
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_7

    .line 402
    :goto_2
    invoke-virtual {v3}, Landroid/support/v4/media/k;->build()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v0

    .line 403
    iput-object p0, v0, Landroid/support/v4/media/MediaDescriptionCompat;->aeX:Ljava/lang/Object;

    .line 405
    return-object v0

    :cond_3
    move-object v0, v1

    .line 380
    goto :goto_0

    .line 383
    :cond_4
    const-string/jumbo v4, "android.support.v4.media.description.NULL_BUNDLE_FLAG"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 392
    :goto_3
    const-string/jumbo v1, "android.support.v4.media.description.MEDIA_URI"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 393
    const-string/jumbo v1, "android.support.v4.media.description.NULL_BUNDLE_FLAG"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_1

    .line 383
    :cond_5
    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    goto :goto_3

    .line 398
    :cond_6
    invoke-virtual {v3, v0}, Landroid/support/v4/media/k;->asu(Landroid/net/Uri;)Landroid/support/v4/media/k;

    goto :goto_2

    .line 400
    :cond_7
    invoke-static {p0}, Landroid/support/v4/media/q;->asO(Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/support/v4/media/k;->asu(Landroid/net/Uri;)Landroid/support/v4/media/k;

    goto :goto_2
.end method


# virtual methods
.method public asC()Ljava/lang/Object;
    .locals 5

    .prologue
    const/16 v4, 0x17

    .line 327
    iget-object v0, p0, Landroid/support/v4/media/MediaDescriptionCompat;->aeX:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 328
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaDescriptionCompat;->aeX:Ljava/lang/Object;

    return-object v0

    .line 327
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 330
    invoke-static {}, Landroid/support/v4/media/g;->asp()Ljava/lang/Object;

    move-result-object v1

    .line 331
    iget-object v0, p0, Landroid/support/v4/media/MediaDescriptionCompat;->afb:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/support/v4/media/g;->asj(Ljava/lang/Object;Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Landroid/support/v4/media/MediaDescriptionCompat;->aeZ:Ljava/lang/CharSequence;

    invoke-static {v1, v0}, Landroid/support/v4/media/g;->asq(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 333
    iget-object v0, p0, Landroid/support/v4/media/MediaDescriptionCompat;->aeW:Ljava/lang/CharSequence;

    invoke-static {v1, v0}, Landroid/support/v4/media/g;->asr(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 334
    iget-object v0, p0, Landroid/support/v4/media/MediaDescriptionCompat;->afa:Ljava/lang/CharSequence;

    invoke-static {v1, v0}, Landroid/support/v4/media/g;->ask(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 335
    iget-object v0, p0, Landroid/support/v4/media/MediaDescriptionCompat;->mIcon:Landroid/graphics/Bitmap;

    invoke-static {v1, v0}, Landroid/support/v4/media/g;->asm(Ljava/lang/Object;Landroid/graphics/Bitmap;)V

    .line 336
    iget-object v0, p0, Landroid/support/v4/media/MediaDescriptionCompat;->afd:Landroid/net/Uri;

    invoke-static {v1, v0}, Landroid/support/v4/media/g;->asn(Ljava/lang/Object;Landroid/net/Uri;)V

    .line 341
    iget-object v0, p0, Landroid/support/v4/media/MediaDescriptionCompat;->aeY:Landroid/os/Bundle;

    .line 342
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v4, :cond_3

    .line 349
    :cond_2
    :goto_0
    invoke-static {v1, v0}, Landroid/support/v4/media/g;->asl(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 350
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v4, :cond_5

    .line 353
    :goto_1
    invoke-static {v1}, Landroid/support/v4/media/g;->aso(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/MediaDescriptionCompat;->aeX:Ljava/lang/Object;

    .line 355
    iget-object v0, p0, Landroid/support/v4/media/MediaDescriptionCompat;->aeX:Ljava/lang/Object;

    return-object v0

    .line 342
    :cond_3
    iget-object v2, p0, Landroid/support/v4/media/MediaDescriptionCompat;->afc:Landroid/net/Uri;

    if-eqz v2, :cond_2

    .line 343
    if-eqz v0, :cond_4

    .line 347
    :goto_2
    iget-object v2, p0, Landroid/support/v4/media/MediaDescriptionCompat;->afc:Landroid/net/Uri;

    const-string/jumbo v3, "android.support.v4.media.description.MEDIA_URI"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 344
    :cond_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 345
    const-string/jumbo v2, "android.support.v4.media.description.NULL_BUNDLE_FLAG"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_2

    .line 351
    :cond_5
    iget-object v0, p0, Landroid/support/v4/media/MediaDescriptionCompat;->afc:Landroid/net/Uri;

    invoke-static {v1, v0}, Landroid/support/v4/media/l;->asA(Ljava/lang/Object;Landroid/net/Uri;)V

    goto :goto_1
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 291
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/support/v4/media/MediaDescriptionCompat;->aeZ:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/MediaDescriptionCompat;->aeW:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/MediaDescriptionCompat;->afa:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 296
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 306
    invoke-virtual {p0}, Landroid/support/v4/media/MediaDescriptionCompat;->asC()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/support/v4/media/m;->asK(Ljava/lang/Object;Landroid/os/Parcel;I)V

    .line 308
    :goto_0
    return-void

    .line 297
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaDescriptionCompat;->afb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Landroid/support/v4/media/MediaDescriptionCompat;->aeZ:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 299
    iget-object v0, p0, Landroid/support/v4/media/MediaDescriptionCompat;->aeW:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 300
    iget-object v0, p0, Landroid/support/v4/media/MediaDescriptionCompat;->afa:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 301
    iget-object v0, p0, Landroid/support/v4/media/MediaDescriptionCompat;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 302
    iget-object v0, p0, Landroid/support/v4/media/MediaDescriptionCompat;->afd:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 303
    iget-object v0, p0, Landroid/support/v4/media/MediaDescriptionCompat;->aeY:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 304
    iget-object v0, p0, Landroid/support/v4/media/MediaDescriptionCompat;->afc:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0
.end method
