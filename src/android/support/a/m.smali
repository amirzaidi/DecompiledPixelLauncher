.class Landroid/support/a/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/a/l;


# instance fields
.field final mChoreographer:Landroid/view/Choreographer;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Landroid/support/a/m;->mChoreographer:Landroid/view/Choreographer;

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/a/n;)V
    .locals 0

    .prologue
    .line 181
    invoke-direct {p0}, Landroid/support/a/m;-><init>()V

    return-void
.end method


# virtual methods
.method public auL(Landroid/view/Choreographer$FrameCallback;)V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Landroid/support/a/m;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v0, p1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 188
    return-void
.end method
