.class Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final materialRevealViewFinalAlpha:F


# direct methods
.method static synthetic -get0(Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;)F
    .locals 1

    iget v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;->materialRevealViewFinalAlpha:F

    return v0
.end method

.method constructor <init>(F)V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput p1, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;->materialRevealViewFinalAlpha:F

    .line 103
    return-void
.end method


# virtual methods
.method getMaterialRevealViewAnimatorListener(Landroid/view/View;Landroid/view/View;)Landroid/animation/AnimatorListenerAdapter;
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    return-object v0
.end method

.method getMaterialRevealViewStartFinalRadius()F
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method onTransitionComplete()V
    .locals 0

    .prologue
    .line 112
    return-void
.end method
