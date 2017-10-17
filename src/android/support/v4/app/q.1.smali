.class Landroid/support/v4/app/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic YZ:Landroid/support/v4/app/g;

.field final synthetic Za:Landroid/support/v4/app/g;

.field final synthetic Zb:Landroid/graphics/Rect;

.field final synthetic Zc:Ljava/lang/Object;

.field final synthetic Zd:Ljava/util/ArrayList;

.field final synthetic Ze:Landroid/support/v4/a/t;

.field final synthetic Zf:Z

.field final synthetic Zg:Ljava/lang/Object;

.field final synthetic Zh:Landroid/support/v4/app/n;

.field final synthetic Zi:Ljava/util/ArrayList;

.field final synthetic Zj:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/support/v4/a/t;Ljava/lang/Object;Landroid/support/v4/app/n;Ljava/util/ArrayList;Landroid/view/View;Landroid/support/v4/app/g;Landroid/support/v4/app/g;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 654
    iput-object p1, p0, Landroid/support/v4/app/q;->Ze:Landroid/support/v4/a/t;

    iput-object p2, p0, Landroid/support/v4/app/q;->Zg:Ljava/lang/Object;

    iput-object p3, p0, Landroid/support/v4/app/q;->Zh:Landroid/support/v4/app/n;

    iput-object p4, p0, Landroid/support/v4/app/q;->Zd:Ljava/util/ArrayList;

    iput-object p5, p0, Landroid/support/v4/app/q;->Zj:Landroid/view/View;

    iput-object p6, p0, Landroid/support/v4/app/q;->YZ:Landroid/support/v4/app/g;

    iput-object p7, p0, Landroid/support/v4/app/q;->Za:Landroid/support/v4/app/g;

    iput-boolean p8, p0, Landroid/support/v4/app/q;->Zf:Z

    iput-object p9, p0, Landroid/support/v4/app/q;->Zi:Ljava/util/ArrayList;

    iput-object p10, p0, Landroid/support/v4/app/q;->Zc:Ljava/lang/Object;

    iput-object p11, p0, Landroid/support/v4/app/q;->Zb:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 657
    iget-object v0, p0, Landroid/support/v4/app/q;->Ze:Landroid/support/v4/a/t;

    iget-object v1, p0, Landroid/support/v4/app/q;->Zg:Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/v4/app/q;->Zh:Landroid/support/v4/app/n;

    invoke-static {v0, v1, v2}, Landroid/support/v4/app/aL;->aow(Landroid/support/v4/a/t;Ljava/lang/Object;Landroid/support/v4/app/n;)Landroid/support/v4/a/t;

    move-result-object v0

    .line 660
    if-nez v0, :cond_1

    .line 665
    :goto_0
    iget-object v1, p0, Landroid/support/v4/app/q;->YZ:Landroid/support/v4/app/g;

    iget-object v2, p0, Landroid/support/v4/app/q;->Za:Landroid/support/v4/app/g;

    iget-boolean v3, p0, Landroid/support/v4/app/q;->Zf:Z

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Landroid/support/v4/app/aL;->aoQ(Landroid/support/v4/app/g;Landroid/support/v4/app/g;ZLandroid/support/v4/a/t;Z)V

    .line 667
    iget-object v1, p0, Landroid/support/v4/app/q;->Zg:Ljava/lang/Object;

    if-nez v1, :cond_2

    .line 679
    :cond_0
    :goto_1
    return-void

    .line 661
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/q;->Zd:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/support/v4/a/t;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 662
    iget-object v1, p0, Landroid/support/v4/app/q;->Zd:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v4/app/q;->Zj:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 668
    :cond_2
    iget-object v1, p0, Landroid/support/v4/app/q;->Zg:Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/v4/app/q;->Zi:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/support/v4/app/q;->Zd:Ljava/util/ArrayList;

    invoke-static {v1, v2, v3}, Landroid/support/v4/app/R;->amU(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 672
    iget-object v1, p0, Landroid/support/v4/app/q;->Zh:Landroid/support/v4/app/n;

    iget-object v2, p0, Landroid/support/v4/app/q;->Zc:Ljava/lang/Object;

    iget-boolean v3, p0, Landroid/support/v4/app/q;->Zf:Z

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/app/aL;->aoT(Landroid/support/v4/a/t;Landroid/support/v4/app/n;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v0

    .line 674
    if-eqz v0, :cond_0

    .line 675
    iget-object v1, p0, Landroid/support/v4/app/q;->Zb:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Landroid/support/v4/app/R;->anb(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_1
.end method
