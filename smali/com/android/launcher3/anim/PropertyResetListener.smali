.class public Lcom/android/launcher3/anim/PropertyResetListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field private mPropertyToReset:Landroid/util/Property;

.field private mResetToValue:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/util/Property;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/launcher3/anim/PropertyResetListener;->mPropertyToReset:Landroid/util/Property;

    .line 34
    iput-object p2, p0, Lcom/android/launcher3/anim/PropertyResetListener;->mResetToValue:Ljava/lang/Object;

    .line 35
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/launcher3/anim/PropertyResetListener;->mPropertyToReset:Landroid/util/Property;

    check-cast p1, Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/anim/PropertyResetListener;->mResetToValue:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 40
    return-void
.end method
