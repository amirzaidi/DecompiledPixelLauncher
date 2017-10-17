.class Landroid/support/a/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field final synthetic ahv:Landroid/support/a/k;


# direct methods
.method constructor <init>(Landroid/support/a/k;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Landroid/support/a/n;->ahv:Landroid/support/a/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 4

    .prologue
    .line 64
    iget-object v0, p0, Landroid/support/a/n;->ahv:Landroid/support/a/k;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/support/a/k;->auF(Landroid/support/a/k;J)J

    .line 65
    iget-object v0, p0, Landroid/support/a/n;->ahv:Landroid/support/a/k;

    iget-object v1, p0, Landroid/support/a/n;->ahv:Landroid/support/a/k;

    invoke-static {v1}, Landroid/support/a/k;->auB(Landroid/support/a/k;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/support/a/k;->auG(Landroid/support/a/k;J)V

    .line 66
    iget-object v0, p0, Landroid/support/a/n;->ahv:Landroid/support/a/k;

    invoke-static {v0}, Landroid/support/a/k;->auC(Landroid/support/a/k;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Landroid/support/a/n;->ahv:Landroid/support/a/k;

    invoke-static {v0}, Landroid/support/a/k;->auK(Landroid/support/a/k;)Landroid/support/a/l;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/support/a/l;->auL(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_0
.end method
