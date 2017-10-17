.class Landroid/support/v4/app/C;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ZD:Landroid/animation/Animator;

.field public final ZE:Landroid/view/animation/Animation;


# direct methods
.method private constructor <init>(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3878
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3879
    iput-object v0, p0, Landroid/support/v4/app/C;->ZE:Landroid/view/animation/Animation;

    .line 3880
    iput-object p1, p0, Landroid/support/v4/app/C;->ZD:Landroid/animation/Animator;

    .line 3881
    if-eqz p1, :cond_0

    .line 3884
    return-void

    .line 3882
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Animator cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(Landroid/animation/Animator;Landroid/support/v4/app/I;)V
    .locals 0

    .prologue
    .line 3866
    invoke-direct {p0, p1}, Landroid/support/v4/app/C;-><init>(Landroid/animation/Animator;)V

    return-void
.end method

.method private constructor <init>(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3870
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3871
    iput-object p1, p0, Landroid/support/v4/app/C;->ZE:Landroid/view/animation/Animation;

    .line 3872
    iput-object v0, p0, Landroid/support/v4/app/C;->ZD:Landroid/animation/Animator;

    .line 3873
    if-eqz p1, :cond_0

    .line 3876
    return-void

    .line 3874
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Animation cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(Landroid/view/animation/Animation;Landroid/support/v4/app/I;)V
    .locals 0

    .prologue
    .line 3866
    invoke-direct {p0, p1}, Landroid/support/v4/app/C;-><init>(Landroid/view/animation/Animation;)V

    return-void
.end method
