.class Lcom/android/launcher3/keyboard/FocusIndicatorHelper$ViewSetListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field private final mCallOnCancel:Z

.field private mCalled:Z

.field private final mViewToSet:Landroid/view/View;

.field final synthetic this$0:Lcom/android/launcher3/keyboard/FocusIndicatorHelper;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/keyboard/FocusIndicatorHelper;Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/launcher3/keyboard/FocusIndicatorHelper$ViewSetListener;->this$0:Lcom/android/launcher3/keyboard/FocusIndicatorHelper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 217
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/keyboard/FocusIndicatorHelper$ViewSetListener;->mCalled:Z

    .line 220
    iput-object p2, p0, Lcom/android/launcher3/keyboard/FocusIndicatorHelper$ViewSetListener;->mViewToSet:Landroid/view/View;

    .line 221
    iput-boolean p3, p0, Lcom/android/launcher3/keyboard/FocusIndicatorHelper$ViewSetListener;->mCallOnCancel:Z

    .line 222
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/android/launcher3/keyboard/FocusIndicatorHelper$ViewSetListener;->mCallOnCancel:Z

    if-nez v0, :cond_0

    .line 227
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/keyboard/FocusIndicatorHelper$ViewSetListener;->mCalled:Z

    .line 229
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/android/launcher3/keyboard/FocusIndicatorHelper$ViewSetListener;->mCalled:Z

    if-nez v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/android/launcher3/keyboard/FocusIndicatorHelper$ViewSetListener;->this$0:Lcom/android/launcher3/keyboard/FocusIndicatorHelper;

    iget-object v1, p0, Lcom/android/launcher3/keyboard/FocusIndicatorHelper$ViewSetListener;->mViewToSet:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->setCurrentView(Landroid/view/View;)V

    .line 235
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/keyboard/FocusIndicatorHelper$ViewSetListener;->mCalled:Z

    .line 237
    :cond_0
    return-void
.end method
