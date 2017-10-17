.class Landroid/support/v4/app/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic abP:Landroid/support/v4/app/g;

.field final synthetic abQ:Ljava/util/ArrayList;

.field final synthetic abR:Ljava/lang/Object;

.field final synthetic abS:Ljava/lang/Object;

.field final synthetic abT:Ljava/util/ArrayList;

.field final synthetic abU:Landroid/view/View;

.field final synthetic abV:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/lang/Object;Landroid/view/View;Landroid/support/v4/app/g;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 371
    iput-object p1, p0, Landroid/support/v4/app/af;->abS:Ljava/lang/Object;

    iput-object p2, p0, Landroid/support/v4/app/af;->abU:Landroid/view/View;

    iput-object p3, p0, Landroid/support/v4/app/af;->abP:Landroid/support/v4/app/g;

    iput-object p4, p0, Landroid/support/v4/app/af;->abV:Ljava/util/ArrayList;

    iput-object p5, p0, Landroid/support/v4/app/af;->abQ:Ljava/util/ArrayList;

    iput-object p6, p0, Landroid/support/v4/app/af;->abT:Ljava/util/ArrayList;

    iput-object p7, p0, Landroid/support/v4/app/af;->abR:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 374
    iget-object v0, p0, Landroid/support/v4/app/af;->abS:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 382
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/af;->abT:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 392
    :goto_1
    return-void

    .line 375
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/af;->abS:Ljava/lang/Object;

    iget-object v1, p0, Landroid/support/v4/app/af;->abU:Landroid/view/View;

    invoke-static {v0, v1}, Landroid/support/v4/app/R;->amM(Ljava/lang/Object;Landroid/view/View;)V

    .line 377
    iget-object v0, p0, Landroid/support/v4/app/af;->abS:Ljava/lang/Object;

    iget-object v1, p0, Landroid/support/v4/app/af;->abP:Landroid/support/v4/app/g;

    iget-object v2, p0, Landroid/support/v4/app/af;->abV:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/support/v4/app/af;->abU:Landroid/view/View;

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/app/aL;->aou(Ljava/lang/Object;Landroid/support/v4/app/g;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v0

    .line 379
    iget-object v1, p0, Landroid/support/v4/app/af;->abQ:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 383
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/af;->abR:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 389
    :goto_2
    iget-object v0, p0, Landroid/support/v4/app/af;->abT:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 390
    iget-object v0, p0, Landroid/support/v4/app/af;->abT:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/af;->abU:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 384
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 385
    iget-object v1, p0, Landroid/support/v4/app/af;->abU:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    iget-object v1, p0, Landroid/support/v4/app/af;->abR:Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/v4/app/af;->abT:Ljava/util/ArrayList;

    invoke-static {v1, v2, v0}, Landroid/support/v4/app/R;->amT(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_2
.end method
