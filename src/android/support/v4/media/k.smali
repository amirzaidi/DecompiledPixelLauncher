.class public final Landroid/support/v4/media/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private afR:Ljava/lang/String;

.field private afS:Landroid/net/Uri;

.field private afT:Landroid/net/Uri;

.field private afU:Ljava/lang/CharSequence;

.field private afV:Landroid/os/Bundle;

.field private afW:Ljava/lang/CharSequence;

.field private afX:Ljava/lang/CharSequence;

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
.method public atq(Landroid/graphics/Bitmap;)Landroid/support/v4/media/k;
    .locals 0

    .prologue
    .line 500
    iput-object p1, p0, Landroid/support/v4/media/k;->mIcon:Landroid/graphics/Bitmap;

    .line 501
    return-object p0
.end method

.method public atr(Landroid/net/Uri;)Landroid/support/v4/media/k;
    .locals 0

    .prologue
    .line 534
    iput-object p1, p0, Landroid/support/v4/media/k;->afS:Landroid/net/Uri;

    .line 535
    return-object p0
.end method

.method public ats(Ljava/lang/CharSequence;)Landroid/support/v4/media/k;
    .locals 0

    .prologue
    .line 476
    iput-object p1, p0, Landroid/support/v4/media/k;->afU:Ljava/lang/CharSequence;

    .line 477
    return-object p0
.end method

.method public att(Landroid/os/Bundle;)Landroid/support/v4/media/k;
    .locals 0

    .prologue
    .line 523
    iput-object p1, p0, Landroid/support/v4/media/k;->afV:Landroid/os/Bundle;

    .line 524
    return-object p0
.end method

.method public atu(Ljava/lang/CharSequence;)Landroid/support/v4/media/k;
    .locals 0

    .prologue
    .line 488
    iput-object p1, p0, Landroid/support/v4/media/k;->afX:Ljava/lang/CharSequence;

    .line 489
    return-object p0
.end method

.method public atv(Ljava/lang/String;)Landroid/support/v4/media/k;
    .locals 0

    .prologue
    .line 454
    iput-object p1, p0, Landroid/support/v4/media/k;->afR:Ljava/lang/String;

    .line 455
    return-object p0
.end method

.method public atw(Landroid/net/Uri;)Landroid/support/v4/media/k;
    .locals 0

    .prologue
    .line 512
    iput-object p1, p0, Landroid/support/v4/media/k;->afT:Landroid/net/Uri;

    .line 513
    return-object p0
.end method

.method public build()Landroid/support/v4/media/MediaDescriptionCompat;
    .locals 9

    .prologue
    .line 545
    new-instance v0, Landroid/support/v4/media/MediaDescriptionCompat;

    iget-object v1, p0, Landroid/support/v4/media/k;->afR:Ljava/lang/String;

    iget-object v2, p0, Landroid/support/v4/media/k;->afW:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/support/v4/media/k;->afU:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroid/support/v4/media/k;->afX:Ljava/lang/CharSequence;

    iget-object v5, p0, Landroid/support/v4/media/k;->mIcon:Landroid/graphics/Bitmap;

    iget-object v6, p0, Landroid/support/v4/media/k;->afT:Landroid/net/Uri;

    iget-object v7, p0, Landroid/support/v4/media/k;->afV:Landroid/os/Bundle;

    iget-object v8, p0, Landroid/support/v4/media/k;->afS:Landroid/net/Uri;

    invoke-direct/range {v0 .. v8}, Landroid/support/v4/media/MediaDescriptionCompat;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/os/Bundle;Landroid/net/Uri;)V

    return-object v0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/support/v4/media/k;
    .locals 0

    .prologue
    .line 465
    iput-object p1, p0, Landroid/support/v4/media/k;->afW:Ljava/lang/CharSequence;

    .line 466
    return-object p0
.end method
