.class public final Landroid/support/v4/media/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private aeP:Ljava/lang/String;

.field private aeQ:Landroid/net/Uri;

.field private aeR:Landroid/net/Uri;

.field private aeS:Ljava/lang/CharSequence;

.field private aeT:Landroid/os/Bundle;

.field private aeU:Ljava/lang/CharSequence;

.field private aeV:Ljava/lang/CharSequence;

.field private mIcon:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 445
    return-void
.end method


# virtual methods
.method public ast(Landroid/graphics/Bitmap;)Landroid/support/v4/media/k;
    .locals 0

    .prologue
    .line 500
    iput-object p1, p0, Landroid/support/v4/media/k;->mIcon:Landroid/graphics/Bitmap;

    .line 501
    return-object p0
.end method

.method public asu(Landroid/net/Uri;)Landroid/support/v4/media/k;
    .locals 0

    .prologue
    .line 534
    iput-object p1, p0, Landroid/support/v4/media/k;->aeQ:Landroid/net/Uri;

    .line 535
    return-object p0
.end method

.method public asv(Ljava/lang/CharSequence;)Landroid/support/v4/media/k;
    .locals 0

    .prologue
    .line 476
    iput-object p1, p0, Landroid/support/v4/media/k;->aeS:Ljava/lang/CharSequence;

    .line 477
    return-object p0
.end method

.method public asw(Landroid/os/Bundle;)Landroid/support/v4/media/k;
    .locals 0

    .prologue
    .line 523
    iput-object p1, p0, Landroid/support/v4/media/k;->aeT:Landroid/os/Bundle;

    .line 524
    return-object p0
.end method

.method public asx(Ljava/lang/CharSequence;)Landroid/support/v4/media/k;
    .locals 0

    .prologue
    .line 488
    iput-object p1, p0, Landroid/support/v4/media/k;->aeV:Ljava/lang/CharSequence;

    .line 489
    return-object p0
.end method

.method public asy(Ljava/lang/String;)Landroid/support/v4/media/k;
    .locals 0

    .prologue
    .line 454
    iput-object p1, p0, Landroid/support/v4/media/k;->aeP:Ljava/lang/String;

    .line 455
    return-object p0
.end method

.method public asz(Landroid/net/Uri;)Landroid/support/v4/media/k;
    .locals 0

    .prologue
    .line 512
    iput-object p1, p0, Landroid/support/v4/media/k;->aeR:Landroid/net/Uri;

    .line 513
    return-object p0
.end method

.method public build()Landroid/support/v4/media/MediaDescriptionCompat;
    .locals 9

    .prologue
    .line 545
    new-instance v0, Landroid/support/v4/media/MediaDescriptionCompat;

    iget-object v1, p0, Landroid/support/v4/media/k;->aeP:Ljava/lang/String;

    iget-object v2, p0, Landroid/support/v4/media/k;->aeU:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/support/v4/media/k;->aeS:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroid/support/v4/media/k;->aeV:Ljava/lang/CharSequence;

    iget-object v5, p0, Landroid/support/v4/media/k;->mIcon:Landroid/graphics/Bitmap;

    iget-object v6, p0, Landroid/support/v4/media/k;->aeR:Landroid/net/Uri;

    iget-object v7, p0, Landroid/support/v4/media/k;->aeT:Landroid/os/Bundle;

    iget-object v8, p0, Landroid/support/v4/media/k;->aeQ:Landroid/net/Uri;

    invoke-direct/range {v0 .. v8}, Landroid/support/v4/media/MediaDescriptionCompat;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/os/Bundle;Landroid/net/Uri;)V

    return-object v0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/support/v4/media/k;
    .locals 0

    .prologue
    .line 465
    iput-object p1, p0, Landroid/support/v4/media/k;->aeU:Ljava/lang/CharSequence;

    .line 466
    return-object p0
.end method
