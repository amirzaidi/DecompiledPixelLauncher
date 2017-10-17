.class Landroid/support/v4/app/aq;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 615
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public anX(Landroid/support/v4/app/Z;Landroid/support/v4/app/Y;)Landroid/app/Notification;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 617
    iget-object v1, p1, Landroid/support/v4/app/Z;->abC:Landroid/support/v4/app/A;

    if-nez v1, :cond_2

    .line 620
    :goto_0
    invoke-interface {p2}, Landroid/support/v4/app/Y;->build()Landroid/app/Notification;

    move-result-object v1

    .line 621
    if-nez v0, :cond_3

    .line 623
    iget-object v0, p1, Landroid/support/v4/app/Z;->abc:Landroid/widget/RemoteViews;

    if-nez v0, :cond_4

    .line 626
    :goto_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v0, v2, :cond_5

    .line 632
    :cond_0
    :goto_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v0, v2, :cond_6

    .line 638
    :cond_1
    :goto_3
    return-object v1

    .line 617
    :cond_2
    iget-object v0, p1, Landroid/support/v4/app/Z;->abC:Landroid/support/v4/app/A;

    .line 618
    invoke-virtual {v0, p2}, Landroid/support/v4/app/A;->alR(Landroid/support/v4/app/Y;)Landroid/widget/RemoteViews;

    move-result-object v0

    goto :goto_0

    .line 622
    :cond_3
    iput-object v0, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    goto :goto_1

    .line 624
    :cond_4
    iget-object v0, p1, Landroid/support/v4/app/Z;->abc:Landroid/widget/RemoteViews;

    iput-object v0, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    goto :goto_1

    .line 626
    :cond_5
    iget-object v0, p1, Landroid/support/v4/app/Z;->abC:Landroid/support/v4/app/A;

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p1, Landroid/support/v4/app/Z;->abC:Landroid/support/v4/app/A;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/A;->alQ(Landroid/support/v4/app/Y;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 628
    if-eqz v0, :cond_0

    .line 629
    iput-object v0, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    goto :goto_2

    .line 632
    :cond_6
    iget-object v0, p1, Landroid/support/v4/app/Z;->abC:Landroid/support/v4/app/A;

    if-eqz v0, :cond_1

    .line 633
    iget-object v0, p1, Landroid/support/v4/app/Z;->abC:Landroid/support/v4/app/A;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/A;->alP(Landroid/support/v4/app/Y;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 634
    if-eqz v0, :cond_1

    .line 635
    iput-object v0, v1, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    goto :goto_3
.end method
