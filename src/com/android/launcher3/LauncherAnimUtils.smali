.class public Lcom/android/launcher3/LauncherAnimUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static sAnimators:Ljava/util/WeakHashMap;

.field static sEndAnimListener:Landroid/animation/Animator$AnimatorListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/android/launcher3/LauncherAnimUtils;->sAnimators:Ljava/util/WeakHashMap;

    .line 35
    new-instance v0, Lcom/android/launcher3/LauncherAnimUtils$1;

    invoke-direct {v0}, Lcom/android/launcher3/LauncherAnimUtils$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/LauncherAnimUtils;->sEndAnimListener:Landroid/animation/Animator$AnimatorListener;

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelOnDestroyActivity(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/android/launcher3/LauncherAnimUtils;->sEndAnimListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p0, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 54
    return-void
.end method

.method public static createAnimatorSet()Landroid/animation/AnimatorSet;
    .locals 1

    .prologue
    .line 92
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 93
    invoke-static {v0}, Lcom/android/launcher3/LauncherAnimUtils;->cancelOnDestroyActivity(Landroid/animation/Animator;)V

    .line 94
    return-object v0
.end method

.method public static varargs ofFloat(Landroid/view/View;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;
    .locals 2

    .prologue
    .line 106
    invoke-static {p0, p1, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 107
    invoke-static {v0}, Lcom/android/launcher3/LauncherAnimUtils;->cancelOnDestroyActivity(Landroid/animation/Animator;)V

    .line 108
    new-instance v1, Lcom/android/launcher3/FirstFrameAnimatorHelper;

    invoke-direct {v1, v0, p0}, Lcom/android/launcher3/FirstFrameAnimatorHelper;-><init>(Landroid/animation/ValueAnimator;Landroid/view/View;)V

    .line 109
    return-object v0
.end method

.method public static varargs ofFloat([F)Landroid/animation/ValueAnimator;
    .locals 1

    .prologue
    .line 98
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 99
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 100
    invoke-static {v0}, Lcom/android/launcher3/LauncherAnimUtils;->cancelOnDestroyActivity(Landroid/animation/Animator;)V

    .line 101
    return-object v0
.end method

.method public static varargs ofPropertyValuesHolder(Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;
    .locals 1

    .prologue
    .line 122
    invoke-static {p0, p0, p1}, Lcom/android/launcher3/LauncherAnimUtils;->ofPropertyValuesHolder(Ljava/lang/Object;Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method public static varargs ofPropertyValuesHolder(Ljava/lang/Object;Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;
    .locals 2

    .prologue
    .line 127
    invoke-static {p0, p2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 128
    invoke-static {v0}, Lcom/android/launcher3/LauncherAnimUtils;->cancelOnDestroyActivity(Landroid/animation/Animator;)V

    .line 129
    new-instance v1, Lcom/android/launcher3/FirstFrameAnimatorHelper;

    invoke-direct {v1, v0, p1}, Lcom/android/launcher3/FirstFrameAnimatorHelper;-><init>(Landroid/animation/ValueAnimator;Landroid/view/View;)V

    .line 130
    return-object v0
.end method

.method public static ofViewAlphaAndScale(Landroid/view/View;FFF)Landroid/animation/ObjectAnimator;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 114
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    .line 115
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v4, [F

    aput p1, v2, v3

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v3

    .line 116
    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v2, v4, [F

    aput p2, v2, v3

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v4

    .line 117
    sget-object v1, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v2, v4, [F

    aput p3, v2, v3

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 114
    invoke-static {p0, v0}, Lcom/android/launcher3/LauncherAnimUtils;->ofPropertyValuesHolder(Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method public static onDestroyActivity()V
    .locals 3

    .prologue
    .line 82
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/android/launcher3/LauncherAnimUtils;->sAnimators:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 83
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 84
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 87
    :cond_0
    sget-object v2, Lcom/android/launcher3/LauncherAnimUtils;->sAnimators:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 89
    :cond_1
    return-void
.end method
