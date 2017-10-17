.class Landroid/support/v7/widget/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic RF:Landroid/support/v7/widget/Z;

.field final synthetic RG:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/Z;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Landroid/support/v7/widget/ae;->RF:Landroid/support/v7/widget/Z;

    iput-object p2, p0, Landroid/support/v7/widget/ae;->RG:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 148
    iget-object v0, p0, Landroid/support/v7/widget/ae;->RG:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Landroid/support/v7/widget/ae;->RG:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 152
    iget-object v0, p0, Landroid/support/v7/widget/ae;->RF:Landroid/support/v7/widget/Z;

    iget-object v0, v0, Landroid/support/v7/widget/Z;->QY:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/widget/ae;->RG:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 153
    return-void

    .line 148
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ai;

    .line 149
    iget-object v2, p0, Landroid/support/v7/widget/ae;->RF:Landroid/support/v7/widget/Z;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/Z;->aaA(Landroid/support/v7/widget/ai;)V

    goto :goto_0
.end method
