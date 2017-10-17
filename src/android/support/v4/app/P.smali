.class abstract Landroid/support/v4/app/P;
.super Landroid/support/v4/app/au;
.source "SourceFile"


# instance fields
.field ZQ:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/v4/app/au;-><init>()V

    return-void
.end method

.method static amC(I)V
    .locals 2

    .prologue
    .line 78
    const/high16 v0, -0x10000

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    .line 81
    return-void

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Can only use lower 16 bits for requestCode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method abstract ajm(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v4/app/P;->ajm(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_0

    .line 43
    return-object v0

    .line 41
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/app/au;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/support/v4/app/P;->ajm(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 49
    if-eqz v0, :cond_0

    .line 52
    return-object v0

    .line 50
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/au;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Landroid/support/v4/app/P;->ZQ:Z

    if-eqz v0, :cond_1

    .line 69
    :cond_0
    :goto_0
    invoke-super/range {p0 .. p6}, Landroid/support/v4/app/au;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    .line 71
    return-void

    .line 65
    :cond_1
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 66
    invoke-static {p2}, Landroid/support/v4/app/P;->amC(I)V

    goto :goto_0
.end method
