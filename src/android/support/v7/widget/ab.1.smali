.class Landroid/support/v7/widget/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic SP:Landroid/support/v7/widget/FastScroller;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/FastScroller;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Landroid/support/v7/widget/ab;->SP:Landroid/support/v7/widget/FastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Landroid/support/v7/widget/ab;->SP:Landroid/support/v7/widget/FastScroller;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/FastScroller;->hide(I)V

    .line 124
    return-void
.end method
