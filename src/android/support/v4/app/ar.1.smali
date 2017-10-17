.class Landroid/support/v4/app/ar;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 600
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public amS(Landroid/support/v4/app/Y;Landroid/support/v4/app/X;)Landroid/app/Notification;
    .locals 2

    .prologue
    .line 602
    invoke-interface {p2}, Landroid/support/v4/app/X;->build()Landroid/app/Notification;

    move-result-object v0

    .line 603
    iget-object v1, p1, Landroid/support/v4/app/Y;->Zx:Landroid/widget/RemoteViews;

    if-nez v1, :cond_0

    .line 606
    :goto_0
    return-object v0

    .line 604
    :cond_0
    iget-object v1, p1, Landroid/support/v4/app/Y;->Zx:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    goto :goto_0
.end method
