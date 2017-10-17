.class final Lcom/android/launcher3/graphics/PreloadIconDrawable$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/graphics/PreloadIconDrawable;


# direct methods
.method constructor <init>(Lcom/android/launcher3/graphics/PreloadIconDrawable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable$2;->this$0:Lcom/android/launcher3/graphics/PreloadIconDrawable;

    .line 231
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable$2;->this$0:Lcom/android/launcher3/graphics/PreloadIconDrawable;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->-set0(Lcom/android/launcher3/graphics/PreloadIconDrawable;Z)Z

    .line 235
    return-void
.end method
