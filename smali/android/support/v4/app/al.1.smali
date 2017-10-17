.class public final Landroid/support/v4/app/al;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final aaB:Ljava/lang/CharSequence;

.field private aaC:Ljava/lang/String;

.field private final aaD:J

.field private aaE:Landroid/os/Bundle;

.field private aaF:Landroid/net/Uri;

.field private final aaG:Ljava/lang/CharSequence;


# direct methods
.method private amK()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 2428
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2429
    iget-object v1, p0, Landroid/support/v4/app/al;->aaG:Ljava/lang/CharSequence;

    if-nez v1, :cond_0

    .line 2432
    :goto_0
    iget-wide v2, p0, Landroid/support/v4/app/al;->aaD:J

    const-string/jumbo v1, "time"

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2433
    iget-object v1, p0, Landroid/support/v4/app/al;->aaB:Ljava/lang/CharSequence;

    if-nez v1, :cond_1

    .line 2436
    :goto_1
    iget-object v1, p0, Landroid/support/v4/app/al;->aaC:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 2439
    :goto_2
    iget-object v1, p0, Landroid/support/v4/app/al;->aaF:Landroid/net/Uri;

    if-nez v1, :cond_3

    .line 2442
    :goto_3
    iget-object v1, p0, Landroid/support/v4/app/al;->aaE:Landroid/os/Bundle;

    if-nez v1, :cond_4

    .line 2445
    :goto_4
    return-object v0

    .line 2430
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/al;->aaG:Ljava/lang/CharSequence;

    const-string/jumbo v2, "text"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2434
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/al;->aaB:Ljava/lang/CharSequence;

    const-string/jumbo v2, "sender"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2437
    :cond_2
    iget-object v1, p0, Landroid/support/v4/app/al;->aaC:Ljava/lang/String;

    const-string/jumbo v2, "type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2440
    :cond_3
    iget-object v1, p0, Landroid/support/v4/app/al;->aaF:Landroid/net/Uri;

    const-string/jumbo v2, "uri"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_3

    .line 2443
    :cond_4
    iget-object v1, p0, Landroid/support/v4/app/al;->aaE:Landroid/os/Bundle;

    const-string/jumbo v2, "extras"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_4
.end method

.method static amO(Ljava/util/List;)[Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 2449
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Landroid/os/Bundle;

    .line 2450
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .line 2451
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 2454
    return-object v2

    .line 2452
    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/al;

    invoke-direct {v0}, Landroid/support/v4/app/al;->amK()Landroid/os/Bundle;

    move-result-object v0

    aput-object v0, v2, v1

    .line 2451
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public amL()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 2409
    iget-object v0, p0, Landroid/support/v4/app/al;->aaB:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public amM()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2416
    iget-object v0, p0, Landroid/support/v4/app/al;->aaC:Ljava/lang/String;

    return-object v0
.end method

.method public amN()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 2424
    iget-object v0, p0, Landroid/support/v4/app/al;->aaF:Landroid/net/Uri;

    return-object v0
.end method

.method public amP()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 2388
    iget-object v0, p0, Landroid/support/v4/app/al;->aaG:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public amQ()J
    .locals 2

    .prologue
    .line 2395
    iget-wide v0, p0, Landroid/support/v4/app/al;->aaD:J

    return-wide v0
.end method
