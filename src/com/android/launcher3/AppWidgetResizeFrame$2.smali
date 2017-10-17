.class final Lcom/android/launcher3/AppWidgetResizeFrame$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/AppWidgetResizeFrame;


# direct methods
.method constructor <init>(Lcom/android/launcher3/AppWidgetResizeFrame;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/AppWidgetResizeFrame$2;->this$0:Lcom/android/launcher3/AppWidgetResizeFrame;

    .line 437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame$2;->this$0:Lcom/android/launcher3/AppWidgetResizeFrame;

    invoke-virtual {v0}, Lcom/android/launcher3/AppWidgetResizeFrame;->requestLayout()V

    .line 440
    return-void
.end method
