.class Landroid/support/v4/app/ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic abZ:Landroid/support/v4/app/g;

.field final synthetic aca:Landroid/graphics/Rect;

.field final synthetic acb:Landroid/support/v4/app/g;

.field final synthetic acc:Z

.field final synthetic acd:Landroid/view/View;

.field final synthetic ace:Landroid/support/v4/a/t;


# direct methods
.method constructor <init>(Landroid/support/v4/app/g;Landroid/support/v4/app/g;ZLandroid/support/v4/a/t;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 542
    iput-object p1, p0, Landroid/support/v4/app/ai;->abZ:Landroid/support/v4/app/g;

    iput-object p2, p0, Landroid/support/v4/app/ai;->acb:Landroid/support/v4/app/g;

    iput-boolean p3, p0, Landroid/support/v4/app/ai;->acc:Z

    iput-object p4, p0, Landroid/support/v4/app/ai;->ace:Landroid/support/v4/a/t;

    iput-object p5, p0, Landroid/support/v4/app/ai;->acd:Landroid/view/View;

    iput-object p6, p0, Landroid/support/v4/app/ai;->aca:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 545
    iget-object v0, p0, Landroid/support/v4/app/ai;->abZ:Landroid/support/v4/app/g;

    iget-object v1, p0, Landroid/support/v4/app/ai;->acb:Landroid/support/v4/app/g;

    iget-boolean v2, p0, Landroid/support/v4/app/ai;->acc:Z

    iget-object v3, p0, Landroid/support/v4/app/ai;->ace:Landroid/support/v4/a/t;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/support/v4/app/aL;->aoQ(Landroid/support/v4/app/g;Landroid/support/v4/app/g;ZLandroid/support/v4/a/t;Z)V

    .line 547
    iget-object v0, p0, Landroid/support/v4/app/ai;->acd:Landroid/view/View;

    if-nez v0, :cond_0

    .line 550
    :goto_0
    return-void

    .line 548
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/ai;->acd:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/app/ai;->aca:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Landroid/support/v4/app/R;->anb(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_0
.end method
