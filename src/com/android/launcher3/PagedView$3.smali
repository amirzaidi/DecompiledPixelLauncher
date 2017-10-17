.class final Lcom/android/launcher3/PagedView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/PagedView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/PagedView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/PagedView$3;->this$0:Lcom/android/launcher3/PagedView;

    .line 2009
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 2012
    iget-object v0, p0, Lcom/android/launcher3/PagedView$3;->this$0:Lcom/android/launcher3/PagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->onPostReorderingAnimationCompleted()V

    .line 2013
    return-void
.end method
