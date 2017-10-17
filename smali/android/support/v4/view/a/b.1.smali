.class public Landroid/support/v4/view/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final Ua:Landroid/support/v4/view/a/q;


# instance fields
.field private final Ub:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 163
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    .line 165
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    .line 168
    new-instance v0, Landroid/support/v4/view/a/p;

    invoke-direct {v0}, Landroid/support/v4/view/a/p;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/b;->Ua:Landroid/support/v4/view/a/q;

    .line 170
    :goto_0
    return-void

    .line 164
    :cond_0
    new-instance v0, Landroid/support/v4/view/a/n;

    invoke-direct {v0}, Landroid/support/v4/view/a/n;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/b;->Ua:Landroid/support/v4/view/a/q;

    goto :goto_0

    .line 166
    :cond_1
    new-instance v0, Landroid/support/v4/view/a/o;

    invoke-direct {v0}, Landroid/support/v4/view/a/o;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/b;->Ua:Landroid/support/v4/view/a/q;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    sget-object v0, Landroid/support/v4/view/a/b;->Ua:Landroid/support/v4/view/a/q;

    invoke-interface {v0, p0}, Landroid/support/v4/view/a/q;->aeV(Landroid/support/v4/view/a/b;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/view/a/b;->Ub:Ljava/lang/Object;

    .line 177
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput-object p1, p0, Landroid/support/v4/view/a/b;->Ub:Ljava/lang/Object;

    .line 187
    return-void
.end method


# virtual methods
.method public aev()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Landroid/support/v4/view/a/b;->Ub:Ljava/lang/Object;

    return-object v0
.end method

.method public createAccessibilityNodeInfo(I)Landroid/support/v4/view/a/a;
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x0

    return-object v0
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x0

    return-object v0
.end method

.method public findFocus(I)Landroid/support/v4/view/a/a;
    .locals 1

    .prologue
    .line 273
    const/4 v0, 0x0

    return-object v0
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x0

    return v0
.end method
