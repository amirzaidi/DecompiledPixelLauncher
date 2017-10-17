.class Landroid/support/v4/app/aa;
.super Landroid/support/v4/app/ac;
.source "SourceFile"


# instance fields
.field final synthetic abG:Landroid/support/v4/app/g;


# direct methods
.method constructor <init>(Landroid/support/v4/app/g;)V
    .locals 0

    .prologue
    .line 2296
    iput-object p1, p0, Landroid/support/v4/app/aa;->abG:Landroid/support/v4/app/g;

    invoke-direct {p0}, Landroid/support/v4/app/ac;-><init>()V

    return-void
.end method


# virtual methods
.method public alD()Z
    .locals 1

    .prologue
    .line 2308
    iget-object v0, p0, Landroid/support/v4/app/aa;->abG:Landroid/support/v4/app/g;

    iget-object v0, v0, Landroid/support/v4/app/g;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public alH(I)Landroid/view/View;
    .locals 2

    .prologue
    .line 2300
    iget-object v0, p0, Landroid/support/v4/app/aa;->abG:Landroid/support/v4/app/g;

    iget-object v0, v0, Landroid/support/v4/app/g;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2303
    iget-object v0, p0, Landroid/support/v4/app/aa;->abG:Landroid/support/v4/app/g;

    iget-object v0, v0, Landroid/support/v4/app/g;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 2301
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Fragment does not have a view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public anU(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/g;
    .locals 1

    .prologue
    .line 2313
    iget-object v0, p0, Landroid/support/v4/app/aa;->abG:Landroid/support/v4/app/g;

    iget-object v0, v0, Landroid/support/v4/app/g;->XU:Landroid/support/v4/app/r;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/r;->anU(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/g;

    move-result-object v0

    return-object v0
.end method
