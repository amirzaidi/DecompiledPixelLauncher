.class Landroid/support/v7/widget/aI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Uv:Landroid/support/v7/widget/Z;

.field final synthetic Uw:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/Z;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Landroid/support/v7/widget/aI;->Uv:Landroid/support/v7/widget/Z;

    iput-object p2, p0, Landroid/support/v7/widget/aI;->Uw:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 171
    iget-object v0, p0, Landroid/support/v7/widget/aI;->Uw:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Landroid/support/v7/widget/aI;->Uw:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 175
    iget-object v0, p0, Landroid/support/v7/widget/aI;->Uv:Landroid/support/v7/widget/Z;

    iget-object v0, v0, Landroid/support/v7/widget/Z;->SF:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/widget/aI;->Uw:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 176
    return-void

    .line 171
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/j;

    .line 172
    iget-object v2, p0, Landroid/support/v7/widget/aI;->Uv:Landroid/support/v7/widget/Z;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/Z;->abJ(Landroid/support/v7/widget/j;)V

    goto :goto_0
.end method
