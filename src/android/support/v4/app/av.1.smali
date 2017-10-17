.class Landroid/support/v4/app/av;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aaP:Ljava/util/Map;

.field final synthetic aaQ:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 560
    iput-object p1, p0, Landroid/support/v4/app/av;->aaQ:Ljava/util/ArrayList;

    iput-object p2, p0, Landroid/support/v4/app/av;->aaP:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 563
    iget-object v0, p0, Landroid/support/v4/app/av;->aaQ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 564
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 570
    return-void

    .line 565
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/av;->aaQ:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 566
    invoke-virtual {v0}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v1

    .line 567
    iget-object v4, p0, Landroid/support/v4/app/av;->aaP:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 568
    invoke-virtual {v0, v1}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    .line 564
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method
