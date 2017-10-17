.class public Landroid/support/v4/app/q;
.super Landroid/support/v4/app/z;
.source "SourceFile"


# instance fields
.field XI:Ljava/util/List;

.field XJ:Ljava/lang/CharSequence;

.field XK:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 2182
    invoke-direct {p0}, Landroid/support/v4/app/z;-><init>()V

    .line 2180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/q;->XI:Ljava/util/List;

    .line 2183
    return-void
.end method


# virtual methods
.method public akz(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 2290
    invoke-super {p0, p1}, Landroid/support/v4/app/z;->akz(Landroid/os/Bundle;)V

    .line 2291
    iget-object v0, p0, Landroid/support/v4/app/q;->XJ:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 2294
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/q;->XK:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    .line 2297
    :goto_1
    iget-object v0, p0, Landroid/support/v4/app/q;->XI:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2300
    :goto_2
    return-void

    .line 2292
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/q;->XJ:Ljava/lang/CharSequence;

    const-string/jumbo v1, "android.selfDisplayName"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2295
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/q;->XK:Ljava/lang/CharSequence;

    const-string/jumbo v1, "android.conversationTitle"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2297
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/q;->XI:Ljava/util/List;

    const-string/jumbo v1, "android.messages"

    .line 2298
    invoke-static {v0}, Landroid/support/v4/app/al;->amO(Ljava/util/List;)[Landroid/os/Bundle;

    move-result-object v0

    .line 2297
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_2
.end method
