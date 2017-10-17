.class public Landroid/support/v4/view/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final VA:Landroid/support/v4/view/a/y;


# instance fields
.field private final VB:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 162
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    .line 164
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    .line 167
    new-instance v0, Landroid/support/v4/view/a/x;

    invoke-direct {v0}, Landroid/support/v4/view/a/x;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/b;->VA:Landroid/support/v4/view/a/y;

    .line 169
    :goto_0
    return-void

    .line 163
    :cond_0
    new-instance v0, Landroid/support/v4/view/a/v;

    invoke-direct {v0}, Landroid/support/v4/view/a/v;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/b;->VA:Landroid/support/v4/view/a/y;

    goto :goto_0

    .line 165
    :cond_1
    new-instance v0, Landroid/support/v4/view/a/w;

    invoke-direct {v0}, Landroid/support/v4/view/a/w;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/b;->VA:Landroid/support/v4/view/a/y;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    sget-object v0, Landroid/support/v4/view/a/b;->VA:Landroid/support/v4/view/a/y;

    invoke-interface {v0, p0}, Landroid/support/v4/view/a/y;->agj(Landroid/support/v4/view/a/b;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/view/a/b;->VB:Ljava/lang/Object;

    .line 176
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput-object p1, p0, Landroid/support/v4/view/a/b;->VB:Ljava/lang/Object;

    .line 186
    return-void
.end method


# virtual methods
.method public afx()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Landroid/support/v4/view/a/b;->VB:Ljava/lang/Object;

    return-object v0
.end method

.method public createAccessibilityNodeInfo(I)Landroid/support/v4/view/a/a;
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x0

    return-object v0
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x0

    return-object v0
.end method

.method public findFocus(I)Landroid/support/v4/view/a/a;
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x0

    return-object v0
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x0

    return v0
.end method
