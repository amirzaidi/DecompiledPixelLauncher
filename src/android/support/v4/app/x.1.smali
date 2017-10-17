.class Landroid/support/v4/app/x;
.super Landroid/transition/Transition$EpicenterCallback;
.source "SourceFile"


# instance fields
.field final synthetic XT:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 546
    iput-object p1, p0, Landroid/support/v4/app/x;->XT:Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/transition/Transition$EpicenterCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetEpicenter(Landroid/transition/Transition;)Landroid/graphics/Rect;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 549
    iget-object v0, p0, Landroid/support/v4/app/x;->XT:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    .line 550
    :cond_0
    return-object v1

    .line 549
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/x;->XT:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 552
    iget-object v0, p0, Landroid/support/v4/app/x;->XT:Landroid/graphics/Rect;

    return-object v0
.end method
