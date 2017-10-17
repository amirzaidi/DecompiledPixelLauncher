.class Landroid/support/v4/app/al;
.super Landroid/transition/Transition$EpicenterCallback;
.source "SourceFile"


# instance fields
.field final synthetic acg:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Landroid/support/v4/app/al;->acg:Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/transition/Transition$EpicenterCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetEpicenter(Landroid/transition/Transition;)Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Landroid/support/v4/app/al;->acg:Landroid/graphics/Rect;

    return-object v0
.end method
