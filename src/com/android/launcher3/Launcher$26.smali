.class final Lcom/android/launcher3/Launcher$26;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Launcher;

.field final synthetic val$anim:Landroid/animation/AnimatorSet;

.field final synthetic val$bounceAnims:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;Landroid/animation/AnimatorSet;Ljava/util/Collection;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Launcher$26;->this$0:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/Launcher$26;->val$anim:Landroid/animation/AnimatorSet;

    iput-object p3, p0, Lcom/android/launcher3/Launcher$26;->val$bounceAnims:Ljava/util/Collection;

    .line 3425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3427
    iget-object v0, p0, Lcom/android/launcher3/Launcher$26;->val$anim:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/launcher3/Launcher$26;->val$bounceAnims:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 3428
    iget-object v0, p0, Lcom/android/launcher3/Launcher$26;->val$anim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 3429
    return-void
.end method
