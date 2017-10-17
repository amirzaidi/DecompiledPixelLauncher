.class Landroid/support/v4/app/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic abW:Landroid/support/v4/app/E;


# direct methods
.method constructor <init>(Landroid/support/v4/app/E;)V
    .locals 0

    .prologue
    .line 3947
    iput-object p1, p0, Landroid/support/v4/app/ag;->abW:Landroid/support/v4/app/E;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3950
    iget-object v0, p0, Landroid/support/v4/app/ag;->abW:Landroid/support/v4/app/E;

    iget-object v0, v0, Landroid/support/v4/app/E;->mView:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 3951
    return-void
.end method
