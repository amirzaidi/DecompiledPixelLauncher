.class Landroid/support/v4/app/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Xp:Landroid/support/v4/app/e;

.field final synthetic Xq:Landroid/support/v4/app/e;

.field final synthetic Xr:Landroid/graphics/Rect;

.field final synthetic Xs:Ljava/lang/Object;

.field final synthetic Xt:Ljava/util/ArrayList;

.field final synthetic Xu:Landroid/support/v4/a/t;

.field final synthetic Xv:Z

.field final synthetic Xw:Ljava/lang/Object;

.field final synthetic Xx:Landroid/support/v4/app/l;

.field final synthetic Xy:Ljava/util/ArrayList;

.field final synthetic Xz:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/support/v4/a/t;Ljava/lang/Object;Landroid/support/v4/app/l;Ljava/util/ArrayList;Landroid/view/View;Landroid/support/v4/app/e;Landroid/support/v4/app/e;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 654
    iput-object p1, p0, Landroid/support/v4/app/o;->Xu:Landroid/support/v4/a/t;

    iput-object p2, p0, Landroid/support/v4/app/o;->Xw:Ljava/lang/Object;

    iput-object p3, p0, Landroid/support/v4/app/o;->Xx:Landroid/support/v4/app/l;

    iput-object p4, p0, Landroid/support/v4/app/o;->Xt:Ljava/util/ArrayList;

    iput-object p5, p0, Landroid/support/v4/app/o;->Xz:Landroid/view/View;

    iput-object p6, p0, Landroid/support/v4/app/o;->Xp:Landroid/support/v4/app/e;

    iput-object p7, p0, Landroid/support/v4/app/o;->Xq:Landroid/support/v4/app/e;

    iput-boolean p8, p0, Landroid/support/v4/app/o;->Xv:Z

    iput-object p9, p0, Landroid/support/v4/app/o;->Xy:Ljava/util/ArrayList;

    iput-object p10, p0, Landroid/support/v4/app/o;->Xs:Ljava/lang/Object;

    iput-object p11, p0, Landroid/support/v4/app/o;->Xr:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 657
    iget-object v0, p0, Landroid/support/v4/app/o;->Xu:Landroid/support/v4/a/t;

    iget-object v1, p0, Landroid/support/v4/app/o;->Xw:Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/v4/app/o;->Xx:Landroid/support/v4/app/l;

    invoke-static {v0, v1, v2}, Landroid/support/v4/app/aP;->anv(Landroid/support/v4/a/t;Ljava/lang/Object;Landroid/support/v4/app/l;)Landroid/support/v4/a/t;

    move-result-object v0

    .line 660
    if-nez v0, :cond_1

    .line 665
    :goto_0
    iget-object v1, p0, Landroid/support/v4/app/o;->Xp:Landroid/support/v4/app/e;

    iget-object v2, p0, Landroid/support/v4/app/o;->Xq:Landroid/support/v4/app/e;

    iget-boolean v3, p0, Landroid/support/v4/app/o;->Xv:Z

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Landroid/support/v4/app/aP;->anP(Landroid/support/v4/app/e;Landroid/support/v4/app/e;ZLandroid/support/v4/a/t;Z)V

    .line 667
    iget-object v1, p0, Landroid/support/v4/app/o;->Xw:Ljava/lang/Object;

    if-nez v1, :cond_2

    .line 679
    :cond_0
    :goto_1
    return-void

    .line 661
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/o;->Xt:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/support/v4/a/t;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 662
    iget-object v1, p0, Landroid/support/v4/app/o;->Xt:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v4/app/o;->Xz:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 668
    :cond_2
    iget-object v1, p0, Landroid/support/v4/app/o;->Xw:Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/v4/app/o;->Xy:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/support/v4/app/o;->Xt:Ljava/util/ArrayList;

    invoke-static {v1, v2, v3}, Landroid/support/v4/app/Q;->alF(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 672
    iget-object v1, p0, Landroid/support/v4/app/o;->Xx:Landroid/support/v4/app/l;

    iget-object v2, p0, Landroid/support/v4/app/o;->Xs:Ljava/lang/Object;

    iget-boolean v3, p0, Landroid/support/v4/app/o;->Xv:Z

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/app/aP;->anS(Landroid/support/v4/a/t;Landroid/support/v4/app/l;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v0

    .line 674
    if-eqz v0, :cond_0

    .line 675
    iget-object v1, p0, Landroid/support/v4/app/o;->Xr:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Landroid/support/v4/app/Q;->alM(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_1
.end method
