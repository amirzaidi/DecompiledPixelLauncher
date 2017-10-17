.class final Lcom/android/launcher3/popup/PopupItemView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/popup/PopupItemView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/popup/PopupItemView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/popup/PopupItemView$1;->this$0:Lcom/android/launcher3/popup/PopupItemView;

    .line 161
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupItemView$1;->this$0:Lcom/android/launcher3/popup/PopupItemView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/popup/PopupItemView;->-set0(Lcom/android/launcher3/popup/PopupItemView;F)F

    .line 165
    return-void
.end method
