.class Landroid/support/v4/app/ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aau:Landroid/support/v4/app/e;

.field final synthetic aav:Landroid/graphics/Rect;

.field final synthetic aaw:Landroid/support/v4/app/e;

.field final synthetic aax:Z

.field final synthetic aay:Landroid/view/View;

.field final synthetic aaz:Landroid/support/v4/a/t;


# direct methods
.method constructor <init>(Landroid/support/v4/app/e;Landroid/support/v4/app/e;ZLandroid/support/v4/a/t;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 542
    iput-object p1, p0, Landroid/support/v4/app/ai;->aau:Landroid/support/v4/app/e;

    iput-object p2, p0, Landroid/support/v4/app/ai;->aaw:Landroid/support/v4/app/e;

    iput-boolean p3, p0, Landroid/support/v4/app/ai;->aax:Z

    iput-object p4, p0, Landroid/support/v4/app/ai;->aaz:Landroid/support/v4/a/t;

    iput-object p5, p0, Landroid/support/v4/app/ai;->aay:Landroid/view/View;

    iput-object p6, p0, Landroid/support/v4/app/ai;->aav:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 545
    iget-object v0, p0, Landroid/support/v4/app/ai;->aau:Landroid/support/v4/app/e;

    iget-object v1, p0, Landroid/support/v4/app/ai;->aaw:Landroid/support/v4/app/e;

    iget-boolean v2, p0, Landroid/support/v4/app/ai;->aax:Z

    iget-object v3, p0, Landroid/support/v4/app/ai;->aaz:Landroid/support/v4/a/t;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/support/v4/app/aP;->anP(Landroid/support/v4/app/e;Landroid/support/v4/app/e;ZLandroid/support/v4/a/t;Z)V

    .line 547
    iget-object v0, p0, Landroid/support/v4/app/ai;->aay:Landroid/view/View;

    if-nez v0, :cond_0

    .line 550
    :goto_0
    return-void

    .line 548
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/ai;->aay:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/app/ai;->aav:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Landroid/support/v4/app/Q;->alM(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_0
.end method
