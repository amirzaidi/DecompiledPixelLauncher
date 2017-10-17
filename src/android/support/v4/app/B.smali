.class Landroid/support/v4/app/B;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final XY:Landroid/animation/Animator;

.field public final XZ:Landroid/view/animation/Animation;


# direct methods
.method private constructor <init>(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3957
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3958
    iput-object v0, p0, Landroid/support/v4/app/B;->XZ:Landroid/view/animation/Animation;

    .line 3959
    iput-object p1, p0, Landroid/support/v4/app/B;->XY:Landroid/animation/Animator;

    .line 3960
    if-eqz p1, :cond_0

    .line 3963
    return-void

    .line 3961
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Animator cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(Landroid/animation/Animator;Landroid/support/v4/app/I;)V
    .locals 0

    .prologue
    .line 3945
    invoke-direct {p0, p1}, Landroid/support/v4/app/B;-><init>(Landroid/animation/Animator;)V

    return-void
.end method

.method private constructor <init>(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3949
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3950
    iput-object p1, p0, Landroid/support/v4/app/B;->XZ:Landroid/view/animation/Animation;

    .line 3951
    iput-object v0, p0, Landroid/support/v4/app/B;->XY:Landroid/animation/Animator;

    .line 3952
    if-eqz p1, :cond_0

    .line 3955
    return-void

    .line 3953
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Animation cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(Landroid/view/animation/Animation;Landroid/support/v4/app/I;)V
    .locals 0

    .prologue
    .line 3945
    invoke-direct {p0, p1}, Landroid/support/v4/app/B;-><init>(Landroid/view/animation/Animation;)V

    return-void
.end method
