.class Landroid/support/v7/widget/al;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic TI:Landroid/support/v7/widget/Z;

.field final synthetic TJ:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/Z;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Landroid/support/v7/widget/al;->TI:Landroid/support/v7/widget/Z;

    iput-object p2, p0, Landroid/support/v7/widget/al;->TJ:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 124
    iget-object v0, p0, Landroid/support/v7/widget/al;->TJ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Landroid/support/v7/widget/al;->TJ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 129
    iget-object v0, p0, Landroid/support/v7/widget/al;->TI:Landroid/support/v7/widget/Z;

    iget-object v0, v0, Landroid/support/v7/widget/Z;->SI:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/widget/al;->TJ:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 130
    return-void

    .line 124
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/support/v7/widget/X;

    .line 125
    iget-object v0, p0, Landroid/support/v7/widget/al;->TI:Landroid/support/v7/widget/Z;

    iget-object v1, v5, Landroid/support/v7/widget/X;->Sr:Landroid/support/v7/widget/j;

    iget v2, v5, Landroid/support/v7/widget/X;->Sp:I

    iget v3, v5, Landroid/support/v7/widget/X;->So:I

    iget v4, v5, Landroid/support/v7/widget/X;->Ss:I

    iget v5, v5, Landroid/support/v7/widget/X;->Sq:I

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/Z;->abx(Landroid/support/v7/widget/j;IIII)V

    goto :goto_0
.end method
