.class Landroid/support/v4/app/M;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Yj:Ljava/util/Map;

.field final synthetic Yk:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 403
    iput-object p1, p0, Landroid/support/v4/app/M;->Yk:Ljava/util/ArrayList;

    iput-object p2, p0, Landroid/support/v4/app/M;->Yj:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 406
    iget-object v0, p0, Landroid/support/v4/app/M;->Yk:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 407
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 415
    return-void

    .line 408
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/M;->Yk:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 409
    invoke-virtual {v0}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v3

    .line 410
    if-nez v3, :cond_1

    .line 407
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 411
    :cond_1
    iget-object v4, p0, Landroid/support/v4/app/M;->Yj:Ljava/util/Map;

    invoke-static {v4, v3}, Landroid/support/v4/app/Q;->alP(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 412
    invoke-virtual {v0, v3}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    goto :goto_1
.end method
