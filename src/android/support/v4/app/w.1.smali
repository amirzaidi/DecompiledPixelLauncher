.class abstract Landroid/support/v4/app/w;
.super Landroid/support/v4/app/N;
.source "SourceFile"


# instance fields
.field XS:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/support/v4/app/N;-><init>()V

    return-void
.end method


# virtual methods
.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Landroid/support/v4/app/w;->XS:Z

    if-eqz v0, :cond_1

    .line 54
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/N;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 55
    return-void

    .line 50
    :cond_1
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 51
    invoke-static {p2}, Landroid/support/v4/app/w;->aln(I)V

    goto :goto_0
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Landroid/support/v4/app/w;->Yl:Z

    if-eqz v0, :cond_1

    .line 69
    :cond_0
    :goto_0
    invoke-super/range {p0 .. p7}, Landroid/support/v4/app/N;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 71
    return-void

    .line 65
    :cond_1
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 66
    invoke-static {p2}, Landroid/support/v4/app/w;->aln(I)V

    goto :goto_0
.end method
